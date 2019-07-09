object FrameAWBPedido: TFrameAWBPedido
  Left = 0
  Top = 0
  Width = 960
  Height = 633
  TabOrder = 0
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 960
    Height = 38
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 960
    ExplicitHeight = 38
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
    end
  end
  object GridAWBPedido: TcxGrid
    Left = 0
    Top = 38
    Width = 960
    Height = 595
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = ''
    object ViewAWBPedido: TcxGridDBTableView
      OnDblClick = ViewAWBPedidoDblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsAWBPedido
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.CellMultiSelect = True
      OptionsView.GroupByBox = False
      object ColumnViewAWBPedido_1: TcxGridDBColumn
        DataBinding.FieldName = #1084#1085#1077#1084#1086'_'#1085#1086#1084#1077#1088
        Options.CellMerging = True
        Width = 100
      end
      object ColumnViewAWBPedidoa_name: TcxGridDBColumn
        Caption = #1040#1074#1080#1072#1083#1080#1085#1080#1103
        DataBinding.FieldName = 'a_name'
        Options.CellMerging = True
        Width = 123
      end
      object ColumnViewAWBPedidok_name: TcxGridDBColumn
        DataBinding.FieldName = 'k_name'
        Options.CellMerging = True
        Width = 154
      end
      object ColumnПорядок: TcxGridDBColumn
        DataBinding.FieldName = #1087#1086#1088#1103#1076#1086#1082
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Options.CellMerging = True
      end
      object ColumnType: TcxGridDBColumn
        DataBinding.FieldName = #1090#1080#1087'_'#1084#1085#1077#1084#1086
        PropertiesClassName = 'TcxLabelProperties'
        Options.CellMerging = True
        Width = 101
      end
      object ColumnMark: TcxGridDBColumn
        DataBinding.FieldName = 'm_name'
        Width = 150
      end
      object ColumnTrack: TcxGridDBColumn
        DataBinding.FieldName = 't_name'
        Width = 150
      end
      object ColumnOrg: TcxGridDBColumn
        DataBinding.FieldName = 'o_name'
        Width = 175
      end
      object ColumnFito: TcxGridDBColumn
        DataBinding.FieldName = 'f_name'
        Width = 80
      end
      object ColumnPricul: TcxGridDBColumn
        DataBinding.FieldName = 'pr_name'
        Width = 150
      end
    end
    object LevelAWBPedido: TcxGridLevel
      GridView = ViewAWBPedido
    end
  end
  object QueryAWBPedido: TUniQuery
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
      '  aw.id,'
      '  aw."'#1084#1085#1077#1084#1086'_'#1085#1086#1084#1077#1088'",'
      '  k.name AS k_name,'
      '  a.uni_name AS a_name,'
      '  o.name AS o_name,'
      '  aw."'#1082#1086#1076'_'#1082#1072#1088#1075#1086'",'
      '  aw."'#1082#1086#1076'_'#1072#1074#1080#1072#1083#1080#1085#1080#1080'",'
      '  aw."'#1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'",'
      '  m.uni_name AS m_name,'
      '  t.uni_name AS t_name,'
      '  asw.'#1090#1080#1087'_'#1084#1085#1077#1084#1086' AS "'#1090#1080#1087'_'#1084#1085#1077#1084#1086'",'
      '  asw."'#1087#1086#1088#1103#1076#1086#1082'",'
      '  f.uni_name as f_name,'
      '  pr.name as pr_name,'
      '   coalesce(asw."'#1087#1086#1088#1103#1076#1086#1082'", 0) AS ord'
      'FROM'
      '  "'#1073#1091#1093'".awb aw'
      '  INNER JOIN "'#1082#1072#1088#1075#1086'"."'#1072#1075#1077#1085#1089#1090#1074#1072'" k ON (aw."'#1082#1086#1076'_'#1082#1072#1088#1075#1086'" = k.id)'
      
        '  INNER JOIN "'#1072#1074#1080#1072#1083#1080#1085#1080#1080'"."'#1072#1074#1080#1072#1083#1080#1085#1080#1080'" a ON (aw."'#1082#1086#1076'_'#1072#1074#1080#1072#1083#1080#1085#1080#1080'" = ' +
        'a.id)'
      
        '  INNER JOIN "'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'"."'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'" o ON (aw."'#1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094 +
        #1080#1080'" = o.id)'
      '  LEFT OUTER JOIN "'#1073#1091#1093'".sub_awb asw ON (aw.id = asw."'#1082#1086#1076'_AWB")'
      
        '  LEFT OUTER JOIN "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"."'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'" m ON (asw."'#1082#1086#1076'_'#1084#1072#1088#1082#1080 +
        #1088#1086#1074#1082#1080'" = m.id)'
      '  LEFT OUTER JOIN "'#1090#1088#1072#1082#1080'"."'#1090#1088#1072#1082#1080'" t ON (asw."'#1082#1086#1076'_'#1090#1088#1072#1082#1072'" = t.id)'
      '  '
      
        '   LEFT OUTER JOIN  "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1092#1080#1090#1086'" f on (f.id=asw."'#1082#1086#1076'_'#1092#1080#1090#1086'"' +
        ')'
      
        '    LEFT OUTER JOIN "'#1087#1088#1080#1082#1091#1083#1080#1085#1075'"."'#1072#1075#1077#1085#1089#1090#1074#1072'" pr on (pr.id=asw."'#1082#1086#1076 +
        '_'#1087#1088#1080#1082#1091#1083#1080#1085#1075#1072'")'
      'WHERE'
      '  aw."'#1084#1085#1077#1084#1086'" = true and aw."'#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072'"=:d'
      'ORDER BY'
      '  aw."'#1084#1085#1077#1084#1086'_'#1085#1086#1084#1077#1088'", ord')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 368
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'd'
        Value = nil
      end>
  end
  object dsAWBPedido: TDataSource
    DataSet = QueryAWBPedido
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
      '  aw.id,'
      '  aw."'#1084#1085#1077#1084#1086'_'#1085#1086#1084#1077#1088'",'
      '  k.name AS k_name,'
      '  a.uni_name AS a_name,'
      '  o.name AS o_name,'
      '  aw."'#1082#1086#1076'_'#1082#1072#1088#1075#1086'",'
      '  aw."'#1082#1086#1076'_'#1072#1074#1080#1072#1083#1080#1085#1080#1080'",'
      '  aw."'#1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'",'
      '  m.uni_name AS m_name,'
      '  t.uni_name AS t_name,'
      '  asw.'#1090#1080#1087'_'#1084#1085#1077#1084#1086' AS "'#1090#1080#1087'_'#1084#1085#1077#1084#1086'",'
      '  asw."'#1087#1086#1088#1103#1076#1086#1082'",'
      '  f.uni_name as f_name,'
      '  pr.name as pr_name'
      'FROM'
      '  "'#1073#1091#1093'".awb aw'
      '  INNER JOIN "'#1082#1072#1088#1075#1086'"."'#1072#1075#1077#1085#1089#1090#1074#1072'" k ON (aw."'#1082#1086#1076'_'#1082#1072#1088#1075#1086'" = k.id)'
      
        '  INNER JOIN "'#1072#1074#1080#1072#1083#1080#1085#1080#1080'"."'#1072#1074#1080#1072#1083#1080#1085#1080#1080'" a ON (aw."'#1082#1086#1076'_'#1072#1074#1080#1072#1083#1080#1085#1080#1080'" = ' +
        'a.id)'
      
        '  INNER JOIN "'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'"."'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'" o ON (aw."'#1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094 +
        #1080#1080'" = o.id)'
      '  LEFT OUTER JOIN "'#1073#1091#1093'".sub_awb asw ON (aw.id = asw."'#1082#1086#1076'_AWB")'
      
        '  LEFT OUTER JOIN "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"."'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'" m ON (asw."'#1082#1086#1076'_'#1084#1072#1088#1082#1080 +
        #1088#1086#1074#1082#1080'" = m.id)'
      '  LEFT OUTER JOIN "'#1090#1088#1072#1082#1080'"."'#1090#1088#1072#1082#1080'" t ON (asw."'#1082#1086#1076'_'#1090#1088#1072#1082#1072'" = t.id)'
      '  '
      
        '   LEFT OUTER JOIN  "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1092#1080#1090#1086'" f on (f.id=asw."'#1082#1086#1076'_'#1092#1080#1090#1086'"' +
        ')'
      
        '    LEFT OUTER JOIN "'#1087#1088#1080#1082#1091#1083#1080#1085#1075'"."'#1072#1075#1077#1085#1089#1090#1074#1072'" pr on (pr.id=asw."'#1082#1086#1076 +
        '_'#1087#1088#1080#1082#1091#1083#1080#1085#1075#1072'")'
      'WHERE'
      '  aw."'#1084#1085#1077#1084#1086'" = true'
      'ORDER BY'
      '  aw."'#1084#1085#1077#1084#1086'_'#1085#1086#1084#1077#1088'"')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 320
    Top = 320
  end
end
