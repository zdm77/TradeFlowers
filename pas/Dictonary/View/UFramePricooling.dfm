object FrameProcooling: TFrameProcooling
  Left = 0
  Top = 0
  Width = 595
  Height = 415
  TabOrder = 0
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 595
    Height = 32
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 595
    ExplicitHeight = 32
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
      inherited btnSel: TdxBarLargeButton
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
  object GridStatWork: TcxGrid
    Left = 0
    Top = 32
    Width = 595
    Height = 383
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object ViewStatWork: TcxGridDBTableView
      OnDblClick = ViewStatWorkDblClick
      Navigator.Buttons.CustomButtons = <>
      FilterBox.CustomizeButtonAlignment = fbaLeft
      FilterBox.Position = fpTop
      DataController.DataSource = dsPricooling
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Editing = False
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      object ColumnName: TcxGridDBColumn
        DataBinding.FieldName = 'name'
        Width = 382
      end
    end
    object LevelStatWork: TcxGridLevel
      GridView = ViewStatWork
    end
  end
  object QueryPricooling: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO "'#1082#1072#1088#1075#1086'"."'#1072#1075#1077#1085#1089#1090#1074#1072'"'
      
        '  (id, name, "'#1072#1076#1088#1077#1089'_'#1086#1092#1080#1089#1072'", "'#1072#1076#1088#1077#1089'_'#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080'", "'#1072#1076#1088#1077#1089'_'#1089#1082#1083#1072#1076#1072'",' +
        ' "'#1087#1088#1080#1084#1077#1095#1072#1085#1080#1077'", "'#1084#1072#1082#1089'_'#1089#1088#1086#1082'_'#1076#1086#1083#1075'", "'#1086#1087#1086#1074#1077#1097#1072#1090#1100'_'#1076#1085#1077#1081'", "'#1084#1072#1082#1089'_'#1089#1091#1084#1084#1072'_'#1076 +
        #1086#1083#1075#1072'", "'#1086#1087#1086#1074#1077#1097#1072#1090#1100'_'#1089#1091#1084#1084#1072'", "'#1076#1086#1083#1075'", "'#1102#1088'_'#1080#1084#1103'")'
      'VALUES'
      
        '  (:id, :name, :"'#1072#1076#1088#1077#1089'_'#1086#1092#1080#1089#1072'", :"'#1072#1076#1088#1077#1089'_'#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080'", :"'#1072#1076#1088#1077#1089'_'#1089#1082#1083 +
        #1072#1076#1072'", :"'#1087#1088#1080#1084#1077#1095#1072#1085#1080#1077'", :"'#1084#1072#1082#1089'_'#1089#1088#1086#1082'_'#1076#1086#1083#1075'", :"'#1086#1087#1086#1074#1077#1097#1072#1090#1100'_'#1076#1085#1077#1081'", :"'#1084#1072#1082 +
        #1089'_'#1089#1091#1084#1084#1072'_'#1076#1086#1083#1075#1072'", :"'#1086#1087#1086#1074#1077#1097#1072#1090#1100'_'#1089#1091#1084#1084#1072'", :"'#1076#1086#1083#1075'", :"'#1102#1088'_'#1080#1084#1103'")')
    SQLDelete.Strings = (
      'DELETE FROM "'#1082#1072#1088#1075#1086'"."'#1072#1075#1077#1085#1089#1090#1074#1072'"'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE "'#1082#1072#1088#1075#1086'"."'#1072#1075#1077#1085#1089#1090#1074#1072'"'
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
      'SELECT * FROM "'#1082#1072#1088#1075#1086'"."'#1072#1075#1077#1085#1089#1090#1074#1072'"'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, name, "'#1072#1076#1088#1077#1089'_'#1086#1092#1080#1089#1072'", "'#1072#1076#1088#1077#1089'_'#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080'", "'#1072#1076#1088#1077#1089'_'#1089#1082#1083#1072 +
        #1076#1072'", "'#1087#1088#1080#1084#1077#1095#1072#1085#1080#1077'", "'#1084#1072#1082#1089'_'#1089#1088#1086#1082'_'#1076#1086#1083#1075'", "'#1086#1087#1086#1074#1077#1097#1072#1090#1100'_'#1076#1085#1077#1081'", "'#1084#1072#1082#1089'_'#1089#1091#1084 +
        #1084#1072'_'#1076#1086#1083#1075#1072'", "'#1086#1087#1086#1074#1077#1097#1072#1090#1100'_'#1089#1091#1084#1084#1072'", "'#1076#1086#1083#1075'", "'#1102#1088'_'#1080#1084#1103'" FROM "'#1082#1072#1088#1075#1086'"."'#1072#1075#1077 +
        #1085#1089#1090#1074#1072'"'
      'WHERE'
      '  id = :id')
    Connection = DM1.db1
    SQL.Strings = (
      'select * from "'#1087#1088#1080#1082#1091#1083#1080#1085#1075'"."'#1072#1075#1077#1085#1089#1090#1074#1072'" order by name')
    Left = 80
    Top = 184
  end
  object dsPricooling: TDataSource
    DataSet = QueryPricooling
    Left = 76
    Top = 240
  end
end
