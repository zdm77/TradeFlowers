object FAuction: TFAuction
  Left = 0
  Top = 0
  Caption = #1040#1091#1082#1094#1080#1086#1085
  ClientHeight = 608
  ClientWidth = 1082
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bar1: TdxNavBar
    Left = 0
    Top = 0
    Width = 209
    Height = 608
    Align = alLeft
    ActiveGroupIndex = 0
    TabOrder = 0
    View = 12
    OptionsBehavior.Common.AllowSelectLinks = True
    object GroupOsn: TdxNavBarGroup
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = ItemАукцион
        end
        item
          Item = ItemRaznos
        end
        item
          Item = ItemПакинг
        end>
    end
    object Bar1Group1: TdxNavBarGroup
      Caption = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = ItemType
        end
        item
          Item = ItemНоменклатура
        end>
    end
    object groupZakaz: TdxNavBarGroup
      Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1079#1072#1082#1072#1079#1072#1084#1080
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = itemOrderHoland
        end>
    end
    object ItemАукцион: TdxNavBarItem
      Caption = #1040#1091#1082#1094#1080#1086#1085
      OnClick = ItemАукционClick
    end
    object ItemRaznos: TdxNavBarItem
      Caption = #1056#1072#1079#1085#1086#1089' '#1087#1086' '#1084#1072#1088#1082#1080#1088#1086#1074#1082#1072#1084
      OnClick = ItemRaznosClick
    end
    object ItemПакинг: TdxNavBarItem
      Caption = #1055#1072#1082#1080#1085#1075
    end
    object ItemType: TdxNavBarItem
      Caption = #1043#1088#1091#1087#1087#1072' '#1087#1088#1086#1076#1091#1082#1090#1072
      OnClick = ItemTypeClick
    end
    object Bar1Item1: TdxNavBarItem
      Caption = 'Bar1Item1'
    end
    object ItemНоменклатура: TdxNavBarItem
      Caption = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
      OnClick = ItemНоменклатураClick
    end
    object itemOrderHoland: TdxNavBarItem
      Caption = #1043#1086#1083#1072#1085#1076#1080#1103
      OnClick = itemOrderHolandClick
    end
  end
  object PageDocs: TcxPageControl
    Left = 217
    Top = 0
    Width = 865
    Height = 608
    Align = alClient
    TabOrder = 1
    Visible = False
    Properties.ActivePage = tabРазноск
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 604
    ClientRectLeft = 4
    ClientRectRight = 861
    ClientRectTop = 24
    object TabOrder: TcxTabSheet
      Caption = #1040#1091#1082#1094#1080#1086#1085
      ImageIndex = 0
      inline FrameAuction1: TFrameAuction
        Left = 0
        Top = 0
        Width = 857
        Height = 580
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 857
        ExplicitHeight = 580
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 857
          ExplicitWidth = 857
          inherited barProduct: TdxBarManager
            DockControlHeights = (
              0
              0
              69
              0)
            inherited dxbrBardxbrmngr1Bar1: TdxBar
              Visible = True
            end
          end
        end
        inherited GridStatWork: TcxGrid
          Width = 857
          Height = 548
          ExplicitWidth = 857
          ExplicitHeight = 548
        end
      end
    end
    object tabРазноск: TcxTabSheet
      Caption = #1056#1072#1079#1085#1086#1089#1082#1072
      ImageIndex = 1
      inline FrameRaznosAucAll1: TFrameRaznosAucAll
        Left = 0
        Top = 0
        Width = 857
        Height = 580
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 857
        ExplicitHeight = 580
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 857
          ExplicitWidth = 857
          inherited barProduct: TdxBarManager
            DockControlHeights = (
              0
              0
              69
              0)
            inherited dxbrBardxbrmngr1Bar1: TdxBar
              Visible = True
            end
          end
        end
        inherited e: TcxGrid
          Width = 857
          Height = 548
        end
      end
    end
    object tabType: TcxTabSheet
      Caption = #1043#1088#1091#1087#1087#1072' '#1087#1088#1086#1076#1091#1082#1090#1072
      ImageIndex = 2
      inline FrameTypeAuc1: TFrameTypeAuc
        Left = 0
        Top = 0
        Width = 857
        Height = 580
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 857
        ExplicitHeight = 580
        inherited cxGroupBox1: TcxGroupBox
          ExplicitWidth = 857
          ExplicitHeight = 580
          Height = 580
          Width = 857
          inherited FrameTopPanel1: TFrameTopPanel
            Width = 853
            ExplicitWidth = 853
            inherited barProduct: TdxBarManager
              DockControlHeights = (
                0
                0
                69
                0)
            end
          end
          inherited GridStatWork: TcxGrid
            Width = 853
            Height = 495
            ExplicitWidth = 853
            ExplicitHeight = 541
          end
          inherited cxGroupBox2: TcxGroupBox
            ExplicitWidth = 853
            Width = 853
          end
        end
      end
    end
    object tabНоменклатура: TcxTabSheet
      Caption = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
      ImageIndex = 3
      inline FrameProductAuc1: TFrameProductAuc
        Left = 0
        Top = 0
        Width = 857
        Height = 580
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 857
        ExplicitHeight = 580
        inherited cxGroupBox1: TcxGroupBox
          ExplicitWidth = 857
          ExplicitHeight = 580
          Height = 580
          Width = 857
          inherited FrameTopPanel1: TFrameTopPanel
            Width = 853
            ExplicitWidth = 853
            inherited barProduct: TdxBarManager
              DockControlHeights = (
                0
                0
                69
                0)
              inherited btnArch: TcxBarEditItem
                Visible = ivAlways
                Properties.OnEditValueChanged = FrameTopPanel1btnArchPropertiesEditValueChanged
              end
            end
          end
          inherited cxGroupBox2: TcxGroupBox
            ExplicitWidth = 853
            ExplicitHeight = 533
            Height = 533
            Width = 853
            inherited GridStatWork: TcxGrid
              Width = 847
              Height = 508
              ExplicitWidth = 847
              ExplicitHeight = 508
            end
          end
          inherited cxSplitter1: TcxSplitter
            Top = 570
            Width = 853
            ExplicitTop = 570
            ExplicitWidth = 853
          end
          inherited cxGroupBox3: TcxGroupBox
            Top = 578
            ExplicitTop = 578
            ExplicitWidth = 853
            ExplicitHeight = 0
            Height = 0
            Width = 853
            inherited cxGrid1: TcxGrid
              Width = 847
              Height = 0
              ExplicitWidth = 847
              ExplicitHeight = 0
            end
          end
        end
      end
    end
    object tabOrderHolland: TcxTabSheet
      Caption = #1047#1072#1082#1072#1079#1099
      ImageIndex = 4
      inline FrameAucOrder1: TFrameAucOrder
        Left = 0
        Top = 0
        Width = 857
        Height = 580
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 857
        ExplicitHeight = 580
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 857
          ExplicitWidth = 857
          inherited barProduct: TdxBarManager
            DockControlHeights = (
              0
              0
              69
              0)
            inherited dxbrBardxbrmngr1Bar1: TdxBar
              Visible = True
            end
          end
        end
        inherited GridStatWork: TcxGrid
          Width = 857
          Height = 548
          ExplicitLeft = 0
          ExplicitWidth = 857
          ExplicitHeight = 548
        end
      end
    end
  end
  object cxspltr1: TcxSplitter
    Left = 209
    Top = 0
    Width = 8
    Height = 608
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = Bar1
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
