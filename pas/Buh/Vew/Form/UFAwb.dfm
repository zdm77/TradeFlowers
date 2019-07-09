object FAWB: TFAWB
  Left = 0
  Top = 0
  Caption = 'AWB'
  ClientHeight = 514
  ClientWidth = 868
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  inline FrameAWB1: TFrameAWB
    Left = 0
    Top = 0
    Width = 868
    Height = 514
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 868
    ExplicitHeight = 514
    inherited FrameTopPanel1: TFrameTopPanel
      Width = 868
      ExplicitWidth = 868
      inherited barProduct: TdxBarManager
        DockControlHeights = (
          0
          0
          34
          0)
      end
    end
    inherited GridAWB: TcxGrid
      Width = 868
      Height = 478
      ExplicitWidth = 868
      ExplicitHeight = 476
      inherited ViewAWB: TcxGridDBTableView
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '$ #,0.00'
            Kind = skSum
          end
          item
            Format = '#0 '#1096#1090'.'
            Kind = skSum
          end
          item
            Format = '#0 '#1096#1090'.'
            Kind = skSum
          end
          item
            Format = ',0 '#1082#1075#39'.'#39';'
            Kind = skSum
            Column = FrameAWB1.ColumnВес
          end
          item
            Format = '$ ,0.00;$ -,0.00'
            Kind = skSum
            Column = FrameAWB1.ColumnСтоимость
          end
          item
            Kind = skSum
            Column = FrameAWB1.ColumnFB
          end
          item
            Kind = skSum
            Column = FrameAWB1.ColumnBOX
          end>
      end
    end
  end
end
