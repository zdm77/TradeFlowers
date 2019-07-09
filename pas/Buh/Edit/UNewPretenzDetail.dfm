object FNewPretenzDetail: TFNewPretenzDetail
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1055#1086#1079#1080#1094#1080#1103
  ClientHeight = 89
  ClientWidth = 399
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
    Top = 57
    Width = 399
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 57
    ExplicitWidth = 399
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
    Height = 57
    Width = 399
    object lblСтеблей: TLabel
      Left = 3
      Top = 7
      Width = 47
      Height = 13
      Caption = #1057#1090#1077#1073#1083#1077#1081':'
    end
    object lblHalfBox: TLabel
      Left = 3
      Top = 34
      Width = 44
      Height = 13
      Caption = 'Half Box:'
    end
    object lblСтоимостьТранспорта: TLabel
      Left = 165
      Top = 34
      Width = 120
      Height = 13
      Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1072':'
    end
    object lblСтоимость: TLabel
      Left = 165
      Top = 7
      Width = 58
      Height = 13
      Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100':'
    end
    object edtСтеблей: TAdvEdit
      Left = 56
      Top = 3
      Width = 103
      Height = 21
      EditType = etFloat
      EmptyTextStyle = []
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
      TabOrder = 0
      Text = '0'
      Visible = True
      OnKeyDown = edtСтеблейKeyDown
      Version = '3.3.2.0'
    end
    object edtHalfBox: TAdvEdit
      Left = 56
      Top = 30
      Width = 103
      Height = 21
      EditType = etFloat
      EmptyTextStyle = []
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
      TabOrder = 1
      Text = '0'
      Visible = True
      OnKeyDown = edtHalfBoxKeyDown
      Version = '3.3.2.0'
    end
    object edtСтоимость: TsCalcEdit
      Left = 291
      Top = 3
      Width = 103
      Height = 21
      AutoSize = False
      TabOrder = 2
      OnKeyDown = edtСтоимостьKeyDown
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
    object edtСтоимостьТранспорта: TsCalcEdit
      Left = 291
      Top = 30
      Width = 103
      Height = 21
      AutoSize = False
      TabOrder = 3
      OnKeyDown = edtСтоимостьТранспортаKeyDown
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
