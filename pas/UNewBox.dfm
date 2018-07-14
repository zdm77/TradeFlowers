object FNewBox: TFNewBox
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1058#1080#1087' '#1082#1086#1088#1086#1073#1082#1080
  ClientHeight = 95
  ClientWidth = 326
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
    Top = 63
    Width = 326
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 63
    ExplicitWidth = 326
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
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 1
    Height = 63
    Width = 326
    object lbl3: TLabel
      Left = 5
      Top = 39
      Width = 21
      Height = 13
      Caption = #1042#1077#1089':'
    end
    object Label1: TLabel
      Left = 5
      Top = 12
      Width = 77
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
    end
    object edtName: TEdit
      Left = 88
      Top = 8
      Width = 233
      Height = 21
      TabOrder = 0
      OnKeyDown = edtNameKeyDown
    end
    object edtВес: TAdvEdit
      Left = 88
      Top = 35
      Width = 97
      Height = 21
      EditType = etFloat
      EmptyTextStyle = []
      Precision = 3
      Suffix = ' '#1082#1075'.'
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
      Text = '0,000'
      Visible = True
      OnKeyDown = edtВесKeyDown
      Version = '3.3.2.0'
    end
  end
end
