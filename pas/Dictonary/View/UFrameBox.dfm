object FrameBox: TFrameBox
  Left = 0
  Top = 0
  Width = 707
  Height = 376
  TabOrder = 0
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 707
    Height = 38
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 707
    ExplicitHeight = 38
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
  object GridUsers: TcxGrid
    Left = 0
    Top = 38
    Width = 707
    Height = 338
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object ViewStatWork: TcxGridDBTableView
      OnDblClick = ViewStatWorkDblClick
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
      DataController.DataSource = dsBox
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.ApplyChanges = fracImmediately
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Editing = False
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      object ViewStatWorkname: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'name'
        Width = 253
      end
      object ColumnВес: TcxGridDBColumn
        Caption = #1042#1077#1089
        DataBinding.FieldName = #1074#1077#1089
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = ',0.000 '#1082#1075#39'.'#39';'
        Width = 105
      end
    end
    object LevelStatWork: TcxGridLevel
      GridView = ViewStatWork
    end
  end
  object QueryBox: TUniQuery
    SQLDelete.Strings = (
      'DELETE FROM clients'
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
      'select * from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1090#1080#1087'_'#1091#1087#1072#1082#1086#1074#1082#1080'"')
    Left = 423
    Top = 133
  end
  object dsBox: TDataSource
    DataSet = QueryBox
    Left = 280
    Top = 193
  end
  object Query1: TUniQuery
    SQLDelete.Strings = (
      'DELETE FROM clients'
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
      'select * from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"'
      'order by id')
    Left = 319
    Top = 213
  end
end
