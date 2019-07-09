object FNewInAccount: TFNewInAccount
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1056#1072#1089#1095#1077#1090#1085#1099#1081' '#1089#1095#1077#1090
  ClientHeight = 148
  ClientWidth = 374
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
    TabOrder = 0
    Height = 112
    Width = 374
    object lblName: TcxLabel
      Left = 3
      Top = 5
      Caption = #1041#1072#1085#1082':'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object cxLabel1: TcxLabel
      Left = 3
      Top = 28
      Caption = 'SWIFT:'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object edtSWIFT: TcxTextEdit
      Left = 90
      Top = 26
      Properties.ReadOnly = True
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 2
      Width = 281
    end
    object mmoAddress: TcxMemo
      Left = 90
      Top = 49
      Properties.ReadOnly = True
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 5
      Height = 35
      Width = 281
    end
    object lblAddr: TcxLabel
      Left = 3
      Top = 49
      Caption = #1040#1076#1088#1077#1089':'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object edtName: TcxButtonEdit
      Left = 90
      Top = 3
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edtNamePropertiesButtonClick
      Properties.OnEditValueChanged = edtNamePropertiesEditValueChanged
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
      Width = 281
    end
    object edtAccount: TcxTextEdit
      Left = 90
      Top = 86
      Properties.OnEditValueChanged = edtAccountPropertiesEditValueChanged
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 1
      OnKeyUp = edtAccountKeyUp
      Width = 281
    end
    object lblNumber: TcxLabel
      Left = 3
      Top = 88
      Caption = #8470':'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
  end
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 112
    Width = 374
    Height = 36
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 112
    ExplicitWidth = 374
    ExplicitHeight = 36
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
