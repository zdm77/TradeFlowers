object FrameAirLine: TFrameAirLine
  Left = 0
  Top = 0
  Width = 588
  Height = 447
  TabOrder = 0
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 588
    Height = 32
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 588
    ExplicitHeight = 32
    inherited barProduct: TdxBarManager
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
  end
  object GridAirLine: TcxGrid
    Left = 0
    Top = 32
    Width = 588
    Height = 415
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object ViewUsers: TcxGridDBTableView
      OnDblClick = ViewUsersDblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsAirLine
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
      OptionsSelection.CellSelect = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object ColumnUniName: TcxGridDBColumn
        Caption = #1052#1077#1078#1076#1091#1085#1072#1088#1086#1076#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'uni_name'
        Width = 228
      end
      object ColumnName: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'name'
        Width = 188
      end
      object ColumnRegName: TcxGridDBColumn
        Caption = #1056#1077#1075#1080#1086#1085#1072#1083#1100#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'reg_name'
        Width = 228
      end
    end
    object LevelOrg: TcxGridLevel
      GridView = ViewUsers
    end
  end
  object QueryAirLine: TUniQuery
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
      'select * from "'#1072#1074#1080#1072#1083#1080#1085#1080#1080'"."'#1072#1074#1080#1072#1083#1080#1085#1080#1080'"')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 480
    Top = 208
  end
  object dsAirLine: TDataSource
    DataSet = QueryAirLine
    Left = 480
    Top = 272
  end
end
