object FSplash: TFSplash
  Left = 0
  Top = 0
  AlphaBlendValue = 10
  BorderIcons = []
  BorderStyle = bsNone
  Caption = #1047#1072#1075#1088#1091#1082#1072' '#1076#1072#1085#1085#1099#1093
  ClientHeight = 43
  ClientWidth = 281
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object edt1: TEdit
    Left = 32
    Top = 192
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'edt1'
  end
  object lblComment: TcxLabel
    Left = 0
    Top = 0
    Align = alClient
    AutoSize = False
    Caption = #1047#1072#1075#1088#1091#1079#1082#1072' '#1076#1072#1085#1085#1099#1093
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = 18
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    Properties.LabelEffect = cxleFun
    Height = 43
    Width = 281
    AnchorX = 141
    AnchorY = 22
  end
end
