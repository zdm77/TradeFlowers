object FPrice: TFPrice
  Left = 0
  Top = 0
  Caption = #1055#1088#1072#1081#1089
  ClientHeight = 276
  ClientWidth = 461
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
  inline FramePriceLength1: TFramePriceLength
    Left = 0
    Top = 0
    Width = 461
    Height = 276
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 461
    ExplicitHeight = 276
    inherited GridPriceL: TcxDBPivotGrid
      Top = 69
      Width = 461
      Height = 207
      LookAndFeel.SkinName = ''
      ExplicitTop = 69
      ExplicitWidth = 461
      ExplicitHeight = 207
      inherited GridPriceLg_name: TcxDBPivotGridField
        UniqueName = #1062#1077#1085#1086#1074#1072#1103' '#1075#1088#1091#1087#1087#1072
      end
      inherited GridPriceLl_name: TcxDBPivotGridField
        UniqueName = #1044#1083#1080#1085#1099
      end
      inherited GridPriceLcxDBPivotGridField: TcxDBPivotGridField
        UniqueName = #1094#1077#1085#1072
      end
      inherited Rec_ID: TcxDBPivotGridField
        UniqueName = 'Rec_ID'
      end
    end
    inherited barProduct: TdxBarManager
      DockControlHeights = (
        0
        0
        69
        0)
    end
  end
end
