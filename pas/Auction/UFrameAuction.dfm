object FrameAuction: TFrameAuction
  Left = 0
  Top = 0
  Width = 875
  Height = 562
  TabOrder = 0
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 875
    Height = 32
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 875
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
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        OnClick = btnEditClick
      end
      inherited btnDel: TdxBarLargeButton
        Caption = #1059#1076#1072#1083#1080#1090#1100
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
  object GridStatWork: TcxGrid
    Left = 0
    Top = 32
    Width = 875
    Height = 530
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object ViewReceipt: TcxGridDBTableView
      OnDblClick = ViewReceiptDblClick
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
      OnCustomDrawCell = ViewReceiptCustomDrawCell
      DataController.DataSource = dsAuc
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
      object ViewReceiptDBColumn: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1074#1099#1093#1086#1076#1072' '#1080#1079' '#1040#1052#1057
        DataBinding.FieldName = #1044#1072#1090#1072#1042#1099#1093#1086#1076#1072
        Width = 149
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
  object QueryAuc: TUniQuery
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
      
        'select DISTINCT a."'#1044#1072#1090#1072#1042#1099#1083#1077#1090#1072'" from "'#1072#1091#1082#1094#1080#1086#1085'"."'#1072#1091#1082#1094#1080#1086#1085'" a order ' +
        'by a."'#1044#1072#1090#1072#1042#1099#1083#1077#1090#1072'" DESC')
    Left = 480
    Top = 208
  end
  object dsAuc: TDataSource
    DataSet = QueryAuc
    Left = 480
    Top = 272
  end
end
