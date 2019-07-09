object FrameType: TFrameType
  Left = 0
  Top = 0
  Width = 737
  Height = 457
  TabOrder = 0
  object GridUsers: TcxGrid
    Left = 0
    Top = 35
    Width = 737
    Height = 422
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object ViewUsers: TcxGridDBTableView
      OnDblClick = ViewUsersDblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsType
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
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object ColumnUniName: TcxGridDBColumn
        Caption = #1052#1077#1078#1076#1091#1085#1072#1088#1086#1076#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'uni_name'
        Width = 241
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
      object ColumnCode: TcxGridDBColumn
        Caption = #1050#1086#1076
        DataBinding.FieldName = 'code'
        Width = 100
      end
    end
    object LevelOrg: TcxGridLevel
      GridView = ViewUsers
    end
  end
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 737
    Height = 35
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 737
    inherited barProduct: TdxBarManager
      DockControlHeights = (
        0
        0
        34
        0)
      inherited dxbrBardxbrmngr1Bar1: TdxBar
        ItemLinks = <
          item
            Visible = True
            ItemName = 'btnAdd'
          end
          item
            Visible = True
            ItemName = 'btnEdit'
          end
          item
            BeginGroup = True
            Visible = True
            ItemName = 'btnDel'
          end
          item
            BeginGroup = True
            Visible = True
            ItemName = 'btnRefresh'
          end>
      end
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
  object QueryType: TUniQuery
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
      'select * from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1090#1088#1072#1085#1099'"')
    Left = 111
    Top = 129
  end
  object dsType: TDataSource
    DataSet = QueryType
    Left = 112
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
      'select * from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1090#1088#1072#1085#1099'"')
    Left = 287
    Top = 137
  end
end
