object FrameReceipt: TFrameReceipt
  Left = 0
  Top = 0
  Width = 699
  Height = 518
  TabOrder = 0
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 699
    Height = 32
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 699
    ExplicitHeight = 32
    inherited barProduct: TdxBarManager
      PixelsPerInch = 96
      DockControlHeights = (
        0
        0
        69
        0)
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
    Width = 699
    Height = 486
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object ViewReceipt: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
      DataController.DataSource = dsReceipt
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
      object ColumnДата: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = #1076#1072#1090#1072
        Width = 97
      end
      object ViewReceiptname: TcxGridDBColumn
        Caption = #1057#1090#1088#1072#1085#1072
        DataBinding.FieldName = 'name'
        Width = 256
      end
    end
    object LevelStatWork: TcxGridLevel
      GridView = ViewReceipt
    end
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
  object QueryReceipt: TUniQuery
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
    SQL.Strings = (
      'SELECT '
      '  p."'#1076#1072#1090#1072'",'
      '  p.id id_p,'
      '  s.id id_s,'
      '  s.name,'
      '  s.uni_name,'
      '  s.reg_name,'
      '  s.quantity,'
      '  s.code,'
      '  s."'#1087#1088#1080#1086#1088#1080#1090#1077#1090'"'
      'FROM'
      '  "'#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103'"."'#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103'" p'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1090#1088#1072#1085#1099'" s ON (p."'#1082#1086#1076'_'#1089#1090#1088#1072#1085#1099'" = s.id)'
      '  order by '#1076#1072#1090#1072' Desc')
    Left = 480
    Top = 208
  end
  object dsReceipt: TDataSource
    DataSet = QueryReceipt
    Left = 480
    Top = 272
  end
end
