object FNewOrderDetail: TFNewOrderDetail
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1047#1072#1082#1072#1079' ('#1044#1077#1090#1072#1083#1080#1079#1072#1094#1080#1103')'
  ClientHeight = 94
  ClientWidth = 368
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
    Top = 62
    Width = 368
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 62
    ExplicitWidth = 368
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
    Height = 62
    Width = 368
    object lblSum: TcxLabel
      Left = 7
      Top = 13
      Caption = #1044#1083#1080#1085#1072':'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object edtLength: TAdvEdit
      Left = 53
      Top = 9
      Width = 128
      Height = 21
      EmptyTextStyle = []
      LabelPosition = lpLeftCenter
      LabelTransparent = True
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
      Signed = True
      TabOrder = 0
      Text = '0'
      Visible = True
      OnChange = edtLengthChange
      OnKeyDown = edtLengthKeyDown
      Version = '3.3.2.0'
    end
    object lblFB: TcxLabel
      Left = 187
      Top = 9
      Caption = 'FB:'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object lblCount: TcxLabel
      Left = 187
      Top = 37
      Caption = #1057#1090#1077#1073#1083#1077#1081' '#1074' HB:'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object lblPrice: TcxLabel
      Left = 7
      Top = 38
      Caption = #1062#1077#1085#1072':'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object edtPrice: TAdvEdit
      Left = 53
      Top = 36
      Width = 128
      Height = 21
      EmptyTextStyle = []
      Prefix = '$ '
      LabelPosition = lpLeftCenter
      LabelTransparent = True
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
      Signed = True
      TabOrder = 2
      Text = '0'
      Visible = True
      OnChange = edtPriceChange
      OnKeyDown = edtPriceKeyDown
      Version = '3.3.2.0'
    end
    object edtFB: TsCalcEdit
      Left = 269
      Top = 7
      Width = 92
      Height = 21
      AutoSize = False
      TabOrder = 1
      OnChange = edtFBChange
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
    end
    object edtCount: TsCalcEdit
      Left = 269
      Top = 35
      Width = 92
      Height = 21
      AutoSize = False
      TabOrder = 3
      OnChange = edtCountChange
      OnKeyDown = edtCountKeyDown
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
  end
end
