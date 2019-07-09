object FEditFacturaDetail: TFEditFacturaDetail
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1092#1072#1082#1090#1091#1088#1099
  ClientHeight = 111
  ClientWidth = 401
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
    Top = 79
    Width = 401
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 79
    ExplicitWidth = 401
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
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 1
    Height = 79
    Width = 401
    object edtProduct: TcxButtonEdit
      Left = 56
      Top = 3
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edtProductPropertiesButtonClick
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 0
      Width = 342
    end
    object lblKargo: TcxLabel
      Left = 3
      Top = 8
      Caption = #1058#1086#1074#1072#1088'*'
      Transparent = True
    end
    object lblLength: TcxLabel
      Left = 3
      Top = 30
      Caption = #1044#1083#1080#1085#1072
      Transparent = True
    end
    object edtCount: TsCalcEdit
      Left = 210
      Top = 53
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
    object lblCount: TcxLabel
      Left = 153
      Top = 55
      Caption = #1057#1090#1077#1073#1083#1077#1081':'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object edtPrice: TAdvEdit
      Left = 55
      Top = 53
      Width = 92
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
      TabOrder = 1
      Text = '0'
      Visible = True
      OnChange = edtPriceChange
      OnKeyDown = edtPriceKeyDown
      Version = '3.3.2.0'
    end
    object lblPrice: TcxLabel
      Left = 3
      Top = 55
      Caption = #1062#1077#1085#1072':'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object edtFB: TsCalcEdit
      Left = 210
      Top = 28
      Width = 92
      Height = 21
      AutoSize = False
      TabOrder = 2
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
    object lblFB: TcxLabel
      Left = 155
      Top = 30
      Caption = 'FB:'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object edtLength: TAdvEdit
      Left = 55
      Top = 28
      Width = 92
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
      TabOrder = 9
      Text = '0'
      Visible = True
      OnChange = edtLengthChange
      OnKeyDown = edtLengthKeyDown
      Version = '3.3.2.0'
    end
  end
end
