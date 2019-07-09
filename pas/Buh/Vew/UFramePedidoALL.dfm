object FramePedidoAll: TFramePedidoAll
  Left = 0
  Top = 0
  Width = 960
  Height = 573
  TabOrder = 0
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 960
    Height = 33
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 960
    ExplicitHeight = 33
    inherited barProduct: TdxBarManager
      DockControlHeights = (
        0
        0
        34
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
  end
  object GridPedidoALL: TcxGrid
    Left = 0
    Top = 33
    Width = 960
    Height = 540
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object ViewPedidoALL: TcxGridDBTableView
      OnDblClick = ViewPedidoALLDblClick
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Position = fpTop
      DataController.DataSource = dsPedidoALL
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
        end
        item
          Format = ',0 '#1082#1075#39'.'#39';'
          Kind = skSum
        end
        item
          Format = '$ ,0.00;$ -,0.00'
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.ApplyChanges = fracImmediately
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Editing = False
      OptionsSelection.CellSelect = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.ShowColumnFilterButtons = sfbAlways
      object ViewPedidoALL_: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1074#1099#1083#1077#1090#1072
        DataBinding.FieldName = #1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072
        Width = 107
      end
    end
    object LevelOrg: TcxGridLevel
      GridView = ViewPedidoALL
    end
  end
  object QueryPedidoALL: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1088#1086#1083#1080'"'
      '  (id, name, uni_name, reg_name)'
      'VALUES'
      '  (:id, :name, :uni_name, :reg_name)')
    SQLDelete.Strings = (
      'DELETE FROM "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1088#1086#1083#1080'"'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1088#1086#1083#1080'"'
      'SET'
      
        '  id = :id, name = :name, uni_name = :uni_name, reg_name = :reg_' +
        'name'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1088#1086#1083#1080'"'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT id, name, uni_name, reg_name FROM "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1088#1086#1083#1080'"'
      'WHERE'
      '  id = :id')
    Connection = DM1.db1
    SQL.Strings = (
      'select z."'#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072'"'
      'from "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1072#1079#1099'" z'
      ''
      'group by z."'#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072'"'
      'order by z."'#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072'" desc')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 480
    Top = 208
  end
  object dsPedidoALL: TDataSource
    DataSet = QueryPedidoALL
    Left = 480
    Top = 272
  end
  object Query1: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1088#1086#1083#1080'"'
      '  (id, name, uni_name, reg_name)'
      'VALUES'
      '  (:id, :name, :uni_name, :reg_name)')
    SQLDelete.Strings = (
      'DELETE FROM "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1088#1086#1083#1080'"'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1088#1086#1083#1080'"'
      'SET'
      
        '  id = :id, name = :name, uni_name = :uni_name, reg_name = :reg_' +
        'name'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1088#1086#1083#1080'"'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT id, name, uni_name, reg_name FROM "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1088#1086#1083#1080'"'
      'WHERE'
      '  id = :id')
    Connection = DM1.db1
    SQL.Strings = (
      'select z."'#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072'"'
      'from "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1072#1079#1099'" z'
      ''
      'group by z."'#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072'"'
      'order by z."'#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072'" desc')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 536
    Top = 344
  end
end
