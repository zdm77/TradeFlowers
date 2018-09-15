object FParamPosPedido: TFParamPosPedido
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 171
  ClientWidth = 290
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblPrice: TcxLabel
    Left = 8
    Top = 50
    Caption = 'FB:'
    Properties.LineOptions.Alignment = cxllaBottom
    Transparent = True
  end
  object edtPrice: TsCalcEdit
    Left = 65
    Top = 89
    Width = 92
    Height = 21
    AutoSize = False
    TabOrder = 3
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
  object lblCount: TcxLabel
    Left = 8
    Top = 8
    Caption = #1057#1090#1077#1073#1083#1077#1081':'
    Properties.LineOptions.Alignment = cxllaBottom
    Transparent = True
  end
  object edtCount: TsCalcEdit
    Left = 65
    Top = 8
    Width = 92
    Height = 21
    AutoSize = False
    TabOrder = 0
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
    DecimalPlaces = 0
    DisplayFormat = '### ### ##0;-### ### ##0.00;0'
  end
  object cxLabel1: TcxLabel
    Left = 8
    Top = 90
    Caption = #1062#1077#1085#1072':'
    Properties.LineOptions.Alignment = cxllaBottom
    Transparent = True
  end
  object edtFB: TsCalcEdit
    Left = 65
    Top = 49
    Width = 92
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
  end
  object btnSave: TButton
    Left = 216
    Top = 47
    Width = 75
    Height = 25
    Caption = 'btnSave'
    TabOrder = 6
    Visible = False
  end
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 139
    Width = 290
    Height = 32
    Align = alBottom
    TabOrder = 7
    ExplicitLeft = -165
    ExplicitTop = 139
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
end
