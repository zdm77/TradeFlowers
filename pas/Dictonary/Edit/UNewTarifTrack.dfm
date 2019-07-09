object FNewTarifTrack: TFNewTarifTrack
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1058#1072#1088#1080#1092
  ClientHeight = 119
  ClientWidth = 334
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
    Top = 83
    Width = 334
    Height = 36
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 83
    ExplicitWidth = 334
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
  object cxGroupBox2: TcxGroupBox
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
    Height = 83
    Width = 334
    object lblSum: TcxLabel
      Left = 3
      Top = 40
      Caption = 'C'#1090#1086#1080#1084#1086#1089#1090#1100' '#1079#1072' 1 '#1087#1072#1083#1077#1090':'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object edtSumTarif: TsCalcEdit
      Left = 3
      Top = 55
      Width = 138
      Height = 21
      AutoSize = False
      TabOrder = 1
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'EDIT'
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
      DisplayFormat = '$### ### ##0.00;-$### ### ##0.00;0'
    end
    object edtName: TcxTextEdit
      Left = 3
      Top = 20
      Properties.OnEditValueChanged = edtNamePropertiesEditValueChanged
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 2
      OnKeyUp = edtNameKeyUp
      Width = 327
    end
    object lblNameCountry: TcxLabel
      Left = 3
      Top = 5
      Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1089#1090#1088#1072#1085#1099'/'#1075#1088#1091#1079#1072':'
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
  end
end
