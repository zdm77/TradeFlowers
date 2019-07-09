object FTypeLengthWeight: TFTypeLengthWeight
  Left = 0
  Top = 0
  Caption = #1044#1083#1080#1085#1072'-'#1042#1077#1089
  ClientHeight = 320
  ClientWidth = 598
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
  inline FrameTypeLengthWeight1: TFrameTypeLengthWeight
    Left = 0
    Top = 0
    Width = 598
    Height = 320
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 598
    ExplicitHeight = 320
    inherited FrameTopPanel1: TFrameTopPanel
      Width = 598
      ExplicitWidth = 598
      inherited barProduct: TdxBarManager
        DockControlHeights = (
          0
          0
          69
          0)
      end
    end
    inherited GroupCountry: TcxGroupBox
      ExplicitHeight = 282
      Height = 282
      inherited cxGrid1: TcxGrid
        Height = 257
        ExplicitHeight = 257
      end
    end
    inherited cxspltr1: TcxSplitter
      Height = 282
      ExplicitHeight = 282
    end
    inherited Group1: TcxGroupBox
      ExplicitWidth = 385
      ExplicitHeight = 282
      Height = 282
      Width = 385
      inherited GridUsers: TcxGrid
        Width = 379
        Height = 257
        ExplicitWidth = 379
        ExplicitHeight = 257
      end
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
