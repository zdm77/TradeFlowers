object FBuh: TFBuh
  Left = 0
  Top = 0
  Caption = #1041#1091#1093#1075#1072#1083#1090#1077#1088#1080#1103
  ClientHeight = 507
  ClientWidth = 1064
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
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxnvbr1: TdxNavBar
    Left = 0
    Top = 0
    Width = 237
    Height = 507
    Align = alLeft
    ActiveGroupIndex = 0
    TabOrder = 0
    View = 12
    OptionsBehavior.Common.AllowSelectLinks = True
    object GroupОснова: TdxNavBarGroup
      Caption = #1054#1089#1085#1086#1074#1085#1099#1077
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      OptionsExpansion.Expandable = False
      OptionsExpansion.ShowExpandButton = False
      Links = <
        item
          Item = ItemAWB
        end
        item
          Item = ItemБаланс
        end
        item
          Item = ItemБалансКарго
        end
        item
          Item = ItemПритензии
        end
        item
          Item = ItemОплаты
        end
        item
          Item = ItemПрикулинг
        end>
    end
    object GroupСтатистика: TdxNavBarGroup
      Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = ItemФактурыПлантаций
        end>
    end
    object ItemAWB: TdxNavBarItem
      Caption = 'AWB'
      OnClick = ItemAWBClick
    end
    object ItemБаланс: TdxNavBarItem
      Caption = #1041#1072#1083#1072#1085#1089' '#1087#1083#1072#1085#1090#1072#1094#1080#1081
      OnClick = ItemБалансClick
    end
    object ItemБалансКарго: TdxNavBarItem
      Caption = #1041#1072#1083#1072#1085#1089' '#1050#1072#1088#1075#1086
      OnClick = ItemБалансКаргоClick
    end
    object ItemПритензии: TdxNavBarItem
      Caption = #1055#1088#1077#1090#1077#1085#1079#1080#1080
      OnClick = ItemПритензииClick
    end
    object ItemОплаты: TdxNavBarItem
      Caption = #1054#1087#1083#1072#1090#1099' '#1087#1083#1072#1085#1090#1072#1094#1080#1081
      OnClick = ItemОплатыClick
    end
    object ItemФактурыПлантаций: TdxNavBarItem
      Caption = #1060#1072#1082#1090#1091#1088#1099' '#1087#1083#1072#1085#1090#1072#1094#1080#1081
      OnClick = ItemФактурыПлантацийClick
    end
    object ItemПрикулинг: TdxNavBarItem
      Caption = #1055#1088#1080#1082#1091#1083#1080#1085#1075
      OnClick = ItemПрикулингClick
    end
  end
  object PageDict: TcxPageControl
    Left = 237
    Top = 0
    Width = 827
    Height = 507
    Align = alClient
    TabOrder = 1
    Visible = False
    Properties.ActivePage = TabОплаты
    Properties.CustomButtons.Buttons = <
      item
        Position = pcbpTabs
        TabImageIndex = 0
        OnClick = PageDictTcxPageControlPropertiesTcxPCCustomButtonsButtons0Click
      end>
    Properties.CustomButtons.Mode = cbmActiveTab
    Properties.CustomButtons.TabImages = FOsn.imgVerySmall
    Properties.NavigatorPosition = npLeftTop
    Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize, pcoUsePageColorForTab]
    Properties.Style = 11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Blue'
    ClientRectBottom = 501
    ClientRectLeft = 3
    ClientRectRight = 821
    ClientRectTop = 28
    object TabAWB: TcxTabSheet
      Caption = 'AWB'
      ImageIndex = 22
      inline FrameAWB1: TFrameAWB
        Left = 0
        Top = 0
        Width = 818
        Height = 473
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 818
        ExplicitHeight = 473
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 818
          ExplicitWidth = 818
          inherited barProduct: TdxBarManager
            DockControlHeights = (
              0
              0
              34
              0)
          end
        end
        inherited GridAWB: TcxGrid
          Width = 818
          Height = 437
          ExplicitWidth = 818
          ExplicitHeight = 437
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
    object TabБаланс: TcxTabSheet
      Caption = #1041#1072#1083#1072#1085#1089' '#1087#1083#1072#1085#1090#1072#1094#1080#1081
      ImageIndex = 1
      inline FrameBalance1: TFrameBalance
        Left = 0
        Top = 0
        Width = 818
        Height = 473
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 818
        ExplicitHeight = 473
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 818
          ExplicitWidth = 818
          inherited barProduct: TdxBarManager
            DockControlHeights = (
              0
              0
              34
              0)
          end
        end
        inherited GridBalance: TcxGrid
          Width = 818
          Height = 400
          LookAndFeel.SkinName = ''
          ExplicitWidth = 818
          ExplicitHeight = 400
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
                Format = '$ ,0.00;$ -,0.00'
                Kind = skSum
                Column = FrameBalance1.ColumnРазница
              end
              item
                Format = '0'
                Kind = skSum
                Column = FrameBalance1.ColumnBOXфакт
              end
              item
                Format = '0'
                Kind = skSum
                Column = FrameBalance1.ColumnBOX
              end
              item
                Kind = skSum
                Column = FrameBalance1.ColumnFBфакт
              end
              item
                Format = '$ ,0.00;$ -,0.00'
                Kind = skSum
                Column = FrameBalance1.ColumnСуммаФактур
              end
              item
                Format = '$ ,0.00;$ -,0.00'
                Kind = skSum
                Column = FrameBalance1.ColumnСуммаОплат
              end>
          end
        end
        inherited cxGroupBox1: TcxGroupBox
          ExplicitWidth = 818
          Width = 818
        end
      end
    end
    object tabБалансКарго: TcxTabSheet
      Caption = #1041#1072#1083#1072#1085#1089' '#1050#1072#1088#1075#1086
      ImageIndex = 2
      inline FrameBalanceKargo1: TFrameBalanceKargo
        Left = 0
        Top = 0
        Width = 818
        Height = 473
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 818
        ExplicitHeight = 473
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 818
          ExplicitWidth = 818
          inherited barProduct: TdxBarManager
            DockControlHeights = (
              0
              0
              34
              0)
          end
        end
        inherited GridBalance: TcxGrid
          Width = 818
          Height = 435
          ExplicitWidth = 818
          ExplicitHeight = 435
          inherited GridBalanceDBBandedTableView1: TcxGridDBBandedTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0'
                Kind = skSum
              end
              item
                Kind = skSum
              end
              item
                Format = '$ ,0.00;$ -,0.00'
                Kind = skSum
                Column = FrameBalanceKargo1.ColumnСумма
              end
              item
                Kind = skSum
                Column = FrameBalanceKargo1.ColumnВес
              end
              item
                Format = '$ ,0.00;$ -,0.00'
                Kind = skSum
                Column = FrameBalanceKargo1.ColumnСуммаФактур
              end
              item
                Format = '$ ,0.00;$ -,0.00'
                Kind = skSum
                Column = FrameBalanceKargo1.ColumnРазница
              end
              item
                Format = '$ ,0.00;$ -,0.00'
                Column = FrameBalanceKargo1.ColumnСуммаОплат
              end>
          end
        end
      end
    end
    object TabПритензии: TcxTabSheet
      Caption = #1055#1088#1077#1090#1077#1085#1079#1080#1080
      ImageIndex = 3
      inline FramePritenz1: TFramePritenz
        Left = 0
        Top = 0
        Width = 818
        Height = 473
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 818
        ExplicitHeight = 473
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 818
          ExplicitWidth = 818
          inherited barProduct: TdxBarManager
            DockControlHeights = (
              0
              0
              69
              0)
          end
        end
        inherited GridPritenz: TcxGrid
          Width = 818
          Height = 435
          ExplicitWidth = 818
          ExplicitHeight = 435
        end
      end
    end
    object TabОплаты: TcxTabSheet
      Caption = #1054#1087#1083#1072#1090#1099' '#1087#1083#1072#1085#1090#1072#1094#1080#1081
      ImageIndex = 4
      inline FrameOplataPlant1: TFrameOplataPlant
        Left = 0
        Top = 0
        Width = 818
        Height = 473
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 818
        ExplicitHeight = 473
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 818
          ExplicitWidth = 818
          inherited barProduct: TdxBarManager
            DockControlHeights = (
              0
              0
              69
              0)
          end
        end
        inherited GridUsers: TcxGrid
          Width = 818
          Height = 435
          ExplicitWidth = 818
          ExplicitHeight = 435
          inherited ViewStatWork: TcxGridDBTableView
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '$ ,0.00;$ -,0.00'
                Kind = skSum
                Column = FrameOplataPlant1.ViewStatWork_3
              end>
          end
        end
      end
    end
    object TabСтатФактуры: TcxTabSheet
      Caption = #1060#1072#1082#1090#1091#1088#1099' '#1087#1083#1072#1085#1090#1072#1094#1080#1081
      ImageIndex = 5
      inline FrameStatFacturPlant1: TFrameStatFacturPlant
        Left = 0
        Top = 0
        Width = 818
        Height = 473
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 818
        ExplicitHeight = 473
        inherited Group1: TcxGroupBox
          ExplicitWidth = 818
          ExplicitHeight = 35
          Height = 35
          Width = 818
          inherited Label1: TLabel
            Top = 11
            ExplicitTop = 11
          end
          inherited Label2: TLabel
            Top = 11
            ExplicitTop = 11
          end
          inherited edtOt: TsDateEdit
            Top = 7
            ExplicitTop = 7
          end
          inherited edtDo: TsDateEdit
            Top = 7
            ExplicitTop = 7
          end
          inherited btnExcel: TcxButton
            Top = 2
            ExplicitTop = 2
          end
        end
        inherited GridStatFact: TcxGrid
          Top = 35
          Width = 818
          Height = 438
          ExplicitTop = 35
          ExplicitWidth = 818
          ExplicitHeight = 438
          inherited ViewUsers: TcxGridDBTableView
            DataController.Summary.DefaultGroupSummaryItems = <
              item
                Format = '$ ,0.00;$ -,0.00'
                Kind = skSum
                Position = spFooter
                Column = FrameStatFacturPlant1.ViewUsers_2
              end
              item
                Format = '$ ,0.00;$ -,0.00'
                Kind = skSum
                Column = FrameStatFacturPlant1.ViewUsers_2
              end>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '$ ,0.00;$ -,0.00'
                Kind = skSum
                Column = FrameStatFacturPlant1.ViewUsers_2
              end>
            inherited ViewUsersname: TcxGridDBColumn
              Caption = #1052#1072#1088#1082#1080#1088#1086#1074#1082#1072
            end
          end
        end
      end
    end
    object TabПрикул: TcxTabSheet
      Caption = #1055#1088#1080#1082#1091#1083#1080#1085#1075
      ImageIndex = 6
      inline FramePrikulingBuh1: TFramePrikulingBuh
        Left = 0
        Top = 0
        Width = 818
        Height = 473
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 818
        ExplicitHeight = 473
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 818
          ExplicitWidth = 818
          inherited barProduct: TdxBarManager
            DockControlHeights = (
              0
              0
              69
              0)
            inherited dxbrBardxbrmngr1Bar1: TdxBar
              ItemLinks = <
                item
                  Visible = True
                  ItemName = 'btnSel'
                end
                item
                  Visible = True
                  ItemName = 'btnAdd'
                end
                item
                  Visible = True
                  ItemName = 'btnEdit'
                end
                item
                  Visible = True
                  ItemName = 'btnDel'
                end
                item
                  Visible = True
                  ItemName = 'btnRest'
                end
                item
                  BeginGroup = True
                  Visible = True
                  ItemName = 'btnRefresh'
                end
                item
                  BeginGroup = True
                  Visible = True
                  ItemName = 'btnFilter'
                end
                item
                  Visible = True
                  ItemName = 'btnArch'
                end
                item
                  BeginGroup = True
                  Visible = True
                  ItemName = 'btnPrint'
                end
                item
                  Visible = True
                  ItemName = 'btnRazdel'
                end
                item
                  Visible = True
                  ItemName = 'btnExport'
                end
                item
                  Visible = True
                  ItemName = 'btnAWB'
                end>
            end
          end
        end
        inherited GridAWB: TcxGrid
          Width = 818
          Height = 437
          ExplicitWidth = 818
          ExplicitHeight = 437
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
                Column = FramePrikulingBuh1.ColumnВес
              end
              item
                Format = '$ ,0.00;$ -,0.00'
                Kind = skSum
                Column = FramePrikulingBuh1.ColumnСтоимость
              end
              item
                Kind = skSum
                Column = FramePrikulingBuh1.ColumnFB
              end
              item
                Kind = skSum
                Column = FramePrikulingBuh1.ColumnBOX
              end
              item
                Format = '$ ,0.00;$ -,0.00'
                Kind = skSum
                Column = FramePrikulingBuh1.ColumnПрикулинг
              end>
            inherited ColumnBOX: TcxGridDBColumn
              Width = 89
            end
            inherited ColumnВес: TcxGridDBColumn
              Width = 84
            end
          end
        end
      end
    end
  end
  object Query1: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO clients'
      
        '  (ID, PID, NAME, id_is_client, id_supplier, id_competitor, adre' +
        'ss, phone, comment, id_del)'
      'VALUES'
      
        '  (:ID, :PID, :NAME, :id_is_client, :id_supplier, :id_competitor' +
        ', :adress, :phone, :comment, :id_del)')
    SQLDelete.Strings = (
      'DELETE FROM clients'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE clients'
      'SET'
      
        '  ID = :ID, PID = :PID, NAME = :NAME, id_is_client = :id_is_clie' +
        'nt, id_supplier = :id_supplier, id_competitor = :id_competitor, ' +
        'adress = :adress, phone = :phone, comment = :comment, id_del = :' +
        'id_del'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT * FROM clients'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT ID, PID, NAME, id_is_client, id_supplier, id_competitor, ' +
        'adress, phone, comment, id_del FROM clients'
      'WHERE'
      '  ID = :ID')
    Connection = DM1.db1
    SQL.Strings = (
      
        'select * from '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'.'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080' where '#1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'=:i' +
        'd order by name')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 336
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 49
      end>
  end
end
