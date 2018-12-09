unit mainframe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, RzPanel, RzRadGrp, RzButton, RzRadChk, RzPrgres,
  StdCtrls, Mask, RzEdit,RzCmboBx, RzTabs,WinSock, RzLstBox,RzStatus,
  RzShellDialogs, ScktComp, RzForms, IPEdit;
type
  ERR_code = (RET_OK=0,ERR_LEN_ZERO,ERR_LEN_INVALID,ERR_SUM_CHECK,ERR_END_CODE);
  Upgrade_state = (S_NORMAL,S_RETRY,S_ERR_SUM,S_ADD_EMPTY);
type
  TForm1 = class(TForm)
    btn_start: TRzButton;              
    OpenDialog1: TOpenDialog;          
    label_path: TLabel;
    edt_path: TRzEdit;
    btn_path: TRzButton;
    Label_port: TLabel;
    edt_port: TRzNumericEdit;
    Label_dest: TLabel;
    btn_listen: TRzButton;
    tmr_timeout: TTimer;          
    mmo_frame: TRzMemo;
    radio_disp: TRzRadioGroup;
    pagectl1: TRzPageControl;
    tabsheet1: TRzTabSheet;
    btn_stop: TRzButton;
    RzStatusBar1: TRzStatusBar;
    panel_progress: TRzProgressStatus;
    panel_status: TRzStatusPane;
    ClientSocket: TClientSocket;
    progress_bar: TRzProgressBar;
    cmb_app: TRzComboBox;
    IPtarget: TIPEdit;
    procedure FormCreate(Sender: TObject);
    procedure btn_pathClick(Sender: TObject);
    procedure mmo_frameDblClick(Sender: TObject);
    procedure btn_listenClick(Sender: TObject);
    procedure btn_stopClick(Sender: TObject);
    function  found_dot(buf:string;len:Integer):integer;
    procedure btn_startClick(Sender: TObject);
    function  framecheck(pbuf:PAnsiChar;datalen:integer): ERR_code;
    function  checksum(pbuf:PAnsiChar;datalen:integer):ansichar;
    procedure sendupgradeframe(state:Upgrade_state);
    function  openupgradefile():boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ClientSocketConnect(Sender: TObject;Socket: TCustomWinSocket);
    procedure ClientSocketError(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure ClientSocketRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocketDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure getstartpara;
    function  linkErrorMessage(ErrorCode: Integer): string;  
    procedure prepare_update(state:char);
    procedure tmr_timeoutTimer(Sender: TObject);
    procedure panel_statusMouseEnter(Sender: TObject);
    procedure ClientSocketConnecting(Sender: TObject;Socket: TCustomWinSocket);
    procedure initformshow;
  private
    { Private declarations }
  public
    { Public declarations }
  end;
const
   DEFAULT_PORT = 1310;  //默认监听端口
   FILE_MAX_SIZE = 964*1024;  //升级文件最大长度,大于该长度为异常
   UPGRADE_SLINCE_SIZE = 512;     //每包传输的有效数据长度
   STM32F407_FRAME_ADDRESS = $5354;  //定义一个MCU升级时的特定地址符号 (ST的ASCII码)
type
   Tdataframe    = packed record
      index:word;
      totallen:Cardinal;
      currentoffset:Cardinal;
      pupdata:PAnsiChar;
   end;
   PTdataframe = ^Tdataframe;
   Tupgradeframe = packed record //对齐方式,字节
      head:AnsiChar;
      addres:word;
      cmd:AnsiChar;
      datalen:Word;
      pdata:PTdataframe;
      sum:ansichar;
      tail:ansichar;
   end;
   PTupgradeframe = ^Tupgradeframe;
   Ttransframe = packed record
      valid:bool;
      len:integer;
      buf:array[0..1024] of ansichar;
   end;
   pttransframe = ^Ttransframe;

   Tlocalfile  =  record  //记录本地文件发送情况
      openflag    :Boolean;     //文件打开有效标志
      pfilebuf    :pansichar;   //文件缓冲区
      totallen    :longword;    //文件总长度
      offset      :LongWord;    //当前发送偏移量
      offsetbak   :longword;    //上次发送的偏移量,重发时使用
      lenbak      :longword;    //上次发送的有效数据长度
      slicelen    :LongWord;    //每帧发送的长度  现默认为512字节
      currentframe:LongWord;    //当前帧序号
      totalframe  :longword;    //总序号
   end;
var
  Form1: TForm1;
  framedisp:Boolean;
  rec_buf:Ttransframe;
  send_buf:array[0..1024] of ansichar;
  fileinfo:Tlocalfile;
  firstflag:boolean;

  start_tick:Cardinal;
  end_tick:Cardinal;
  g_debug_mode:Boolean;
  save_cmd:Cardinal;
  check_time:Integer;
  g_form_mutex:Cardinal;
implementation

{$R *.dfm}

(*  A language ID is a 16 bit value which is the combination of a
 *  primary language ID and a secondary language ID.  The bits are
 *  allocated as follows:
 *
 *       +-----------------------+-------------------------+
 *       |     Sublanguage ID    |   Primary Language ID   |
 *       +-----------------------+-------------------------+
 *        15                   10 9                       0   bit
 *)
const
    ENGLISH   =   (SUBLANG_ENGLISH_US   shl   10)   or   LANG_ENGLISH;
    CHINESE   =   (SUBLANG_CHINESE_SIMPLIFIED   shl   10)   or   LANG_CHINESE;
    TCHINESE   =(SUBLANG_CHINESE_TRADITIONAL   SHL   10)   OR   LANG_CHINESE;
procedure TForm1.FormCreate(Sender: TObject);
begin
       edt_port.value:=DEFAULT_PORT;
       btn_stop.Enabled:=False;
       firstflag:=true;
       fileinfo.pfilebuf:=nil;
       //btn_start.Enabled:=false;
       getstartpara();
       initformshow;
       if(g_debug_mode=false) then
       begin
          pagectl1.Visible:=false;
          panel_progress.Visible:=false;
          progress_bar.Visible:=true;
          radio_disp.Visible:=false;
          Form1.Width:=445;
          form1.Height:=330;
          cmb_app.Items.Clear;
          cmb_app.Items.Add('APP1');
          cmb_app.Items.Add('APP2');
       end
       else
       begin
          pagectl1.Visible:=true;
          panel_progress.Visible:=true;
          radio_disp.Visible:=true;
          progress_bar.Visible:=false;
          Form1.Width:=880;
          form1.Height:=515;
          cmb_app.Items.Clear;
          cmb_app.Items.Add('APP1');
          cmb_app.Items.Add('APP2');
          cmb_app.Items.Add('BOOT');
       end;
       cmb_app.ItemIndex := 0;         
end;
procedure TForm1.initformshow();
var
  len,BufSize:dword;
  Buf: PChar;
  ver:string;
  Value: PChar;
begin
    BufSize := GetFileVersionInfoSize(pansichar(application.ExeName),BufSize);
    if BufSize > 0 then
    begin
      Buf := AllocMem(BufSize);
      if(buf<>NIL) then
      begin
        GetFileVersionInfo(PChar(application.ExeName), 0, BufSize, Buf);
        if VerQueryValue(Buf, PChar('StringFileInfo\080403A8\'+'FileVersion'), Pointer(Value), Len) then
        begin
          ver :='V'+ Value;
          if(length(ver)>6) then
          ver:=copy(ver,1,6);
        end;
      end;
      FreeMem(Buf, BufSize);
    end;

    application.Title:='MCU Upgrade '+ver;
    form1.Caption:='MCU Upgrade '+ver;
end;
function TForm1.linkErrorMessage(ErrorCode: Integer): string;
var
  Buffer: array[0..255] of Char;
  Len: Integer;
begin
  Len := FormatMessage(FORMAT_MESSAGE_FROM_SYSTEM or FORMAT_MESSAGE_IGNORE_INSERTS or
    FORMAT_MESSAGE_ARGUMENT_ARRAY, nil, ErrorCode, ENGLISH, Buffer,
    SizeOf(Buffer), nil);
  while (Len > 0) and (Buffer[Len - 1] in [#0..#32, '.']) do Dec(Len);
  SetString(Result, Buffer, Len);
end;
procedure TForm1.btn_pathClick(Sender: TObject);
var
  filename:string;
begin
    if((edt_path.Text<>'') and(fileinfo.openflag=true)) then
    begin
         if(fileinfo.pfilebuf<>nil) then
         try
             FreeMem(fileinfo.pfilebuf);
         except
             MessageDlg('Failed to free memory!',mtWarning,[mbok],0);
         end;
         fileinfo.pfilebuf:=nil;
         fileinfo.openflag:=false;
    end;
    if(OpenDialog1.Execute) then
    begin
       edt_path.Text:=OpenDialog1.FileName;
      
       if(openupgradefile()=false)then exit;
       filename:=ExtractFileName(OpenDialog1.FileName);
       panel_status.Caption:='Open the file successful:'+filename;
       firstflag:=true;
    end;
end;

procedure TForm1.mmo_frameDblClick(Sender: TObject);
begin
     mmo_frame.Clear;
end;


procedure TForm1.btn_listenClick(Sender: TObject);
begin                                             
     btn_listen.Enabled:=false;
     ClientSocket.Address:=IPtarget.IPString;
     ClientSocket.Port:=edt_port.IntValue;
     try
         ClientSocket.Active:=true;
     except
         btn_listen.Enabled:=true;
         btn_stop.Enabled:=False;
     end;
end;

procedure TForm1.btn_stopClick(Sender: TObject);
begin
    if(ClientSocket.Active=True) then
    begin
        if(fileinfo.currentframe<>0) then
        begin
            if(MessageDlg('Now is upgrading,Continue disconnected?',mtWarning,[mbYes,mbno],0)<>mryes) then
               exit            
        end; 
    end;
    ClientSocket.Active:=false;
    btn_listen.Enabled:=true;
    btn_stop.Enabled:=false;
    firstflag:=true;
    fileinfo.currentframe:=0;
    
end;
function TForm1.found_dot(buf:string;len:Integer):integer;
var
  i:integer;
  dotnum:integer;
  c:Char;
begin
    dotnum:=0;
    i:=0;
    while i<len do
    begin
       c:=Char(buf[i]);
       if(c=#$2e) then
           dotnum:=dotnum+1;
       inc(i);
    end;
    result:=dotnum;
    Exit;
end;


procedure TForm1.btn_startClick(Sender: TObject);
begin
    if(fileinfo.openflag=False) then
    begin
       if(edt_path.Text = '') then
       begin
           panel_status.Caption:='Please open upgrade file first!';
           MessageDlg('Please open upgrade file first!',mtInformation,[mbOK],0);
           exit;
       end
       else
       begin
           if(openupgradefile =False) then
           begin
               exit;
           end;
       end;
    end;
    if(ClientSocket.Active=False) then
    begin
         panel_status.Caption:='Please connect the server first!';
         MessageDlg('Please connect the server first!',mtInformation,[mbOK],0);
         exit;
    end;
    if(firstflag=true) then
    begin
        if(MessageDlg('Start upgrading,Please Confirm?',mtConfirmation,[mbYes,mbno],0)<>mryes) then
            exit
        else
        begin
            firstflag:=false;
            fileinfo.offset:=0;
            fileinfo.offsetbak:=0;
            fileinfo.currentframe:=0;
            fileinfo.lenbak:=0;
        end; 
    end
    else
    begin
        MessageDlg('Upgrading the firmware,Please wait...',mtInformation,[mbok],0);
        exit;
    end;
    prepare_update(#$10);
    save_cmd:=$10;
    check_time := 0;
    start_tick:=GetTickCount;
    panel_progress.Percent:= 0;
    progress_bar.Percent:= 0;
end;


//解析时,数据开始下标为0
function tform1.framecheck(pbuf:PAnsiChar;datalen:integer):ERR_code;
var
  i:integer;
  plocalbuf:PAnsiChar;
  datacnt:integer;
  buf_len:word;
begin
     Result:=RET_OK;
     if((pbuf=nil)or(datalen=0)) then
     begin
        Result:=ERR_LEN_ZERO;
        exit;
     end;
     plocalbuf:=pbuf;
     rec_buf.valid:=false;
     rec_buf.len:=0;
     datacnt:=0;
     buf_len:=0;
     for i:=0 to datalen do
     begin
         if(datacnt=0) then
         begin
           if(plocalbuf^ = AnsiChar($7e)) then //帧头
           begin
               rec_buf.buf[datacnt]:=plocalbuf^;
               Inc(plocalbuf);
               Inc(datacnt);
           end
           else
           begin
               Inc(plocalbuf);
               datacnt:=0;
           end;
           Continue;
         end;
         rec_buf.buf[datacnt]:=plocalbuf^;
         Inc(plocalbuf);
         Inc(datacnt);
         if(datacnt=4) then
         begin
             buf_len:=word((plocalbuf+1)^);
             buf_len:=buf_len shl 8;
             buf_len:=buf_len + word((plocalbuf)^);
             if((buf_len=0) or (buf_len>600)) then  //接收应答报文数据区长度为0
             begin
                 result:=ERR_LEN_INVALID;
                 exit;
             end;
             rec_buf.buf[datacnt]:= (plocalbuf)^;
             inc(datacnt);
             Inc(plocalbuf);
             rec_buf.buf[datacnt]:= (plocalbuf)^;
             inc(datacnt);
             Inc(plocalbuf);
         end;
         if(datacnt>=buf_len+8) then  //over
         begin
             if(rec_buf.buf[datacnt-2]<>checksum(@rec_buf.buf[0],buf_len+5)) then
             begin
                 result:=ERR_SUM_CHECK;
                 exit;
             end;
             if(rec_buf.buf[datacnt-1]<>#$0d) then
             begin
                 result:=ERR_END_CODE;
                 exit;
             end;
             exit;
         end;
     end;
end;
function Tform1.checksum(pbuf:PAnsiChar;datalen:integer):ansichar;
var
  ssum:byte;
  i:integer;
begin
    ssum:=0;
    for i:=0 to datalen do
    begin
       ssum:=ssum+ Byte(pbuf^);
       Inc(pbuf);
    end;
    result:=AnsiChar(ssum);
end;

//入参为发送状态,入重发,正常等,序号由fileinfo记录
//文件偏移量是发完直接加,还是等待确认帧后再加?
procedure tform1.sendupgradeframe(state:Upgrade_state);
var
  pframe:PTupgradeframe;
  pdataframe:PTdataframe;

  info:AnsiString;
  i:Cardinal;
  c:ansiChar;
  temp_perc:Cardinal;
begin
     pframe := PTupgradeframe(@send_buf[0]);
     pdataframe:= PTdataframe(@send_buf[6]);

     fillmemory(@send_buf,1024,0);
     case state of
        S_NORMAL:
        begin
            pframe^.head  :=#$7e;

            pframe^.addres:=STM32F407_FRAME_ADDRESS;

            pframe^.cmd   :=#0;
            if(fileinfo.totallen-fileinfo.offset>=fileinfo.slicelen) then
                pframe^.datalen:=word(fileinfo.slicelen+10)
            else
                pframe^.datalen:=fileinfo.totallen-fileinfo.offset+10;

            pdataframe^.index:=word(fileinfo.currentframe);
            pdataframe^.totallen:=fileinfo.totallen;
            pdataframe^.currentoffset:=fileinfo.offset;

            Move(fileinfo.pfilebuf[fileinfo.offset],send_buf[16],pframe^.datalen-10);
            send_buf[pframe^.datalen+6]:=checksum(@send_buf[0],pframe^.datalen+6);
            send_buf[pframe^.datalen+7]:=#$0d;
            
            fileinfo.offsetbak:=fileinfo.offset;
            fileinfo.lenbak:= pframe^.datalen-10;
            fileinfo.offset:=fileinfo.offset+pframe^.datalen-10;
            fileinfo.currentframe:=fileinfo.currentframe+1;
        end;
        S_RETRY,S_ERR_SUM:
        begin
            pframe^.head  :=#$7e;

            pframe^.addres:=STM32F407_FRAME_ADDRESS;

            pframe^.cmd   :=#0;
            pframe^.datalen:=fileinfo.lenbak+10;

            pdataframe^.index:=word(fileinfo.currentframe-1);
            pdataframe^.totallen:=fileinfo.totallen;
            pdataframe^.currentoffset:=fileinfo.offsetbak;

            Move(fileinfo.pfilebuf[fileinfo.offsetbak],send_buf[16],pframe^.datalen-10);
            send_buf[pframe^.datalen+6]:=checksum(@send_buf[0],pframe^.datalen+6);
            send_buf[pframe^.datalen+7]:=#$0d; 
        end;
        S_ADD_EMPTY: //若最后一帧长度刚好为512个字节,额外发送一帧数据 数据区长度10字节,内容全FF
        begin
            pframe^.head  :=#$7e;

            pframe^.addres:=STM32F407_FRAME_ADDRESS;
            pframe^.cmd   :=#0;

            pframe^.datalen:=10+10;

            pdataframe^.index:=word(fileinfo.currentframe);
            pdataframe^.totallen:=0;
            pdataframe^.currentoffset:=0;
            FillChar(send_buf[16],10,$ff);
            send_buf[pframe^.datalen+6]:=checksum(@send_buf[0],pframe^.datalen+6);
            send_buf[pframe^.datalen+7]:=#$0d;
            fileinfo.lenbak:= pframe^.datalen-10;
        end;
     end;
    Clientsocket.socket.SendBuf(send_buf,pframe^.datalen+8);
    //显示报文信息
    if((radio_disp.ItemIndex=0)and(g_debug_mode=true)) then
    begin
      info:='';
      for i:=0 to pframe^.datalen+7 do
      begin
         c:=send_buf[i];
         if(i<>0) then
            info:=info+' '+inttohex(Integer(c),2)
         else
            info:='TX:'+ inttohex(Integer(c),2);
      end;
      mmo_frame.Lines.Add(info);
      Sleep(5);
    end;
    temp_perc := fileinfo.currentframe*100 div fileinfo.totalframe;
    if( temp_perc=100) then temp_perc := 99;
    panel_progress.Percent:= temp_perc;
    progress_bar.Percent:= temp_perc;

    info:='Upgrading';
    case panel_progress.Percent mod 5 of
       0:info:=info+'.';
       1:info:=info+'...';
       2:info:=info+'.....';
       3:info:=info+'.......';
       4:info:=info+'.........';
    end;
    panel_status.Caption:=info;
end;
function tform1.openupgradefile():boolean;
var
  info:string;
  size:Cardinal;
  filehandle:integer;
  app_address:array[0..9] of Cardinal;
begin
       try
         filehandle:=FileOpen(edt_path.Text,GENERIC_READ);
       except
         MessageDlg('Failed to open the file,Please Check!',mtError,[mbok],0);
         result:=False;
         exit;
       end;
       if(filehandle<0) then
       begin
          MessageDlg('Failed to open the file,Please Check!',mtError,[mbok],0);
          result:=False;
          exit;
       end;
       FileSeek(filehandle,0,0);
       fileinfo.totallen:=GetFileSize(filehandle,nil);
       if(fileinfo.totallen>FILE_MAX_SIZE) then
       begin
          info:='The file is too large,Size:'+inttostr(fileinfo.totallen div (1024)) +'KByte,'+'Please Confirm?';
          if(MessageDlg(info,mtConfirmation,[mbYes,mbNo],0)<>mryes) then
          begin
              fileclose(filehandle);
              edt_path.Text:='';
              result:=False;
              Exit;
          end;
       end;
       fileinfo.offset:=0;
       fileinfo.slicelen:=UPGRADE_SLINCE_SIZE;
       fileinfo.currentframe:=0;
       fileinfo.totalframe:=fileinfo.totallen div fileinfo.slicelen;
       if(fileinfo.totallen mod fileinfo.slicelen <>0) then
           fileinfo.totalframe:=fileinfo.totalframe+1;
           
       fileinfo.openflag:=true;
       panel_progress.Percent:=0;
       progress_bar.Percent:=0;
       try
          fileinfo.pfilebuf:=AllocMem(fileinfo.totallen);
       except
          MessageDlg('Allocate memory failed,Please Open again!',mtError,[mbOK],0);
          result:=False;
          edt_path.Text:='';
          fileclose(filehandle);
          exit;
       end;
       size:=FileRead(filehandle,fileinfo.pfilebuf^,fileinfo.totallen);
       if(size<>fileinfo.totallen) then
       begin
          MessageDlg('读出大小与文件实际长度不一致!',mtWarning,[mbOK],0);
          result:=False;
          edt_path.Text:='';
          FreeMem(fileinfo.pfilebuf);
          fileinfo.pfilebuf :=nil;
          fileclose(filehandle);
          exit;
       end;
       //对目标文件做一个检测,防止目标程序不支持远程升级
       CopyMemory(@app_address,fileinfo.pfilebuf,SizeOf(app_address));
       if((app_address[1] and $ffff0000)<>$08010000) then
       begin
          MessageDlg('This bin File is not support Upgrade!',mtWarning,[mbOK],0);
          result:=False;
          edt_path.Text:='';
          FreeMem(fileinfo.pfilebuf);
          fileinfo.pfilebuf :=nil;
          fileclose(filehandle);
          exit;
       end;
       fileclose(filehandle);
       result:=true;
       exit
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if(ClientSocket.Active=True) then
   begin
        if(fileinfo.currentframe<>0) then
        begin
            if(MessageDlg('Now is upgrading,Continue exit?',mtWarning,[mbYes,mbno],0)<>mryes) then
               Abort;
        end;
   end;

   if(fileinfo.pfilebuf<>nil) then
   begin
      try
        FreeMem(fileinfo.pfilebuf);
      except
      end;
   end;
   ClientSocket.Active:=false;

    if(g_form_mutex<>0) then
    begin
       CloseHandle(g_form_mutex);
    end;
end;

procedure TForm1.ClientSocketConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
       btn_listen.Enabled:=false;
       btn_stop.Enabled:=True;
       panel_status.Caption:='Successful connection with the server!';
       //MessageDlg('Successful connection with the server!',mtInformation,[mbok],0);
end;

procedure TForm1.ClientSocketError(Sender: TObject;Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
  var ErrorCode: Integer);
var
  err_info:string;
begin
       err_info:='Connection Error:';
       err_info:=err_info+linkErrorMessage(ErrorCode)+',Please Check!';
       panel_status.Caption:=err_info;
       Clientsocket.Active:=false;
       ErrorCode:=0;
       firstflag:=true;
       btn_stop.Enabled:=False;
       btn_listen.Enabled:=true;
       MessageDlg(err_info,mtError,[mbok],0);
end;

procedure TForm1.ClientSocketRead(Sender: TObject;
  Socket: TCustomWinSocket);
var
   plocalbuf:PAnsiChar;
   dispbuf:string;
   i:integer;
   c:char;
   checkflag:ERR_code;
   cmd:ansichar;
   buf:array[0..1024]of ansichar;
   datalen:integer;
   info:string;
   tempcmd:Cardinal;
begin
    Application.ProcessMessages;
    FillMemory(@buf,1024,0);
    datalen:=ClientSocket.Socket.ReceiveLength;
    ClientSocket.Socket.ReceiveBuf(buf,datalen);
    checkflag:=framecheck(buf,datalen);
    plocalbuf:=buf;
    if((radio_disp.ItemIndex=0)and(g_debug_mode=true))then
    begin
      for i:=0 to datalen do
      begin
           c:=plocalbuf^;
           Inc(plocalbuf);
           if(i=0)then
               dispbuf:='RX:'+inttohex(Integer(c),2)
           else
               dispbuf:=dispbuf+' '+inttohex(Integer(c),2);
      end;
      mmo_frame.Lines.add(dispbuf);
    end;
    if(checkflag=RET_OK) then
    begin
        cmd:=rec_buf.buf[3]; //取得命令码
        case cmd of
          #1:
          begin
              if(fileinfo.currentframe<fileinfo.totalframe) then
                  sendupgradeframe(S_NORMAL)                
              else //升级完成
              begin
                  panel_progress.Percent:=100;
                  progress_bar.Percent:=100;
                  firstflag:=true;
                  fileinfo.currentframe:=0;
                  end_tick:=GetTickCount;
                  if(end_tick>start_tick) then
                     end_tick:=end_tick-start_tick
                  else
                     end_tick:=$ffffffff-start_tick+end_tick;

                  if(end_tick>100)then
                  begin
                    end_tick:=end_tick div 100;
                    info:='The upgrade is complete,Use '+inttostr(end_tick div 10)+'.'+inttostr(end_tick mod 10)+' seconds.';
                  end
                  else
                    info:='The upgrade is complete,Use '+inttostr(end_tick)+' milliseconds.';

                  panel_status.Caption:=info;
                  messagedlg(info,mtInformation,[mbok],0);
              end;                                         
          end;
          #2,#3,#4:  //出错,重传
              sendupgradeframe(S_RETRY);
          else
          begin
              tempcmd:=Cardinal(rec_buf.buf[6]);  //取得数据
              case cmd of
                #$10:   //进入升级模式
                begin
                   if(tempcmd and $03 <>0) then
                   begin
                        save_cmd := $10;
                        tmr_timeout.Enabled:=true;
                        panel_status.Caption:='Changing to upgrade mode...';
                   end
                   else
                   begin
                       tmr_timeout.Enabled:=true;
                       if(cmb_app.ItemIndex=0) then
                       begin
                            save_cmd := $13;
                            panel_status.Caption:='Erasing APP1.';
                       end
                       else if(cmb_app.ItemIndex=1) then
                       begin
                            save_cmd := $14;
                            panel_status.Caption:='Erasing APP2.';
                       end
                       else
                       begin
                            save_cmd := $31;
                            panel_status.Caption:='Erasing BOOT.';
                       end;
                   end;
                end;
                #$11:   //切换到APP1
                begin
                   if(tempcmd and $03 <>1) then
                       MessageDlg('Failed Change to APP1,Try again!',mtError,[mbok],0)
                   else
                       MessageDlg('Successful Change to APP1!',mtInformation,[mbok],0);
                end;
                #$12:   //切换到APP2
                begin
                   if(tempcmd and $03 <>2) then
                       MessageDlg('Failed Change to APP2,Try again!',mtError,[mbok],0)
                   else
                       MessageDlg('Successful Change to APP2!',mtInformation,[mbok],0);
                end;
                #$13:   //擦除APP1
                begin
                   if(tempcmd and $04 <>0) then
                   begin
                       check_time :=0;
                       save_cmd :=$18;   //查询
                       tmr_timeout.Interval := 1000*15;
                       tmr_timeout.Enabled:=true;
                       panel_status.Caption:='Erasing APP1..';
                   end
                   else
                   begin
                       check_time :=0;
                       save_cmd :=$15;    //切换到接收APP1模式
                       tmr_timeout.Enabled:=true;
                       panel_status.Caption:='Preparing Receive App1..';
                   end;
                end;
                #$14:   //擦除APP2
                begin
                   if(tempcmd and $08 <>0) then
                   begin
                       check_time :=0;
                       save_cmd :=$18;   //查询
                       tmr_timeout.Enabled:=true;
                       panel_status.Caption:='Erasing APP1..';
                   end
                   else
                   begin
                       check_time :=0;
                       save_cmd :=$16;    //切换到接收APP2模式
                       tmr_timeout.Enabled:=true;
                       panel_status.Caption:='Preparing Receive App2..';
                   end;
                end;
                #$31:    //擦除BOOT
                begin
                   if(tempcmd and $08 <>0) then
                   begin
                       check_time :=0;
                       save_cmd :=$18;   //查询
                       tmr_timeout.Enabled:=true;
                       panel_status.Caption:='Erasing BOOT..';
                   end
                   else
                   begin
                       check_time :=0;
                       save_cmd :=$32;    //切换到接收BOOT模式
                       tmr_timeout.Enabled:=true;
                       panel_status.Caption:='Preparing Receive BOOT..';
                   end;
                end;
                #$15:   //UPDATE APP1
                begin
                    sendupgradeframe(S_NORMAL); 
                end;
                #$16:   //UPDATE APP2
                begin
                    sendupgradeframe(S_NORMAL);
                end;
                #$32:   //update boot
                begin
                   sendupgradeframe(S_NORMAL);
                end;
                #$18:   //查询模式,现仅有擦除时会去查询
                begin
                     check_time:=check_time+1;
                     if(cmb_app.ItemIndex=0) then      //app1
                     begin
                         if(tempcmd and $04 <>0) then
                         begin
                             save_cmd :=$18;   //查询
                             tmr_timeout.Enabled:=true;
                             tmr_timeout.Interval := 1000*10;
                             panel_status.Caption:='Erasing APP1..';
                         end
                         else
                         begin
                             check_time :=0;
                             save_cmd :=$15;    //切换到接收APP1模式
                             tmr_timeout.Enabled:=true;
                             panel_status.Caption:='Preparing Receive App1..';
                         end;
                     end
                     else if(cmb_app.ItemIndex=1) then
                     begin
                         if(tempcmd and $08 <>0) then
                         begin
                             save_cmd :=$18;   //查询
                             tmr_timeout.Interval := 1000*10;
                             tmr_timeout.Enabled:=true;
                             panel_status.Caption:='Erasing APP2..';
                         end
                         else
                         begin
                             check_time :=0;
                             save_cmd :=$16;    //切换到接收APP2模式
                             tmr_timeout.Enabled:=true;
                             panel_status.Caption:='Preparing Receive App2..';
                         end;
                     end
                     else
                     begin
                        if(tempcmd and $08 <>0) then
                         begin
                             save_cmd :=$18;   //查询
                             tmr_timeout.Interval := 1000*10;
                             tmr_timeout.Enabled:=true;
                             panel_status.Caption:='Erasing BOOT..';
                         end
                        else
                         begin
                             check_time :=0;
                             save_cmd :=$32;    //切换到接收APP2模式
                             tmr_timeout.Enabled:=true;
                             panel_status.Caption:='Preparing Receive BOOT..';
                         end;
                     end;
                end;
              end;
          end;
        end;
    end;
    Sleep(5);
end;

procedure TForm1.ClientSocketDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
     panel_status.Caption:='Disconnected With Server!';
end;

procedure TForm1.getstartpara();
var
para:string;
begin
  g_debug_mode:=false;                       
  Para :=LowerCase(ParamStr(1)); // 先统一转换为小写字母
  if(ParamCount=1) then
  begin   //paramstr(0)为运行文件路径
     if((Para='debug') or(Para='/debug')or(Para='-debug'))  then
        g_debug_mode:=true;
  end;
end;



procedure tform1.prepare_update(state:char);
var
  pframe:PTupgradeframe;

  info:AnsiString;
  i:Cardinal;
  c:ansiChar;
begin
     pframe := PTupgradeframe(@send_buf[0]);
     fillmemory(@send_buf,1024,0);

     pframe^.head  :=#$7e; 
     pframe^.addres:=STM32F407_FRAME_ADDRESS;

     pframe^.cmd   :=state;
     pframe^.datalen:=0;   //数据区为0
     send_buf[pframe^.datalen+6]:=checksum(@send_buf[0],pframe^.datalen+6);
     send_buf[pframe^.datalen+7]:=#$0d;

     Clientsocket.socket.SendBuf(send_buf,pframe^.datalen+8);
     //显示报文信息
     if((radio_disp.ItemIndex=0)and(g_debug_mode=true)) then
     begin
      info:='';
      for i:=0 to pframe^.datalen+7 do
      begin
         c:=send_buf[i];
         if(i<>0) then
            info:=info+' '+inttohex(Integer(c),2)
         else
            info:='TX:'+ inttohex(Integer(c),2);
      end;
      mmo_frame.Lines.Add(info);
      Sleep(5);
     end;
end;




procedure TForm1.tmr_timeoutTimer(Sender: TObject);
begin
    tmr_timeout.Enabled:=False;
    tmr_timeout.Interval := 1000;
    if(ClientSocket.Active=False) then
    begin
        panel_status.Caption:='Please connect the server first!';
        MessageDlg('Please connect the server first!',mtInformation,[mbOK],0);
        exit;
    end;
    if((save_cmd=$18)and(check_time>10)) then
    begin
        panel_status.Caption:='Upgrade Failed,Please Check!';
        MessageDlg('Upgrade Failed,Please Check!',mtWarning,[mbOK],0);
        exit;
    end;
    prepare_update(Char(save_cmd));

end;

procedure TForm1.panel_statusMouseEnter(Sender: TObject);
begin
    panel_status.Hint:=panel_status.Caption;
end;

procedure TForm1.ClientSocketConnecting(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  panel_status.Caption:='Connecting the server...';
end;

end.
