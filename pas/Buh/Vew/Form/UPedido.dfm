object FPedido: TFPedido
  Left = 0
  Top = 0
  Caption = 'Pedido'
  ClientHeight = 441
  ClientWidth = 695
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
  inline FramePedido1: TFramePedido
    Left = 0
    Top = 0
    Width = 695
    Height = 441
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -366
    ExplicitTop = -97
    ExplicitWidth = 695
    ExplicitHeight = 441
    inherited FrameTopPanel1: TFrameTopPanel
      Width = 695
      ExplicitWidth = 695
      inherited barProduct: TdxBarManager
        DockControlHeights = (
          0
          0
          34
          0)
      end
    end
    inherited Group1: TcxGroupBox
      ExplicitWidth = 695
      Width = 695
    end
    inherited GridOrder: TcxGrid
      Width = 695
      Height = 372
      ExplicitWidth = 695
      ExplicitHeight = 372
      inherited ViewOrder: TcxGridDBBandedTableView
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = '0.00'
            Kind = skSum
            Position = spFooter
            Column = FramePedido1.ViewOrderfb
          end
          item
            Format = '0'
            Kind = skSum
            Position = spFooter
            Column = FramePedido1.ViewOrdercount_zakup
          end
          item
            Format = ',$ 0.00;-,$ 0.00'
            Kind = skSum
            Position = spFooter
            Column = FramePedido1.ColumnItog
          end
          item
            Format = '0.00'
            Kind = skMin
            Position = spFooter
          end
          item
            Format = '0'
            Position = spFooter
            Column = FramePedido1.ViewOrdercount_zakup
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '0.00'
            Kind = skSum
            Column = FramePedido1.ViewOrderfb
          end
          item
            Format = '0'
            Kind = skSum
            Column = FramePedido1.ViewOrdercount_zakup
          end
          item
            Format = '$ 0.00;-,$ 0.00'
            Kind = skSum
            Column = FramePedido1.ColumnItog
          end
          item
          end>
      end
    end
    inherited cxstylrpstry1: TcxStyleRepository
      PixelsPerInch = 96
    end
  end
end
