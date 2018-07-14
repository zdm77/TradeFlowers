object FNewSubAWBDetail: TFNewSubAWBDetail
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1044#1077#1090#1072#1083#1080#1079#1072#1094#1080#1103' AWB'
  ClientHeight = 118
  ClientWidth = 340
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
    Top = 86
    Width = 340
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 86
    ExplicitWidth = 340
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
    Height = 86
    Width = 340
    object Label2: TLabel
      Left = 3
      Top = 34
      Width = 54
      Height = 13
      Caption = #1050#1086#1083'-'#1074#1086' FB:'
    end
    object Label1: TLabel
      Left = 3
      Top = 61
      Width = 84
      Height = 13
      Caption = #1050#1086#1083'-'#1074#1086' '#1082#1086#1088#1086#1073#1086#1082':'
    end
    object edtPlant: TcxButtonEdit
      Left = 93
      Top = 3
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edtPlantPropertiesButtonClick
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 0
      Width = 239
    end
    object lblMarking: TcxLabel
      Left = 3
      Top = 3
      Caption = #1055#1083#1072#1085#1090#1072#1094#1080#1103'*'
      Transparent = True
    end
    object edtFB: TAdvEdit
      Left = 93
      Top = 30
      Width = 143
      Height = 21
      EditType = etFloat
      EmptyTextStyle = []
      ExcelStyleDecimalSeparator = True
      Precision = 2
      Suffix = ' '#1096#1090'.'
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
      OnKeyDown = edtFBKeyDown
      Version = '3.3.2.0'
    end
    object edtBox: TAdvEdit
      Left = 93
      Top = 57
      Width = 143
      Height = 21
      EditType = etFloat
      EmptyTextStyle = []
      Suffix = ' '#1096#1090'.'
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
      OnKeyDown = edtBoxKeyDown
      Version = '3.3.2.0'
    end
  end
end
