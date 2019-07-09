object FBuhBalancePlant: TFBuhBalancePlant
  Left = 0
  Top = 0
  Caption = #1041#1072#1083#1072#1085#1089' '#1087#1083#1072#1085#1090#1072#1094#1080#1081
  ClientHeight = 509
  ClientWidth = 813
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
  inline FrameBalance1: TFrameBalance
    Left = 0
    Top = 0
    Width = 813
    Height = 509
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 813
    ExplicitHeight = 509
    inherited FrameTopPanel1: TFrameTopPanel
      Width = 813
      ExplicitWidth = 813
      inherited barProduct: TdxBarManager
        DockControlHeights = (
          0
          0
          34
          0)
      end
    end
    inherited GridBalance: TcxGrid
      Width = 813
      Height = 436
      LookAndFeel.SkinName = ''
      ExplicitWidth = 813
      ExplicitHeight = 471
      inherited GridBalanceDBBandedTableView1: TcxGridDBBandedTableView
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Kind = skSum
            Position = spFooter
            Column = FrameBalance1.ColumnСуммаФактур
          end
          item
            Kind = skSum
            Column = FrameBalance1.ColumnСуммаФактур
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '0'
            Kind = skSum
            Column = FrameBalance1.ColumnBOXфакт
          end
          item
            Format = '0'
            Kind = skSum
            Column = FrameBalance1.ColumnFBфакт
          end
          item
            Format = '0'
            Kind = skSum
            Column = FrameBalance1.ColumnBOX
          end
          item
            Kind = skSum
            Column = FrameBalance1.ColumnFB
          end
          item
            Format = '$ ,0.00;$ -,0.00'
            Kind = skSum
            Column = FrameBalance1.ColumnСуммаФактур
          end
          item
            Format = '$ ,0.00;$ -,0.00'
            Kind = skSum
            Column = FrameBalance1.ColumnРазница
          end
          item
            Format = '$ ,0.00;$ -,0.00'
            Column = FrameBalance1.ColumnСуммаОплат
          end
          item
            Format = '$ ,0.00;$ -,0.00'
            Kind = skSum
            Column = FrameBalance1.ColumnПритензия
          end>
      end
    end
    inherited cxGroupBox1: TcxGroupBox
      ExplicitWidth = 813
      Width = 813
    end
  end
end
