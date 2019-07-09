object FrameNewReceipt: TFrameNewReceipt
  Left = 0
  Top = 0
  Width = 1121
  Height = 483
  TabOrder = 0
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 1121
    Height = 32
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1121
    ExplicitHeight = 32
    inherited barProduct: TdxBarManager
      DockControlHeights = (
        0
        0
        34
        0)
    end
  end
  object GridStatWork: TcxGrid
    Left = 0
    Top = 32
    Width = 1121
    Height = 451
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    ExplicitLeft = -46
    ExplicitTop = -3
    ExplicitWidth = 699
    ExplicitHeight = 486
    object ViewReceipt: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
      DataController.DataSource = dsNewReceipt
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
      OptionsView.HeaderAutoHeight = True
      object ViewReceiptuni_name: TcxGridDBColumn
        Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
        DataBinding.FieldName = 'uni_name'
        Width = 179
      end
      object ViewReceiptm_uni_name: TcxGridDBColumn
        Caption = #1052#1072#1088#1082#1080#1088#1086#1074#1082#1072
        DataBinding.FieldName = 'm_uni_name'
        Width = 155
      end
      object ColumnNum: TcxGridDBColumn
        Caption = #1053#1086#1084#1077#1088' '#1082#1086#1088#1086#1073#1082#1080
        DataBinding.FieldName = #1085#1086#1084#1077#1088'_'#1082#1086#1088#1086#1073#1082#1080
        HeaderAlignmentHorz = taCenter
        Width = 118
      end
      object ViewReceiptDBColumn: TcxGridDBColumn
        Caption = #1050#1086#1083'-'#1074#1086' '#1082#1086#1088#1086#1073#1086#1082
        DataBinding.FieldName = #1082#1086#1088#1086#1073#1086#1082
        HeaderAlignmentHorz = taCenter
        Width = 104
      end
      object ViewReceipts_uni_name: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 's_uni_name'
        Width = 164
      end
      object ViewReceiptDBColumn1: TcxGridDBColumn
        Caption = #1044#1083#1080#1085#1072
        DataBinding.FieldName = #1076#1083#1080#1085#1072
        HeaderAlignmentHorz = taCenter
        Width = 62
      end
      object ViewReceipt__: TcxGridDBColumn
        Caption = #1050#1086#1083'-'#1074#1086' '#1074' '#1082#1086#1088#1086#1073#1082#1077
        DataBinding.FieldName = #1082#1086#1083'_'#1074'_'#1082#1086#1088#1086#1073#1082#1077
        HeaderAlignmentHorz = taCenter
        Width = 76
      end
      object ViewReceiptDBColumn4: TcxGridDBColumn
        Caption = #1054#1073#1097#1077#1077' '#1082#1086#1083'-'#1074#1086
        DataBinding.FieldName = #1080#1090#1086#1075
        HeaderAlignmentHorz = taCenter
        Width = 71
      end
      object ViewReceiptDBColumn2: TcxGridDBColumn
        Caption = #1062#1077#1085#1072
        DataBinding.FieldName = #1094#1077#1085#1072
        HeaderAlignmentHorz = taCenter
        Width = 56
      end
      object ViewReceiptDBColumn3: TcxGridDBColumn
        Caption = #1050#1088#1072#1090#1085#1086#1089#1090#1100
        DataBinding.FieldName = #1082#1088#1072#1090#1085#1086#1089#1090#1100
        HeaderAlignmentHorz = taCenter
        Width = 73
      end
      object ViewReceipt_5: TcxGridDBColumn
        Caption = #1062#1077#1083#1072#1103' '#1082#1086#1088#1086#1073#1082#1072
        DataBinding.FieldName = #1094#1077#1083#1072#1103'_'#1082#1086#1088#1086#1073#1082#1072
        HeaderAlignmentHorz = taCenter
        Width = 76
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
  object QueryNewReceipt: TUniQuery
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
      '  pl.uni_name uni_name,'
      '  p."'#1082#1086#1076'_'#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072'",'
      '  m.uni_name m_uni_name,'
      '  m.name m_name,'
      '  m.reg_name m_reg_name ,'
      '  pl.reg_name  pl_reg_name,'
      '  pl.name pl_name,'
      '  p.id,'
      '  p."'#1082#1086#1076'_'#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103'",'
      '  p."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'",'
      '  p."'#1085#1086#1084#1077#1088'_'#1082#1086#1088#1086#1073#1082#1080'",'
      '  p."'#1082#1086#1088#1086#1073#1086#1082'",'
      '  p."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'",'
      '  p."'#1076#1083#1080#1085#1072'",'
      '  p."'#1082#1086#1083'_'#1074'_'#1082#1086#1088#1086#1073#1082#1077'",'
      '  p."'#1094#1077#1085#1072'",'
      '  p."'#1082#1088#1072#1090#1085#1086#1089#1090#1100'",'
      '  p."'#1094#1077#1083#1072#1103'_'#1082#1086#1088#1086#1073#1082#1072'",'
      '  s.name s_name,'
      '  s.uni_name s_uni_name,'
      '  s.reg_name  s_reg_name,'
      '  p."'#1082#1086#1088#1086#1073#1086#1082'"*p."'#1082#1086#1083'_'#1074'_'#1082#1086#1088#1086#1073#1082#1077'" '#1080#1090#1086#1075
      'FROM'
      '  "'#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103'"."'#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1077'_'#1076#1077#1090#1072#1083#1100'" p'
      
        '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pl ON (p."'#1082#1086#1076'_'#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072'" =' +
        ' pl.id)'
      
        '  INNER JOIN "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"."'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'" m ON (p."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'" ' +
        '= m.id)'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090#1072'" s ON (p."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'" = s.id)'
      '  order by '#1085#1086#1084#1077#1088'_'#1082#1086#1088#1086#1073#1082#1080)
    Left = 480
    Top = 208
  end
  object dsNewReceipt: TDataSource
    DataSet = QueryNewReceipt
    Left = 480
    Top = 272
  end
end
