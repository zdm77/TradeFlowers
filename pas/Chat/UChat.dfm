object FChat: TFChat
  Left = 0
  Top = 0
  Caption = #1063#1072#1090
  ClientHeight = 588
  ClientWidth = 949
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PortEdit: TEdit
    Left = 40
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '7777'
  end
  object HostEdit: TEdit
    Left = 184
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '127.0.0.1'
  end
  object NikEdit: TEdit
    Left = 344
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 2
    Text = #1044#1080#1084#1072
  end
  object TextEdit: TEdit
    Left = 416
    Top = 88
    Width = 449
    Height = 21
    TabOrder = 3
  end
  object ChatMemo: TMemo
    Left = 497
    Top = 115
    Width = 368
    Height = 70
    TabOrder = 4
  end
  object ClientBtn: TButton
    Left = 497
    Top = 30
    Width = 75
    Height = 25
    Caption = #1050#1083#1080#1077#1085#1090
    TabOrder = 5
    OnClick = ClientBtnClick
  end
  object btnServer: TButton
    Left = 585
    Top = 30
    Width = 75
    Height = 25
    Caption = #1057#1077#1088#1074#1077#1088
    TabOrder = 6
    OnClick = btnServerClick
  end
  object btnSend: TButton
    Left = 416
    Top = 115
    Width = 75
    Height = 25
    Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100
    TabOrder = 7
    OnClick = btnSendClick
  end
  object listUsers: TListView
    Left = 40
    Top = 72
    Width = 345
    Height = 265
    Columns = <
      item
      end>
    ReadOnly = True
    ShowColumnHeaders = False
    SmallImages = img1
    TabOrder = 8
    ViewStyle = vsReport
  end
  object img1: TImageList
    Left = 704
    Top = 24
  end
  object tmrServer: TTimer
    OnTimer = tmrServerTimer
    Left = 776
    Top = 32
  end
end
