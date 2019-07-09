object FAWBPedido: TFAWBPedido
  Left = 0
  Top = 0
  Caption = #1057#1086#1089#1090#1072#1074' AWB'
  ClientHeight = 453
  ClientWidth = 996
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inline FrameAWBPedido1: TFrameAWBPedido
    Left = 0
    Top = 0
    Width = 996
    Height = 453
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 751
    ExplicitHeight = 453
    inherited FrameTopPanel1: TFrameTopPanel
      Width = 996
      ExplicitWidth = 751
      inherited barProduct: TdxBarManager
        DockControlHeights = (
          0
          0
          34
          0)
        inherited btnAdd: TdxBarLargeButton
          OnClick = FrameTopPanel1btnAddClick
        end
      end
    end
    inherited GridAWBPedido: TcxGrid
      Width = 996
      Height = 415
      LookAndFeel.SkinName = ''
      ExplicitWidth = 751
      ExplicitHeight = 415
      inherited ViewAWBPedido: TcxGridDBTableView
        inherited ColumnViewAWBPedido_1: TcxGridDBColumn
          Caption = #1052#1085#1077#1084#1086' '#8470
        end
        inherited ColumnViewAWBPedidok_name: TcxGridDBColumn
          Caption = #1050#1072#1088#1075#1086
        end
        inherited ColumnType: TcxGridDBColumn
          Caption = #1058#1080#1087' '#1084#1085#1077#1084#1086
        end
        inherited ColumnMark: TcxGridDBColumn
          Caption = #1052#1072#1088#1082#1080#1088#1086#1074#1082#1072
        end
      end
    end
  end
end
