object FrameWarehouse: TFrameWarehouse
  Left = 0
  Top = 0
  Width = 650
  Height = 467
  TabOrder = 0
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 650
    Height = 35
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 650
    inherited barProduct: TdxBarManager
      PixelsPerInch = 96
      DockControlHeights = (
        0
        0
        69
        0)
      inherited btnAdd: TdxBarLargeButton
        OnClick = btnAddClick
      end
      inherited btnEdit: TdxBarLargeButton
        OnClick = btnEditClick
      end
      inherited btnDel: TdxBarLargeButton
        OnClick = btnDelClick
      end
      inherited btnRefresh: TdxBarLargeButton
        OnClick = btnRefreshClick
      end
    end
    inherited pmПедидо: TdxBarPopupMenu
      PixelsPerInch = 96
    end
    inherited pmЗаказ: TdxBarPopupMenu
      PixelsPerInch = 96
    end
    inherited pmФактура: TdxBarPopupMenu
      PixelsPerInch = 96
    end
    inherited pmClients: TdxBarPopupMenu
      PixelsPerInch = 96
    end
  end
  object GridWarehouse: TcxGrid
    Left = 0
    Top = 35
    Width = 650
    Height = 432
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    ExplicitTop = 41
    object ViewUsers: TcxGridDBTableView
      OnDblClick = ViewUsersDblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsWarehouse
      DataController.Summary.DefaultGroupSummaryItems = <>
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
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Editing = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object ColumnName: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'w_name'
        Width = 249
      end
      object ColumnOrg: TcxGridDBColumn
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        DataBinding.FieldName = 'o_name'
        Width = 255
      end
    end
    object LevelOrg: TcxGridLevel
      GridView = ViewUsers
    end
  end
  object QueryWarehouse: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO "'#1089#1082#1083#1072#1076'"."'#1094#1077#1093#1072'"'
      '  (name, "'#1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'", id)'
      'VALUES'
      '  (:name, :"'#1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'", :id)')
    SQLDelete.Strings = (
      'DELETE FROM "'#1089#1082#1083#1072#1076'"."'#1094#1077#1093#1072'"'
      'WHERE'
      '  name = :Old_name')
    SQLUpdate.Strings = (
      'UPDATE "'#1089#1082#1083#1072#1076'"."'#1094#1077#1093#1072'"'
      'SET'
      '  name = :name, "'#1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'" = :"'#1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'", id = :id'
      'WHERE'
      '  name = :Old_name')
    SQLLock.Strings = (
      'SELECT * FROM "'#1089#1082#1083#1072#1076'"."'#1094#1077#1093#1072'"'
      'WHERE'
      '  name = :Old_name'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT name, "'#1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'", id FROM "'#1089#1082#1083#1072#1076'"."'#1094#1077#1093#1072'"'
      'WHERE'
      '  name = :name')
    Connection = DM1.db1
    SQL.Strings = (
      'SELECT '
      '  o.name o_name,'
      '  w.name w_name,'
      'w.uni_name w_uni_name,'
      'w.reg_name w_reg_name,'
      '  w.id,'
      '  w."'#1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'"'
      'FROM'
      '  "'#1089#1082#1083#1072#1076'"."'#1094#1077#1093#1072'" w'
      
        '  INNER JOIN "'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'"."'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'" o ON (w."'#1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080 +
        #1080'" = o.id)'
      '  order by o_name, w_name')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 480
    Top = 208
  end
  object dsWarehouse: TDataSource
    DataSet = QueryWarehouse
    Left = 480
    Top = 272
  end
end
