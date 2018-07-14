object FNewAccountRus: TFNewAccountRus
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1057#1095#1077#1090
  ClientHeight = 169
  ClientWidth = 375
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
    Height = 133
    Width = 375
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
      Caption = #1050#1086#1088'.'#1089#1095#1077#1090':'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object mmoAddress: TcxMemo
      Left = 60
      Top = 51
      Properties.ReadOnly = True
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 3
      Height = 35
      Width = 311
    end
    object lblAddr: TcxLabel
      Left = 3
      Top = 49
      Caption = #1040#1076#1088#1077#1089':'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object edtName: TcxButtonEdit
      Left = 60
      Top = 3
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edtNamePropertiesButtonClick
      Properties.OnChange = edtNamePropertiesChange
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 0
      Width = 311
    end
    object lblNumber: TcxLabel
      Left = 3
      Top = 88
      Caption = #8470':'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object edtAccount: TcxMaskEdit
      Left = 60
      Top = 89
      Properties.EditMask = '00000\-000\-0\-00000000000;0;_'
      Properties.MaxLength = 0
      Properties.OnEditValueChanged = edtAccountPropertiesEditValueChanged
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 6
      Text = '                    '
      OnKeyUp = edtAccountKeyUp
      Width = 157
    end
    object edtKch: TcxMaskEdit
      Left = 60
      Top = 27
      Properties.EditMask = '00000\-000\-0\-00000000000;1;_'
      Properties.MaxLength = 0
      Properties.ReadOnly = True
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 7
      Text = '     -   - -           '
      Width = 157
    end
    object chkOsn: TcxCheckBox
      Left = 3
      Top = 109
      Caption = #1054#1089#1085#1086#1074#1085#1086#1081
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 8
      Transparent = True
      Width = 121
    end
  end
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 133
    Width = 375
    Height = 36
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 133
    ExplicitWidth = 375
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
