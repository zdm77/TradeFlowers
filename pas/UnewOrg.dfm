object FNewOrg: TFNewOrg
  Left = 0
  Top = 0
  Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
  ClientHeight = 392
  ClientWidth = 746
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 356
    Width = 746
    Height = 36
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 356
    ExplicitWidth = 746
    ExplicitHeight = 36
    inherited bardxbrmngr1: TdxBarManager
      DockControlHeights = (
        0
        0
        0
        34)
      inherited btnSave: TdxBarLargeButton
        OnClick = FrameSave1btnSaveClick
      end
    end
  end
  object page1: TcxPageControl
    Left = 0
    Top = 0
    Width = 746
    Height = 356
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = TabAccess
    Properties.CustomButtons.Buttons = <>
    Properties.NavigatorPosition = npLeftTop
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Blue'
    ClientRectBottom = 356
    ClientRectRight = 746
    ClientRectTop = 24
    object tab1: TcxTabSheet
      Caption = #1054#1089#1085#1086#1074#1085#1099#1077
      ImageIndex = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Group3: TcxGroupBox
        Left = 0
        Top = 175
        Align = alClient
        Caption = #1050#1086#1085#1090#1072#1082#1090#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
        Style.BorderStyle = ebsSingle
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 2
        Transparent = True
        ExplicitWidth = 737
        ExplicitHeight = 149
        Height = 157
        Width = 746
        object label6: TcxLabel
          Left = 3
          Top = 18
          Caption = #1040#1076#1088#1077#1089' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080':'
          Transparent = True
        end
        object mmoUrAdres: TcxMemo
          Left = 126
          Top = 18
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          Style.TextColor = clBlack
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 1
          Height = 39
          Width = 315
        end
        object label9: TcxLabel
          Left = 3
          Top = 59
          AutoSize = False
          Caption = #1060#1072#1082#1090#1080#1095#1077#1089#1082#1080#1081' '#1072#1076#1088#1077#1089':'
          Transparent = True
          Height = 17
          Width = 111
        end
        object mmoFactAdres: TcxMemo
          Left = 126
          Top = 59
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          Style.TextColor = clBlack
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 5
          Height = 39
          Width = 315
        end
        object mmoDostavka: TcxMemo
          Left = 126
          Top = 100
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          Style.TextColor = clBlack
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 12
          Height = 39
          Width = 315
        end
        object label10: TcxLabel
          Left = 3
          Top = 104
          AutoSize = False
          Caption = #1055#1086#1095#1090#1086#1074#1099#1081' '#1072#1076#1088#1077#1089':'
          Transparent = True
          Height = 17
          Width = 91
        end
        object Label1: TcxLabel
          Left = 476
          Top = 20
          Caption = #1058#1077#1083#1077#1092#1086#1085' 1:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.LineOptions.Alignment = cxllaBottom
          Transparent = True
        end
        object edtPhone1: TcxTextEdit
          Left = 540
          Top = 18
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          Style.TextColor = clBlack
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 2
          Width = 175
        end
        object Label3: TcxLabel
          Left = 476
          Top = 42
          Caption = #1058#1077#1083#1077#1092#1086#1085' 2:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.LineOptions.Alignment = cxllaBottom
          Transparent = True
        end
        object edtPhone2: TcxTextEdit
          Left = 540
          Top = 40
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          Style.TextColor = clBlack
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 4
          Width = 175
        end
        object Label4: TcxLabel
          Left = 476
          Top = 87
          Caption = 'E-Mail:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.LineOptions.Alignment = cxllaBottom
          Transparent = True
        end
        object edtEmail: TcxTextEdit
          Left = 540
          Top = 85
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          Style.TextColor = clBlack
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 7
          Width = 175
        end
        object Label5: TcxLabel
          Left = 476
          Top = 64
          Caption = #1060#1072#1082#1089':'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.LineOptions.Alignment = cxllaBottom
          Transparent = True
        end
        object edtFax: TcxTextEdit
          Left = 540
          Top = 62
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          Style.TextColor = clBlack
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 6
          Width = 175
        end
        object Label8: TcxLabel
          Left = 476
          Top = 110
          Caption = #1057#1072#1081#1090':'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.LineOptions.Alignment = cxllaBottom
          Transparent = True
        end
        object edtSite: TcxTextEdit
          Left = 540
          Top = 108
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          Style.TextColor = clBlack
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 14
          Width = 175
        end
        object btnAdrReg: TcxButton
          Left = 444
          Top = 18
          Width = 26
          Height = 15
          Caption = '...'
          LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 16
          OnClick = btnAdrRegClick
        end
        object btnAdrFact: TcxButton
          Left = 444
          Top = 59
          Width = 26
          Height = 15
          Caption = '...'
          LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 17
          OnClick = btnAdrFactClick
        end
        object btnAdrPost: TcxButton
          Left = 444
          Top = 100
          Width = 26
          Height = 15
          Caption = '...'
          LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 18
          OnClick = btnAdrPostClick
        end
      end
      object Group4: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        PanelStyle.Active = True
        Style.BorderStyle = ebsNone
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 0
        ExplicitWidth = 737
        Height = 95
        Width = 746
        object Group2: TcxGroupBox
          Left = 2
          Top = 2
          Align = alLeft
          Caption = #1054#1073#1097#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
          Style.BorderStyle = ebsUltraFlat
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          Style.Shadow = False
          Style.TransparentBorder = True
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 0
          Height = 91
          Width = 470
          object cxlbl1: TcxLabel
            Left = 3
            Top = 17
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.LineOptions.Alignment = cxllaBottom
            Transparent = True
          end
          object edtName: TcxTextEdit
            Left = 126
            Top = 15
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            Style.TextColor = clBlack
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 0
            Width = 338
          end
          object cxlbl3: TcxLabel
            Left = 3
            Top = 37
            Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
            Properties.LineOptions.Alignment = cxllaBottom
            Transparent = True
          end
          object memoFullName: TcxMemo
            Left = 126
            Top = 37
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            Style.TextColor = clBlack
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 3
            Height = 22
            Width = 338
          end
          object cbbTypeBank: TcxComboBox
            Left = 126
            Top = 59
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              #1056#1086#1089#1089#1080#1081#1089#1082#1072#1103' '#1060#1077#1076#1077#1088#1072#1094#1080#1103
              #1052#1077#1078#1076#1091#1085#1072#1088#1086#1076#1085#1072#1103)
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 4
            Text = #1056#1086#1089#1089#1080#1081#1089#1082#1072#1103' '#1060#1077#1076#1077#1088#1072#1094#1080#1103
            Width = 168
          end
          object cxLabel8: TcxLabel
            Left = 3
            Top = 61
            Caption = #1041#1072#1085#1082#1086#1074#1089#1082#1072#1103' '#1089#1080#1089#1090#1077#1084#1072':'
            Properties.LineOptions.Alignment = cxllaBottom
            Transparent = True
          end
          object chkInvoice: TcxCheckBox
            Left = 300
            Top = 61
            Caption = #1048#1089#1087#1083#1086#1100#1079#1091#1077#1090#1089#1103' '#1074' '#1080#1085#1074#1086#1081#1089#1072#1093
            Properties.NullStyle = nssUnchecked
            Properties.ValueChecked = '1'
            Properties.ValueUnchecked = '0'
            State = cbsGrayed
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
            StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 6
            Transparent = True
            Width = 154
          end
        end
        object cxGroupBox2: TcxGroupBox
          Left = 472
          Top = 2
          Align = alClient
          Caption = #1056#1077#1082#1074#1080#1079#1080#1090#1099
          Style.BorderStyle = ebsUltraFlat
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 1
          Transparent = True
          ExplicitWidth = 263
          Height = 91
          Width = 272
          object cxLabel3: TcxLabel
            Left = 3
            Top = 18
            Caption = #1048#1053#1053':'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.LineOptions.Alignment = cxllaBottom
            Transparent = True
          end
          object edtINN: TcxTextEdit
            Left = 68
            Top = 17
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            Style.TextColor = clBlack
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 0
            Width = 175
          end
          object cxLabel4: TcxLabel
            Left = 3
            Top = 42
            Caption = #1054#1043#1056#1053':'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.LineOptions.Alignment = cxllaBottom
            Transparent = True
          end
          object edtOGRN: TcxTextEdit
            Left = 68
            Top = 39
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            Style.TextColor = clBlack
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 2
            Width = 175
          end
        end
      end
      object Group5: TcxGroupBox
        Left = 0
        Top = 95
        Align = alTop
        PanelStyle.Active = True
        Style.BorderStyle = ebsNone
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 1
        ExplicitWidth = 737
        Height = 80
        Width = 746
        object cxGroupBox3: TcxGroupBox
          Left = 2
          Top = 2
          Align = alLeft
          Caption = #1057#1074#1080#1076#1077#1090#1077#1083#1100#1089#1090#1074#1086' '#1086' '#1075#1086#1089#1091#1076#1072#1088#1089#1090#1074#1077#1085#1085#1086#1081' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
          Style.BorderStyle = ebsUltraFlat
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 0
          Transparent = True
          Height = 76
          Width = 470
          object cxLabel2: TcxLabel
            Left = 3
            Top = 45
            Caption = #1057#1077#1088#1080#1103' '#1080' '#8470':'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.LineOptions.Alignment = cxllaBottom
            Transparent = True
          end
          object edtGosReg: TcxTextEdit
            Left = 126
            Top = 43
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            Style.TextColor = clBlack
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 1
            Width = 186
          end
          object cxLabel5: TcxLabel
            Left = 3
            Top = 22
            Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080':'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.LineOptions.Alignment = cxllaBottom
            Transparent = True
          end
          object edtDateReg: TDateTimePicker
            Left = 126
            Top = 20
            Width = 99
            Height = 21
            Date = 41122.498415752310000000
            Time = 41122.498415752310000000
            TabOrder = 3
          end
        end
        object cxGroupBox5: TcxGroupBox
          Left = 472
          Top = 2
          Align = alClient
          Caption = #1050#1086#1076#1099
          Style.BorderStyle = ebsUltraFlat
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 1
          Transparent = True
          ExplicitWidth = 263
          Height = 76
          Width = 272
          object cxLabel6: TcxLabel
            Left = 4
            Top = 20
            Caption = #1054#1050#1040#1058#1054':'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.LineOptions.Alignment = cxllaBottom
            Transparent = True
          end
          object edtOKATO: TcxTextEdit
            Left = 68
            Top = 20
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            Style.TextColor = clBlack
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 1
            Width = 175
          end
          object cxLabel7: TcxLabel
            Left = 4
            Top = 45
            Caption = #1054#1050#1055#1054':'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            Properties.LineOptions.Alignment = cxllaBottom
            Transparent = True
          end
          object edtOKPO: TcxTextEdit
            Left = 68
            Top = 43
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            Style.TextColor = clBlack
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 2
            Width = 175
          end
        end
      end
    end
    object TabКЛАДР: TcxTabSheet
      Caption = #1050#1051#1040#1044#1056
      ImageIndex = 4
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lblAdrDefault: TLabel
        Left = 3
        Top = 5
        Width = 110
        Height = 13
        Caption = #1040#1076#1088#1077#1089' '#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102':'
      end
      object mmoAdressDefault: TcxMemo
        Left = 119
        Top = 3
        Properties.ReadOnly = True
        Style.LookAndFeel.Kind = lfOffice11
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 0
        Height = 42
        Width = 311
      end
      object btnAdres: TcxButton
        Left = 436
        Top = 3
        Width = 26
        Height = 15
        Caption = '...'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 1
        OnClick = btnAdresClick
      end
    end
    object tab3: TcxTabSheet
      Caption = #1054#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1077' '#1083#1080#1094#1072
      ImageIndex = 2
      ExplicitLeft = 3
      ExplicitTop = 26
      ExplicitWidth = 737
      ExplicitHeight = 324
      object cxGroupBox6: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Caption = #1056#1072#1089#1095#1077#1090#1085#1099#1077' '#1089#1095#1077#1090#1072
        PanelStyle.Active = True
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 0
        ExplicitWidth = 737
        ExplicitHeight = 324
        Height = 332
        Width = 746
        object cxGrid2: TcxGrid
          Left = 2
          Top = 34
          Width = 742
          Height = 296
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          ExplicitWidth = 733
          ExplicitHeight = 288
          object cxGridDBBandedTableView1: TcxGridDBBandedTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsAnsw
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Editing = False
            OptionsSelection.CellSelect = False
            OptionsView.GroupByBox = False
            OptionsView.BandHeaders = False
            Bands = <
              item
              end>
            object cxGridDBBandedTableView1answ: TcxGridDBBandedColumn
              Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
              DataBinding.FieldName = 'a_name'
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1client_name: TcxGridDBBandedColumn
              Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
              DataBinding.FieldName = 'u_name'
              Width = 394
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGridDBBandedTableView1
          end
        end
        inline FrameTopPanel2: TFrameTopPanel
          Left = 2
          Top = 2
          Width = 742
          Height = 32
          Align = alTop
          TabOrder = 1
          ExplicitLeft = 2
          ExplicitTop = 2
          ExplicitWidth = 733
          ExplicitHeight = 32
          inherited barProduct: TdxBarManager
            DockControlHeights = (
              0
              0
              69
              0)
            inherited btnAdd: TdxBarLargeButton
              OnClick = btnAddClick
            end
          end
        end
      end
    end
    object TabAccount: TcxTabSheet
      Caption = #1056#1072#1089#1095#1077#1090#1085#1099#1077' '#1089#1095#1077#1090#1072
      ImageIndex = 3
      ExplicitLeft = 4
      ExplicitWidth = 738
      ExplicitHeight = 328
      object PageAccount: TcxPageControl
        Left = 0
        Top = 0
        Width = 746
        Height = 332
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = TabBankOut
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Blue'
        ExplicitWidth = 738
        ExplicitHeight = 328
        ClientRectBottom = 332
        ClientRectRight = 746
        ClientRectTop = 24
        object TabRussia: TcxTabSheet
          Caption = #1056#1086#1089#1089#1080#1081#1089#1082#1072#1103' '#1060#1077#1076#1077#1088#1072#1094#1080#1103
          ImageIndex = 0
          ExplicitLeft = 3
          ExplicitTop = 26
          ExplicitWidth = 728
          ExplicitHeight = 292
          object cxGroupBox1: TcxGroupBox
            Left = 0
            Top = 0
            Align = alTop
            PanelStyle.Active = True
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 0
            ExplicitWidth = 728
            Height = 73
            Width = 746
            object Label2: TcxLabel
              Left = 4
              Top = 5
              Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1074' '#1076#1086#1075#1086#1074#1086#1088#1077':'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Properties.LineOptions.Alignment = cxllaBottom
              Transparent = True
            end
            object edtNameInContract: TcxTextEdit
              Left = 149
              Top = 3
              Style.LookAndFeel.Kind = lfOffice11
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.Kind = lfOffice11
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.Kind = lfOffice11
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.Kind = lfOffice11
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 0
              Width = 351
            end
            object edtInFace: TcxTextEdit
              Left = 149
              Top = 26
              Style.LookAndFeel.Kind = lfOffice11
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.Kind = lfOffice11
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.Kind = lfOffice11
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.Kind = lfOffice11
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 2
              Width = 351
            end
            object edtSign: TcxTextEdit
              Left = 149
              Top = 49
              Style.LookAndFeel.Kind = lfOffice11
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.Kind = lfOffice11
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.Kind = lfOffice11
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.Kind = lfOffice11
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 4
              Width = 351
            end
            object cxLabel1: TcxLabel
              Left = 4
              Top = 28
              Caption = #1042' '#1083#1080#1094#1077':'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Properties.LineOptions.Alignment = cxllaBottom
              Transparent = True
            end
            object Label7: TcxLabel
              Left = 4
              Top = 51
              Caption = #1055#1086#1076#1087#1080#1089#1100':'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clBlack
              Style.Font.Height = -11
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              Properties.LineOptions.Alignment = cxllaBottom
              Transparent = True
            end
          end
          object Group1: TcxGroupBox
            Left = 0
            Top = 73
            Align = alClient
            Caption = #1056#1072#1089#1095#1077#1090#1085#1099#1077' '#1089#1095#1077#1090#1072
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 1
            ExplicitWidth = 728
            ExplicitHeight = 219
            Height = 235
            Width = 746
            object cxGrid1: TcxGrid
              Left = 2
              Top = 50
              Width = 742
              Height = 183
              Align = alClient
              TabOrder = 0
              LookAndFeel.Kind = lfOffice11
              LookAndFeel.NativeStyle = False
              ExplicitWidth = 726
              ExplicitHeight = 175
              object ViewOrg: TcxGridDBBandedTableView
                Navigator.Buttons.CustomButtons = <>
                DataController.DataSource = dsRch
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                OptionsData.Editing = False
                OptionsSelection.CellSelect = False
                OptionsView.GroupByBox = False
                OptionsView.BandHeaders = False
                Bands = <
                  item
                  end
                  item
                  end>
                object ColumnViewOrgColumn1: TcxGridDBBandedColumn
                  Caption = #1054#1089#1085#1086#1074#1085#1086#1081
                  DataBinding.FieldName = 'id_osn'
                  PropertiesClassName = 'TcxCheckBoxProperties'
                  Properties.ValueChecked = '1'
                  Properties.ValueUnchecked = '0'
                  Width = 58
                  Position.BandIndex = 0
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object ColumnViewOrgColumn2: TcxGridDBBandedColumn
                  Caption = #1041#1072#1085#1082
                  DataBinding.FieldName = 'name'
                  Width = 230
                  Position.BandIndex = 0
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
                object ColumnViewOrgColumn3: TcxGridDBBandedColumn
                  Caption = #1056#1072#1089#1095'. '#1089#1095#1077#1090
                  DataBinding.FieldName = 'rch'
                  Position.BandIndex = 0
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object ColumnViewOrgColumn4: TcxGridDBBandedColumn
                  Caption = #1041#1048#1050
                  DataBinding.FieldName = 'bik'
                  Position.BandIndex = 1
                  Position.ColIndex = 0
                  Position.RowIndex = 0
                end
                object ColumnViewOrgColumn5: TcxGridDBBandedColumn
                  Caption = #1040#1076#1088#1077#1089' '#1073#1072#1085#1082#1072
                  DataBinding.FieldName = 'adres'
                  Width = 255
                  Position.BandIndex = 1
                  Position.ColIndex = 2
                  Position.RowIndex = 0
                end
                object ColumnViewOrgColumn7: TcxGridDBBandedColumn
                  Caption = #1050#1086#1088'. '#1089#1095#1077#1090
                  DataBinding.FieldName = 'ksch'
                  Position.BandIndex = 0
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object ColumnViewOrgColumn6: TcxGridDBBandedColumn
                  Caption = #1058#1077#1083#1077#1092#1086#1085
                  DataBinding.FieldName = 'phone'
                  Position.BandIndex = 1
                  Position.ColIndex = 3
                  Position.RowIndex = 0
                end
                object ColumnViewOrgColumn8: TcxGridDBBandedColumn
                  Caption = #1043#1086#1088#1086#1076
                  DataBinding.FieldName = 'city'
                  Position.BandIndex = 1
                  Position.ColIndex = 1
                  Position.RowIndex = 0
                end
              end
              object cxGridLevel1: TcxGridLevel
                GridView = ViewOrg
              end
            end
            inline FrameTopPanel3: TFrameTopPanel
              Left = 2
              Top = 18
              Width = 742
              Height = 32
              Align = alTop
              TabOrder = 1
              ExplicitLeft = 2
              ExplicitTop = 5
              ExplicitWidth = 724
              ExplicitHeight = 32
              inherited barProduct: TdxBarManager
                DockControlHeights = (
                  0
                  0
                  69
                  0)
                inherited btnAdd: TdxBarLargeButton
                  OnClick = FrameTopPanel3btnAddClick
                end
              end
            end
          end
        end
        object TabBankOut: TcxTabSheet
          Caption = #1052#1077#1078#1076#1091#1085#1072#1088#1086#1076#1085#1099#1077
          ImageIndex = 1
          ExplicitLeft = 3
          ExplicitTop = 26
          ExplicitWidth = 728
          ExplicitHeight = 292
          inline FrameTopPanel1: TFrameTopPanel
            Left = 0
            Top = 0
            Width = 746
            Height = 34
            Align = alTop
            TabOrder = 0
            ExplicitWidth = 728
            ExplicitHeight = 34
            inherited barProduct: TdxBarManager
              DockControlHeights = (
                0
                0
                32
                0)
              inherited dxbrBardxbrmngr1Bar1: TdxBar
                ItemLinks = <
                  item
                    Visible = True
                    ItemName = 'btnAdd'
                  end
                  item
                    Visible = True
                    ItemName = 'btnEdit'
                  end
                  item
                    Visible = True
                    ItemName = 'btnDel'
                  end>
              end
            end
          end
          object GridAcc: TcxGrid
            Left = 0
            Top = 34
            Width = 746
            Height = 274
            Align = alClient
            TabOrder = 1
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = False
            ExplicitWidth = 729
            ExplicitHeight = 262
            object GridAccount: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsRchOut
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.Editing = False
              OptionsSelection.CellSelect = False
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              object GridAccountname: TcxGridDBColumn
                Caption = #1041#1072#1085#1082
                DataBinding.FieldName = 'name'
                Width = 182
              end
              object GridAccountColumn1: TcxGridDBColumn
                Caption = #1057#1095#1077#1090
                DataBinding.FieldName = 'account'
              end
              object GridAccountColumn2: TcxGridDBColumn
                Caption = 'ABA'
                DataBinding.FieldName = 'aba'
              end
            end
            object GridLevelGrid1Level1: TcxGridLevel
              GridView = GridAccount
            end
          end
        end
      end
    end
    object TabAccess: TcxTabSheet
      Caption = #1044#1086#1089#1090#1091#1087
      ImageIndex = 3
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object PageControlAccess: TcxPageControl
        Left = 0
        Top = 0
        Width = 746
        Height = 332
        Align = alClient
        TabOrder = 0
        Properties.ActivePage = TabDoc
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Blue'
        ExplicitWidth = 737
        ExplicitHeight = 324
        ClientRectBottom = 332
        ClientRectRight = 746
        ClientRectTop = 24
        object TabDict: TcxTabSheet
          Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
          ImageIndex = 0
          ExplicitLeft = 4
          ExplicitWidth = 729
          ExplicitHeight = 296
          object GroupOsn: TcxGroupBox
            Left = 0
            Top = 3
            Caption = #1054#1089#1085#1086#1074#1085#1099#1077
            Style.BorderStyle = ebsUltraFlat
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
            StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 0
            Height = 190
            Width = 121
            object chkOsn: TcxCheckBox
              Left = 3
              Top = 18
              Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1075#1088#1091#1087#1087#1091
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 0
              Transparent = True
              Width = 114
            end
            object chkProduct: TcxCheckBox
              Left = 19
              Top = 35
              Caption = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 1
              Transparent = True
              Width = 121
            end
            object chkClient: TcxCheckBox
              Left = 19
              Top = 55
              Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 2
              Transparent = True
              Width = 121
            end
            object chkPlant: TcxCheckBox
              Left = 19
              Top = 75
              Caption = #1055#1083#1072#1085#1090#1072#1094#1080#1080
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 3
              Transparent = True
              Width = 86
            end
          end
          object cxGroupBox8: TcxGroupBox
            Left = 123
            Top = 3
            Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
            Style.BorderStyle = ebsUltraFlat
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
            StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 1
            Height = 190
            Width = 130
            object chkOrgGr: TcxCheckBox
              Left = 3
              Top = 18
              Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1075#1088#1091#1087#1087#1091
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 0
              Transparent = True
              Width = 110
            end
            object chkOrg: TcxCheckBox
              Left = 19
              Top = 35
              Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 1
              Transparent = True
              Width = 121
            end
            object chkStoreloc: TcxCheckBox
              Left = 19
              Top = 55
              Caption = #1052#1077#1089#1090#1072' '#1093#1088#1072#1085#1077#1085#1080#1103
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 2
              Transparent = True
              Width = 121
            end
            object chkPost: TcxCheckBox
              Left = 19
              Top = 95
              Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1080
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 3
              Transparent = True
              Width = 121
            end
            object chkUsers: TcxCheckBox
              Left = 19
              Top = 75
              Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 4
              Transparent = True
              Width = 121
            end
          end
          object cxGroupBox9: TcxGroupBox
            Left = 255
            Top = 3
            Caption = #1040#1074#1080#1072#1085#1072#1082#1083#1072#1076#1085#1099#1077
            Style.BorderStyle = ebsUltraFlat
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
            StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 2
            Height = 190
            Width = 125
            object chkAvia: TcxCheckBox
              Left = 4
              Top = 18
              Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1075#1088#1091#1087#1087#1091
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 0
              Transparent = True
              Width = 117
            end
            object chkMarking: TcxCheckBox
              Left = 19
              Top = 35
              Caption = #1052#1072#1088#1082#1080#1088#1086#1074#1082#1080
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 1
              Transparent = True
              Width = 121
            end
            object chkKargo: TcxCheckBox
              Left = 19
              Top = 55
              Caption = #1050#1072#1088#1075#1086' '#1072#1075#1077#1085#1089#1090#1074#1072
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 2
              Transparent = True
              Width = 121
            end
            object chkAirlines: TcxCheckBox
              Left = 19
              Top = 95
              Caption = #1040#1074#1080#1072#1083#1080#1085#1080#1080
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 3
              Transparent = True
              Width = 121
            end
            object chkTrack: TcxCheckBox
              Left = 19
              Top = 75
              Caption = #1058#1088#1072#1082#1080
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 4
              Transparent = True
              Width = 121
            end
            object chkFreeC: TcxCheckBox
              Left = 19
              Top = 115
              Caption = #1055#1088#1080#1082#1091#1083#1080#1085#1075
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 5
              Transparent = True
              Width = 121
            end
          end
          object cxGroupBox10: TcxGroupBox
            Left = 382
            Top = 3
            Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1077
            Style.BorderStyle = ebsUltraFlat
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
            StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 3
            Height = 190
            Width = 187
            object chkDop: TcxCheckBox
              Left = 0
              Top = 18
              Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1075#1088#1091#1087#1087#1091
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 0
              Transparent = True
              Width = 145
            end
            object chkStatusClient: TcxCheckBox
              Left = 19
              Top = 38
              Caption = #1057#1090#1072#1090#1091#1089#1099' '#1082#1083#1080#1077#1085#1090#1086#1074
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 1
              Transparent = True
              Width = 121
            end
            object chkVidDogovor: TcxCheckBox
              Left = 19
              Top = 58
              Caption = #1042#1080#1076#1099' '#1076#1086#1075#1086#1074#1086#1088#1086#1074
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 2
              Transparent = True
              Width = 121
            end
            object chkBank: TcxCheckBox
              Left = 19
              Top = 98
              Caption = #1041#1072#1085#1082#1080
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 3
              Transparent = True
              Width = 102
            end
            object chkTypeDogovor: TcxCheckBox
              Left = 19
              Top = 78
              Caption = #1058#1080#1087#1099' '#1076#1086#1075#1086#1074#1086#1088#1086#1074
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 4
              Transparent = True
              Width = 121
            end
            object chkCurrency: TcxCheckBox
              Left = 19
              Top = 118
              Caption = #1042#1072#1083#1102#1090#1099' '#1080' '#1082#1091#1088#1089#1099
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 5
              Transparent = True
              Width = 121
            end
            object chkAddress: TcxCheckBox
              Left = 19
              Top = 138
              Caption = #1040#1076#1088#1077#1089#1072
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 6
              Transparent = True
              Width = 102
            end
            object chkRegName: TcxCheckBox
              Left = 19
              Top = 158
              Caption = #1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1085#1099#1077' '#1089#1083#1086#1074#1072
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 7
              Transparent = True
              Width = 166
            end
          end
        end
        object TabDoc: TcxTabSheet
          Caption = #1047#1072#1082#1091#1087#1082#1072' '#1080' '#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103
          ImageIndex = 1
          ExplicitLeft = 4
          ExplicitWidth = 729
          ExplicitHeight = 296
          object GroupOsnTorg: TcxGroupBox
            Left = -1
            Top = 3
            Caption = #1054#1089#1085#1086#1074#1085#1099#1077
            Style.BorderStyle = ebsUltraFlat
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
            StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 0
            Height = 85
            Width = 121
            object chkGrOsnTorg: TcxCheckBox
              Left = 3
              Top = 18
              Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1075#1088#1091#1087#1087#1091
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 0
              Transparent = True
              Width = 114
            end
            object chkIn: TcxCheckBox
              Left = 19
              Top = 35
              Caption = #1047#1072#1082#1091#1087#1082#1072
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 1
              Transparent = True
              Width = 121
            end
            object chkOut: TcxCheckBox
              Left = 19
              Top = 55
              Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 2
              Transparent = True
              Width = 121
            end
          end
          object GroupReturn: TcxGroupBox
            Left = 122
            Top = 3
            Caption = #1042#1086#1079#1074#1088#1072#1090#1099
            Style.BorderStyle = ebsUltraFlat
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
            StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 1
            Height = 85
            Width = 127
            object chkGrReturn: TcxCheckBox
              Left = 3
              Top = 18
              Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1075#1088#1091#1087#1087#1091
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 0
              Transparent = True
              Width = 114
            end
            object chkReturnClient: TcxCheckBox
              Left = 19
              Top = 35
              Caption = #1054#1090' '#1082#1083#1080#1077#1085#1090#1086#1074
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 1
              Transparent = True
              Width = 121
            end
            object chkReturnSupplier: TcxCheckBox
              Left = 19
              Top = 55
              Caption = #1054#1090' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1086#1074
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 2
              Transparent = True
              Width = 121
            end
          end
          object GroupZakaz: TcxGroupBox
            Left = 251
            Top = 3
            Caption = #1047#1072#1082#1072#1079#1099
            Style.BorderStyle = ebsUltraFlat
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
            StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 2
            Height = 85
            Width = 121
            object chkGrZakaz: TcxCheckBox
              Left = 3
              Top = 18
              Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1075#1088#1091#1087#1087#1091
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 0
              Transparent = True
              Width = 114
            end
            object chkZakazClient: TcxCheckBox
              Left = 19
              Top = 35
              Caption = #1050#1083#1080#1077#1085#1090#1086#1074
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 1
              Transparent = True
              Width = 121
            end
            object chkZakazSupplier: TcxCheckBox
              Left = 19
              Top = 56
              Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1072#1084
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 2
              Transparent = True
              Width = 121
            end
          end
          object GroupInvoice: TcxGroupBox
            Left = 374
            Top = 3
            Caption = #1048#1085#1074#1086#1081#1089#1099
            Style.BorderStyle = ebsUltraFlat
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
            StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 3
            Height = 85
            Width = 147
            object chkGrInvoice: TcxCheckBox
              Left = 3
              Top = 18
              Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1075#1088#1091#1087#1087#1091
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 0
              Transparent = True
              Width = 114
            end
            object chkInvoiceFactPlant: TcxCheckBox
              Left = 19
              Top = 35
              Caption = #1060#1072#1082#1090#1091#1088#1099' '#1087#1083#1072#1085#1090#1072#1094#1080#1081
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 1
              Transparent = True
              Width = 133
            end
            object chkAirDoc: TcxCheckBox
              Left = 19
              Top = 55
              Caption = #1040#1074#1080#1072#1085#1072#1082#1083#1072#1076#1085#1099#1077
              Properties.NullStyle = nssUnchecked
              Properties.ValueChecked = '1'
              Properties.ValueUnchecked = '0'
              State = cbsGrayed
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 2
              Transparent = True
              Width = 121
            end
          end
        end
      end
    end
  end
  object Query1: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO clients'
      
        '  (ID, PID, NAME, id_is_client, id_supplier, id_competitor, adre' +
        'ss, phone, comment, id_del)'
      'VALUES'
      
        '  (:ID, :PID, :NAME, :id_is_client, :id_supplier, :id_competitor' +
        ', :adress, :phone, :comment, :id_del)')
    SQLDelete.Strings = (
      'DELETE FROM clients'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE clients'
      'SET'
      
        '  ID = :ID, PID = :PID, NAME = :NAME, id_is_client = :id_is_clie' +
        'nt, id_supplier = :id_supplier, id_competitor = :id_competitor, ' +
        'adress = :adress, phone = :phone, comment = :comment, id_del = :' +
        'id_del'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT * FROM clients'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT ID, PID, NAME, id_is_client, id_supplier, id_competitor, ' +
        'adress, phone, comment, id_del FROM clients'
      'WHERE'
      '  ID = :ID')
    Connection = DM1.db1
    SQL.Strings = (
      'SELECT '
      '  c.*,'
      '  s.name stat_name'
      'FROM'
      '  clients c'
      '  left outer JOIN status_work s ON (c.stat_work = s.id)')
    Left = 366
    Top = 146
  end
  object QueryRch: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO clients'
      
        '  (ID, PID, NAME, id_is_client, id_supplier, id_competitor, adre' +
        'ss, phone, comment, id_del)'
      'VALUES'
      
        '  (:ID, :PID, :NAME, :id_is_client, :id_supplier, :id_competitor' +
        ', :adress, :phone, :comment, :id_del)')
    SQLDelete.Strings = (
      'DELETE FROM clients'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE clients'
      'SET'
      
        '  ID = :ID, PID = :PID, NAME = :NAME, id_is_client = :id_is_clie' +
        'nt, id_supplier = :id_supplier, id_competitor = :id_competitor, ' +
        'adress = :adress, phone = :phone, comment = :comment, id_del = :' +
        'id_del'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT * FROM clients'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT ID, PID, NAME, id_is_client, id_supplier, id_competitor, ' +
        'adress, phone, comment, id_del FROM clients'
      'WHERE'
      '  ID = :ID')
    Connection = DM1.db1
    SQL.Strings = (
      'SELECT '
      'r.id, r.id_osn, r.date_open, r.date_close, '
      'r.rch,'
      '  r.bik,'
      '  b.name,'
      '  b.adres,'
      '  b.city,'
      '  b.phone,'
      '  b.ksch,'
      '  b.okpo'
      'FROM'
      '  org_rch r'
      '  INNER JOIN banks b ON (r.bik = b.bik)'
      'where '
      'r.id_org=:id')
    Left = 76
    Top = 268
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
  end
  object dsRch: TDataSource
    DataSet = QueryRch
    Left = 60
    Top = 244
  end
  object Query2: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO clients'
      
        '  (ID, PID, NAME, id_is_client, id_supplier, id_competitor, adre' +
        'ss, phone, comment, id_del)'
      'VALUES'
      
        '  (:ID, :PID, :NAME, :id_is_client, :id_supplier, :id_competitor' +
        ', :adress, :phone, :comment, :id_del)')
    SQLDelete.Strings = (
      'DELETE FROM clients'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE clients'
      'SET'
      
        '  ID = :ID, PID = :PID, NAME = :NAME, id_is_client = :id_is_clie' +
        'nt, id_supplier = :id_supplier, id_competitor = :id_competitor, ' +
        'adress = :adress, phone = :phone, comment = :comment, id_del = :' +
        'id_del'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT * FROM clients'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT ID, PID, NAME, id_is_client, id_supplier, id_competitor, ' +
        'adress, phone, comment, id_del FROM clients'
      'WHERE'
      '  ID = :ID')
    Connection = DM1.db1
    SQL.Strings = (
      'SELECT '
      '  c.*,'
      '  s.name stat_name'
      'FROM'
      '  clients c'
      '  left outer JOIN status_work s ON (c.stat_work = s.id)')
    Left = 538
    Top = 160
  end
  object QueryAnsw: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO clients'
      
        '  (ID, PID, NAME, id_is_client, id_supplier, id_competitor, adre' +
        'ss, phone, comment, id_del)'
      'VALUES'
      
        '  (:ID, :PID, :NAME, :id_is_client, :id_supplier, :id_competitor' +
        ', :adress, :phone, :comment, :id_del)')
    SQLDelete.Strings = (
      'DELETE FROM clients'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE clients'
      'SET'
      
        '  ID = :ID, PID = :PID, NAME = :NAME, id_is_client = :id_is_clie' +
        'nt, id_supplier = :id_supplier, id_competitor = :id_competitor, ' +
        'adress = :adress, phone = :phone, comment = :comment, id_del = :' +
        'id_del'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT * FROM clients'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT ID, PID, NAME, id_is_client, id_supplier, id_competitor, ' +
        'adress, phone, comment, id_del FROM clients'
      'WHERE'
      '  ID = :ID')
    Connection = DM1.db1
    SQL.Strings = (
      'SELECT '
      '  a.name AS a_name,'
      '  a.id,'
      '  a.id_user,'
      '  a.id_org,'
      '  u.name u_name'
      'FROM'
      '  "'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'"."'#1086#1090#1074#1077#1090#1089#1090#1074#1077#1085#1085#1099#1077'_'#1083#1080#1094#1072'" a'
      
        '  INNER JOIN "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'" u ON (a.id_user = u.i' +
        'd)'
      '  where a.id_org=:id')
    Left = 468
    Top = 162
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
  end
  object dsAnsw: TDataSource
    DataSet = QueryAnsw
    Left = 44
    Top = 254
  end
  object QueryRchOut: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO clients'
      
        '  (ID, PID, NAME, id_is_client, id_supplier, id_competitor, adre' +
        'ss, phone, comment, id_del)'
      'VALUES'
      
        '  (:ID, :PID, :NAME, :id_is_client, :id_supplier, :id_competitor' +
        ', :adress, :phone, :comment, :id_del)')
    SQLDelete.Strings = (
      'DELETE FROM clients'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE clients'
      'SET'
      
        '  ID = :ID, PID = :PID, NAME = :NAME, id_is_client = :id_is_clie' +
        'nt, id_supplier = :id_supplier, id_competitor = :id_competitor, ' +
        'adress = :adress, phone = :phone, comment = :comment, id_del = :' +
        'id_del'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT * FROM clients'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT ID, PID, NAME, id_is_client, id_supplier, id_competitor, ' +
        'adress, phone, comment, id_del FROM clients'
      'WHERE'
      '  ID = :ID')
    Connection = DM1.db1
    SQL.Strings = (
      'SELECT '
      '  a.id_bank,'
      '  a.id_kargo,'
      '  a.account,'
      '  a.aba,'
      '  b.name'
      'FROM'
      '  kargo_bank b'
      '  INNER JOIN org_rch_out a ON (b.id = a.id_bank)')
    Left = 112
    Top = 280
  end
  object dsRchOut: TDataSource
    DataSet = QueryRchOut
    Left = 112
    Top = 192
  end
  object QueryAddress: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO clients'
      
        '  (ID, PID, NAME, id_is_client, id_supplier, id_competitor, adre' +
        'ss, phone, comment, id_del)'
      'VALUES'
      
        '  (:ID, :PID, :NAME, :id_is_client, :id_supplier, :id_competitor' +
        ', :adress, :phone, :comment, :id_del)')
    SQLDelete.Strings = (
      'DELETE FROM clients'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE clients'
      'SET'
      
        '  ID = :ID, PID = :PID, NAME = :NAME, id_is_client = :id_is_clie' +
        'nt, id_supplier = :id_supplier, id_competitor = :id_competitor, ' +
        'adress = :adress, phone = :phone, comment = :comment, id_del = :' +
        'id_del'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT * FROM clients'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT ID, PID, NAME, id_is_client, id_supplier, id_competitor, ' +
        'adress, phone, comment, id_del FROM clients'
      'WHERE'
      '  ID = :ID')
    Connection = DM1.db1
    SQL.Strings = (
      'select * from country')
    Left = 312
    Top = 240
  end
end
