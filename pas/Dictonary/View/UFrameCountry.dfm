object FrameCountry: TFrameCountry
  Left = 0
  Top = 0
  Width = 797
  Height = 542
  TabOrder = 0
  object GridUsers: TcxGrid
    Left = 0
    Top = 35
    Width = 797
    Height = 507
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object ViewUsers: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsCountry
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
      object ColumnUniName: TcxGridDBColumn
        Caption = #1052#1077#1078#1076#1091#1085#1072#1088#1086#1076#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'uni_name'
        Width = 282
      end
      object ColumnName: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'name'
        Width = 256
      end
      object ColumnRegName: TcxGridDBColumn
        Caption = #1056#1077#1075#1080#1086#1085#1072#1083#1100#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'reg_name'
        Width = 229
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
    Width = 797
    Height = 35
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 797
    inherited barProduct: TdxBarManager
      PixelsPerInch = 96
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
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
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
  object QueryCountry: TUniQuery
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
    BeforeFetch = QueryCountryBeforeFetch
    AfterFetch = QueryCountryAfterFetch
    Left = 111
    Top = 129
  end
  object dsCountry: TDataSource
    DataSet = QueryCountry
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
      'SELECT DISTINCT '
      '  d.id,'
      '  d.id_type_product,'
      '  d.id_marking,'
      '  d.awb,'
      '  d.date_fly,'
      '  d.id_invoice,'
      '  d.number_box,'
      '  d.total_bunch,'
      '  d.id_save,'
      '  d.quantity_box,'
      '  d.type_box,'
      '  d.stems_bunch,'
      '  m.name,'
      ''
      'sum( dp.quantity_bunch*dp.quantity_stems) itog,'
      'dp.price*sum( dp.quantity_bunch*dp.quantity_stems) suma,'
      'd.id_hawb'
      'FROM'
      '  invoice_ecuador_pos_detail dp'
      '  INNER JOIN invoice_ecuador_detail d ON (dp.id_detail = d.id)'
      '  INNER JOIN marking m ON (d.id_marking = m.id)'
      ''
      'where id_invoice=:id_invoice'
      'group by d.`id_marking`, d.id')
    Left = 231
    Top = 137
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_invoice'
        Value = nil
      end>
  end
end
