object FNewCountry: TFNewCountry
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1057#1090#1088#1072#1085#1072
  ClientHeight = 136
  ClientWidth = 430
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
    Top = 104
    Width = 430
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = 154
    ExplicitTop = 256
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
    ExplicitLeft = 104
    ExplicitTop = 56
    ExplicitWidth = 185
    ExplicitHeight = 105
    Height = 104
    Width = 430
    inline FrameUniName1: TFrameUniName
      Left = 2
      Top = 2
      Width = 426
      Height = 99
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 192
      ExplicitTop = 80
      inherited Group1: TcxGroupBox
        Width = 426
        inherited edtUniName: TcxTextEdit
          Properties.OnChange = edtUniNamePropertiesChange
        end
        inherited edtRegName: TcxTextEdit
          Properties.OnChange = edtRegNamePropertiesChange
        end
        inherited edtName: TcxTextEdit
          Properties.OnChange = edtNamePropertiesChange
        end
        inherited chkUseName: TCheckBox
          Top = 800
          Visible = False
          ExplicitTop = 800
        end
        inherited btnTranslit: TcxButton
          OnClick = btnTranslitClick
        end
        inherited chkUniq: TCheckBox
          Left = 167
          Top = 800
          ExplicitLeft = 167
          ExplicitTop = 800
        end
      end
    end
    object edtCode: TcxTextEdit
      Left = 102
      Top = 76
      Properties.CharCase = ecUpperCase
      Properties.OnChange = edtCodePropertiesChange
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 1
      Width = 265
    end
    object lblRegName: TcxLabel
      Left = 5
      Top = 74
      Caption = #1050#1086#1076':'
      Transparent = True
    end
  end
end
