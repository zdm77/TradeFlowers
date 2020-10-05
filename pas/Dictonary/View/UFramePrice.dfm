object FramePrice: TFramePrice
  Left = 0
  Top = 0
  Width = 907
  Height = 593
  TabOrder = 0
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 907
    Height = 33
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 907
    ExplicitHeight = 33
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
        OnClick = FrameTopPanel1btnEditClick
      end
      inherited btnDel: TdxBarLargeButton
        OnClick = btnDelClick
      end
      inherited btnRefresh: TdxBarLargeButton
        OnClick = FrameTopPanel1btnRefreshClick
      end
      inherited btnSel: TdxBarLargeButton
        Visible = ivAlways
        OnClick = FrameTopPanel1btnSelClick
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
  object GridPedidoALL: TcxGrid
    Left = 0
    Top = 33
    Width = 907
    Height = 560
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object ViewPedidoALL: TcxGridDBTableView
      OnDblClick = ViewPedidoALLDblClick
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Position = fpTop
      DataController.DataSource = dsPrice
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
      object ColumnDate: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = #1076#1072#1090#1072'_'#1087#1088#1072#1081#1089#1072
        Width = 107
      end
      object ColumnCountry: TcxGridDBColumn
        DataBinding.FieldName = #1057#1090#1088#1072#1085#1072
        Width = 220
      end
      object ColumnPlant: TcxGridDBColumn
        Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
        DataBinding.FieldName = #1055#1083#1072#1085#1090#1072#1094#1080#1103
        Width = 255
      end
      object ColumnType: TcxGridDBColumn
        DataBinding.FieldName = #1058#1080#1087
        Width = 123
      end
    end
    object LevelOrg: TcxGridLevel
      GridView = ViewPedidoALL
    end
  end
  object QueryPrice: TUniQuery
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
      'SELECT '
      '  pr.id,'
      '  pr."'#1082#1086#1076'_'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103'",'
      '  pr."'#1076#1072#1090#1072'_'#1087#1088#1072#1081#1089#1072'",'
      '  pr."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'",'
      '  pl.uni_name '#1055#1083#1072#1085#1090#1072#1094#1080#1103' ,'
      '  s.uni_name '#1057#1090#1088#1072#1085#1072' ,'
      '  t.uni_name '#1058#1080#1087
      'FROM'
      '  "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1087#1088#1072#1081#1089'" pr'
      
        '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pl ON (pr."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" =' +
        ' pl.id)'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1090#1088#1072#1085#1099'" s ON (pl."'#1082#1086#1076'_'#1089#1090#1088#1072#1085#1099'" = s.id)'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1090#1080#1087#1099'" t ON (pr."'#1082#1086#1076'_'#1090#1080#1087#1072'" = t.id)'
      'order by '#1076#1072#1090#1072'_'#1087#1088#1072#1081#1089#1072' desc')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 480
    Top = 208
  end
  object dsPrice: TDataSource
    DataSet = QueryPrice
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
      'SELECT '
      '  pr.id,'
      '  pr."'#1082#1086#1076'_'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103'",'
      '  pr."'#1076#1072#1090#1072'_'#1087#1088#1072#1081#1089#1072'",'
      '  pr."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'",'
      '  pl.uni_name '#1055#1083#1072#1085#1090#1072#1094#1080#1103' ,'
      '  s.uni_name '#1057#1090#1088#1072#1085#1072' ,'
      '  t.uni_name '#1058#1080#1087
      'FROM'
      '  "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1087#1088#1072#1081#1089'" pr'
      
        '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pl ON (pr."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" =' +
        ' pl.id)'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1090#1088#1072#1085#1099'" s ON (pl."'#1082#1086#1076'_'#1089#1090#1088#1072#1085#1099'" = s.id)'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1090#1080#1087#1099'" t ON (pr."'#1082#1086#1076'_'#1090#1080#1087#1072'" = t.id)'
      'order by '#1076#1072#1090#1072'_'#1087#1088#1072#1081#1089#1072' desc')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 334
    Top = 269
  end
end
