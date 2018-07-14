object FDetailBoxPacking: TFDetailBoxPacking
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1055#1086#1079#1080#1094#1080#1103
  ClientHeight = 79
  ClientWidth = 414
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
    Top = 47
    Width = 414
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 47
    ExplicitWidth = 414
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
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    Style.LookAndFeel.Kind = lfStandard
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.Kind = lfStandard
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.Kind = lfStandard
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.Kind = lfStandard
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 1
    Height = 47
    Width = 414
    object lblProduct: TLabel
      Left = 3
      Top = 3
      Width = 34
      Height = 13
      Caption = #1058#1086#1074#1072#1088':'
    end
    object lbl1: TLabel
      Left = 3
      Top = 25
      Width = 47
      Height = 13
      Caption = #1057#1090#1077#1073#1083#1077#1081':'
    end
    object lblPrice: TLabel
      Left = 155
      Top = 25
      Width = 30
      Height = 13
      Caption = #1062#1077#1085#1072':'
    end
    object Label1: TLabel
      Left = 289
      Top = 25
      Width = 21
      Height = 13
      Caption = #1042#1077#1089':'
    end
    object edtStems: TsCalcEdit
      Left = 56
      Top = 21
      Width = 92
      Height = 21
      AutoSize = False
      TabOrder = 0
      OnKeyDown = edtStemsKeyDown
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
    end
    object edtPrice: TsCalcEdit
      Left = 191
      Top = 21
      Width = 92
      Height = 21
      AutoSize = False
      TabOrder = 1
      OnKeyDown = edtPriceKeyDown
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
    end
    object edtLength: TsCalcEdit
      Left = 234
      Top = 69
      Width = 92
      Height = 21
      AutoSize = False
      TabOrder = 2
      OnKeyDown = edtWeightKeyDown
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
    end
    object edtWeight: TAdvEdit
      Left = 316
      Top = 20
      Width = 95
      Height = 21
      EditType = etAlphaNumeric
      EmptyTextStyle = []
      PrecisionDisplay = pdShortest
      Suffix = ' '#1075#1088'.'
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      TabOrder = 3
      Text = '0'
      Visible = True
      OnKeyDown = edtWeightKeyDown
      Version = '3.3.2.0'
    end
  end
end
