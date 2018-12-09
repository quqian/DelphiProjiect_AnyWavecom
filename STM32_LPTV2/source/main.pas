unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ScktComp, StdCtrls, RzLabel, IPEdit, RzButton, RzEdit, Mask,lptv_type,
  RzTabs, RzCmboBx,WinSock, RzRadChk;

type
  TForm1 = class(TForm)
    socket_lptv: TClientSocket;
    IPEdit1: TIPEdit;
    lbl_1: TRzLabel;
    btn_con: TRzButton;
    btn_dis: TRzButton;
    mmo1: TRzMemo;
    rzpgcntrl1: TRzPageControl;
    TabSheet_status: TRzTabSheet;
    TabSheet_alarm_info: TRzTabSheet;
    TabSheet_sys_para: TRzTabSheet;
    TabSheet_alarm_para: TRzTabSheet;
    TabSheet_net_para: TRzTabSheet;
    TabSheet_ver: TRzTabSheet;
    edt_r50v_cur1: TRzEdit;
    edt_r50v_cur2: TRzEdit;
    edt_r50v_cur3: TRzEdit;
    edt_r50v_cur4: TRzEdit;
    lbl_3: TRzLabel;
    lbl_4: TRzLabel;
    lbl_5: TRzLabel;
    lbl_6: TRzLabel;
    lbl_11: TRzLabel;
    edt_r50v_vol: TRzEdit;
    lbl_12: TRzLabel;
    edt_r12v_vol: TRzEdit;
    lbl_13: TRzLabel;
    edt_r9v_vol: TRzEdit;
    lbl_14: TRzLabel;
    edt_rpa_in: TRzEdit;
    lbl_15: TRzLabel;
    edt_rfwd: TRzEdit;
    lbl_16: TRzLabel;
    edt_rref: TRzEdit;
    lbl_17: TRzLabel;
    edt_rvswr: TRzEdit;
    lbl_18: TRzLabel;
    edt_rtemp: TRzEdit;
    lbl_19: TRzLabel;
    edt_rgv: TRzEdit;
    lbl_110: TRzLabel;
    edt_rfan1: TRzEdit;
    lbl_111: TRzLabel;
    edt_rfan2: TRzEdit;
    lbl_112: TRzLabel;
    edt_rfan3: TRzEdit;
    btn_query_status: TRzButton;
    lbl_113: TRzLabel;
    edt_rcur1_alarm: TRzEdit;
    lbl_114: TRzLabel;
    edt_r50v_alarm: TRzEdit;
    lbl_115: TRzLabel;
    edt_rcur2_alarm: TRzEdit;
    lbl_118: TRzLabel;
    edt_rcur3_alarm: TRzEdit;
    lbl_119: TRzLabel;
    edt_rcur4_alarm: TRzEdit;
    lbl_120: TRzLabel;
    edt_rin_alarm: TRzEdit;
    lbl_121: TRzLabel;
    edt_rvswr_alarm: TRzEdit;
    lbl_122: TRzLabel;
    edt_rfwd_alarm: TRzEdit;
    lbl_123: TRzLabel;
    edt_rref_alarm: TRzEdit;
    lbl_125: TRzLabel;
    edt_rfan2_alarm: TRzEdit;
    lbl_126: TRzLabel;
    edt_rfan3_alarm: TRzEdit;
    lbl_127: TRzLabel;
    edt_rfan1_alarm: TRzEdit;
    lbl_128: TRzLabel;
    edt_rtemp_alarm: TRzEdit;
    btn_query_alarm_info: TRzButton;
    lbl_116: TRzLabel;
    edt_freq: TRzEdit;
    lbl_7: TRzLabel;
    cbb_band: TRzComboBox;
    lbl_117: TRzLabel;
    cbb_ext_type: TRzComboBox;
    lbl_124: TRzLabel;
    edt_gv: TRzEdit;
    lbl_129: TRzLabel;
    edt_fwd_ratio: TRzEdit;
    lbl_130: TRzLabel;
    edt_ref_ratio: TRzEdit;
    btn_query_sys: TRzButton;
    btn_set_sys: TRzButton;
    btn_query_alarm_para: TRzButton;
    btn_set_alarm_para: TRzButton;
    btn_query_net: TRzButton;
    btn_set_net: TRzButton;
    btn_query_ver: TRzButton;
    lbl_131: TRzLabel;
    edt_fwd_max: TRzEdit;
    lbl_132: TRzLabel;
    edt_in_max: TRzEdit;
    lbl_133: TRzLabel;
    edt_temp_max: TRzEdit;
    lbl_134: TRzLabel;
    edt_ref_max: TRzEdit;
    lbl_135: TRzLabel;
    edt_vswr_max: TRzEdit;
    lbl_136: TRzLabel;
    edt_cur_max: TRzEdit;
    lbl_137: TRzLabel;
    IPEdit_net_ip: TIPEdit;
    lbl_138: TRzLabel;
    IPEdit_net_mask: TIPEdit;
    lbl_139: TRzLabel;
    IPEdit_net_gate: TIPEdit;
    lbl_140: TRzLabel;
    edt_ver_avr: TRzEdit;
    lbl_141: TRzLabel;
    edt_ver_mcu: TRzEdit;
    ckbox_bw: TRzCheckBox;
    ckbox_exct: TRzCheckBox;
    ckbox_fwd_ratio: TRzCheckBox;
    ckbox_freq: TRzCheckBox;
    ckbox_gv: TRzCheckBox;
    ckbox_ref_ratio: TRzCheckBox;
    ckbox_fwd_max: TRzCheckBox;
    ckbox_temp_max: TRzCheckBox;
    ckbox_vswr_max: TRzCheckBox;
    ckbox_in_max: TRzCheckBox;
    ckbox_ref_max: TRzCheckBox;
    ckbox_cur_max: TRzCheckBox;
    ckbox_ip: TRzCheckBox;
    ckbox_mask: TRzCheckBox;
    ckbox_gate: TRzCheckBox;
    ckbox_clear_alarm: TRzCheckBox;
    lbl_142: TRzLabel;
    cbb_clear_alarm: TRzComboBox;
    function get_check_sum_long(pdata:puint8;len:uint32):uint32;
    procedure tcp_frame_sum_tail(pout:pointer;frame_len:uint32);
    procedure tcp_frame_printf_send(pout:pointer;frame_len:uint32);
    procedure tcp_frame_printf_rec(pout:pointer;frame_len:uint32);
    procedure FormCreate(Sender: TObject);
    procedure btn_conClick(Sender: TObject);
    procedure btn_disClick(Sender: TObject);
    procedure send_query_cmd(Sender: TObject);
    procedure send_set_cmd(Sender: TObject);
    procedure socket_lptvConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure socket_lptvDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure socket_lptvRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure mmo1DblClick(Sender: TObject);
    procedure socket_lptvError(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    function hz_to_freq(hz:uint32):uint32;
    function freq_to_hz(freqNo:uint32):uint32;
    procedure btn_testClick(Sender: TObject);
    function tcp_frame_check(pinbuf:puint8;rec_len:uint32;pret:puint32):ps_tcp_frame;
    procedure tcp_remote_proc(pdata:puint8;len:uint32);
    procedure tcp_proc_read_ret(pframe:ps_tcp_frame);
    procedure tcp_proc_set_ret(pframe:ps_tcp_frame);
    procedure tcp_proc_read_status(pinfo:pS_TCP_STATUS_INFO);
    procedure tcp_proc_read_alarm_info(pinfo:pS_TCP_ALARM_INFO);
    procedure tcp_proc_read_ver_info(pinfo:pS_TCP_VERSION_INFO);
    procedure tcp_proc_read_sys_para(ppara:pS_TCP_SYS_PARA);
    procedure tcp_proc_read_alarm_para(ppara:pS_TCP_ALM_PARA);
    procedure tcp_proc_read_net_para(ppara:pS_TCP_NET_PARA);

    function tcp_get_sys_para(ppara:pS_TCP_SYS_PARA):uint16;
    function tcp_get_alarm_para(ppara:pS_TCP_ALM_PARA):uint16;
    function tcp_get_net_para(ppara:pS_TCP_NET_PARA):uint16;

    procedure HexKeyPress(Sender: TObject; var Key: Char);
    procedure numKeyPress(Sender: TObject; var Key: Char);
    procedure floatKeyPress(Sender: TObject; var Key: Char);
    procedure edt_pa_alarmChange(Sender: TObject);

    procedure get_start_para();
  private
    { Private declarations }
  public
    { Public declarations }
  end; 

var
  Form1: TForm1;
  tcp_send_buf:array[0..1500-1]of uint8;
  tcp_rec_buf:array[0..1500-1]of uint8;
  g_debug_mode:uint32;
implementation

{$R *.dfm}

function TForm1.get_check_sum_long(pdata:puint8;len:uint32):uint32;
var
  sum:uint32;
begin
   sum := 0;
   
   while(len>0) do
   begin
       inc(sum,pdata^);
       Dec(len);
       Inc(pdata);
   end;
   result:=sum;
end;

procedure TForm1.tcp_frame_printf_send(pout:pointer;frame_len:uint32);
var
  pstr:puint8;
  buf:string;
begin
  pstr:=puint8(pout);

  buf:='发送报文:';

  while(frame_len>0) do
  begin
     buf:=buf+' '+format('%.2X',[pstr^]);
     Inc(pstr);
     Dec(frame_len);
  end;
  mmo1.Lines.Add(buf);
end;

procedure TForm1.tcp_frame_printf_rec(pout:pointer;frame_len:uint32);
var
  pstr:puint8;
  buf:string;
begin
  pstr:=puint8(pout);

  buf:='接收报文:';

  while(frame_len>0) do
  begin
     buf:=buf+' '+format('%.2X',[pstr^]);
     Inc(pstr);
     Dec(frame_len);
  end;
  mmo1.Lines.Add(buf);
end;

procedure TForm1.tcp_frame_sum_tail(pout:pointer;frame_len:uint32);
var
  calc_sum:uint16;
  pstr:puint8;
begin
    pstr:=puint8(pout);
    calc_sum := get_check_sum_long(pout,frame_len-TCP_FRAME_NOT_SUM_LEN);

    Inc(pstr,frame_len-4);

    pstr^ := calc_sum;
    inc(pstr);
    pstr^ := calc_sum shr 8;
    inc(pstr);
    pstr^ := uint8(TCP_FRAME_TAIL);
    inc(pstr);
    pstr^ := TCP_FRAME_TAIL shr 8;
end;

procedure tform1.get_start_para();
begin
  g_debug_mode:=0;
  if(ParamCount=1) then
  begin
     if(ParamStr(1)='debug') then
     begin
        g_debug_mode:=1;
     end;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
    get_start_para();

    if(g_debug_mode=0)then
    begin 
       Form1.Width:=625;
       mmo1.Visible:=false;
    end;
    
    socket_lptv.Port:= TCP_COMM_PORT;

    btn_con.Enabled:=true;
    btn_dis.Enabled:=false;

end;

procedure TForm1.btn_conClick(Sender: TObject);
begin
    socket_lptv.Host:=IPEdit1.IPString;

    if(socket_lptv.Active) then socket_lptv.Active:=False;
    
    socket_lptv.Active:=true;
    btn_con.Enabled:=false;
end;

procedure TForm1.btn_disClick(Sender: TObject);
begin
    socket_lptv.Active:=false;
end;

procedure TForm1.send_query_cmd(Sender: TObject);
var
  pframe:pS_TCP_FRAME;
  cmd_t:uint16;
  cmd_i:uint16;
begin
    if(socket_lptv.Active=False) then
       exit;

    if(Sender=btn_query_status)or(Sender=btn_query_alarm_info)or(Sender=btn_query_sys)
      or(sender=btn_query_alarm_para)or(Sender=btn_query_net)or(Sender=btn_query_ver) then
    begin
       cmd_t:=uint16(E_TCP_READ_PARA);
       
       if Sender=btn_query_status             then  cmd_i:=1
       else if  Sender=btn_query_alarm_info   then  cmd_i:=2
       else if  Sender=btn_query_sys          then  cmd_i:=10
       else if  Sender=btn_query_alarm_para   then  cmd_i:=11
       else if  Sender=btn_query_net          then  cmd_i:=12
       else if  Sender=btn_query_ver          then  cmd_i:=3
       else  Exit;
    end
    else
    begin
        Exit;
    end;

    pframe:=pS_TCP_FRAME(@tcp_send_buf);

    pframe^.header:=TCP_FRAME_HEADER;
    pframe^.length:=TCP_FRAME_LEN_WITHOUT_DATA;
    pframe^.dev_id:=0;
    pframe^.dev_id:=0;
    pframe^.cmd_type:=cmd_t;
    pframe^.cmd_index:=cmd_i;

    tcp_frame_sum_tail(pframe,TCP_FRAME_LEN_WITHOUT_DATA);
    socket_lptv.Socket.SendBuf(tcp_send_buf,TCP_FRAME_LEN_WITHOUT_DATA);
    
    tcp_frame_printf_send(pframe,TCP_FRAME_LEN_WITHOUT_DATA);
end;


function tform1.tcp_get_sys_para(ppara:pS_TCP_SYS_PARA):uint16;
var
  len:uint16;
  set_num:uint32;
  f:double;
begin

    set_num:=0;

    FillMemory(ppara,SizeOf(S_TCP_SYS_PARA),E_INVALID_DATA);
    
    if(ckbox_bw.Checked) then
    begin
        ppara^.band := cbb_band.ItemIndex;
        Inc(set_num);
    end;

    if(ckbox_exct.Checked) then
    begin
        ppara^.excit_type := cbb_ext_type.ItemIndex;
        Inc(set_num);
    end;

    if(ckbox_freq.Checked) then
    begin
        try
          ppara^.freq := StrToInt(edt_freq.Text);
          Inc(set_num);
        except
        end;
    end;

    if(ckbox_gv.Checked) then
    begin
        try
          f:=StrTofloat(edt_gv.Text)*100;
          ppara^.gv := trunc(f);
          Inc(set_num);
        except
        end;
    end;

    if(ckbox_fwd_ratio.Checked) then
    begin
        try
          f:=StrTofloat(edt_fwd_ratio.Text)*10;
          ppara^.fwd_ratio := trunc(f);
          Inc(set_num);
        except
        end;
    end;

    if(ckbox_ref_ratio.Checked) then
    begin
        try
          f:=StrTofloat(edt_ref_ratio.Text)*10;
          ppara^.ref_ratio := trunc(f);
          Inc(set_num);
        except
        end;
    end;

    if(set_num>0) then
       len:=sizeof(S_TCP_SYS_PARA)
    else
       len:=0;
       
    result:=len;
end;

function tform1.tcp_get_alarm_para(ppara:pS_TCP_ALM_PARA):uint16;
var
  len:uint16;
  set_num:uint32;
  f:double;
begin
   set_num:=0;
   FillMemory(ppara,SizeOf(S_TCP_ALM_PARA),E_INVALID_DATA);
   if(ckbox_fwd_max.Checked) then
   begin
        try
          f := StrTofloat(edt_fwd_max.Text);
          ppara^.fwd_max := trunc(f);
          Inc(set_num);
        except
        end;
   end;

   if(ckbox_ref_max.Checked) then
   begin
        try
          f := StrTofloat(edt_ref_max.Text);
          ppara^.ref_max := trunc(f);
          Inc(set_num);
        except
        end;
   end;

   if(ckbox_temp_max.Checked) then
   begin
        try
          f := StrTofloat(edt_temp_max.Text);
          ppara^.temp_max := trunc(f);
          Inc(set_num);
        except
        end;
   end;

   if(ckbox_vswr_max.Checked) then
   begin
        try
          f := StrTofloat(edt_vswr_max.Text)*100;
          ppara^.vswr_max := trunc(f);
          Inc(set_num);
        except
        end;
   end;
   
   if(ckbox_cur_max.Checked) then
   begin
        try
          f := StrTofloat(edt_cur_max.Text)*100;
          ppara^.cur_max := trunc(f);
          Inc(set_num);
        except
        end;
   end;

   if(ckbox_in_max.Checked) then
   begin
        try
          f := StrTofloat(edt_in_max.Text)*100;
          ppara^.in_max := trunc(f);
          Inc(set_num);
        except
        end;
   end;

   if(ckbox_clear_alarm.Checked) then
   begin
      if(cbb_clear_alarm.ItemIndex=1)then
      begin
        ppara^.clear_alarm_flag := 1;
        Inc(set_num);
      end;
   end;

   if(set_num>0) then
       len:=sizeof(S_TCP_ALM_PARA)
    else
       len:=0;

   result:=len;
end;

function tform1.tcp_get_net_para(ppara:pS_TCP_NET_PARA):uint16;
var
  dev_ip:in_addr;
  len:uint16;
  set_num:uint32;
begin
   set_num:=0;

   FillMemory(ppara,SizeOf(S_TCP_NET_PARA),E_INVALID_DATA);
   if(ckbox_ip.Checked) then
   begin
     dev_ip.S_addr:=inet_addr(PAnsiChar(IPEdit_net_ip.IPString));
     ppara^.ip:=htonl(dev_ip.S_addr);

     Inc(set_num);
   end;

   if(ckbox_mask.Checked) then
   begin
     dev_ip.S_addr:=inet_addr(PAnsiChar(IPEdit_net_mask.IPString));
     ppara^.mask:=htonl(dev_ip.S_addr);
     Inc(set_num);
   end;

   if(ckbox_gate.Checked) then
   begin
     dev_ip.S_addr:=inet_addr(PAnsiChar(IPEdit_net_gate.IPString));
     ppara^.gateway:=htonl(dev_ip.S_addr);
     Inc(set_num);
   end;

   if(set_num>0) then
       len:=sizeof(S_TCP_NET_PARA)
    else
       len:=0;
   result:=len;
end;

procedure TForm1.send_set_cmd(Sender: TObject);
var
  pframe:pS_TCP_FRAME;
  cmd_t:uint16;
  cmd_i:uint16;
  data_len:uint16;
begin
    if(socket_lptv.Active=False) then
       exit;

    pframe:=pS_TCP_FRAME(@tcp_send_buf);

    if(Sender=btn_set_sys)or(Sender=btn_set_alarm_para)or(Sender=btn_set_net)then
    begin
       cmd_t:=uint16(E_TCP_WRITE_PARA);

       if Sender=btn_set_sys              then
       begin
         cmd_i:=1;
         data_len:= tcp_get_sys_para(pS_tcp_sys_para(@pframe^.data));
       end
       else if  Sender=btn_set_alarm_para then
       begin
         cmd_i:=2;
         data_len:= tcp_get_alarm_para(pS_tcp_alm_para(@pframe^.data));
       end
       else if  Sender=btn_set_net        then
       begin
         cmd_i:=3;
         data_len:= tcp_get_net_para(pS_tcp_net_para(@pframe^.data));
       end
       else  Exit;
    end
    else
    begin
       Exit;
    end;                

    if(data_len=0) then exit;

    pframe^.header:=TCP_FRAME_HEADER;
    pframe^.length:=TCP_FRAME_LEN_WITHOUT_DATA+data_len;
    pframe^.dev_id:=0;
    pframe^.dev_id:=0;
    pframe^.cmd_type:=cmd_t;
    pframe^.cmd_index:=cmd_i;

    tcp_frame_sum_tail(pframe,pframe^.length);
    socket_lptv.Socket.SendBuf(tcp_send_buf,pframe^.length);
    
    tcp_frame_printf_send(pframe,pframe^.length);
end;

procedure TForm1.socket_lptvConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
    btn_con.Enabled:=False;
    btn_dis.Enabled:=true;
end;

procedure TForm1.socket_lptvDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
    btn_con.Enabled:=true;
    btn_dis.Enabled:=False;
end;

function tform1.tcp_frame_check(pinbuf:puint8;rec_len:uint32;pret:puint32):ps_tcp_frame;
var
  i:uint32;
  pframe:pS_TCP_FRAME;
  pusebuf:puint8;
  calc_sum,frame_sum:uint16;
begin
    if(rec_len<TCP_FRAME_LEN_WITHOUT_DATA) then
    begin
        pret^ := TCP_ERR_UNKNOW_FRAME;
        result:=nil;
        Exit;
    end;

    pusebuf := puint8(pinbuf);
    for  i:=0 to rec_len-TCP_FRAME_LEN_WITHOUT_DATA do
    begin
        //非4字节对齐地址,不做处理
        if (uint32(pusebuf)and 3)<>0 then
        begin
            inc(pusebuf);
            continue;
        end;

        pframe := pS_TCP_FRAME(pusebuf);

        if(pframe^.header<>TCP_FRAME_HEADER)    then
        begin
            inc(pusebuf);
            continue;
        end;
        if(pframe^.length>=TCP_REMOTE_MAX_REC_LEN)  then
        begin
          inc(pusebuf);
            continue;
        end;
        if(pframe^.length>rec_len)      then
        begin
            inc(pusebuf);
            continue;
        end;
        //功放不会收到应答
        if((pframe^.cmd_type and $fff)>=uint16(E_TCP_CMD_TYPE_END))     then
        begin
            inc(pusebuf);
            continue;
        end;
        //更具体的可到读写函数中再做判断
        if((pframe^.cmd_index>=uint16(E_READ_CMD_END))and(pframe^.cmd_index>=uint16(E_WRITE_CMD_END)))  then
        begin
            inc(pusebuf);
            continue;
        end;
        //小端序,低字节在前,高字节在后
        calc_sum := get_check_sum_long(pinbuf,pframe^.length-TCP_FRAME_NOT_SUM_LEN);
        frame_sum:= puint8(uint32(pinbuf)+pframe^.length-4)^ or (puint8(uint32(pinbuf)+pframe^.length-3)^ shl 8);
        if(calc_sum<>frame_sum)      then
        begin
            pret^ := TCP_ERR_CHECK_SUM;
            result:= pframe;
            exit;
        end;

        frame_sum:= puint8(uint32(pinbuf)+pframe^.length-2)^ or (puint8(uint32(pinbuf)+pframe^.length-1)^ shl 8);
        if frame_sum <> TCP_FRAME_TAIL    then
        begin
            pret^ := TCP_ERR_FRAME_FORAMT;
            result:= pframe;
            Exit;
        end;
        pret^ := TCP_ERR_NONE;
        result:= pframe;
        exit;
    end;
    pret^ := TCP_ERR_FRAME_FORAMT;
    result:=nil;
end;

procedure tform1.tcp_proc_read_status(pinfo:pS_TCP_STATUS_INFO);
begin
    edt_r50v_cur1.Text:='';
    edt_r50v_cur2.Text:='';
    edt_r50v_cur3.Text:='';
    edt_r50v_cur4.Text:='';

    edt_r50v_vol.Text:='';
    edt_r12v_vol.Text:='';
    edt_r9v_vol.Text:='';

    edt_rpa_in.Text:='';
    edt_rtemp.Text:='';
    edt_rfwd.Text:='';
    edt_rvswr.Text:='';
    edt_rref.Text:='';
    edt_rgv.Text:='';
    edt_rfan1.Text:='';
    edt_rfan2.Text:='';
    edt_rfan3.Text:='';

    Application.ProcessMessages;
    Sleep(50);
    
    edt_r50v_cur1.Text:=Format('%f',[pinfo^.m50v_cur1 / 100]);
    edt_r50v_cur2.Text:=Format('%f',[pinfo^.m50v_cur2 / 100]);
    edt_r50v_cur3.Text:=Format('%f',[pinfo^.m50v_cur3 / 100]);
    edt_r50v_cur4.Text:=Format('%f',[pinfo^.m50v_cur4 / 100]);

    edt_r50v_vol.Text:=Format('%f',[pinfo^.m50v_vol / 100]);
    edt_r12v_vol.Text:=Format('%f',[pinfo^.m12v_vol / 100]);
    edt_r9v_vol.Text:=Format('%f',[pinfo^.m9v_vol / 100]);

    edt_rpa_in.Text:=Format('%f',[pinfo^.pa_in / 100]);
    edt_rtemp.Text:=Format('%f',[pinfo^.pa_temp / 100]);
    edt_rfwd.Text:=Format('%f',[pinfo^.pa_fwd / 100]);
    edt_rvswr.Text:=Format('%f',[pinfo^.vswr / 100]);
    edt_rref.Text:=Format('%f',[pinfo^.pa_reflect_w / 100]);
    edt_rgv.Text:=Format('%f',[pinfo^.m881_gv / 100]);
    edt_rfan1.Text:=Format('%d',[pinfo^.fan0_speed]);
    edt_rfan2.Text:=Format('%d',[pinfo^.fan1_speed]);
    edt_rfan3.Text:=Format('%d',[pinfo^.fan2_speed]);
end;
procedure tform1.tcp_proc_read_alarm_info(pinfo:pS_TCP_ALARM_INFO);
var
  err_info:array[0..1]of string;
begin
    err_info[0]:='正常';
    err_info[1]:='异常';

    edt_rref_alarm.Text:='';
    edt_rfwd_alarm.Text:='';
    edt_rtemp_alarm.Text:='';
    edt_rvswr_alarm.Text:='';
    edt_r50v_alarm.Text:='';
    edt_rin_alarm.Text:='';
    edt_rcur1_alarm.Text:='';
    edt_rcur2_alarm.Text:='';
    edt_rcur3_alarm.Text:='';
    edt_rcur4_alarm.Text:='';

    edt_rfan1_alarm.Text:='';
    edt_rfan2_alarm.Text:='';
    edt_rfan3_alarm.Text:='';
    Application.ProcessMessages;
    Sleep(50);

    edt_rref_alarm.Text:=err_info[pinfo^.ref_alarm and 1];
    edt_rfwd_alarm.Text:=err_info[pinfo^.fwd_alarm and 1];
    edt_rtemp_alarm.Text:=err_info[pinfo^.tmp_alarm and 1];
    edt_rvswr_alarm.Text:=err_info[pinfo^.vswr_alarm and 1];
    edt_r50v_alarm.Text:=err_info[pinfo^.v50v_alarm and 1];
    edt_rin_alarm.Text:=err_info[pinfo^.in_alarm and 1];
    edt_rcur1_alarm.Text:=err_info[pinfo^.cur_alarm1 and 1];
    edt_rcur2_alarm.Text:=err_info[pinfo^.cur_alarm2 and 1];
    edt_rcur3_alarm.Text:=err_info[pinfo^.cur_alarm3 and 1];
    edt_rcur4_alarm.Text:=err_info[pinfo^.cur_alarm4 and 1];

    edt_rfan1_alarm.Text:=err_info[pinfo^.fan0_alarm and 1];
    edt_rfan2_alarm.Text:=err_info[pinfo^.fan1_alarm and 1];
    edt_rfan3_alarm.Text:=err_info[pinfo^.fan2_alarm and 1];
end;

procedure tform1.tcp_proc_read_ver_info(pinfo:pS_TCP_VERSION_INFO);
begin
   edt_ver_avr.Text:='';
   edt_ver_mcu.Text:='';
   
   Application.ProcessMessages;
   Sleep(50);
    
   edt_ver_avr.Text:=IntToStr(pinfo^.avr_ver);
   edt_ver_mcu.Text:=IntToStr(pinfo^.mcu_ver);
end;


procedure tform1.tcp_proc_read_sys_para(ppara:pS_TCP_SYS_PARA);
begin
    cbb_band.ItemIndex:=-1;
    cbb_ext_type.ItemIndex:=-1;
    edt_freq.Text:='';
    edt_gv.Text:='';
    edt_fwd_ratio.text:='';
    edt_ref_ratio.Text:='';

    Application.ProcessMessages;
    Sleep(50);

    cbb_band.ItemIndex:=ppara^.band and 1;
    cbb_ext_type.ItemIndex:=ppara^.excit_type;
    edt_freq.Text:=inttostr(ppara^.freq);
    edt_gv.Text:=Format('%f',[ppara^.gv / 100]);
    edt_fwd_ratio.text:=Format('%f',[ppara^.fwd_ratio / 10]);
    edt_ref_ratio.Text:=Format('%f',[ppara^.ref_ratio / 10]);
end;

procedure tform1.tcp_proc_read_alarm_para(ppara:pS_TCP_ALM_PARA);
begin
   edt_fwd_max.Text:='';
   edt_ref_max.Text:='';
   edt_temp_max.Text:='';
   edt_vswr_max.Text:='';
   edt_cur_max.Text:='';
   edt_in_max.Text:='';
   cbb_clear_alarm.ItemIndex:=-1;

   Application.ProcessMessages;
   Sleep(50);

   edt_fwd_max.Text:=Format('%d',[ppara^.fwd_max]);
   edt_ref_max.Text:=Format('%d',[ppara^.ref_max]);
   edt_temp_max.Text:=Format('%d',[ppara^.temp_max]);
   edt_vswr_max.Text:=Format('%f',[ppara^.vswr_max / 100]);
   edt_cur_max.Text:=Format('%f',[ppara^.cur_max / 100]);
   edt_in_max.Text:=Format('%f',[ppara^.in_max / 100]);
   cbb_clear_alarm.ItemIndex:=0;
end;

procedure tform1.tcp_proc_read_net_para(ppara:pS_TCP_NET_PARA);
var
  dev_ip:in_addr;
begin
   IPEdit_net_ip.Fields[0].Clear;
   IPEdit_net_ip.Fields[1].Clear;
   IPEdit_net_ip.Fields[2].Clear;
   IPEdit_net_ip.Fields[3].Clear;
   
   IPEdit_net_mask.Fields[0].Clear;
   IPEdit_net_mask.Fields[1].Clear;
   IPEdit_net_mask.Fields[2].Clear;
   IPEdit_net_mask.Fields[3].Clear;

   IPEdit_net_gate.Fields[0].Clear;
   IPEdit_net_gate.Fields[1].Clear;
   IPEdit_net_gate.Fields[2].Clear;
   IPEdit_net_gate.Fields[3].Clear;
   
   Application.ProcessMessages;
   Sleep(50);

   dev_ip.S_addr:=htonl(ppara^.ip);
   IPEdit_net_ip.IPString:=inet_ntoa(dev_ip);

   dev_ip.S_addr:=htonl(ppara^.mask);
   IPEdit_net_mask.IPString:=inet_ntoa(dev_ip);

   dev_ip.S_addr:=htonl(ppara^.gateway);
   IPEdit_net_gate.IPString:=inet_ntoa(dev_ip);
end;


procedure tform1.tcp_proc_read_ret(pframe:ps_tcp_frame);
begin
    case pframe^.cmd_index of
      E_READ_STATUS_INFO:
        tcp_proc_read_status(ps_tcp_status_info(@pframe^.data));
      E_READ_STATUS_ALARM:
        tcp_proc_read_alarm_info(pS_TCP_ALARM_INFO(@pframe^.data));
      E_READ_VER_INFO:
         tcp_proc_read_ver_info(pS_TCP_VERSION_INFO(@pframe^.data));
      E_READ_SYS_PARA:
         tcp_proc_read_sys_para(pS_TCP_SYS_PARA(@pframe^.data));
      E_READ_ALM_PARA:
         tcp_proc_read_alarm_para(pS_TCP_ALM_PARA(@pframe^.data));
      E_READ_NET_PARA:
         tcp_proc_read_net_para(pS_TCP_NET_PARA(@pframe^.data));
    else
       exit;
    end;
end;
procedure tform1.tcp_proc_set_ret(pframe:ps_tcp_frame);
begin
    case pframe^.cmd_index of
      E_READ_VER_INFO:
        exit;
      E_READ_SYS_PARA:
        exit;
      E_READ_ALM_PARA:
        exit;
      E_READ_NET_PARA:
        exit;
    else
      exit;
    end;
end;

procedure tform1.tcp_remote_proc(pdata:puint8;len:uint32);
var
  pframe:pS_TCP_FRAME;
  ret:uint32;
begin
   pframe:=tcp_frame_check(pdata,len,@ret);

   if(pframe=nil)or(ret<>0) then
   begin
     exit;
   end;

   case pframe^.cmd_type and $fff of
     E_TCP_READ_PARA:
        tcp_proc_read_ret(pframe);
     E_TCP_WRITE_PARA:
        tcp_proc_set_ret(pframe);       
   else
   end;
end;

procedure TForm1.socket_lptvRead(Sender: TObject;
  Socket: TCustomWinSocket);
var
  rec_len:uint32;
begin
   rec_len:=Socket.ReceiveLength;
   if(rec_len>1500) then
     rec_len:=1500;

   Socket.ReceiveBuf(tcp_rec_buf,rec_len);

   tcp_frame_printf_rec(@tcp_rec_buf,rec_len);

   tcp_remote_proc(@tcp_rec_buf,rec_len);
end;

procedure TForm1.mmo1DblClick(Sender: TObject);
begin
    mmo1.Lines.Clear;
end;

procedure TForm1.socket_lptvError(Sender: TObject;
  Socket: TCustomWinSocket; ErrorEvent: TErrorEvent;
  var ErrorCode: Integer);
begin
   btn_con.Enabled:=true;
   btn_dis.Enabled:=False;
end;

function tform1.freq_to_hz(freqNo:uint32):uint32;
var
    hz:uint32;
begin
    hz:=0;
    if(false) then //true 8M
    begin
        if((freqNo>=10) and (freqNo<=24))  then
        begin
            hz  := ((freqNo-10)*8+450);
        end
        else if((freqNo>=25)and(freqNo<=57))  then
        begin
            hz  := ((freqNo-25)*8+610);
        end
        else if((freqNo>=139)and(freqNo<=143))  then
        begin
            hz := ((freqNo-139)*8+570);
        end;
    end
    else
    begin
        if((freqNo>=14)and(freqNo<=83)) then
        begin
            hz  := (freqNo-14)*6+473;
        end;
    end;
    result:=hz;
end;


function tform1.hz_to_freq(hz:uint32):uint32;
var
    freq:uint32;
begin
    freq:=0;
    if(false) then //true:8M
    begin
        if((hz>=450)and(hz<=562))  then
        begin
            Dec(hz,450);;
            if(hz mod 8)=0   then
                freq  := hz div 8+10;
        end
        else if((hz>=610)and(hz<=866))  then
        begin
            Dec(hz,610);
            if(hz mod 8) =0 then
                freq  := hz div 8+25;
        end
        else if((hz>=570)and(hz<=602))  then
        begin
            Dec(hz,570);
            if(hz mod 8)=0  then
                freq  := hz div 8+139;
        end
    end
    else
    begin
        if((hz>=473)and(hz<=887))   then
        begin
            Dec(hz,473);
            if(hz mod 6)=0 then
                freq := hz div 6+14;
        end;
    end;
    result:=freq;
end;

procedure TForm1.btn_testClick(Sender: TObject);
var
  i,freq,hz:uint32;
  str:string;
begin
   for i:=14 to 83 do
   begin
       hz:= freq_to_hz(i);
       freq:=hz_to_freq(hz);
       if(i=freq) then
          str:='正常 原始频点:'+inttostr(i)+'  转换频率:'+inttostr(hz)+'  转换频点:'+inttostr(freq)
       else
          str:='错误 原始频点:'+inttostr(i)+'  转换频率:'+inttostr(hz)+'  转换频点:'+inttostr(freq);

       mmo1.Lines.Add(str);   
   end;
end;

procedure TForm1.HexKeyPress(Sender: TObject; var Key: Char);
begin
    if not (key in[#0..#30,'0'..'9','a'..'f','A'..'F'])  then
       key:=#0;
end;

procedure TForm1.numKeyPress(Sender: TObject; var Key: Char);
begin
    if not (key in[#0..#30,'0'..'9'])  then
       key:=#0;
end;

procedure TForm1.floatKeyPress(Sender: TObject; var Key: Char);
begin
    if not (key in[#0..#30,'0'..'9','.'])  then
       key:=#0;
end;

procedure TForm1.edt_pa_alarmChange(Sender: TObject);
begin
    with sender as TRzEdit do
    begin
      if(text='异常') then
      begin
         Font.Color:=clRed;
      end
      else
      begin
         Font.Color:=clblack;
      end;
    end;
end;

end.
