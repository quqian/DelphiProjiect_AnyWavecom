object Form1: TForm1
  Left = 432
  Top = 264
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'LPTV'
  ClientHeight = 585
  ClientWidth = 1005
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  DesignSize = (
    1005
    585)
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_1: TRzLabel
    Left = 8
    Top = 30
    Width = 44
    Height = 13
    AutoSize = False
    Caption = #21151#25918'IP'
  end
  object IPEdit1: TIPEdit
    Left = 56
    Top = 26
    Width = 125
    Height = 21
    Cursor = crIBeam
    IPString = '192.168.1.210'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object btn_con: TRzButton
    Left = 224
    Top = 24
    Caption = #36830#25509
    HotTrack = True
    TabOrder = 1
    OnClick = btn_conClick
  end
  object btn_dis: TRzButton
    Left = 328
    Top = 24
    Caption = #26029#24320
    HotTrack = True
    TabOrder = 2
    OnClick = btn_disClick
  end
  object mmo1: TRzMemo
    Left = 615
    Top = 16
    Width = 393
    Height = 569
    Anchors = [akTop, akRight, akBottom]
    ScrollBars = ssVertical
    TabOrder = 3
    OnDblClick = mmo1DblClick
    FrameHotTrack = True
    FrameVisible = True
  end
  object rzpgcntrl1: TRzPageControl
    Left = 3
    Top = 80
    Width = 601
    Height = 500
    ActivePage = TabSheet_status
    ActivePageDefault = TabSheet_status
    TabIndex = 0
    TabOrder = 4
    FixedDimension = 19
    object TabSheet_status: TRzTabSheet
      Caption = #36816#34892#29366#24577
      object lbl_3: TRzLabel
        Left = 322
        Top = 122
        Width = 54
        Height = 13
        AutoSize = False
        Caption = '50V'#30005#27969'1'
      end
      object lbl_4: TRzLabel
        Left = 26
        Top = 154
        Width = 54
        Height = 13
        AutoSize = False
        Caption = '50V'#30005#27969'2'
      end
      object lbl_5: TRzLabel
        Left = 322
        Top = 155
        Width = 54
        Height = 13
        AutoSize = False
        Caption = '50V'#30005#27969'3'
      end
      object lbl_6: TRzLabel
        Left = 26
        Top = 187
        Width = 54
        Height = 13
        AutoSize = False
        Caption = '50V'#30005#27969'4'
      end
      object lbl_11: TRzLabel
        Left = 24
        Top = 122
        Width = 54
        Height = 13
        AutoSize = False
        Caption = '50V'#30005#21387
      end
      object lbl_15: TRzLabel
        Left = 26
        Top = 28
        Width = 54
        Height = 17
        AutoSize = False
        Caption = #36755#20986#21151#29575
      end
      object lbl_16: TRzLabel
        Left = 322
        Top = 30
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #21453#23556#21151#29575
      end
      object lbl_17: TRzLabel
        Left = 320
        Top = 92
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #39547#27874#27604
      end
      object lbl_18: TRzLabel
        Left = 24
        Top = 93
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #28201#24230
      end
      object lbl_19: TRzLabel
        Left = 322
        Top = 60
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #34928#20943#20540
      end
      object lbl_111: TRzLabel
        Left = 322
        Top = 284
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #39118#25159'2'
      end
      object lbl_112: TRzLabel
        Left = 24
        Top = 318
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #39118#25159'3'
      end
      object RzLabel1: TRzLabel
        Left = 26
        Top = 60
        Width = 54
        Height = 17
        AutoSize = False
        Caption = #21560#25910#21151#29575
      end
      object RzLabel2: TRzLabel
        Left = 322
        Top = 187
        Width = 54
        Height = 13
        AutoSize = False
        Caption = '50V'#30005#27969'5'
      end
      object RzLabel3: TRzLabel
        Left = 26
        Top = 219
        Width = 54
        Height = 13
        AutoSize = False
        Caption = '50V'#30005#27969'6'
      end
      object RzLabel4: TRzLabel
        Left = 322
        Top = 219
        Width = 54
        Height = 13
        AutoSize = False
        Caption = '50V'#30005#27969'7'
      end
      object RzLabel5: TRzLabel
        Left = 322
        Top = 316
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #39118#25159'4'
      end
      object RzLabel6: TRzLabel
        Left = 24
        Top = 350
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #39118#25159'5'
      end
      object RzLabel7: TRzLabel
        Left = 322
        Top = 348
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #39118#25159'6'
      end
      object RzLabel8: TRzLabel
        Left = 26
        Top = 252
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #39057#28857
      end
      object RzLabel9: TRzLabel
        Left = 322
        Top = 252
        Width = 87
        Height = 13
        AutoSize = False
        Caption = #36830#25509#28608#21169#22120
      end
      object RzLabel12: TRzLabel
        Left = 26
        Top = 284
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #39118#25159'1'
      end
      object qwewq20: TRzLabel
        Left = 243
        Top = 29
        Width = 14
        Height = 13
        AutoSize = False
        Caption = 'W'
      end
      object qwewq21: TRzLabel
        Left = 531
        Top = 29
        Width = 14
        Height = 13
        AutoSize = False
        Caption = 'W'
      end
      object qwewq22: TRzLabel
        Left = 243
        Top = 61
        Width = 14
        Height = 13
        AutoSize = False
        Caption = 'W'
      end
      object qwewq23: TRzLabel
        Left = 243
        Top = 93
        Width = 14
        Height = 13
        AutoSize = False
        Caption = #8451
      end
      object qwewq24: TRzLabel
        Left = 243
        Top = 125
        Width = 14
        Height = 13
        AutoSize = False
        Caption = 'V'
      end
      object qwewq25: TRzLabel
        Left = 243
        Top = 157
        Width = 14
        Height = 13
        AutoSize = False
        Caption = 'A'
      end
      object qwewq26: TRzLabel
        Left = 243
        Top = 189
        Width = 14
        Height = 13
        AutoSize = False
        Caption = 'A'
      end
      object qwewq27: TRzLabel
        Left = 243
        Top = 221
        Width = 14
        Height = 13
        AutoSize = False
        Caption = 'A'
      end
      object qwewq28: TRzLabel
        Left = 531
        Top = 125
        Width = 14
        Height = 13
        AutoSize = False
        Caption = 'A'
      end
      object qwewq29: TRzLabel
        Left = 531
        Top = 157
        Width = 14
        Height = 13
        AutoSize = False
        Caption = 'A'
      end
      object qwewq30: TRzLabel
        Left = 531
        Top = 189
        Width = 14
        Height = 13
        AutoSize = False
        Caption = 'A'
      end
      object qwewq31: TRzLabel
        Left = 531
        Top = 221
        Width = 14
        Height = 13
        AutoSize = False
        Caption = 'A'
      end
      object qwewq32: TRzLabel
        Left = 243
        Top = 253
        Width = 30
        Height = 13
        AutoSize = False
        Caption = 'MHz'
      end
      object qwewq33: TRzLabel
        Left = 243
        Top = 285
        Width = 30
        Height = 13
        AutoSize = False
        Caption = 'RPM'
      end
      object qwewq34: TRzLabel
        Left = 243
        Top = 317
        Width = 30
        Height = 13
        AutoSize = False
        Caption = 'RPM'
      end
      object qwewq35: TRzLabel
        Left = 243
        Top = 349
        Width = 30
        Height = 13
        AutoSize = False
        Caption = 'RPM'
      end
      object qwewq36: TRzLabel
        Left = 531
        Top = 285
        Width = 30
        Height = 13
        AutoSize = False
        Caption = 'RPM'
      end
      object qwewq37: TRzLabel
        Left = 531
        Top = 317
        Width = 30
        Height = 13
        AutoSize = False
        Caption = 'RPM'
      end
      object qwewq38: TRzLabel
        Left = 531
        Top = 349
        Width = 30
        Height = 13
        AutoSize = False
        Caption = 'RPM'
      end
      object edt_r50v_cur1: TRzEdit
        Left = 408
        Top = 120
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 7
      end
      object edt_r50v_cur2: TRzEdit
        Left = 120
        Top = 152
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 8
      end
      object edt_r50v_cur3: TRzEdit
        Left = 408
        Top = 152
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 9
      end
      object edt_r50v_cur4: TRzEdit
        Left = 120
        Top = 184
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 10
      end
      object edt_r50v_vol: TRzEdit
        Left = 120
        Top = 120
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 6
      end
      object edt_rfwd: TRzEdit
        Left = 120
        Top = 24
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 0
      end
      object edt_rref: TRzEdit
        Left = 408
        Top = 24
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 1
      end
      object edt_rvswr: TRzEdit
        Left = 408
        Top = 88
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 5
      end
      object edt_rtemp: TRzEdit
        Left = 120
        Top = 88
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 4
      end
      object edt_ratt_curr: TRzEdit
        Left = 408
        Top = 56
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 3
      end
      object edt_rfan2: TRzEdit
        Left = 408
        Top = 280
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 17
      end
      object edt_rfan3: TRzEdit
        Left = 120
        Top = 312
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 18
      end
      object btn_query_status: TRzButton
        Left = 240
        Top = 414
        Caption = #26597#35810
        HotTrack = True
        TabOrder = 22
        OnClick = send_query_cmd
      end
      object edt_rrejt1: TRzEdit
        Left = 120
        Top = 56
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 2
      end
      object edt_r50v_cur5: TRzEdit
        Left = 408
        Top = 184
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 11
      end
      object edt_r50v_cur6: TRzEdit
        Left = 120
        Top = 216
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 12
      end
      object edt_r50v_cur7: TRzEdit
        Left = 408
        Top = 216
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 13
      end
      object edt_rfan4: TRzEdit
        Left = 408
        Top = 312
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 19
      end
      object edt_rfan5: TRzEdit
        Left = 120
        Top = 344
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 20
      end
      object edt_rfan6: TRzEdit
        Left = 408
        Top = 344
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 21
      end
      object edt_rfreq: TRzEdit
        Left = 120
        Top = 248
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 14
      end
      object edt_rfan1: TRzEdit
        Left = 120
        Top = 280
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 16
      end
      object edt_rexc_use: TRzComboBox
        Left = 408
        Top = 248
        Width = 121
        Height = 21
        Ctl3D = False
        FrameHotTrack = True
        FrameVisible = True
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 15
        Items.Strings = (
          #28608#21169#22120'A'
          #28608#21169#22120'B'
          #26080#28608#21169#22120#36830#25509
          '')
      end
    end
    object TabSheet_alarm_info: TRzTabSheet
      Caption = #21578#35686#29366#24577
      object lbl_113: TRzLabel
        Left = 322
        Top = 92
        Width = 54
        Height = 13
        AutoSize = False
        Caption = '50V'#30005#27969
      end
      object lbl_114: TRzLabel
        Left = 24
        Top = 124
        Width = 54
        Height = 13
        AutoSize = False
        Caption = '50V'#30005#21387
      end
      object lbl_121: TRzLabel
        Left = 322
        Top = 59
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #39547#27874#27604
      end
      object lbl_122: TRzLabel
        Left = 26
        Top = 26
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #36755#20986#21151#29575
      end
      object lbl_123: TRzLabel
        Left = 320
        Top = 27
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #21453#23556#21151#29575
      end
      object lbl_125: TRzLabel
        Left = 24
        Top = 158
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #39118#25159'2'
      end
      object lbl_126: TRzLabel
        Left = 322
        Top = 157
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #39118#25159'3'
      end
      object lbl_127: TRzLabel
        Left = 322
        Top = 124
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #39118#25159'1'
      end
      object lbl_128: TRzLabel
        Left = 26
        Top = 90
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #28201#24230
      end
      object RzLabel10: TRzLabel
        Left = 26
        Top = 58
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #21560#25910#21151#29575
      end
      object RzLabel13: TRzLabel
        Left = 24
        Top = 190
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #39118#25159'4'
      end
      object RzLabel14: TRzLabel
        Left = 322
        Top = 189
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #39118#25159'5'
      end
      object RzLabel15: TRzLabel
        Left = 24
        Top = 222
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #39118#25159'6'
      end
      object edt_r50v_cur_alarm: TRzEdit
        Left = 408
        Top = 88
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 5
        OnChange = edt_pa_alarmChange
      end
      object edt_r50v_vol_alarm: TRzEdit
        Left = 120
        Top = 120
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 6
        OnChange = edt_pa_alarmChange
      end
      object edt_rvswr_alarm: TRzEdit
        Left = 408
        Top = 56
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 2
        OnChange = edt_pa_alarmChange
      end
      object edt_rfwd_alarm: TRzEdit
        Left = 120
        Top = 24
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 0
        OnChange = edt_pa_alarmChange
      end
      object edt_rref_alarm: TRzEdit
        Left = 408
        Top = 24
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 4
        OnChange = edt_pa_alarmChange
      end
      object edt_rfan2_alarm: TRzEdit
        Left = 120
        Top = 152
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 8
        OnChange = edt_pa_alarmChange
      end
      object edt_rfan3_alarm: TRzEdit
        Left = 408
        Top = 152
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 9
        OnChange = edt_pa_alarmChange
      end
      object edt_rfan1_alarm: TRzEdit
        Left = 408
        Top = 120
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 7
        OnChange = edt_pa_alarmChange
      end
      object edt_rtemp_alarm: TRzEdit
        Left = 120
        Top = 88
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 3
        OnChange = edt_pa_alarmChange
      end
      object btn_query_alarm_info: TRzButton
        Left = 256
        Top = 270
        Caption = #26597#35810
        HotTrack = True
        TabOrder = 13
        OnClick = send_query_cmd
      end
      object edt_rrejt_alarm: TRzEdit
        Left = 120
        Top = 56
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 1
        OnChange = edt_pa_alarmChange
      end
      object edt_rfan4_alarm: TRzEdit
        Left = 120
        Top = 184
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 10
        OnChange = edt_pa_alarmChange
      end
      object edt_rfan5_alarm: TRzEdit
        Left = 408
        Top = 184
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 11
        OnChange = edt_pa_alarmChange
      end
      object edt_rfan6_alarm: TRzEdit
        Left = 120
        Top = 216
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 12
        OnChange = edt_pa_alarmChange
      end
    end
    object TabSheet_sys_para: TRzTabSheet
      Caption = #31995#32479#21442#25968
      object lbl_116: TRzLabel
        Left = 24
        Top = 60
        Width = 105
        Height = 13
        AutoSize = False
        Caption = '  '#21560#25910#21151#29575#20462#27491#31995#25968
      end
      object lbl_7: TRzLabel
        Left = 322
        Top = 58
        Width = 95
        Height = 13
        AutoSize = False
        Caption = #28608#21169#22120#36830#25509#31867#22411
      end
      object lbl_117: TRzLabel
        Left = 322
        Top = 92
        Width = 68
        Height = 13
        AutoSize = False
        Caption = #33258#21160#22686#30410#24320#20851
      end
      object lbl_124: TRzLabel
        Left = 26
        Top = 92
        Width = 54
        Height = 13
        AutoSize = False
        Caption = ' ATT'
      end
      object lbl_129: TRzLabel
        Left = 28
        Top = 28
        Width = 115
        Height = 13
        AutoSize = False
        Caption = #36755#20986#21151#29575#20462#27491#31995#25968
      end
      object lbl_130: TRzLabel
        Left = 318
        Top = 28
        Width = 116
        Height = 13
        AutoSize = False
        Caption = #21453#23556#21151#29575#20462#27491#31995#25968
      end
      object qwewq1: TRzLabel
        Left = 322
        Top = 124
        Width = 68
        Height = 13
        AutoSize = False
        Caption = #28608#21169#22120#31867#22411
      end
      object qwewq2: TRzLabel
        Left = 26
        Top = 124
        Width = 103
        Height = 13
        AutoSize = False
        Caption = #39069#23450#36755#20986#21151#29575
      end
      object qwewq3: TRzLabel
        Left = 26
        Top = 156
        Width = 68
        Height = 13
        AutoSize = False
        Caption = #39118#25159#20010#25968
      end
      object qwewq4: TRzLabel
        Left = 322
        Top = 156
        Width = 71
        Height = 13
        AutoSize = False
        Caption = #26629#21387'1'
      end
      object qwewq5: TRzLabel
        Left = 26
        Top = 188
        Width = 71
        Height = 13
        AutoSize = False
        Caption = #26629#21387'2'
      end
      object qwewq6: TRzLabel
        Left = 322
        Top = 188
        Width = 71
        Height = 13
        AutoSize = False
        Caption = #26629#21387'3'
      end
      object qwewq7: TRzLabel
        Left = 26
        Top = 220
        Width = 71
        Height = 13
        AutoSize = False
        Caption = #26629#21387'4'
      end
      object qwewq8: TRzLabel
        Left = 322
        Top = 220
        Width = 71
        Height = 13
        AutoSize = False
        Caption = #26629#21387'5'
      end
      object qwewq14: TRzLabel
        Left = 267
        Top = 125
        Width = 14
        Height = 13
        AutoSize = False
        Caption = 'W'
      end
      object qwewq15: TRzLabel
        Left = 267
        Top = 221
        Width = 14
        Height = 13
        AutoSize = False
        Caption = 'mV'
      end
      object qwewq16: TRzLabel
        Left = 267
        Top = 189
        Width = 14
        Height = 13
        AutoSize = False
        Caption = 'mV'
      end
      object qwewq17: TRzLabel
        Left = 555
        Top = 157
        Width = 14
        Height = 13
        AutoSize = False
        Caption = 'mV'
      end
      object qwewq18: TRzLabel
        Left = 555
        Top = 189
        Width = 14
        Height = 13
        AutoSize = False
        Caption = 'mV'
      end
      object qwewq19: TRzLabel
        Left = 555
        Top = 221
        Width = 14
        Height = 13
        AutoSize = False
        Caption = 'mV'
      end
      object edt_rjt1_ratio: TRzEdit
        Left = 144
        Top = 56
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 4
        OnKeyPress = numKeyPress
      end
      object edt_exc_mode: TRzComboBox
        Left = 432
        Top = 56
        Width = 121
        Height = 21
        Ctl3D = False
        FrameHotTrack = True
        FrameVisible = True
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 5
        Items.Strings = (
          #28608#21169#22120'A'
          #28608#21169#22120'B'
          #33258#21160#27169#24335)
      end
      object edt_agc: TRzComboBox
        Left = 432
        Top = 88
        Width = 121
        Height = 21
        Ctl3D = False
        FrameHotTrack = True
        FrameVisible = True
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 7
        Items.Strings = (
          #20851
          #24320
          '')
      end
      object edt_att_min: TRzEdit
        Left = 144
        Top = 88
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 6
        OnKeyPress = floatKeyPress
      end
      object edt_fwd_ratio: TRzEdit
        Left = 144
        Top = 24
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 2
        OnKeyPress = floatKeyPress
      end
      object edt_ref_ratio: TRzEdit
        Left = 432
        Top = 24
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 3
        OnKeyPress = floatKeyPress
      end
      object btn_query_sys: TRzButton
        Left = 104
        Top = 294
        Caption = #26597#35810
        HotTrack = True
        TabOrder = 0
        OnClick = send_query_cmd
      end
      object btn_set_sys: TRzButton
        Left = 400
        Top = 294
        Caption = #35774#32622
        HotTrack = True
        TabOrder = 1
        OnClick = send_set_cmd
      end
      object ckbox_exc_mode: TRzCheckBox
        Left = 561
        Top = 58
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 14
        WordWrap = True
      end
      object ckbox_agc: TRzCheckBox
        Left = 561
        Top = 90
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 15
        WordWrap = True
      end
      object ckbox_fwd_ratio: TRzCheckBox
        Left = 273
        Top = 27
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 16
        WordWrap = True
      end
      object ckbox_rjt1_ratio: TRzCheckBox
        Left = 272
        Top = 57
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 17
        WordWrap = True
      end
      object ckbox_att_min: TRzCheckBox
        Left = 272
        Top = 90
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 18
        WordWrap = True
      end
      object ckbox_ref_ratio: TRzCheckBox
        Left = 560
        Top = 27
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 19
        WordWrap = True
      end
      object edt_exc_type: TRzComboBox
        Left = 432
        Top = 120
        Width = 121
        Height = 21
        Ctl3D = False
        FrameHotTrack = True
        FrameVisible = True
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 9
        Items.Strings = (
          'CMMB'
          'CTTB'
          'DVBT'
          'ATSC'
          'ISDBT'
          'DVB-T2')
      end
      object edt_fwd_stand: TRzEdit
        Left = 144
        Top = 120
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 8
        OnKeyPress = floatKeyPress
      end
      object ckbox_exc_type: TRzCheckBox
        Left = 561
        Top = 122
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 20
        WordWrap = True
      end
      object ckbox_fwd_stand: TRzCheckBox
        Left = 288
        Top = 122
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 21
        WordWrap = True
      end
      object edt_fan_num: TRzComboBox
        Left = 144
        Top = 152
        Width = 121
        Height = 21
        Ctl3D = False
        FrameHotTrack = True
        FrameVisible = True
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 10
        Items.Strings = (
          '3'
          '4'
          '5'
          '6')
      end
      object ckbox_fan_num: TRzCheckBox
        Left = 273
        Top = 154
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 22
        WordWrap = True
      end
      object edt_dacv1: TRzEdit
        Left = 432
        Top = 152
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 11
        OnKeyPress = floatKeyPress
      end
      object ckbox_dacv1: TRzCheckBox
        Left = 576
        Top = 154
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 23
        WordWrap = True
      end
      object edt_dacv2: TRzEdit
        Left = 144
        Top = 184
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 12
        OnKeyPress = floatKeyPress
      end
      object ckbox_dacv2: TRzCheckBox
        Left = 288
        Top = 186
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 24
        WordWrap = True
      end
      object edt_dacv3: TRzEdit
        Left = 432
        Top = 184
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 13
        OnKeyPress = floatKeyPress
      end
      object ckbox_dacv3: TRzCheckBox
        Left = 576
        Top = 186
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 25
        WordWrap = True
      end
      object edt_dacv4: TRzEdit
        Left = 144
        Top = 216
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 26
        OnKeyPress = floatKeyPress
      end
      object ckbox_dacv4: TRzCheckBox
        Left = 288
        Top = 218
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 27
        WordWrap = True
      end
      object edt_dacv5: TRzEdit
        Left = 432
        Top = 216
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 28
        OnKeyPress = floatKeyPress
      end
      object ckbox_dacv5: TRzCheckBox
        Left = 576
        Top = 218
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 29
        WordWrap = True
      end
    end
    object TabSheet_alarm_para: TRzTabSheet
      Caption = #21578#35686#21442#25968
      object lbl_131: TRzLabel
        Left = 26
        Top = 34
        Width = 93
        Height = 13
        AutoSize = False
        Caption = #36755#20986#21151#29575#38376#38480
      end
      object lbl_133: TRzLabel
        Left = 308
        Top = 100
        Width = 93
        Height = 13
        AutoSize = False
        Caption = #28201#24230#38376#38480
      end
      object lbl_134: TRzLabel
        Left = 308
        Top = 37
        Width = 93
        Height = 13
        AutoSize = False
        Caption = #21453#23556#21151#29575#38376#38480
      end
      object lbl_135: TRzLabel
        Left = 308
        Top = 69
        Width = 93
        Height = 13
        AutoSize = False
        Caption = #39547#27874#27604#38376#38480
      end
      object lbl_136: TRzLabel
        Left = 20
        Top = 101
        Width = 93
        Height = 13
        AutoSize = False
        Caption = '  50V'#30005#27969#38376#38480
      end
      object RzLabel11: TRzLabel
        Left = 26
        Top = 66
        Width = 93
        Height = 13
        AutoSize = False
        Caption = #21560#25910#21151#29575#38376#38480
      end
      object qwewq9: TRzLabel
        Left = 243
        Top = 37
        Width = 14
        Height = 13
        AutoSize = False
        Caption = 'W'
      end
      object qwewq10: TRzLabel
        Left = 243
        Top = 69
        Width = 14
        Height = 13
        AutoSize = False
        Caption = 'W'
      end
      object qwewq11: TRzLabel
        Left = 243
        Top = 101
        Width = 14
        Height = 13
        AutoSize = False
        Caption = 'A'
      end
      object qwewq12: TRzLabel
        Left = 531
        Top = 37
        Width = 14
        Height = 13
        AutoSize = False
        Caption = 'W'
      end
      object qwewq13: TRzLabel
        Left = 531
        Top = 101
        Width = 14
        Height = 13
        AutoSize = False
        Caption = #8451
      end
      object btn_query_alarm_para: TRzButton
        Left = 112
        Top = 350
        Caption = #26597#35810
        HotTrack = True
        TabOrder = 0
        OnClick = send_query_cmd
      end
      object btn_set_alarm_para: TRzButton
        Left = 392
        Top = 350
        Caption = #35774#32622
        HotTrack = True
        TabOrder = 1
        OnClick = send_set_cmd
      end
      object edt_fwd_max: TRzEdit
        Left = 120
        Top = 32
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 2
        OnKeyPress = numKeyPress
      end
      object edt_temp_max: TRzEdit
        Left = 408
        Top = 96
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 7
        OnKeyPress = numKeyPress
      end
      object edt_ref_max: TRzEdit
        Left = 408
        Top = 32
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 3
        OnKeyPress = numKeyPress
      end
      object edt_vswr_max: TRzEdit
        Left = 408
        Top = 64
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 5
        OnKeyPress = floatKeyPress
      end
      object edt_cur_max: TRzEdit
        Left = 120
        Top = 96
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 6
        OnKeyPress = floatKeyPress
      end
      object ckbox_fwd_max: TRzCheckBox
        Left = 261
        Top = 34
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 8
        WordWrap = True
      end
      object ckbox_temp_max: TRzCheckBox
        Left = 545
        Top = 99
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 9
        WordWrap = True
      end
      object ckbox_vswr_max: TRzCheckBox
        Left = 545
        Top = 66
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 10
        WordWrap = True
      end
      object ckbox_ref_max: TRzCheckBox
        Left = 547
        Top = 33
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 11
        WordWrap = True
      end
      object ckbox_cur_max: TRzCheckBox
        Left = 261
        Top = 99
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 12
        WordWrap = True
      end
      object edt_rejt_max: TRzEdit
        Left = 120
        Top = 64
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 4
        OnKeyPress = numKeyPress
      end
      object ckbox_rejt_max: TRzCheckBox
        Left = 261
        Top = 66
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 13
        WordWrap = True
      end
    end
    object TabSheet_net_para: TRzTabSheet
      Caption = #32593#32476#21442#25968
      object lbl_137: TRzLabel
        Left = 26
        Top = 26
        Width = 24
        Height = 13
        AutoSize = False
        Caption = 'IP:'
      end
      object lbl_138: TRzLabel
        Left = 26
        Top = 69
        Width = 68
        Height = 13
        AutoSize = False
        Caption = #23376#32593#25513#30721
      end
      object lbl_139: TRzLabel
        Left = 26
        Top = 108
        Width = 59
        Height = 13
        AutoSize = False
        Caption = #32593#20851#22320#22336
      end
      object btn_query_net: TRzButton
        Left = 80
        Top = 350
        Caption = #26597#35810
        HotTrack = True
        TabOrder = 0
        OnClick = send_query_cmd
      end
      object btn_set_net: TRzButton
        Left = 360
        Top = 350
        Caption = #35774#32622
        HotTrack = True
        TabOrder = 1
        OnClick = send_set_cmd
      end
      object IPEdit_net_ip: TIPEdit
        Left = 120
        Top = 24
        Width = 125
        Height = 21
        Cursor = crIBeam
        IPString = '0.0.0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object IPEdit_net_mask: TIPEdit
        Left = 120
        Top = 64
        Width = 125
        Height = 21
        Cursor = crIBeam
        IPString = '0.0.0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object IPEdit_net_gate: TIPEdit
        Left = 120
        Top = 104
        Width = 125
        Height = 21
        Cursor = crIBeam
        IPString = '0.0.0.0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object ckbox_ip: TRzCheckBox
        Left = 250
        Top = 26
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 5
        WordWrap = True
      end
      object ckbox_mask: TRzCheckBox
        Left = 250
        Top = 67
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 6
        WordWrap = True
      end
      object ckbox_gate: TRzCheckBox
        Left = 250
        Top = 105
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 7
        WordWrap = True
      end
    end
    object TabSheet_ver: TRzTabSheet
      Caption = #29256#26412#20449#24687
      object lbl_141: TRzLabel
        Left = 26
        Top = 68
        Width = 76
        Height = 13
        AutoSize = False
        Caption = #25511#21046#26495
      end
      object btn_query_ver: TRzButton
        Left = 80
        Top = 350
        Caption = #26597#35810
        HotTrack = True
        TabOrder = 0
        OnClick = send_query_cmd
      end
      object edt_ver_mcu: TRzEdit
        Left = 120
        Top = 64
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 1
      end
    end
  end
  object socket_lptv: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 18120
    OnConnect = socket_lptvConnect
    OnDisconnect = socket_lptvDisconnect
    OnRead = socket_lptvRead
    OnError = socket_lptvError
    Left = 448
    Top = 24
  end
end
