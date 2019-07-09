object FNewFB: TFNewFB
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1050#1086#1083'-'#1074#1086' FB'
  ClientHeight = 71
  ClientWidth = 215
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
    TabOrder = 0
    Height = 39
    Width = 215
    object lblFB: TLabel
      Left = 8
      Top = 14
      Width = 99
      Height = 13
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1082#1086#1083'-'#1074#1086' FB:'
    end
    object edtFB: TsCalcEdit
      Left = 113
      Top = 10
      Width = 92
      Height = 21
      AutoSize = False
      TabOrder = 0
      OnKeyDown = edtFBKeyDown
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
      Value = 0.500000000000000000
    end
  end
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 39
    Width = 215
    Height = 32
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 39
    ExplicitWidth = 215
    inherited bardxbrmngr1: TdxBarManager
      DockControlHeights = (
        0
        0
        0
        30)
      inherited btnSave: TdxBarLargeButton
        OnClick = FrameSave1btnSaveClick
      end
    end
  end
end
