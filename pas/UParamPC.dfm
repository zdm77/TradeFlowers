object FParamPC: TFParamPC
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1080
  ClientHeight = 188
  ClientWidth = 467
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
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
    Height = 156
    Width = 467
    object edtPCName: TEdit
      Left = 159
      Top = 6
      Width = 305
      Height = 21
      TabOrder = 0
    end
    object chkUsePcName: TCheckBox
      Left = 8
      Top = 8
      Width = 137
      Height = 17
      Caption = #1058#1086#1083#1100#1082#1086' '#1089' '#1082#1086#1084#1087#1100#1102#1090#1077#1088#1072':'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object edtHDD: TEdit
      Left = 159
      Top = 31
      Width = 305
      Height = 21
      TabOrder = 2
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 33
      Width = 105
      Height = 17
      Caption = #1058#1086#1083#1100#1082#1086' '#1089' HDD:'
      Checked = True
      State = cbChecked
      TabOrder = 3
    end
    object edtUser: TEdit
      Left = 159
      Top = 56
      Width = 305
      Height = 21
      TabOrder = 4
    end
    object CheckBox2: TCheckBox
      Left = 8
      Top = 58
      Width = 153
      Height = 17
      Caption = #1058#1086#1083#1100#1082#1086' '#1089' '#1091#1095#1077#1090#1085#1086#1081' '#1079#1072#1087#1080#1089#1080':'
      Checked = True
      State = cbChecked
      TabOrder = 5
    end
    object CheckBox3: TCheckBox
      Left = 8
      Top = 85
      Width = 137
      Height = 17
      Caption = #1058#1086#1083#1100#1082#1086' '#1089' MAC-'#1072#1076#1088#1077#1089#1072':'
      Checked = True
      State = cbChecked
      TabOrder = 6
    end
    object edtMAC: TEdit
      Left = 159
      Top = 83
      Width = 305
      Height = 21
      TabOrder = 7
    end
    object chkAccess: TCheckBox
      Left = 8
      Top = 108
      Width = 137
      Height = 17
      Caption = #1056#1072#1079#1088#1077#1096#1080#1090#1100
      TabOrder = 8
    end
  end
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 156
    Width = 467
    Height = 32
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 156
    ExplicitWidth = 467
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
  object IdIPWatch1: TIdIPWatch
    Active = False
    HistoryFilename = 'iphist.dat'
    Left = 384
    Top = 224
  end
end
