object FBox: TFBox
  Left = 0
  Top = 0
  Caption = #1059#1087#1072#1082#1086#1074#1082#1072
  ClientHeight = 303
  ClientWidth = 574
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inline FrameBox1: TFrameBox
    Left = 0
    Top = 0
    Width = 574
    Height = 303
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 574
    ExplicitHeight = 303
    inherited FrameTopPanel1: TFrameTopPanel
      Width = 574
      ExplicitWidth = 574
      inherited barProduct: TdxBarManager
        DockControlHeights = (
          0
          0
          69
          0)
      end
    end
    inherited GridUsers: TcxGrid
      Width = 574
      Height = 265
      ExplicitWidth = 574
      ExplicitHeight = 265
    end
  end
  object Query1: TUniQuery
    Connection = DM1.db1
    SQL.Strings = (
      'select * from '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'.'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080)
    Left = 184
    Top = 80
  end
end
