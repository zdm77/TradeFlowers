object FramePrikuling: TFramePrikuling
  Left = 0
  Top = 0
  Width = 662
  Height = 432
  TabOrder = 0
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 662
    Height = 32
    Align = alTop
    TabOrder = 0
    ExplicitLeft = -79
    ExplicitTop = 96
    inherited barProduct: TdxBarManager
      Categories.ItemsVisibles = (
        2)
      Categories.Visibles = (
        True)
      DockControlHeights = (
        0
        0
        34
        0)
    end
  end
  object GridPrikuling: TcxGrid
    Left = 0
    Top = 32
    Width = 662
    Height = 400
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    ExplicitTop = 6
    ExplicitWidth = 582
    ExplicitHeight = 426
    object ViewPrikuling: TcxGridDBTableView
      FilterBox.CustomizeButtonAlignment = fbaLeft
      FilterBox.Position = fpTop
      DataController.DataSource = dsPrikuling
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsData.Editing = False
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      object ColumnName: TcxGridDBColumn
        DataBinding.FieldName = 'name'
        Width = 382
      end
    end
    object LevelStatWork: TcxGridLevel
      GridView = ViewPrikuling
    end
  end
  object QueryPrikuling: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO "'#1090#1088#1072#1082#1080'"."'#1090#1088#1072#1082#1080'"'
      
        '  (id, name, "'#1072#1076#1088#1077#1089'_'#1086#1092#1080#1089#1072'", "'#1072#1076#1088#1077#1089'_'#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080'", "'#1072#1076#1088#1077#1089'_'#1089#1082#1083#1072#1076#1072'",' +
        ' "'#1087#1088#1080#1084#1077#1095#1072#1085#1080#1077'", "'#1084#1072#1082#1089'_'#1089#1088#1086#1082'_'#1076#1086#1083#1075'", "'#1086#1087#1086#1074#1077#1097#1072#1090#1100'_'#1076#1085#1077#1081'", "'#1084#1072#1082#1089'_'#1089#1091#1084#1084#1072'_'#1076 +
        #1086#1083#1075#1072'", "'#1086#1087#1086#1074#1077#1097#1072#1090#1100'_'#1089#1091#1084#1084#1072'", "'#1076#1086#1083#1075'", "'#1102#1088'_'#1080#1084#1103'")'
      'VALUES'
      
        '  (:id, :name, :"'#1072#1076#1088#1077#1089'_'#1086#1092#1080#1089#1072'", :"'#1072#1076#1088#1077#1089'_'#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080'", :"'#1072#1076#1088#1077#1089'_'#1089#1082#1083 +
        #1072#1076#1072'", :"'#1087#1088#1080#1084#1077#1095#1072#1085#1080#1077'", :"'#1084#1072#1082#1089'_'#1089#1088#1086#1082'_'#1076#1086#1083#1075'", :"'#1086#1087#1086#1074#1077#1097#1072#1090#1100'_'#1076#1085#1077#1081'", :"'#1084#1072#1082 +
        #1089'_'#1089#1091#1084#1084#1072'_'#1076#1086#1083#1075#1072'", :"'#1086#1087#1086#1074#1077#1097#1072#1090#1100'_'#1089#1091#1084#1084#1072'", :"'#1076#1086#1083#1075'", :"'#1102#1088'_'#1080#1084#1103'")')
    SQLDelete.Strings = (
      'DELETE FROM "'#1090#1088#1072#1082#1080'"."'#1090#1088#1072#1082#1080'"'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE "'#1090#1088#1072#1082#1080'"."'#1090#1088#1072#1082#1080'"'
      'SET'
      
        '  id = :id, name = :name, "'#1072#1076#1088#1077#1089'_'#1086#1092#1080#1089#1072'" = :"'#1072#1076#1088#1077#1089'_'#1086#1092#1080#1089#1072'", "'#1072#1076#1088#1077#1089 +
        '_'#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080'" = :"'#1072#1076#1088#1077#1089'_'#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080'", "'#1072#1076#1088#1077#1089'_'#1089#1082#1083#1072#1076#1072'" = :"'#1072#1076#1088#1077#1089'_'#1089 +
        #1082#1083#1072#1076#1072'", "'#1087#1088#1080#1084#1077#1095#1072#1085#1080#1077'" = :"'#1087#1088#1080#1084#1077#1095#1072#1085#1080#1077'", "'#1084#1072#1082#1089'_'#1089#1088#1086#1082'_'#1076#1086#1083#1075'" = :"'#1084#1072#1082#1089'_' +
        #1089#1088#1086#1082'_'#1076#1086#1083#1075'", "'#1086#1087#1086#1074#1077#1097#1072#1090#1100'_'#1076#1085#1077#1081'" = :"'#1086#1087#1086#1074#1077#1097#1072#1090#1100'_'#1076#1085#1077#1081'", "'#1084#1072#1082#1089'_'#1089#1091#1084#1084#1072'_'#1076#1086 +
        #1083#1075#1072'" = :"'#1084#1072#1082#1089'_'#1089#1091#1084#1084#1072'_'#1076#1086#1083#1075#1072'", "'#1086#1087#1086#1074#1077#1097#1072#1090#1100'_'#1089#1091#1084#1084#1072'" = :"'#1086#1087#1086#1074#1077#1097#1072#1090#1100'_'#1089#1091#1084#1084 +
        #1072'", "'#1076#1086#1083#1075'" = :"'#1076#1086#1083#1075'", "'#1102#1088'_'#1080#1084#1103'" = :"'#1102#1088'_'#1080#1084#1103'"'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM "'#1090#1088#1072#1082#1080'"."'#1090#1088#1072#1082#1080'"'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, name, "'#1072#1076#1088#1077#1089'_'#1086#1092#1080#1089#1072'", "'#1072#1076#1088#1077#1089'_'#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080'", "'#1072#1076#1088#1077#1089'_'#1089#1082#1083#1072 +
        #1076#1072'", "'#1087#1088#1080#1084#1077#1095#1072#1085#1080#1077'", "'#1084#1072#1082#1089'_'#1089#1088#1086#1082'_'#1076#1086#1083#1075'", "'#1086#1087#1086#1074#1077#1097#1072#1090#1100'_'#1076#1085#1077#1081'", "'#1084#1072#1082#1089'_'#1089#1091#1084 +
        #1084#1072'_'#1076#1086#1083#1075#1072'", "'#1086#1087#1086#1074#1077#1097#1072#1090#1100'_'#1089#1091#1084#1084#1072'", "'#1076#1086#1083#1075'", "'#1102#1088'_'#1080#1084#1103'" FROM "'#1090#1088#1072#1082#1080'"."'#1090#1088#1072 +
        #1082#1080'"'
      'WHERE'
      '  id = :id')
    Connection = DM1.db1
    SQL.Strings = (
      'select * from '#1090#1088#1072#1082#1080'.'#1090#1088#1072#1082#1080' order by name')
    Left = 80
    Top = 184
  end
  object dsPrikuling: TDataSource
    DataSet = QueryPrikuling
    Left = 76
    Top = 240
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
    Left = 352
    Top = 216
  end
end
