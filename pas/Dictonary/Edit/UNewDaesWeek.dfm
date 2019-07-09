object FNewDaysWeek: TFNewDaysWeek
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1056#1072#1089#1087#1080#1089#1072#1085#1080#1077
  ClientHeight = 123
  ClientWidth = 315
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
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 91
    Width = 315
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 91
    ExplicitWidth = 315
    inherited bardxbrmngr1: TdxBarManager
      DockControlHeights = (
        0
        0
        0
        34)
    end
  end
  object Group1: TcxGroupBox
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
    TabOrder = 1
    Height = 91
    Width = 315
    object chkПн: TcxCheckBox
      Left = 3
      Top = 3
      Caption = #1055#1086#1085#1077#1076#1077#1083#1100#1085#1080#1082
      State = cbsChecked
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 0
      Transparent = True
      Width = 97
    end
    object chkВт: TcxCheckBox
      Left = 106
      Top = 3
      Caption = #1042#1090#1086#1088#1085#1080#1082
      State = cbsChecked
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 1
      Transparent = True
      Width = 70
    end
    object chkСр: TcxCheckBox
      Left = 182
      Top = 3
      Caption = #1057#1088#1077#1076#1072
      State = cbsChecked
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 2
      Transparent = True
      Width = 54
    end
    object chkЧт: TcxCheckBox
      Left = 242
      Top = 3
      Caption = #1063#1077#1090#1074#1077#1088#1075
      State = cbsChecked
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 3
      Transparent = True
      Width = 70
    end
    object chkПт: TcxCheckBox
      Left = 3
      Top = 24
      Caption = #1055#1103#1090#1085#1080#1094#1072
      State = cbsChecked
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 4
      Transparent = True
      Width = 97
    end
    object chkСб: TcxCheckBox
      Left = 106
      Top = 24
      Caption = #1057#1091#1073#1073#1086#1090#1072
      State = cbsChecked
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 5
      Transparent = True
      Width = 70
    end
    object chkВс: TcxCheckBox
      Left = 182
      Top = 24
      Caption = #1042#1086#1089#1082#1088#1077#1089#1077#1085#1100#1077
      State = cbsChecked
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 6
      Transparent = True
      Width = 121
    end
    object edtTimeВылет: TcxTimeEdit
      Left = 3
      Top = 64
      EditValue = 0d
      Properties.TimeFormat = tfHourMin
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 7
      Width = 78
    end
    object edtTimeПрилет: TcxTimeEdit
      Left = 106
      Top = 64
      EditValue = 0d
      Properties.TimeFormat = tfHourMin
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 8
      Width = 78
    end
    object lblTimeВылет: TcxLabel
      Left = 3
      Top = 46
      Caption = #1042#1088#1077#1084#1103' '#1074#1099#1083#1077#1090#1072':'
      Transparent = True
    end
    object lblTimeПрилет: TcxLabel
      Left = 106
      Top = 49
      Caption = #1042#1088#1077#1084#1103' '#1087#1088#1080#1083#1077#1090#1072':'
      Transparent = True
    end
  end
end
