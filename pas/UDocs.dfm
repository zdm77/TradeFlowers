object FDocs: TFDocs
  Left = 0
  Top = 0
  Caption = #1044#1086#1082#1091#1084#1077#1085#1090#1099
  ClientHeight = 477
  ClientWidth = 773
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxnvbr1: TdxNavBar
    Left = 0
    Top = 0
    Width = 209
    Height = 477
    Align = alLeft
    ActiveGroupIndex = 0
    TabOrder = 0
    View = 12
    OptionsBehavior.Common.AllowSelectLinks = True
    ExplicitLeft = 2
    object GroupOsn: TdxNavBarGroup
      Caption = #1047#1072#1082#1072#1079#1099
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = ItemЗаказы
        end
        item
          Item = ItemПедидо
        end
        item
          Item = ItemФактуры
        end
        item
          Item = ItemPrice
        end>
    end
    object GroupTamog: TdxNavBarGroup
      Caption = #1058#1072#1084#1086#1078#1085#1103
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = ItemPacking
        end>
    end
    object GroupПоступления: TdxNavBarGroup
      Caption = #1055#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103
      SelectedLinkIndex = -1
      ShowCaption = False
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = ItemПоступления
        end>
    end
    object ItemЗаказы: TdxNavBarItem
      Caption = #1047#1072#1082#1072#1079#1099
      OnClick = ItemЗаказыClick
    end
    object ItemПедидо: TdxNavBarItem
      Caption = 'Pedido'
      OnClick = ItemПедидоClick
    end
    object ItemФактуры: TdxNavBarItem
      Caption = #1060#1072#1082#1090#1091#1088#1099' '#1087#1083#1072#1085#1090#1072#1094#1080#1081
      OnClick = ItemФактурыClick
    end
    object ItemPacking: TdxNavBarItem
      Caption = #1055#1072#1082#1080#1085#1075
      OnClick = ItemPackingClick
    end
    object ItemPrice: TdxNavBarItem
      Caption = #1055#1088#1072#1081#1089
      OnClick = ItemPriceClick
    end
    object ItemПоступления: TdxNavBarItem
      Caption = #1055#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103
      OnClick = ItemПоступленияClick
    end
  end
  object PageDocs: TcxPageControl
    Left = 217
    Top = 0
    Width = 556
    Height = 477
    Align = alClient
    TabOrder = 1
    Visible = False
    Properties.ActivePage = TabПоступления
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 473
    ClientRectLeft = 4
    ClientRectRight = 552
    ClientRectTop = 24
    object TabOrder: TcxTabSheet
      Caption = #1047#1072#1082#1072#1079#1099
      ImageIndex = 0
      inline FrameOrder1: TFrameOrder
        Left = 0
        Top = 0
        Width = 548
        Height = 449
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 548
        ExplicitHeight = 449
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 548
          ExplicitWidth = 548
          inherited barProduct: TdxBarManager
            DockControlHeights = (
              0
              0
              69
              0)
          end
        end
        inherited GridOrder: TcxGrid
          Width = 548
          Height = 380
          ExplicitWidth = 548
          ExplicitHeight = 380
        end
        inherited Group1: TcxGroupBox
          ExplicitWidth = 548
          Width = 548
        end
      end
    end
    object TabПедидо: TcxTabSheet
      Caption = #1055#1077#1076#1080#1076#1086
      ImageIndex = 1
      inline FramePedidoALL1: TFramePedidoAll
        Left = 0
        Top = 0
        Width = 548
        Height = 449
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 548
        ExplicitHeight = 449
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 548
          ExplicitWidth = 548
          inherited barProduct: TdxBarManager
            DockControlHeights = (
              0
              0
              69
              0)
          end
        end
        inherited GridPedidoALL: TcxGrid
          Width = 548
          Height = 416
          ExplicitWidth = 548
          ExplicitHeight = 416
          inherited ViewPedidoALL: TcxGridDBTableView
            OnDblClick = FramePedidoALL1ViewPedidoALLDblClick
          end
        end
      end
    end
    object TabФактура: TcxTabSheet
      Caption = #1060#1072#1082#1090#1091#1088#1099
      ImageIndex = 2
      inline FrameFactura1: TFrameFactura
        Left = 0
        Top = 0
        Width = 548
        Height = 449
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 548
        ExplicitHeight = 449
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 548
          ExplicitWidth = 548
          inherited barProduct: TdxBarManager
            DockControlHeights = (
              0
              0
              69
              0)
          end
        end
        inherited Group1: TcxGroupBox
          ExplicitWidth = 548
          Width = 548
          inherited edtDateDo: TAdvDateTimePicker
            OnChange = FrameFactura1edtDateDoChange
          end
        end
        inherited GridFactura: TcxGrid
          Width = 548
          Height = 379
          ExplicitWidth = 548
          ExplicitHeight = 379
        end
      end
    end
    object tabPacking: TcxTabSheet
      Caption = #1055#1072#1082#1080#1085#1075
      ImageIndex = 3
      inline Tamog_Packing1: TTamog_Packing
        Left = 0
        Top = 0
        Width = 548
        Height = 449
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 548
        ExplicitHeight = 449
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 548
          ExplicitWidth = 548
          inherited barProduct: TdxBarManager
            DockControlHeights = (
              0
              0
              69
              0)
          end
        end
        inherited GroupOsn: TcxGroupBox
          ExplicitWidth = 548
          Width = 548
        end
        inherited GridUsers: TcxGrid
          Width = 548
          Height = 360
          ExplicitWidth = 548
          ExplicitHeight = 360
        end
      end
    end
    object tabPrice: TcxTabSheet
      Caption = #1055#1088#1072#1081#1089
      ImageIndex = 4
      inline FramePrice1: TFramePrice
        Left = 0
        Top = 0
        Width = 548
        Height = 449
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 548
        ExplicitHeight = 449
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 548
          ExplicitWidth = 548
          inherited barProduct: TdxBarManager
            DockControlHeights = (
              0
              0
              69
              0)
            inherited btnEdit: TdxBarLargeButton
              OnClick = btnEditClick
            end
            inherited btnRefresh: TdxBarLargeButton
              OnClick = btnRefreshClick
            end
          end
        end
        inherited GridPedidoALL: TcxGrid
          Width = 548
          Height = 416
          ExplicitWidth = 548
          ExplicitHeight = 416
          inherited ViewPedidoALL: TcxGridDBTableView
            OnDblClick = FramePrice1ViewPedidoALLDblClick
          end
        end
      end
    end
    object TabПоступления: TcxTabSheet
      Caption = #1055#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103
      ImageIndex = 5
      inline FrameReceipt1: TFrameReceipt
        Left = 0
        Top = 0
        Width = 548
        Height = 449
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 548
        ExplicitHeight = 449
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 548
          ExplicitWidth = 548
          inherited barProduct: TdxBarManager
            DockControlHeights = (
              0
              0
              69
              0)
          end
        end
        inherited GridStatWork: TcxGrid
          Width = 548
          Height = 417
          ExplicitWidth = 548
          ExplicitHeight = 417
        end
      end
    end
  end
  object cxspltr1: TcxSplitter
    Left = 209
    Top = 0
    Width = 8
    Height = 477
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = dxnvbr1
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
    Left = 40
    Top = 264
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 49
      end>
  end
end
