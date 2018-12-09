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
    lbl_3: TRzLabel;
    lbl_4: TRzLabel;
    lbl_5: TRzLabel;
    lbl_6: TRzLabel;
    lbl_11: TRzLabel;
    lbl_15: TRzLabel;
    lbl_16: TRzLabel;
    lbl_17: TRzLabel;
    lbl_18: TRzLabel;
    lbl_19: TRzLabel;
    lbl_111: TRzLabel;
    lbl_112: TRzLabel;
    RzLabel1: TRzLabel;
    RzLabel2: TRzLabel;
    RzLabel3: TRzLabel;
    RzLabel4: TRzLabel;
    RzLabel5: TRzLabel;
    RzLabel6: TRzLabel;
    RzLabel7: TRzLabel;
    RzLabel8: TRzLabel;
    RzLabel9: TRzLabel;
    RzLabel12: TRzLabel;
    edt_r50v_cur1: TRzEdit;
    edt_r50v_cur2: TRzEdit;
    edt_r50v_cur3: TRzEdit;
    edt_r50v_cur4: TRzEdit;
    edt_r50v_vol: TRzEdit;
    edt_rfwd: TRzEdit;
    edt_rref: TRzEdit;
    edt_rvswr: TRzEdit;
    edt_rtemp: TRzEdit;
    edt_ratt_curr: TRzEdit;
    edt_rfan2: TRzEdit;
    edt_rfan3: TRzEdit;
    btn_query_status: TRzButton;
    edt_rrejt1: TRzEdit;
    edt_r50v_cur5: TRzEdit;
    edt_r50v_cur6: TRzEdit;
    edt_r50v_cur7: TRzEdit;
    edt_rfan4: TRzEdit;
    edt_rfan5: TRzEdit;
    edt_rfan6: TRzEdit;
    edt_rfreq: TRzEdit;
    edt_rfan1: TRzEdit;
    TabSheet_alarm_info: TRzTabSheet;
    lbl_113: TRzLabel;
    lbl_114: TRzLabel;
    lbl_121: TRzLabel;
    lbl_122: TRzLabel;
    lbl_123: TRzLabel;
    lbl_125: TRzLabel;
    lbl_126: TRzLabel;
    lbl_127: TRzLabel;
    lbl_128: TRzLabel;
    RzLabel10: TRzLabel;
    RzLabel13: TRzLabel;
    RzLabel14: TRzLabel;
    RzLabel15: TRzLabel;
    edt_r50v_cur_alarm: TRzEdit;
    edt_r50v_vol_alarm: TRzEdit;
    edt_rvswr_alarm: TRzEdit;
    edt_rfwd_alarm: TRzEdit;
    edt_rref_alarm: TRzEdit;
    edt_rfan2_alarm: TRzEdit;
    edt_rfan3_alarm: TRzEdit;
    edt_rfan1_alarm: TRzEdit;
    edt_rtemp_alarm: TRzEdit;
    btn_query_alarm_info: TRzButton;
    edt_rrejt_alarm: TRzEdit;
    edt_rfan4_alarm: TRzEdit;
    edt_rfan5_alarm: TRzEdit;
    edt_rfan6_alarm: TRzEdit;
    TabSheet_sys_para: TRzTabSheet;
    lbl_116: TRzLabel;
    lbl_7: TRzLabel;
    lbl_117: TRzLabel;
    lbl_124: TRzLabel;
    lbl_129: TRzLabel;
    lbl_130: TRzLabel;
    qwewq1: TRzLabel;
    qwewq2: TRzLabel;
    qwewq3: TRzLabel;
    qwewq4: TRzLabel;
    qwewq5: TRzLabel;
    qwewq6: TRzLabel;
    qwewq7: TRzLabel;
    qwewq8: TRzLabel;
    edt_rjt1_ratio: TRzEdit;
    edt_exc_mode: TRzComboBox;
    edt_agc: TRzComboBox;
    edt_att_min: TRzEdit;
    edt_fwd_ratio: TRzEdit;
    edt_ref_ratio: TRzEdit;
    btn_query_sys: TRzButton;
    btn_set_sys: TRzButton;
    ckbox_exc_mode: TRzCheckBox;
    ckbox_agc: TRzCheckBox;
    ckbox_fwd_ratio: TRzCheckBox;
    ckbox_rjt1_ratio: TRzCheckBox;
    ckbox_att_min: TRzCheckBox;
    ckbox_ref_ratio: TRzCheckBox;
    edt_exc_type: TRzComboBox;
    edt_fwd_stand: TRzEdit;
    ckbox_exc_type: TRzCheckBox;
    ckbox_fwd_stand: TRzCheckBox;
    edt_fan_num: TRzComboBox;
    ckbox_fan_num: TRzCheckBox;
    edt_dacv1: TRzEdit;
    ckbox_dacv1: TRzCheckBox;
    edt_dacv2: TRzEdit;
    ckbox_dacv2: TRzCheckBox;
    edt_dacv3: TRzEdit;
    ckbox_dacv3: TRzCheckBox;
    edt_dacv4: TRzEdit;
    ckbox_dacv4: TRzCheckBox;
    edt_dacv5: TRzEdit;
    ckbox_dacv5: TRzCheckBox;
    TabSheet_alarm_para: TRzTabSheet;
    lbl_131: TRzLabel;
    lbl_133: TRzLabel;
    lbl_134: TRzLabel;
    lbl_135: TRzLabel;
    lbl_136: TRzLabel;
    RzLabel11: TRzLabel;
    btn_query_alarm_para: TRzButton;
    btn_set_alarm_para: TRzButton;
    edt_fwd_max: TRzEdit;
    edt_temp_max: TRzEdit;
    edt_ref_max: TRzEdit;
    edt_vswr_max: TRzEdit;
    edt_cur_max: TRzEdit;
    ckbox_fwd_max: TRzCheckBox;
    ckbox_temp_max: TRzCheckBox;
    ckbox_vswr_max: TRzCheckBox;
    ckbox_ref_max: TRzCheckBox;
    ckbox_cur_max: TRzCheckBox;
    edt_rejt_max: TRzEdit;
    ckbox_rejt_max: TRzCheckBox;
    TabSheet_net_para: TRzTabSheet;
    lbl_137: TRzLabel;
    lbl_138: TRzLabel;
    lbl_139: TRzLabel;
    btn_query_net: TRzButton;
    btn_set_net: TRzButton;
    IPEdit_net_ip: TIPEdit;
    IPEdit_net_mask: TIPEdit;
    IPEdit_net_gate: TIPEdit;
    ckbox_ip: TRzCheckBox;
    ckbox_mask: TRzCheckBox;
    ckbox_gate: TRzCheckBox;
    TabSheet_ver: TRzTabSheet;
    lbl_141: TRzLabel;
    btn_query_ver: TRzButton;
    edt_ver_mcu: TRzEdit;
    edt_rexc_use: TRzComboBox;
    qwewq9: TRzLabel;
    qwewq10: TRzLabel;
    qwewq11: TRzLabel;
    qwewq12: TRzLabel;
    qwewq13: TRzLabel;
    qwewq14: TRzLabel;
    qwewq15: TRzLabel;
    qwewq16: TRzLabel;
    qwewq17: TRzLabel;
    qwewq18: TRzLabel;
    qwewq19: TRzLabel;
    qwewq20: TRzLabel;
    qwewq21: TRzLabel;
    qwewq22: TRzLabel;
    qwewq23: TRzLabel;
    qwewq24: TRzLabel;
    qwewq25: TRzLabel;
    qwewq26: TRzLabel;
    qwewq27: TRzLabel;
    qwewq28: TRzLabel;
    qwewq29: TRzLabel;
    qwewq30: TRzLabel;
    qwewq31: TRzLabel;
    qwewq32: TRzLabel;
    qwewq33: TRzLabel;
    qwewq34: TRzLabel;
    qwewq35: TRzLabel;
    qwewq36: TRzLabel;
    qwewq37: TRzLabel;
    qwewq38: TRzLabel;
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
       
       if Sender=btn_query_status             then  cmd_i:=E_READ_STATUS_INFO
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
    if(ckbox_fwd_ratio.Checked) then
    begin
        try
          f:=StrTofloat(edt_fwd_ratio.Text)*100;
          ppara^.fwd_adj_para := trunc(f);
          Inc(set_num);
        except
        end;
    end;

    if(ckbox_ref_ratio.Checked) then
    begin
        try
          f:=StrTofloat(edt_ref_ratio.Text)*100;
          ppara^.ref_adj_para := trunc(f);
          Inc(set_num);
        except
        end;
    end;
    if(ckbox_rjt1_ratio.Checked) then
    begin
        try
          f:=StrTofloat(edt_rjt1_ratio.Text)*100;
          ppara^.rjt1_adj_para := trunc(f);
          Inc(set_num);
        except
        end;
//        ppara^.rjt1_adj_para := edt_rjt1_ratio.ItemIndex;
 //       Inc(set_num);
    end;

    if(ckbox_exc_mode.Checked) then
    begin
        ppara^.exc_mode := edt_exc_mode.ItemIndex;
        Inc(set_num);
    end;

    if(ckbox_att_min.Checked) then
    begin
        try
          ppara^.att_min := StrToInt(edt_att_min.Text);
          Inc(set_num);
        except
        end;
    end;

    if(ckbox_agc.Checked) then
    begin
        ppara^.agc := edt_agc.ItemIndex;
        Inc(set_num);
    end;

    if(ckbox_fwd_stand.Checked) then
    begin
        try
          f:=StrTofloat(edt_fwd_stand.Text);
          ppara^.fwd_stand := trunc(f);
          Inc(set_num);
        except
        end;
    end;
    if(ckbox_exc_type.Checked) then
    begin
        ppara^.exc_type := edt_exc_type.ItemIndex;
        Inc(set_num);
    end;

    if(ckbox_fan_num.Checked) then
    begin
        ppara^.fan_num := edt_fan_num.ItemIndex + 3;
        Inc(set_num);
    end;

    if(ckbox_dacv1.Checked) then
    begin
        try
          f:=StrTofloat(edt_dacv1.Text);
          ppara^.dacv1 := trunc(f);
          Inc(set_num);
        except
        end;
    end;

    if(ckbox_dacv2.Checked) then
    begin
        try
          f:=StrTofloat(edt_dacv2.Text);
          ppara^.dacv2 := trunc(f);
          Inc(set_num);
        except
        end;
    end;

    if(ckbox_dacv3.Checked) then
    begin
        try
          f:=StrTofloat(edt_dacv3.Text);
          ppara^.dacv3 := trunc(f);
          Inc(set_num);
        except
        end;
    end;

    if(ckbox_dacv4.Checked) then
    begin
        try
          f:=StrTofloat(edt_dacv4.Text);
          ppara^.dacv4 := trunc(f);
          Inc(set_num);
        except
        end;
    end;

    if(ckbox_dacv5.Checked) then
    begin
        try
          f:=StrTofloat(edt_dacv5.Text);
          ppara^.dacv5 := trunc(f);
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
          f := StrTofloat(edt_ref_max.Text) * 100;
          ppara^.ref_max := trunc(f);
          Inc(set_num);
        except
        end;
   end;

   if(ckbox_rejt_max.Checked) then
   begin
        try
          f := StrTofloat(edt_rejt_max.Text) * 100;
          ppara^.rejt_max := trunc(f);
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
          ppara^.m50cur_max := trunc(f);
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
    edt_rfwd.Text:='';
    edt_rref.Text:='';
    edt_rrejt1.Text:='';
    edt_rvswr.Text:='';
    edt_rtemp.Text:='';
    edt_r50v_vol.Text:='';
    edt_r50v_cur1.Text:='';
    edt_r50v_cur2.Text:='';
    edt_r50v_cur3.Text:='';
    edt_r50v_cur4.Text:='';
    edt_r50v_cur5.Text:='';
    edt_r50v_cur6.Text:='';
    edt_r50v_cur7.Text:='';
    edt_rfan1.Text:='';
    edt_rfan2.Text:='';
    edt_rfan3.Text:='';
    edt_rfan4.Text:='';
    edt_rfan5.Text:='';
    edt_rfan6.Text:='';

    edt_rfreq.Text:='';
    edt_ratt_curr.Text:='';
    edt_rexc_use.ItemIndex:=-1;

    Application.ProcessMessages;
    Sleep(50);

    edt_rfwd.Text:=Format('%f',[pinfo^.fwd_pow / 100]);
    edt_rref.Text:=Format('%f',[pinfo^.ref_pow / 100]);
    edt_rrejt1.Text:=Format('%f',[pinfo^.rejt1_pow / 100]);
    edt_rvswr.Text:=floattostr(pinfo^.vswr / 100);
    edt_rtemp.Text:=Format('%f',[pinfo^.temp / 100]);

    edt_r50v_vol.Text:=floattostr(pinfo^.m50v_vol / 100);
    edt_r50v_cur1.Text:=Format('%f',[pinfo^.m50v_cur1 / 100]);
    edt_r50v_cur2.Text:=Format('%f',[pinfo^.m50v_cur2 / 100]);
    edt_r50v_cur3.Text:=Format('%f',[pinfo^.m50v_cur3 / 100]);
    edt_r50v_cur4.Text:=Format('%f',[pinfo^.m50v_cur4 / 100]);
    edt_r50v_cur5.Text:=Format('%f',[pinfo^.m50v_cur5 / 100]);
    edt_r50v_cur6.Text:=Format('%f',[pinfo^.m50v_cur6 / 100]);
    edt_r50v_cur7.Text:=Format('%f',[pinfo^.m50v_cur7 / 100]);
    edt_rfan1.Text:=inttostr(pinfo^.fan[0]);
    edt_rfan2.Text:=inttostr(pinfo^.fan[1]);
    edt_rfan3.Text:=inttostr(pinfo^.fan[2]);
    edt_rfan4.Text:=inttostr(pinfo^.fan[3]);
    edt_rfan5.Text:=inttostr(pinfo^.fan[4]);
    edt_rfan6.Text:=inttostr(pinfo^.fan[5]);

    edt_rfreq.Text:=Format('%d',[pinfo^.freq]);
    edt_ratt_curr.Text:=inttostr(pinfo^.att_curr);//Format('%f',[pinfo^.att_curr / 100]);
    edt_rexc_use.ItemIndex:=pinfo^.exc_use;
end;
procedure tform1.tcp_proc_read_alarm_info(pinfo:pS_TCP_ALARM_INFO);
var
  err_info:array[0..1]of string;
begin
    err_info[0]:='正常';
    err_info[1]:='异常';
    edt_rfwd_alarm.Text:='';
    edt_rref_alarm.Text:='';
    edt_rrejt_alarm.Text:='';
    edt_rvswr_alarm.Text:='';
    edt_rtemp_alarm.Text:='';
    edt_r50v_cur_alarm.Text:='';
    edt_r50v_vol_alarm.Text:='';
    edt_rfan1_alarm.Text:='';
    edt_rfan2_alarm.Text:='';
    edt_rfan3_alarm.Text:='';
    edt_rfan4_alarm.Text:='';
    edt_rfan5_alarm.Text:='';
    edt_rfan6_alarm.Text:='';
    Application.ProcessMessages;
    Sleep(50);

    edt_rfwd_alarm.Text:=err_info[pinfo^.fwd_alarm and 1];
    edt_rref_alarm.Text:=err_info[pinfo^.ref_alarm and 1];
    edt_rrejt_alarm.Text:=err_info[pinfo^.rejt_alarm and 1];
    edt_rvswr_alarm.Text:=err_info[pinfo^.vswr_alarm and 1];
    edt_rtemp_alarm.Text:=err_info[pinfo^.temp_alarm and 1];
    edt_r50v_cur_alarm.Text:=err_info[pinfo^.alm_50v_cur and 1];
    edt_r50v_vol_alarm.Text:=err_info[pinfo^.alarm_50v_vol and 1];
    edt_rfan1_alarm.Text:=err_info[pinfo^.fan0_alarm and 1];
    edt_rfan2_alarm.Text:=err_info[pinfo^.fan1_alarm and 1];
    edt_rfan3_alarm.Text:=err_info[pinfo^.fan2_alarm and 1];
    edt_rfan4_alarm.Text:=err_info[pinfo^.fan3_alarm and 1];
    edt_rfan5_alarm.Text:=err_info[pinfo^.fan4_alarm and 1];
    edt_rfan6_alarm.Text:=err_info[pinfo^.fan5_alarm and 1];
end;

procedure tform1.tcp_proc_read_ver_info(pinfo:pS_TCP_VERSION_INFO);
begin
   edt_ver_mcu.Text:='';
   
   Application.ProcessMessages;
   Sleep(50);

 //  edt_ver_mcu.Text:=IntToStr(uint8(pinfo^.mcu_ver shr 24))+IntToStr(uint8(pinfo^.mcu_ver shr 16))
 //     +IntToStr(uint8(pinfo^.mcu_ver shr 8))+IntToStr(uint8(pinfo^.mcu_ver shr 0));
    edt_ver_mcu.Text:=Format('%d',[uint8(pinfo^.mcu_ver shr 24)*1000000 + uint8(pinfo^.mcu_ver shr 16)*10000 + uint8(pinfo^.mcu_ver shr 8)*100 + uint8(pinfo^.mcu_ver shr 0)]);
end;


procedure tform1.tcp_proc_read_sys_para(ppara:pS_TCP_SYS_PARA);
begin
    edt_fwd_ratio.text:='';
    edt_ref_ratio.Text:='';
    edt_rjt1_ratio.Text:='';
    edt_exc_mode.ItemIndex:=-1;
    edt_att_min.Text:='';
    edt_agc.ItemIndex:=-1;
    edt_fwd_stand.text:='';
    edt_exc_type.ItemIndex:=-1;
    edt_fan_num.ItemIndex:=-1;
    edt_dacv1.text:='';
    edt_dacv2.Text:='';
    edt_dacv3.Text:='';
    edt_dacv4.text:='';
    edt_dacv5.Text:='';
    Application.ProcessMessages;
    Sleep(50);

    edt_fwd_ratio.text:=Format('%f',[ppara^.fwd_adj_para / 100]);
    edt_ref_ratio.Text:=Format('%f',[ppara^.ref_adj_para / 100]);
    edt_rjt1_ratio.Text:=Format('%f',[ppara^.rjt1_adj_para / 100]);
    edt_exc_mode.ItemIndex:=ppara^.exc_mode;
    edt_att_min.Text:=inttostr(ppara^.att_min);
    edt_agc.ItemIndex:=ppara^.agc;
    edt_fwd_stand.Text:=inttostr(ppara^.fwd_stand);
    edt_exc_type.ItemIndex:=ppara^.exc_type;
    edt_fan_num.ItemIndex:=ppara^.fan_num-3;
    edt_dacv1.Text:=inttostr(ppara^.dacv1);
    edt_dacv2.Text:=inttostr(ppara^.dacv2);
    edt_dacv3.Text:=inttostr(ppara^.dacv3);
    edt_dacv4.Text:=inttostr(ppara^.dacv4);
    edt_dacv5.Text:=inttostr(ppara^.dacv5);
end;

procedure tform1.tcp_proc_read_alarm_para(ppara:pS_TCP_ALM_PARA);
begin
   edt_fwd_max.Text:='';
   edt_ref_max.Text:='';
   edt_rejt_max.Text:='';
   edt_vswr_max.Text:='';
   edt_cur_max.Text:='';
   edt_temp_max.Text:='';

   Application.ProcessMessages;
   Sleep(50);

   edt_fwd_max.Text:=Format('%d',[ppara^.fwd_max]);
   edt_ref_max.Text:=Format('%f',[ppara^.ref_max / 100]);
   edt_rejt_max.Text:=Format('%f',[ppara^.rejt_max / 100]);
   edt_vswr_max.Text:=Format('%f',[ppara^.vswr_max / 100]);
   edt_cur_max.Text:=Format('%f',[ppara^.m50cur_max / 100]);
   edt_temp_max.Text:=Format('%d',[ppara^.temp_max]);
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
