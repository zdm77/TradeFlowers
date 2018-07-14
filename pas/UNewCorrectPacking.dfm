object FNewCorrectPacking: TFNewCorrectPacking
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1072' '#1087#1072#1082#1080#1085#1075#1072
  ClientHeight = 131
  ClientWidth = 270
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
    Top = 99
    Width = 270
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 99
    ExplicitWidth = 270
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
  object GroupPrice: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = #1062#1077#1085#1072
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 1
    Height = 49
    Width = 270
    object lbl2: TLabel
      Left = 3
      Top = 19
      Width = 53
      Height = 13
      Caption = #1044#1077#1081#1089#1090#1074#1080#1077':'
    end
    object lbl3: TLabel
      Left = 112
      Top = 19
      Width = 52
      Height = 13
      Caption = #1047#1085#1072#1095#1077#1085#1080#1077':'
    end
    object edtЗнакЦены: TComboBox
      Left = 62
      Top = 15
      Width = 44
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Text = '+'
      Items.Strings = (
        '+'
        '-')
    end
    object edtЦенаКоррект: TsCalcEdit
      Left = 170
      Top = 15
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
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 49
    Align = alClient
    Caption = #1042#1077#1089
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 2
    Height = 50
    Width = 270
    object Label2: TLabel
      Left = 3
      Top = 19
      Width = 53
      Height = 13
      Caption = #1044#1077#1081#1089#1090#1074#1080#1077':'
    end
    object Label3: TLabel
      Left = 112
      Top = 19
      Width = 52
      Height = 13
      Caption = #1047#1085#1072#1095#1077#1085#1080#1077':'
    end
    object edtВесДействие: TComboBox
      Left = 62
      Top = 15
      Width = 44
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Text = '+'
      Items.Strings = (
        '+'
        '-')
    end
    object edtВесЗначение: TsCalcEdit
      Left = 170
      Top = 15
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
  end
end
