object FrameUniName: TFrameUniName
  Left = 0
  Top = 0
  Width = 417
  Height = 99
  TabOrder = 0
  object Group1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Style.Edges = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 0
    Height = 99
    Width = 417
    object lblName: TcxLabel
      Left = 3
      Top = 27
      Caption = #1056#1091#1089#1089#1082#1080#1081':'
      Transparent = True
    end
    object lblUniName: TcxLabel
      Left = 3
      Top = 5
      Caption = #1052#1077#1078#1076#1091#1085#1072#1088#1086#1076#1085#1099#1081':'
      Transparent = True
    end
    object edtUniName: TcxTextEdit
      Left = 100
      Top = 3
      Properties.OnChange = edtUniNamePropertiesChange
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 0
      OnExit = edtUniNameExit
      OnKeyDown = edtUniNameKeyDown
      OnKeyUp = edtUniNameKeyUp
      Width = 265
    end
    object edtRegName: TcxTextEdit
      Left = 100
      Top = 47
      Properties.OnChange = edtRegNamePropertiesChange
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 4
      OnKeyUp = edtRegNameKeyUp
      Width = 265
    end
    object lblRegName: TcxLabel
      Left = 3
      Top = 49
      Caption = #1056#1077#1075#1080#1086#1085#1072#1083#1100#1085#1099#1081':'
      Transparent = True
    end
    object edtName: TcxTextEdit
      Left = 100
      Top = 25
      Properties.OnChange = edtNamePropertiesChange
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 2
      OnExit = edtNameExit
      OnKeyDown = edtNameKeyDown
      OnKeyUp = edtNameKeyUp
      Width = 265
    end
    object chkUseName: TCheckBox
      Left = 3
      Top = 75
      Width = 150
      Height = 17
      Caption = #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1074' '#1085#1072#1079#1074#1072#1085#1080#1080
      TabOrder = 6
    end
    object btnTranslit: TcxButton
      Left = 368
      Top = 3
      Width = 46
      Height = 21
      Caption = #1050#1083#1086#1085
      LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 7
      OnClick = btnTranslitClick
    end
    object chkUniq: TCheckBox
      Left = 159
      Top = 75
      Width = 98
      Height = 17
      Caption = #1059#1085#1080#1082#1072#1083#1100#1085#1086#1077
      TabOrder = 8
      Visible = False
    end
  end
end
