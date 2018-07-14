object FSelLang: TFSelLang
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = #1042#1099#1073#1086#1088' '#1103#1079#1099#1082#1072
  ClientHeight = 112
  ClientWidth = 215
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
    Top = 80
    Width = 215
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 80
    ExplicitWidth = 215
    inherited bardxbrmngr1: TdxBarManager
      DockControlHeights = (
        0
        0
        0
        34)
      inherited dxbrBarManager1Bar: TdxBar
        ItemLinks = <
          item
            Visible = True
            ItemName = 'btnSave'
          end
          item
            Visible = True
            ItemName = 'btnPrior'
          end>
      end
      inherited btnSave: TdxBarLargeButton
        Align = iaLeft
        Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
        Hint = #1042#1099#1087#1086#1083#1085#1080#1090#1100
        LargeImageIndex = 12
        OnClick = FrameSave1btnSaveClick
      end
      inherited btnPrior: TdxBarLargeButton
        Align = iaRight
        Caption = #1054#1090#1084#1077#1085#1072
        Hint = #1054#1090#1084#1077#1085#1072
        Visible = ivAlways
        LargeImageIndex = 16
        OnClick = FrameSave1btnPriorClick
      end
    end
  end
  object Group1: TcxRadioGroup
    Left = 0
    Top = 0
    Align = alClient
    Caption = #1071#1079#1099#1082' '#1086#1090#1095#1077#1090#1072
    Properties.Items = <
      item
        Caption = #1056#1091#1089#1089#1082#1080#1081
      end
      item
        Caption = #1040#1085#1075#1083#1080#1081#1089#1082#1080#1081
      end
      item
        Caption = #1048#1089#1087#1072#1085#1089#1082#1080#1081
      end>
    ItemIndex = 0
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 1
    Height = 80
    Width = 215
  end
end
