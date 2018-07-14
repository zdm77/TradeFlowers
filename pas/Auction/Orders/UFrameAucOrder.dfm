object FrameAucOrder: TFrameAucOrder
  Left = 0
  Top = 0
  Width = 950
  Height = 442
  TabOrder = 0
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 950
    Height = 32
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 950
    ExplicitHeight = 32
    inherited barProduct: TdxBarManager
      DockControlHeights = (
        0
        0
        69
        0)
      inherited btnAdd: TdxBarLargeButton
        OnClick = FrameTopPanel1btnAddClick
      end
      inherited btnEdit: TdxBarLargeButton
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        OnClick = FrameTopPanel1btnEditClick
      end
      inherited btnDel: TdxBarLargeButton
        Caption = #1059#1076#1072#1083#1080#1090#1100
        OnClick = FrameTopPanel1btnDelClick
      end
      inherited btnSel: TdxBarLargeButton
        OnClick = FrameTopPanel1btnSelClick
      end
    end
  end
  object GridStatWork: TcxGrid
    Left = 0
    Top = 32
    Width = 950
    Height = 410
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    ExplicitLeft = -4
    object ViewReceipt: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
      OnCellDblClick = ViewReceiptCellDblClick
      DataController.DataSource = dsAucOrder
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Editing = False
      OptionsSelection.CellSelect = False
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object ViewReceiptDBColumn4: TcxGridDBColumn
        Caption = #1053#1086#1084#1077#1088
        DataBinding.FieldName = #1085#1086#1084#1077#1088
        Width = 74
      end
      object ViewReceipt_2: TcxGridDBColumn
        Caption = #1044#1072#1090#1072'/'#1042#1088#1077#1084#1103' '#1079#1072#1082#1072#1079#1072
        DataBinding.FieldName = #1076#1072#1090#1072'_'#1079#1072#1082#1072#1079#1072
        Width = 112
      end
      object ViewReceiptDBColumn: TcxGridDBColumn
        Caption = #1052#1072#1088#1082#1080#1088#1086#1074#1082#1072
        DataBinding.FieldName = #1084#1072#1088#1082#1080#1088#1086#1074#1082#1072
        Width = 130
      end
      object ViewReceiptDBColumn2: TcxGridDBColumn
        Caption = #1050#1083#1080#1077#1085#1090
        DataBinding.FieldName = #1082#1083#1080#1077#1085#1090
        Width = 172
      end
      object ViewReceipt_5: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1074#1099#1093#1086#1076#1072
        DataBinding.FieldName = #1076#1072#1090#1072'_'#1074#1099#1093#1086#1076#1072
        Width = 90
      end
      object columnCountry: TcxGridDBColumn
        Caption = 'C'#1090#1088#1072#1085#1072
        DataBinding.FieldName = #1089#1090#1088#1072#1085#1072
        Width = 140
      end
      object ViewReceipt_1: TcxGridDBColumn
        Caption = #1056#1077#1096#1077#1085#1080#1077' '#1084#1077#1085#1077#1076#1078#1077#1088#1072
        DataBinding.FieldName = #1089#1090#1072#1090#1091#1089'_'#1084#1077#1085#1077#1076#1078#1077#1088
        Width = 147
      end
      object ViewReceipt_: TcxGridDBColumn
        Caption = #1057#1090#1072#1090#1091#1089
        DataBinding.FieldName = #1089#1090#1072#1090#1091#1089'_'#1082#1083#1080#1077#1085#1090
        Width = 87
      end
      object ViewReceiptDBColumn3: TcxGridDBColumn
        Caption = #1047#1072#1082#1088#1099#1090
        DataBinding.FieldName = #1079#1072#1082#1088#1099#1090
        Width = 50
      end
      object ViewReceiptDBColumn1: TcxGridDBColumn
        Caption = #1052#1077#1085#1077#1076#1078#1077#1088
        DataBinding.FieldName = #1084#1077#1085#1077#1076#1078#1077#1088
        Width = 120
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
  object QueryAucOrder: TUniQuery
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
      '  m.name as '#1084#1072#1088#1082#1080#1088#1086#1074#1082#1072','
      '  u.name as '#1084#1077#1085#1077#1076#1078#1077#1088','
      '  cl.name as '#1082#1083#1080#1077#1085#1090','
      '  stk.name as '#1089#1090#1072#1090#1091#1089'_'#1082#1083#1080#1077#1085#1090','
      '    stm.name as '#1089#1090#1072#1090#1091#1089'_'#1084#1077#1085#1077#1076#1078#1077#1088','
      '  ob.id,'
      '  ob."'#1076#1072#1090#1072'_'#1079#1072#1082#1072#1079#1072'",'
      '  ob."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'",'
      '  ob."'#1082#1086#1076'_'#1082#1083#1080#1077#1085#1090#1072'",'
      '  ob."'#1076#1072#1090#1072'_'#1074#1099#1093#1086#1076#1072'",'
      '  ob."'#1082#1086#1076'_'#1089#1090#1088#1072#1085#1099'",'
      '  ob."'#1089#1090#1072#1090#1091#1089'_'#1084#1077#1085#1077#1076#1078#1077#1088'",'
      '  ob."'#1089#1090#1072#1090#1091#1089'_'#1082#1083#1080#1077#1085#1090'",'
      '  ob."'#1079#1072#1082#1088#1099#1090'",'
      '  ob."'#1082#1086#1076'_'#1084#1077#1085#1077#1076#1078#1077#1088#1072'",'
      '  ob."'#1085#1086#1084#1077#1088'",'
      '  c.name as '#1089#1090#1088#1072#1085#1072
      'FROM'
      '  "'#1072#1091#1082#1094#1080#1086#1085'"."'#1047#1072#1082#1072#1079#1058#1077#1083#1086'" ob'
      
        '  INNER JOIN "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"."'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'" m ON (ob."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"' +
        ' = m.id)'
      
        '  LEFT JOIN "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'" u ON (ob."'#1082#1086#1076'_'#1084#1077#1085#1077#1076#1078#1077#1088 +
        #1072'" = u.id)'
      
        '  INNER JOIN "'#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099'"."'#1082#1083#1080#1077#1085#1090#1099'" cl ON (m."'#1082#1086#1076'_'#1082#1083#1080#1077#1085#1090#1072'" = cl' +
        '.id)'
      
        '  INNER JOIN "'#1072#1091#1082#1094#1080#1086#1085'"."'#1057#1090#1072#1090#1091#1089#1050#1083#1080#1077#1085#1090'" stk ON (stk.id=ob."'#1089#1090#1072#1090#1091#1089'_' +
        #1082#1083#1080#1077#1085#1090'")'
      
        '  INNER JOIN "'#1072#1091#1082#1094#1080#1086#1085'"."'#1057#1090#1072#1090#1091#1089#1052#1077#1085#1077#1076#1078#1077#1088'" stm ON (stm.id=ob."'#1089#1090#1072#1090#1091 +
        #1089'_'#1084#1077#1085#1077#1076#1078#1077#1088'")'
      'INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1090#1088#1072#1085#1099'" c ON (c.id=ob."'#1082#1086#1076'_'#1089#1090#1088#1072#1085#1099'")')
    BeforeScroll = QueryAucOrderBeforeScroll
    Left = 414
    Top = 167
  end
  object dsAucOrder: TDataSource
    DataSet = QueryAucOrder
    Left = 483
    Top = 272
  end
end
