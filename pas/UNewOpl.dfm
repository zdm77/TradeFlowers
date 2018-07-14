object FNewOpl: TFNewOpl
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1054#1087#1083#1072#1090#1072
  ClientHeight = 66
  ClientWidth = 466
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
    Top = 34
    Width = 466
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 34
    ExplicitWidth = 466
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
    Height = 34
    Width = 466
    object Label5: TLabel
      Left = 306
      Top = 8
      Width = 35
      Height = 13
      Caption = 'C'#1091#1084#1084#1072':'
    end
    object Label4: TLabel
      Left = 170
      Top = 8
      Width = 30
      Height = 13
      Caption = #1044#1072#1090#1072':'
    end
    object Label1: TLabel
      Left = 3
      Top = 8
      Width = 38
      Height = 13
      Caption = #8470' '#1055'/'#1055':'
    end
    object edtSumOpl: TAdvEdit
      Left = 347
      Top = 4
      Width = 113
      Height = 21
      EditType = etFloat
      EmptyTextStyle = []
      Precision = 2
      Prefix = '$ '
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
      TabOrder = 2
      Text = '0,00'
      Visible = True
      OnKeyDown = edtSumOplKeyDown
      Version = '3.3.2.0'
    end
    object edtDateOpl: TsDateEdit
      Left = 206
      Top = 4
      Width = 94
      Height = 21
      AutoSize = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      TabOrder = 1
      Text = '  .  .    '
      OnKeyDown = edtDateOplKeyDown
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
      OnCloseUp = edtDateOplCloseUp
    end
    object edtNumPP: TEdit
      Left = 43
      Top = 4
      Width = 121
      Height = 21
      TabOrder = 0
      OnKeyDown = edtNumPPKeyDown
    end
  end
end
