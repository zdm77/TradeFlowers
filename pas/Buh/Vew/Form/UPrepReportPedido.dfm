object FPrepReportPedido: TFPrepReportPedido
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1079#1072#1082#1091#1087#1082#1077
  ClientHeight = 159
  ClientWidth = 353
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
    Top = 127
    Width = 353
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 127
    ExplicitWidth = 353
    inherited bardxbrmngr1: TdxBarManager
      DockControlHeights = (
        0
        0
        0
        34)
      inherited btnSave: TdxBarLargeButton
        Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
        Hint = #1042#1099#1087#1086#1083#1085#1080#1090#1100
        LargeImageIndex = 12
        OnClick = FrameSave1btnSaveClick
      end
    end
  end
  object Group1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    Style.LookAndFeel.Kind = lfOffice11
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.Kind = lfOffice11
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.Kind = lfOffice11
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.Kind = lfOffice11
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 1
    Height = 127
    Width = 353
    object edtMark: TcxButtonEdit
      Left = 93
      Top = 8
      Enabled = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edtMarkPropertiesButtonClick
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
      Width = 252
    end
    object chkMark: TcxCheckBox
      Left = 4
      Top = 8
      Caption = #1052#1072#1088#1082#1080#1088#1086#1074#1082#1072
      Properties.OnEditValueChanged = chkMarkPropertiesEditValueChanged
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 1
      Transparent = True
      Width = 85
    end
    object edtДатаВылета: TAdvDateTimePicker
      Left = 93
      Top = 32
      Width = 105
      Height = 21
      Date = 0.475810185185185200
      Format = ''
      Time = 0.475810185185185200
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = dkDate
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 2
      BorderStyle = bsSingle
      Ctl3D = True
      DateTime = 0.475810185185185200
      Version = '1.2.0.6'
      LabelPosition = lpLeftCenter
      LabelTransparent = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
    end
    object lblДатаВылета: TcxLabel
      Left = 4
      Top = 37
      Caption = #1044#1072#1090#1072' '#1074#1099#1083#1077#1090#1072
      Transparent = True
    end
    object chkAll: TcxRadioButton
      Left = 4
      Top = 56
      Width = 85
      Height = 17
      Caption = #1042#1089#1077' '#1079#1072#1082#1091#1087#1082#1080
      Checked = True
      TabOrder = 4
      TabStop = True
      OnClick = chkAllClick
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Blue'
      Transparent = True
    end
    object chkНевыполненные: TcxRadioButton
      Left = 93
      Top = 56
      Width = 202
      Height = 17
      Caption = #1058#1086#1083#1100#1082#1086' '#1085#1077' '#1074#1099#1087#1086#1083#1085#1077#1085#1085#1099#1077
      TabOrder = 5
      OnClick = chkНевыполненныеClick
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.SkinName = 'Office2007Blue'
      Transparent = True
    end
    object chkПлантация: TcxCheckBox
      Left = 4
      Top = 77
      Caption = #1055#1083#1072#1085#1090#1072#1094#1080#1103
      Properties.OnEditValueChanged = chkПлантацияPropertiesEditValueChanged
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 6
      Transparent = True
      Width = 79
    end
    object edtПлантация: TcxButtonEdit
      Left = 93
      Top = 76
      Enabled = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edtПлантацияPropertiesButtonClick
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
      TabOrder = 7
      Width = 252
    end
    object chkСорт: TcxCheckBox
      Left = 4
      Top = 101
      Caption = #1057#1086#1088#1090
      Properties.OnEditValueChanged = chkСортPropertiesEditValueChanged
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 8
      Transparent = True
      Width = 79
    end
    object edtСорт: TcxButtonEdit
      Left = 93
      Top = 100
      Enabled = False
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edtСортPropertiesButtonClick
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
      TabOrder = 9
      Width = 252
    end
    object chkЗаказ: TcxCheckBox
      Left = 244
      Top = 55
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1079#1072#1082#1072#1079
      Properties.OnEditValueChanged = chkMarkPropertiesEditValueChanged
      State = cbsChecked
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 10
      Transparent = True
      Width = 100
    end
  end
end
