unit lptv_type;

interface
   type
  uint32 = Cardinal;
  int32  = integer;
  uint16 = word;
  int16  = SmallInt;
  uint8  = byte;
  int8   = ShortInt;   //与C开发的类型一致  字节长度一样

  puint32 = ^uint32;
  pint32  = ^int32;
  puint16 = ^uint16;
  pint16  = ^int16;
  puint8  = ^uint8;
  pint8   = ^int8; 


   S_TCP_STATUS_INFO = packed record
      fwd_pow:uint32;
      ref_pow:uint32;
      rejt1_pow:uint32;
      att_curr:uint16;
      reserverd1:uint16;
      temp:uint32;
      vswr:uint32;
      m50v_vol:uint32;
      m50v_cur1:uint32;
      m50v_cur2:uint32;
      m50v_cur3:uint32;
      m50v_cur4:uint32;
      m50v_cur5:uint32;
      m50v_cur6:uint32;
      m50v_cur7:uint32;
      fan:array[0..5] of uint16;
      freq:uint32;
      exc_use:uint8;
      reserverd2:array[0..2] of uint8;
    end;
    ps_tcp_status_info = ^S_TCP_STATUS_INFO;

    S_TCP_ALARM_INFO = record
      fwd_alarm:uint8;
      ref_alarm:uint8;
      rejt_alarm:uint8;
      vswr_alarm:uint8;
      temp_alarm:uint8;
      alm_50v_cur:uint8;
      alarm_50v_vol:uint8;
      reserverd:uint8;
      fan0_alarm:uint8;
      fan1_alarm:uint8;
      fan2_alarm:uint8;
      fan3_alarm:uint8;
      fan4_alarm:uint8;
      fan5_alarm:uint8;
   end;
   pS_TCP_ALARM_INFO = ^S_TCP_ALARM_INFO;
   
   S_TCP_SYS_PARA = record
     fwd_adj_para:uint16;             //输出功率修正系数
     ref_adj_para:uint16;             //反射功率修正系数
     exc_mode:uint8;                  //激励器连接类型
     rjt1_adj_para:uint16;            //吸收功率修正系数
     att_min:uint8;                   //ATT
     rf_rst:uint16;                   //射频重启
     fwd_stand:uint16;                //额定输出功率
     agc:uint8;                       //自动增益开关
     exc_type:uint8;                  //激励器类型
     fan_num:uint8;                   //风扇个数
     resverd:uint8;

     dacv1:uint16;  //配置的栅压值, 单位mV  当前用的序号为0,1,2,3,4  5未用
     dacv2:uint16;
     dacv3:uint16;
     dacv4:uint16;
     dacv5:uint16;
     dacv6:uint16;
   end;
   pS_TCP_SYS_PARA = ^S_TCP_SYS_PARA;

   S_TCP_ALM_PARA = record
     fwd_max:uint16;         //发射功率门限
     ref_max:uint16;         //反射功率门限
     rejt_max:uint16;        //吸收功率告警门限
     vswr_max:uint16;        //驻波比告警门限
     m50cur_max:uint16;      //电流门限值
     temp_max:uint16;        //温度门限值
   end;
   pS_TCP_ALM_PARA = ^S_TCP_ALM_PARA;

   S_TCP_NET_PARA = record
      ip:uint32;
      mask:uint32;
      gateway:uint32;
      reservd1:uint32;
   end;
   pS_TCP_NET_PARA = ^S_TCP_NET_PARA;

   S_TCP_VERSION_INFO = record
     mcu_ver:uint32;
   end;
   pS_TCP_VERSION_INFO = ^S_TCP_VERSION_INFO;

   S_PA_PARA = record
      status_info:S_TCP_STATUS_INFO;
      alarm_info:S_TCP_ALARM_INFO;
      ver_info:S_TCP_VERSION_INFO;

      sys_para:S_TCP_SYS_PARA;
      alarm_para:S_TCP_ALM_PARA;
      net_para:S_TCP_NET_PARA;        
   end;


   S_TCP_FRAME = packed record
    header:uint16;
    length:uint16;    //整帧报文总长度
    dev_id:uint16;    //设备ID
    dev_type:uint16;
    cmd_type:uint16;
    cmd_index:uint16;
    data:array [0..31] of uint8;  //实际长度有length域决定
    sum:uint16;
    tail:uint16;
  end;
  pS_TCP_FRAME  =  ^S_TCP_FRAME;

const
  TCP_COMM_PORT             =  18120;
  TCP_REMOTE_MAX_REC_LEN    =  1028;
  TCP_REMOTE_MAX_SEND_LEN   =  1028;
  TCP_FRAME_LEN_WITHOUT_DATA=  16;
  TCP_FRAME_NOT_SUM_LEN     =  4;           //整报文中,不需要参数校验和计算的长度

  TCP_FRAME_HEADER         =   $5AA5;
  TCP_FRAME_TAIL           =   $FEEF;

  TCP_PARA_RST_KEY         =   $aa10bcdd;

  TCP_ERR_NONE             =   0;
  TCP_ERR_CHECK_SUM        =   1;
  TCP_ERR_CMD_TYPE         =   2;
  TCP_ERR_CMD_INDEX        =   3;
  TCP_ERR_SET_DATA         =   4;
  TCP_ERR_FRAME_FORAMT     =   5;
  TCP_ERR_RST_KEY          =   6;
  TCP_ERR_LOCAL_MODE       =   7;

  TCP_ERR_UNKNOW_FRAME     =   $FF;       //此错误,表示报文格式未知,不做应答


    E_TCP_READ_PARA      = 1;
    E_TCP_WRITE_PARA     = 2;
    E_TCP_PARA_RST       = 3;
    E_TCP_CHANGE_UPGRADE = 4;
    E_TCP_CMD_TYPE_END   = 5;  


    E_READ_STATUS_INFO   = 1;
    E_READ_STATUS_ALARM  = 2;
    E_READ_VER_INFO      = 3;
    E_READ_SYS_PARA      = 10;
    E_READ_ALM_PARA      = 11;
    E_READ_NET_PARA      = 12;
    E_READ_CMD_END       = 13;



    E_WRITE_SYS_PARA     = 1;
    E_WRITE_ALM_PARA     = 2;
    E_WRITE_NET_PARA     = 3;
    E_WRITE_CMD_END      = 4;

    E_INVALID_DATA  = $FF;


implementation

end.
