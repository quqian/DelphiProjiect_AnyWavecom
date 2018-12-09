object Form1: TForm1
  Left = 448
  Top = 271
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'LPTV'
  ClientHeight = 508
  ClientWidth = 1009
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
    1009
    508)
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
    Left = 619
    Top = 16
    Width = 393
    Height = 492
    Anchors = [akTop, akRight, akBottom]
    ScrollBars = ssVertical
    TabOrder = 3
    OnDblClick = mmo1DblClick
    FrameHotTrack = True
    FrameVisible = True
  end
  object rzpgcntrl1: TRzPageControl
    Left = 11
    Top = 88
    Width = 601
    Height = 417
    ActivePage = TabSheet_status
    ActivePageDefault = TabSheet_status
    TabIndex = 0
    TabOrder = 4
    FixedDimension = 19
    object TabSheet_status: TRzTabSheet
      Caption = #36816#34892#29366#24577
      object lbl_3: TRzLabel
        Left = 26
        Top = 26
        Width = 54
        Height = 13
        AutoSize = False
        Caption = '50V'#30005#27969'1'
      end
      object lbl_4: TRzLabel
        Left = 26
        Top = 66
        Width = 54
        Height = 13
        AutoSize = False
        Caption = '50V'#30005#27969'2'
      end
      object lbl_5: TRzLabel
        Left = 26
        Top = 107
        Width = 54
        Height = 13
        AutoSize = False
        Caption = '50V'#30005#27969'3'
      end
      object lbl_6: TRzLabel
        Left = 26
        Top = 147
        Width = 54
        Height = 13
        AutoSize = False
        Caption = '50V'#30005#27969'4'
      end
      object lbl_11: TRzLabel
        Left = 320
        Top = 26
        Width = 54
        Height = 13
        AutoSize = False
        Caption = '50V'#30005#21387
      end
      object lbl_12: TRzLabel
        Left = 320
        Top = 67
        Width = 54
        Height = 13
        AutoSize = False
        Caption = '12V'#30005#21387
      end
      object lbl_13: TRzLabel
        Left = 320
        Top = 107
        Width = 54
        Height = 13
        AutoSize = False
        Caption = '9V'#30005#21387
      end
      object lbl_14: TRzLabel
        Left = 320
        Top = 148
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #36755#20837#21151#29575
      end
      object lbl_15: TRzLabel
        Left = 26
        Top = 188
        Width = 54
        Height = 17
        AutoSize = False
        Caption = #36755#20986#21151#29575
      end
      object lbl_16: TRzLabel
        Left = 26
        Top = 230
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #21453#23556#21151#29575
      end
      object lbl_17: TRzLabel
        Left = 320
        Top = 188
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #39547#27874#27604
      end
      object lbl_18: TRzLabel
        Left = 320
        Top = 229
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #28201#24230
      end
      object lbl_19: TRzLabel
        Left = 26
        Top = 268
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #39537#21160#26629#21387
      end
      object lbl_110: TRzLabel
        Left = 320
        Top = 269
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #39118#25159'1'
      end
      object lbl_111: TRzLabel
        Left = 26
        Top = 308
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #39118#25159'2'
      end
      object lbl_112: TRzLabel
        Left = 320
        Top = 310
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #39118#25159'3'
      end
      object edt_r50v_cur1: TRzEdit
        Left = 120
        Top = 24
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 0
      end
      object edt_r50v_cur2: TRzEdit
        Left = 120
        Top = 64
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 1
      end
      object edt_r50v_cur3: TRzEdit
        Left = 120
        Top = 104
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 2
      end
      object edt_r50v_cur4: TRzEdit
        Left = 120
        Top = 144
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 3
      end
      object edt_r50v_vol: TRzEdit
        Left = 408
        Top = 24
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 4
      end
      object edt_r12v_vol: TRzEdit
        Left = 408
        Top = 64
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 5
      end
      object edt_r9v_vol: TRzEdit
        Left = 408
        Top = 104
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 6
      end
      object edt_rpa_in: TRzEdit
        Left = 408
        Top = 144
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 7
      end
      object edt_rfwd: TRzEdit
        Left = 120
        Top = 184
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 8
      end
      object edt_rref: TRzEdit
        Left = 120
        Top = 224
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 9
      end
      object edt_rvswr: TRzEdit
        Left = 408
        Top = 184
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 10
      end
      object edt_rtemp: TRzEdit
        Left = 408
        Top = 224
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 11
      end
      object edt_rgv: TRzEdit
        Left = 120
        Top = 264
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 12
      end
      object edt_rfan1: TRzEdit
        Left = 408
        Top = 264
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 13
      end
      object edt_rfan2: TRzEdit
        Left = 120
        Top = 304
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 14
      end
      object edt_rfan3: TRzEdit
        Left = 408
        Top = 304
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 15
      end
      object btn_query_status: TRzButton
        Left = 80
        Top = 350
        Caption = #26597#35810
        HotTrack = True
        TabOrder = 16
        OnClick = send_query_cmd
      end
    end
    object TabSheet_alarm_info: TRzTabSheet
      Caption = #21578#35686#29366#24577
      object lbl_113: TRzLabel
        Left = 26
        Top = 148
        Width = 54
        Height = 13
        AutoSize = False
        Caption = '50V'#30005#27969'1'
      end
      object lbl_114: TRzLabel
        Left = 320
        Top = 108
        Width = 54
        Height = 13
        AutoSize = False
        Caption = '50V'#30005#21387
      end
      object lbl_115: TRzLabel
        Left = 320
        Top = 148
        Width = 54
        Height = 13
        AutoSize = False
        Caption = '50V'#30005#27969'2'
      end
      object lbl_118: TRzLabel
        Left = 26
        Top = 188
        Width = 54
        Height = 13
        AutoSize = False
        Caption = '50V'#30005#27969'3'
      end
      object lbl_119: TRzLabel
        Left = 320
        Top = 189
        Width = 54
        Height = 13
        AutoSize = False
        Caption = '50V'#30005#27969'4'
      end
      object lbl_120: TRzLabel
        Left = 320
        Top = 26
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #36755#20837#21151#29575
      end
      object lbl_121: TRzLabel
        Left = 26
        Top = 107
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
        Top = 67
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #21453#23556#21151#29575
      end
      object lbl_125: TRzLabel
        Left = 320
        Top = 230
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #39118#25159'2'
      end
      object lbl_126: TRzLabel
        Left = 26
        Top = 269
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #39118#25159'3'
      end
      object lbl_127: TRzLabel
        Left = 26
        Top = 228
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #39118#25159'1'
      end
      object lbl_128: TRzLabel
        Left = 26
        Top = 66
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #28201#24230
      end
      object edt_rcur1_alarm: TRzEdit
        Left = 120
        Top = 144
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 0
        OnChange = edt_pa_alarmChange
      end
      object edt_r50v_alarm: TRzEdit
        Left = 408
        Top = 104
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 1
        OnChange = edt_pa_alarmChange
      end
      object edt_rcur2_alarm: TRzEdit
        Left = 408
        Top = 144
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 2
        OnChange = edt_pa_alarmChange
      end
      object edt_rcur3_alarm: TRzEdit
        Left = 120
        Top = 184
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 3
        OnChange = edt_pa_alarmChange
      end
      object edt_rcur4_alarm: TRzEdit
        Left = 408
        Top = 184
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 4
        OnChange = edt_pa_alarmChange
      end
      object edt_rin_alarm: TRzEdit
        Left = 408
        Top = 24
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 5
        OnChange = edt_pa_alarmChange
      end
      object edt_rvswr_alarm: TRzEdit
        Left = 120
        Top = 104
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 6
        OnChange = edt_pa_alarmChange
      end
      object edt_rfwd_alarm: TRzEdit
        Left = 120
        Top = 24
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 7
        OnChange = edt_pa_alarmChange
      end
      object edt_rref_alarm: TRzEdit
        Left = 408
        Top = 64
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 8
        OnChange = edt_pa_alarmChange
      end
      object edt_rfan2_alarm: TRzEdit
        Left = 408
        Top = 224
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 9
        OnChange = edt_pa_alarmChange
      end
      object edt_rfan3_alarm: TRzEdit
        Left = 120
        Top = 264
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 10
        OnChange = edt_pa_alarmChange
      end
      object edt_rfan1_alarm: TRzEdit
        Left = 120
        Top = 224
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 11
        OnChange = edt_pa_alarmChange
      end
      object edt_rtemp_alarm: TRzEdit
        Left = 120
        Top = 64
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 12
        OnChange = edt_pa_alarmChange
      end
      object btn_query_alarm_info: TRzButton
        Left = 80
        Top = 350
        Caption = #26597#35810
        HotTrack = True
        TabOrder = 13
        OnClick = send_query_cmd
      end
    end
    object TabSheet_sys_para: TRzTabSheet
      Caption = #31995#32479#21442#25968
      object lbl_116: TRzLabel
        Left = 322
        Top = 28
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #39057#28857
      end
      object lbl_7: TRzLabel
        Left = 26
        Top = 26
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #24102#23485
      end
      object lbl_117: TRzLabel
        Left = 26
        Top = 68
        Width = 68
        Height = 13
        AutoSize = False
        Caption = #28608#21169#22120#31867#22411
      end
      object lbl_124: TRzLabel
        Left = 322
        Top = 68
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #39537#21160#26629#21387
      end
      object lbl_129: TRzLabel
        Left = 4
        Top = 108
        Width = 115
        Height = 13
        AutoSize = False
        Caption = #36755#20986#21151#29575#20462#27491#31995#25968
      end
      object lbl_130: TRzLabel
        Left = 294
        Top = 108
        Width = 116
        Height = 13
        AutoSize = False
        Caption = #21453#23556#21151#29575#20462#27491#31995#25968
      end
      object edt_freq: TRzEdit
        Left = 408
        Top = 24
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 0
        OnKeyPress = numKeyPress
      end
      object cbb_band: TRzComboBox
        Left = 120
        Top = 24
        Width = 121
        Height = 21
        Ctl3D = False
        FrameHotTrack = True
        FrameVisible = True
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 1
        Items.Strings = (
          '8M'
          '6M')
      end
      object cbb_ext_type: TRzComboBox
        Left = 120
        Top = 64
        Width = 121
        Height = 21
        Ctl3D = False
        FrameHotTrack = True
        FrameVisible = True
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 2
        Items.Strings = (
          'CMMB'
          'CTTB'
          'DVBT'
          'ATSC'
          'ISDBT'
          'DVB-T2')
      end
      object edt_gv: TRzEdit
        Left = 408
        Top = 64
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 3
        OnKeyPress = floatKeyPress
      end
      object edt_fwd_ratio: TRzEdit
        Left = 120
        Top = 104
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 4
        OnKeyPress = floatKeyPress
      end
      object edt_ref_ratio: TRzEdit
        Left = 408
        Top = 104
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 5
        OnKeyPress = floatKeyPress
      end
      object btn_query_sys: TRzButton
        Left = 80
        Top = 350
        Caption = #26597#35810
        HotTrack = True
        TabOrder = 6
        OnClick = send_query_cmd
      end
      object btn_set_sys: TRzButton
        Left = 360
        Top = 350
        Caption = #35774#32622
        HotTrack = True
        TabOrder = 7
        OnClick = send_set_cmd
      end
      object ckbox_bw: TRzCheckBox
        Left = 249
        Top = 26
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 8
        WordWrap = True
      end
      object ckbox_exct: TRzCheckBox
        Left = 249
        Top = 66
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 9
        WordWrap = True
      end
      object ckbox_fwd_ratio: TRzCheckBox
        Left = 249
        Top = 107
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 10
        WordWrap = True
      end
      object ckbox_freq: TRzCheckBox
        Left = 536
        Top = 25
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 11
        WordWrap = True
      end
      object ckbox_gv: TRzCheckBox
        Left = 536
        Top = 66
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 12
        WordWrap = True
      end
      object ckbox_ref_ratio: TRzCheckBox
        Left = 536
        Top = 107
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 13
        WordWrap = True
      end
    end
    object TabSheet_alarm_para: TRzTabSheet
      Caption = #21578#35686#21442#25968
      object lbl_131: TRzLabel
        Left = 26
        Top = 26
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #36755#20986#21151#29575
      end
      object lbl_132: TRzLabel
        Left = 308
        Top = 28
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #36755#20837#21151#29575
      end
      object lbl_133: TRzLabel
        Left = 26
        Top = 68
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #28201#24230
      end
      object lbl_134: TRzLabel
        Left = 308
        Top = 69
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #21453#23556#21151#29575
      end
      object lbl_135: TRzLabel
        Left = 26
        Top = 109
        Width = 54
        Height = 13
        AutoSize = False
        Caption = #39547#27874#27604
      end
      object lbl_136: TRzLabel
        Left = 308
        Top = 109
        Width = 54
        Height = 13
        AutoSize = False
        Caption = '50V'#30005#27969
      end
      object lbl_142: TRzLabel
        Left = 26
        Top = 148
        Width = 68
        Height = 13
        AutoSize = False
        Caption = #28165#38500#21578#35686
      end
      object btn_query_alarm_para: TRzButton
        Left = 80
        Top = 350
        Caption = #26597#35810
        HotTrack = True
        TabOrder = 0
        OnClick = send_query_cmd
      end
      object btn_set_alarm_para: TRzButton
        Left = 360
        Top = 350
        Caption = #35774#32622
        HotTrack = True
        TabOrder = 1
        OnClick = send_set_cmd
      end
      object edt_fwd_max: TRzEdit
        Left = 120
        Top = 24
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 2
        OnKeyPress = numKeyPress
      end
      object edt_in_max: TRzEdit
        Left = 408
        Top = 24
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 3
        OnKeyPress = floatKeyPress
      end
      object edt_temp_max: TRzEdit
        Left = 120
        Top = 64
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 4
        OnKeyPress = numKeyPress
      end
      object edt_ref_max: TRzEdit
        Left = 408
        Top = 64
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 5
        OnKeyPress = numKeyPress
      end
      object edt_vswr_max: TRzEdit
        Left = 120
        Top = 104
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 6
        OnKeyPress = floatKeyPress
      end
      object edt_cur_max: TRzEdit
        Left = 408
        Top = 104
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 7
        OnKeyPress = floatKeyPress
      end
      object ckbox_fwd_max: TRzCheckBox
        Left = 249
        Top = 26
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 8
        WordWrap = True
      end
      object ckbox_temp_max: TRzCheckBox
        Left = 249
        Top = 67
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 9
        WordWrap = True
      end
      object ckbox_vswr_max: TRzCheckBox
        Left = 249
        Top = 106
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 10
        WordWrap = True
      end
      object ckbox_in_max: TRzCheckBox
        Left = 539
        Top = 26
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 11
        WordWrap = True
      end
      object ckbox_ref_max: TRzCheckBox
        Left = 539
        Top = 65
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 12
        WordWrap = True
      end
      object ckbox_cur_max: TRzCheckBox
        Left = 539
        Top = 107
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 13
        WordWrap = True
      end
      object ckbox_clear_alarm: TRzCheckBox
        Left = 249
        Top = 146
        Width = 21
        Height = 17
        AutoSize = False
        HotTrack = True
        State = cbUnchecked
        TabOrder = 14
        WordWrap = True
      end
      object cbb_clear_alarm: TRzComboBox
        Left = 120
        Top = 144
        Width = 121
        Height = 21
        Ctl3D = False
        FrameHotTrack = True
        FrameVisible = True
        ItemHeight = 13
        ParentCtl3D = False
        TabOrder = 15
        Text = #21542
        Items.Strings = (
          #21542
          #26159)
        ItemIndex = 0
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
      object lbl_140: TRzLabel
        Left = 26
        Top = 26
        Width = 74
        Height = 13
        AutoSize = False
        Caption = #25968#25454#37319#38598#26495
      end
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
      object edt_ver_avr: TRzEdit
        Left = 120
        Top = 24
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 1
      end
      object edt_ver_mcu: TRzEdit
        Left = 120
        Top = 64
        Width = 121
        Height = 21
        FrameHotTrack = True
        FrameVisible = True
        TabOrder = 2
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
    Left = 552
    Top = 24
  end
end
