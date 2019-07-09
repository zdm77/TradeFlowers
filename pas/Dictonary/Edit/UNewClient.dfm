object FNewClient: TFNewClient
  Left = 0
  Top = 0
  Caption = #1050#1083#1080#1077#1085#1090
  ClientHeight = 531
  ClientWidth = 688
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
  object lblLogin: TLabel
    Left = 5
    Top = 7
    Width = 35
    Height = 13
    Caption = 'Login:*'
  end
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 499
    Width = 688
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 499
    ExplicitWidth = 688
    inherited bardxbrmngr1: TdxBarManager
      PixelsPerInch = 96
      inherited btnSave: TdxBarLargeButton
        OnClick = FrameSave1btnSaveClick
      end
    end
  end
  object Page1: TcxPageControl
    Left = 0
    Top = 0
    Width = 688
    Height = 499
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = TabUrInfo
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Blue'
    OnChange = Page1Change
    ClientRectBottom = 499
    ClientRectRight = 688
    ClientRectTop = 24
    object TabOsn: TcxTabSheet
      Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1089#1074#1077#1076#1077#1085#1080#1103
      ImageIndex = 0
      object Group1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Alignment = alTopCenter
        Caption = #1054#1073#1097#1080#1077' '#1089#1074#1077#1076#1077#1085#1080#1103
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 0
        Height = 475
        Width = 688
        object lblName: TcxLabel
          Left = 3
          Top = 17
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
          Properties.LineOptions.Alignment = cxllaBottom
          Transparent = True
        end
        object edtName: TcxTextEdit
          Left = 90
          Top = 16
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 0
          Width = 242
        end
        object Label1: TcxLabel
          Left = 342
          Top = 18
          Caption = #1058#1077#1083#1077#1092#1086#1085':'
          Properties.LineOptions.Alignment = cxllaBottom
          Transparent = True
        end
        object edtPhone: TcxTextEdit
          Left = 421
          Top = 16
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 3
          Width = 210
        end
        object lblAddr: TcxLabel
          Left = 74
          Top = 444
          Caption = #1040#1076#1088#1077#1089':'
          Properties.LineOptions.Alignment = cxllaBottom
          Transparent = True
          Visible = False
        end
        object LabelEmail: TcxLabel
          Left = 342
          Top = 64
          Caption = #1069#1083'. '#1087#1086#1095#1090#1072':'
          Properties.LineOptions.Alignment = cxllaBottom
          Transparent = True
        end
        object edtEmail: TcxTextEdit
          Left = 421
          Top = 62
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 5
          Width = 210
        end
        object lblStat: TcxLabel
          Left = 3
          Top = 85
          Caption = #1057#1090#1072#1090#1091#1089':'
          Properties.LineOptions.Alignment = cxllaBottom
          Transparent = True
        end
        object edtStat: TcxLookupComboBox
          Left = 90
          Top = 83
          Properties.DropDownListStyle = lsFixedList
          Properties.KeyFieldNames = 'id'
          Properties.ListColumns = <
            item
              FieldName = 'name'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsStat
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 2
          Width = 242
        end
        object mmoComent: TcxMemo
          Left = 90
          Top = 106
          Properties.ScrollBars = ssVertical
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 6
          Height = 53
          Width = 541
        end
        object lblComment: TcxLabel
          Left = 3
          Top = 106
          Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081':'
          Properties.LineOptions.Alignment = cxllaBottom
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 342
          Top = 41
          Caption = #1060#1072#1082#1089':'
          Properties.LineOptions.Alignment = cxllaBottom
          Transparent = True
        end
        object edtFAX: TcxTextEdit
          Left = 421
          Top = 39
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 4
          Width = 210
        end
        object mmoAdress: TcxMemo
          Left = 161
          Top = 444
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 1
          Visible = False
          Height = 42
          Width = 215
        end
        object btnAdres: TcxButton
          Left = 377
          Top = 444
          Width = 26
          Height = 15
          Caption = '...'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 14
          Visible = False
          OnClick = btnAdresClick
        end
        object lbl1: TcxLabel
          Left = 342
          Top = 85
          Caption = 'Skype:'
          Properties.LineOptions.Alignment = cxllaBottom
          Transparent = True
        end
        object edtSkype: TcxTextEdit
          Left = 421
          Top = 83
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 16
          Width = 210
        end
        object chkMarking: TCheckBox
          Left = 8
          Top = 160
          Width = 209
          Height = 17
          Caption = #1059#1095#1072#1074#1089#1090#1074#1091#1077#1090' '#1074' '#1084#1072#1088#1082#1080#1088#1086#1074#1082#1072#1093
          TabOrder = 17
          OnClick = chkMarkingClick
        end
      end
    end
    object tabType: TcxTabSheet
      Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1085#1072#1089#1090#1088#1086#1081#1082#1080
      ImageIndex = 1
      inline FrameTypeClient1: TFrameTypeClient
        Left = 0
        Top = 0
        Width = 688
        Height = 475
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 688
        ExplicitHeight = 475
        inherited Group1: TcxGroupBox
          ExplicitWidth = 688
          ExplicitHeight = 276
          Height = 276
          Width = 688
          inherited FrameTopPanel1: TFrameTopPanel
            Width = 684
            ExplicitWidth = 684
            inherited barProduct: TdxBarManager
              PixelsPerInch = 96
              inherited btnAdd: TdxBarLargeButton
                OnClick = btnAddClick
              end
            end
            inherited pmПедидо: TdxBarPopupMenu
              PixelsPerInch = 96
            end
            inherited pmЗаказ: TdxBarPopupMenu
              PixelsPerInch = 96
            end
            inherited pmФактура: TdxBarPopupMenu
              PixelsPerInch = 96
            end
            inherited pmClients: TdxBarPopupMenu
              PixelsPerInch = 96
            end
          end
          inherited GridType: TcxGrid
            Width = 684
            Height = 223
            ExplicitWidth = 633
            ExplicitHeight = 303
          end
        end
        inherited cxGroupBox1: TcxGroupBox
          Top = 276
          ExplicitTop = 276
          ExplicitWidth = 688
          ExplicitHeight = 199
          Height = 199
          Width = 688
          inherited FrameTopPanel2: TFrameTopPanel
            Width = 684
            ExplicitWidth = 684
            inherited barProduct: TdxBarManager
              PixelsPerInch = 96
            end
            inherited pmПедидо: TdxBarPopupMenu
              PixelsPerInch = 96
            end
            inherited pmЗаказ: TdxBarPopupMenu
              PixelsPerInch = 96
            end
            inherited pmФактура: TdxBarPopupMenu
              PixelsPerInch = 96
            end
            inherited pmClients: TdxBarPopupMenu
              PixelsPerInch = 96
            end
          end
          inherited GridVid: TcxGrid
            Width = 684
            Height = 146
            ExplicitWidth = 633
            ExplicitHeight = 141
          end
        end
      end
    end
    object TabUrInfo: TcxTabSheet
      Caption = #1070#1088#1080#1076#1080#1095#1077#1089#1082#1072#1103' '#1080#1085#1092'-'#1094#1080#1103
      ImageIndex = 1
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Group3: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Alignment = alTopCenter
        BiDiMode = bdLeftToRight
        Caption = #1054#1073#1097#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
        ParentBiDiMode = False
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 0
        Height = 227
        Width = 688
        object label11: TcxLabel
          Left = 3
          Top = 16
          Caption = #1070#1088#1080#1076#1077#1095#1077#1089#1082#1086#1077' '#1085#1072#1079#1074#1072#1085#1080#1077':'
          Transparent = True
        end
        object mmoUrName: TcxMemo
          Left = 132
          Top = 16
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 1
          Height = 33
          Width = 242
        end
        object label6: TcxLabel
          Left = 3
          Top = 51
          Caption = #1040#1076#1088#1077#1089' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080':'
          Transparent = True
        end
        object label9: TcxLabel
          Left = 3
          Top = 88
          AutoSize = False
          Caption = #1060#1072#1082#1090#1080#1095#1077#1089#1082#1080#1081' '#1072#1076#1088#1077#1089':'
          Transparent = True
          Height = 17
          Width = 111
        end
        object mmoFactAdres: TcxMemo
          Left = 132
          Top = 88
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 8
          Height = 35
          Width = 242
        end
        object mmoUrAdres: TcxMemo
          Left = 132
          Top = 51
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 6
          Height = 33
          Width = 242
        end
        object label7: TcxLabel
          Left = 412
          Top = 17
          Caption = #1048#1053#1053':'
          Transparent = True
        end
        object edtINN: TcxTextEdit
          Left = 465
          Top = 15
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 2
          Width = 206
        end
        object edtOGRN: TcxTextEdit
          Left = 465
          Top = 39
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 4
          Width = 206
        end
        object label8: TcxLabel
          Left = 412
          Top = 41
          Caption = #1054#1043#1056#1053':'
          Transparent = True
        end
        object edtOKPO: TcxTextEdit
          Left = 465
          Top = 63
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 7
          Width = 206
        end
        object label16: TcxLabel
          Left = 412
          Top = 65
          Caption = #1054#1050#1055#1054':'
          Transparent = True
        end
        object edtInFace: TcxTextEdit
          Left = 465
          Top = 87
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 9
          Width = 206
        end
        object cxLabel1: TcxLabel
          Left = 412
          Top = 89
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
        object edtSign: TcxTextEdit
          Left = 465
          Top = 114
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 10
          Width = 206
        end
        object Label35: TcxLabel
          Left = 412
          Top = 116
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
        object btnAddRegAdr: TcxButton
          Left = 375
          Top = 88
          Width = 26
          Height = 15
          Caption = '...'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 16
          OnClick = btnAddRegAdrClick
        end
        object btnAddUrAdr: TcxButton
          Left = 374
          Top = 55
          Width = 26
          Height = 15
          Caption = '...'
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 17
          OnClick = btnAddUrAdrClick
        end
        object chkIP: TcxCheckBox
          Left = 6
          Top = 137
          Caption = #1048#1085#1076#1080#1074#1080#1076#1091#1072#1083#1100#1085#1099#1081' '#1087#1088#1077#1076#1087#1088#1080#1085#1080#1084#1072#1090#1077#1083#1100
          TabOrder = 18
        end
      end
      object Group4: TcxGroupBox
        Left = 0
        Top = 227
        Align = alBottom
        Caption = #1055#1072#1089#1087#1086#1088#1090#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 1
        ExplicitTop = 219
        Height = 248
        Width = 688
        object edtPasportCod: TcxTextEdit
          Left = 80
          Top = 21
          Properties.ValidateOnEnter = True
          Properties.ValidationOptions = [evoRaiseException, evoShowErrorIcon, evoAllowLoseFocus]
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 0
          Width = 97
        end
        object label12: TcxLabel
          Left = 1
          Top = 22
          Caption = #1057#1077#1088#1080#1103':'
          Transparent = True
        end
        object label13: TcxLabel
          Left = 197
          Top = 22
          Caption = #1053#1086#1084#1077#1088':'
          Transparent = True
        end
        object edtNumberPasport: TcxTextEdit
          Left = 268
          Top = 21
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 1
          Width = 157
        end
        object label14: TcxLabel
          Left = 1
          Top = 48
          Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080':'
          Transparent = True
        end
        object label15: TcxLabel
          Left = 197
          Top = 48
          AutoSize = False
          Caption = #1050#1077#1084' '#1074#1099#1076#1072#1085':'
          Transparent = True
          Height = 17
          Width = 65
        end
        object mmoVidan: TcxMemo
          Left = 268
          Top = 48
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 6
          Height = 28
          Width = 294
        end
        object edtDatePasport: TDateTimePicker
          Left = 80
          Top = 48
          Width = 97
          Height = 21
          Date = 41535.000000000000000000
          Time = 0.395268159722036200
          ShowCheckbox = True
          Checked = False
          TabOrder = 7
        end
        object mmoDostavka: TcxMemo
          Left = 132
          Top = 127
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 8
          Visible = False
          Height = 38
          Width = 242
        end
        object btnAddPostAdr: TcxButton
          Left = 375
          Top = 127
          Width = 26
          Height = 15
          Caption = '...'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 9
          Visible = False
          OnClick = btnAddPostAdrClick
        end
        object label10: TcxLabel
          Left = 3
          Top = 127
          AutoSize = False
          Caption = #1055#1086#1095#1090#1086#1074#1099#1081' '#1072#1076#1088#1077#1089':'
          Transparent = True
          Visible = False
          Height = 17
          Width = 91
        end
      end
    end
    object TabДоговора: TcxTabSheet
      Caption = #1044#1086#1075#1086#1074#1086#1088#1072
      ImageIndex = 2
      inline FrameTopPanel1: TFrameTopPanel
        Left = 0
        Top = 0
        Width = 688
        Height = 32
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 688
        ExplicitHeight = 32
        inherited barProduct: TdxBarManager
          PixelsPerInch = 96
          DockControlHeights = (
            0
            0
            69
            0)
          inherited btnAdd: TdxBarLargeButton
            OnClick = FrameTopPanel1btnAddClick
          end
          inherited btnEdit: TdxBarLargeButton
            OnClick = FrameTopPanel1btnEditClick
          end
          inherited btnDel: TdxBarLargeButton
            OnClick = FrameTopPanel1btnDelClick
          end
          inherited btnRefresh: TdxBarLargeButton
            OnClick = FrameTopPanel1btnRefreshClick
          end
        end
        inherited pmПедидо: TdxBarPopupMenu
          PixelsPerInch = 96
        end
        inherited pmЗаказ: TdxBarPopupMenu
          PixelsPerInch = 96
        end
        inherited pmФактура: TdxBarPopupMenu
          PixelsPerInch = 96
        end
        inherited pmClients: TdxBarPopupMenu
          PixelsPerInch = 96
        end
      end
      object GridTarif: TcxGrid
        Left = 0
        Top = 32
        Width = 688
        Height = 153
        Align = alTop
        TabOrder = 1
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        ExplicitWidth = 639
        object cxGridDBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object ColumnAirLine: TcxGridDBColumn
            Caption = #1040#1074#1080#1072#1083#1080#1085#1080#1103
            DataBinding.FieldName = 'name'
            Width = 182
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
      object Group2: TcxGroupBox
        Left = 0
        Top = 185
        Align = alClient
        Alignment = alTopCenter
        Caption = #1054#1087#1086#1074#1077#1097#1077#1085#1080#1103' '#1080' '#1073#1083#1086#1082#1080#1088#1086#1074#1082#1072
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 2
        Height = 290
        Width = 688
        object Label40: TcxLabel
          Left = 3
          Top = 18
          Caption = #1044#1086' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1076#1086#1075#1086#1074#1086#1088#1072':'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          Properties.LineOptions.Alignment = cxllaBottom
          Transparent = True
        end
        object Label24: TcxLabel
          Left = 295
          Top = 18
          Caption = #1076#1085#1077#1081
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          Properties.LineOptions.Alignment = cxllaBottom
          Transparent = True
        end
        object Label25: TcxLabel
          Left = 3
          Top = 41
          Caption = #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1099#1081' '#1089#1088#1086#1082' '#1079#1072#1076#1086#1083#1078#1077#1085#1085#1086#1089#1090#1080':'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          Properties.LineOptions.Alignment = cxllaBottom
          Transparent = True
        end
        object Label26: TcxLabel
          Left = 295
          Top = 41
          Caption = #1076#1085#1077#1081
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          Properties.LineOptions.Alignment = cxllaBottom
          Transparent = True
        end
        object Label27: TcxLabel
          Left = 3
          Top = 64
          Caption = #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1072#1103' '#1089#1091#1084#1084#1072' '#1079#1072#1076#1086#1083#1078#1077#1085#1085#1086#1089#1090#1080':'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          Properties.LineOptions.Alignment = cxllaBottom
          Transparent = True
        end
        object Label28: TcxLabel
          Left = 295
          Top = 64
          Caption = #1088'.'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          Properties.LineOptions.Alignment = cxllaBottom
          Transparent = True
        end
        object edtDayAlarm: TsCalcEdit
          Left = 200
          Top = 16
          Width = 89
          Height = 21
          AutoSize = False
          TabOrder = 6
          SkinData.SkinSection = 'EDIT'
          DecimalPlaces = 0
          DisplayFormat = '### ### ##0;-### ### ##0;0'
          Value = 14.000000000000000000
        end
        object edtSrokDolg: TsCalcEdit
          Left = 200
          Top = 39
          Width = 89
          Height = 21
          AutoSize = False
          TabOrder = 7
          SkinData.SkinSection = 'EDIT'
          DisplayFormat = '### ### ##0;-### ### ##0;0'
          Value = 14.000000000000000000
        end
        object edtSumDolg: TsCalcEdit
          Left = 200
          Top = 62
          Width = 89
          Height = 21
          AutoSize = False
          TabOrder = 8
          SkinData.SkinSection = 'EDIT'
          Value = 5000.000000000000000000
        end
        object lblManager: TcxLabel
          Left = 3
          Top = 89
          Caption = #1052#1077#1085#1077#1076#1078#1077#1088':'
          Properties.LineOptions.Alignment = cxllaBottom
          Transparent = True
        end
        object edtManager: TcxLookupComboBox
          Left = 70
          Top = 89
          Properties.DropDownListStyle = lsFixedList
          Properties.KeyFieldNames = 'id'
          Properties.ListColumns = <
            item
              FieldName = 'name'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsManager
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 10
          Width = 219
        end
      end
    end
    object TabContacts: TcxTabSheet
      Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1077' '#1082#1086#1085#1090#1072#1082#1090#1099
      ImageIndex = 3
      inline FrameTopPanel2: TFrameTopPanel
        Left = 0
        Top = 0
        Width = 688
        Height = 33
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 688
        ExplicitHeight = 33
        inherited barProduct: TdxBarManager
          PixelsPerInch = 96
          DockControlHeights = (
            0
            0
            69
            0)
          inherited btnAdd: TdxBarLargeButton
            OnClick = FrameTopPanel2btnAddClick
          end
          inherited btnEdit: TdxBarLargeButton
            OnClick = FrameTopPanel2btnEditClick
          end
          inherited btnDel: TdxBarLargeButton
            OnClick = FrameTopPanel2btnDelClick
          end
          inherited btnRefresh: TdxBarLargeButton
            OnClick = FrameTopPanel2btnRefreshClick
          end
        end
        inherited pmПедидо: TdxBarPopupMenu
          PixelsPerInch = 96
        end
        inherited pmЗаказ: TdxBarPopupMenu
          PixelsPerInch = 96
        end
        inherited pmФактура: TdxBarPopupMenu
          PixelsPerInch = 96
        end
        inherited pmClients: TdxBarPopupMenu
          PixelsPerInch = 96
        end
      end
      object GridContact: TcxGrid
        Left = 0
        Top = 33
        Width = 688
        Height = 442
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        ExplicitWidth = 639
        ExplicitHeight = 352
        object cxGridDBTableView1: TcxGridDBTableView
          OnDblClick = cxGridDBTableView1DblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsContact
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object ColumnFIO: TcxGridDBColumn
            Caption = #1060'.'#1048'.'#1054'.'
            DataBinding.FieldName = 'name'
            Width = 229
          end
          object ColumnPost: TcxGridDBColumn
            Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
            DataBinding.FieldName = #1090#1080#1087
            Width = 159
          end
          object ColumnPhone: TcxGridDBColumn
            Caption = #1058#1077#1083#1077#1092#1086#1085
            DataBinding.FieldName = #1090#1077#1083#1077#1092#1086#1085'1'
            Width = 121
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object tabAccess: TcxTabSheet
      Caption = #1044#1086#1089#1090#1091#1087
      ImageIndex = 5
      object Label4: TLabel
        Left = 5
        Top = 7
        Width = 35
        Height = 13
        Caption = 'Login:*'
      end
      object lblConfitm: TLabel
        Left = 295
        Top = 56
        Width = 3
        Height = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsItalic]
        ParentFont = False
      end
      object edtLogin: TcxTextEdit
        Left = 112
        Top = 3
        ParentShowHint = False
        ShowHint = True
        Style.LookAndFeel.Kind = lfOffice11
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 0
        Width = 265
      end
      object LabelPass: TcxLabel
        Left = 5
        Top = 32
        Caption = #1055#1072#1088#1086#1083#1100':*'
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
      object edtPass: TcxTextEdit
        Left = 112
        Top = 30
        Properties.EchoMode = eemPassword
        Properties.PasswordChar = '*'
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 2
        OnKeyUp = edtPassKeyUp
        Width = 177
      end
      object LabelConfPass: TcxLabel
        Left = 5
        Top = 55
        Caption = #1055#1086#1074#1090#1086#1088#1080#1090#1077' '#1087#1072#1088#1086#1083#1100':*'
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
      object edtPasswdConfirm: TcxTextEdit
        Left = 112
        Top = 53
        Properties.EchoMode = eemPassword
        Properties.PasswordChar = '*'
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 4
        OnKeyUp = edtPasswdConfirmKeyUp
        Width = 177
      end
      object chkLogin: TcxCheckBox
        Left = 3
        Top = 80
        Caption = #1056#1072#1079#1088#1077#1096#1077#1085' '#1074#1093#1086#1076' '#1074' '#1089#1080#1089#1090#1077#1084#1091
        TabOrder = 5
      end
      object chkOstatok: TcxCheckBox
        Left = 3
        Top = 104
        Caption = #1056#1072#1079#1088#1077#1096#1077#1085#1086' '#1087#1088#1086#1089#1084#1072#1090#1088#1080#1074#1072#1090#1100' '#1086#1089#1090#1072#1090#1082#1080' '#1085#1072' '#1089#1082#1083#1072#1076#1072#1093
        TabOrder = 6
      end
      object chkZakupka: TcxCheckBox
        Left = 3
        Top = 128
        Caption = #1056#1072#1079#1088#1077#1096#1077#1085#1086' '#1087#1088#1086#1080#1079#1074#1086#1076#1080#1090#1100' '#1079#1072#1082#1091#1087#1082#1091' '#1080' '#1088#1072#1079#1084#1077#1097#1072#1090#1100' '#1079#1072#1082#1072#1079#1099
        TabOrder = 7
      end
      object chkSubClient: TcxCheckBox
        Left = 3
        Top = 155
        Caption = #1044#1072#1085#1085#1099#1081' '#1082#1083#1080#1077#1085#1090' '#1087#1088#1080#1074#1103#1079#1072#1085' '#1082' '#1076#1088#1091#1075#1086#1084#1091' '#1082#1083#1080#1077#1085#1090#1091
        TabOrder = 8
        OnClick = chkSubClientClick
      end
      object lblSubClient: TcxLabel
        Left = 21
        Top = 182
        Caption = #1050#1083#1080#1077#1085#1090':'
        Transparent = True
      end
      object btnSubClient: TcxButtonEdit
        Left = 72
        Top = 182
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.OnButtonClick = btnSubClientPropertiesButtonClick
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = ''
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = ''
        TabOrder = 10
        Width = 305
      end
    end
  end
  object QueryStat: TUniQuery
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
    Left = 176
    Top = 152
  end
  object dsStat: TDataSource
    DataSet = QueryStat
    Left = 336
    Top = 248
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
      'select * from country')
    Left = 312
    Top = 152
  end
  object dsManager: TDataSource
    DataSet = QueryManager
    Left = 552
    Top = 240
  end
  object QueryManager: TUniQuery
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
      'select * from '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'.'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080)
    Left = 488
    Top = 232
  end
  object QueryContract: TUniQuery
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
      'select * from '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'.'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080)
    Left = 436
    Top = 116
  end
  object dsContract: TDataSource
    DataSet = QueryContract
    Left = 528
    Top = 120
  end
  object dsContact: TDataSource
    DataSet = QueryContact
    Left = 192
    Top = 292
  end
  object QueryContact: TUniQuery
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
      'select * from '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'.'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080)
    Left = 112
    Top = 288
  end
end
