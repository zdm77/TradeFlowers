object FSync: TFSync
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Load'
  ClientHeight = 110
  ClientWidth = 436
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lblAll: TLabel
    Left = 8
    Top = 8
    Width = 83
    Height = 13
    Caption = #1054#1073#1097#1080#1081' '#1087#1088#1086#1075#1088#1077#1089#1089
  end
  object lblOne: TLabel
    Left = 8
    Top = 58
    Width = 21
    Height = 13
    Caption = 'lblAll'
  end
  object ProgresOne: TAdvProgress
    Left = 8
    Top = 77
    Width = 425
    Height = 25
    BarColor = clHighlight
    TabOrder = 0
    BkColor = clWindow
    Version = '1.2.0.0'
  end
  object ProgresALL: TAdvProgress
    Left = 8
    Top = 27
    Width = 425
    Height = 25
    BarColor = clHighlight
    TabOrder = 1
    BkColor = clWindow
    Version = '1.2.0.0'
  end
end
