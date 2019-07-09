object FrameOrder: TFrameOrder
  Left = 0
  Top = 0
  Width = 724
  Height = 485
  TabOrder = 0
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 724
    Height = 32
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 724
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
      inherited btnPrint: TdxBarLargeButton
        Visible = ivAlways
        DropDownMenu = FrameTopPanel1.pmЗаказ
      end
      inherited btnЗаказ: TdxBarButton
        OnClick = btnЗаказClick
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
  object GridOrder: TcxGrid
    Left = 0
    Top = 69
    Width = 724
    Height = 416
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object ViewOrder: TcxGridDBTableView
      OnDblClick = ViewOrderDblClick
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
      DataController.DataSource = dsOrder
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
      object ColumnN: TcxGridDBColumn
        Caption = #1053#1086#1084#1077#1088
        DataBinding.FieldName = #1085#1086#1084#1077#1088
      end
      object ColumnViewOrder_11: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1074#1099#1083#1077#1090#1072
        DataBinding.FieldName = #1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072
        Width = 86
      end
      object ColumnViewOrder_5: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1080#1089#1087#1086#1083#1085#1077#1085#1080#1103
        DataBinding.FieldName = #1076#1072#1090#1072'_'#1080#1089#1087#1086#1083#1085#1077#1085#1080#1103
        Width = 103
      end
      object ColumnViewOrderm_name: TcxGridDBColumn
        Caption = #1052#1072#1088#1082#1080#1088#1086#1074#1082#1072
        DataBinding.FieldName = 'm_name'
        Width = 200
      end
      object ColumnViewOrderu_name: TcxGridDBColumn
        Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
        DataBinding.FieldName = 'u_name'
        Width = 200
      end
      object ColumnViewOrderlogin: TcxGridDBColumn
        DataBinding.FieldName = 'login'
      end
    end
    object GridLevelOrder: TcxGridLevel
      GridView = ViewOrder
    end
  end
  object Group1: TcxGroupBox
    Left = 0
    Top = 32
    Align = alTop
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 2
    Height = 37
    Width = 724
    object edtOt: TDateTimePicker
      Left = 3
      Top = 6
      Width = 102
      Height = 21
      Date = 43655.000000000000000000
      Time = 0.416652106483525100
      TabOrder = 0
    end
    object edtDo: TDateTimePicker
      Left = 111
      Top = 6
      Width = 102
      Height = 21
      Date = 43655.000000000000000000
      Time = 0.416652106483525100
      TabOrder = 1
    end
  end
  object QueryOrder: TUniQuery
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
      'doc.'#1085#1086#1084#1077#1088','
      '  doc.id,'
      '  doc."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'",'
      '  doc."'#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072'",'
      '  doc."'#1082#1086#1076'_'#1082#1072#1088#1075#1086'",'
      '  doc."'#1082#1086#1076'_'#1090#1088#1072#1082#1072'",'
      '  doc."'#1082#1086#1076'_'#1087#1088#1080#1082#1091#1083#1080#1085#1075#1072'",'
      '  doc."'#1076#1072#1090#1072'_'#1080#1089#1087#1086#1083#1085#1077#1085#1080#1103'",'
      '  doc."'#1082#1086#1076'_'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103'",'
      '  u.name u_name,'
      '  u.login,'
      '  m.name m_name'
      ' '
      'FROM'
      '  "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1072#1079#1099'" doc'
      
        '  INNER JOIN "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"."'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'" m ON (doc."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080 +
        '" = m.id)'
      
        '  INNER JOIN "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'" u ON (doc."'#1082#1086#1076'_'#1087#1086#1083#1100#1079#1086 +
        #1074#1072#1090#1077#1083#1103'" = u.id)')
    Left = 480
    Top = 208
  end
  object dsOrder: TDataSource
    DataSet = QueryOrder
    Left = 480
    Top = 272
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
    SQL.Strings = (
      'SELECT '
      'z."'#1085#1086#1084#1077#1088'",'
      'zd."'#1082#1086#1083'_'#1074#1086'_'#1092#1091#1083#1073#1086#1082#1089#1086#1074'" as fb,'
      'f.uni_name f_name,'
      '  z."'#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072'",'
      '  t.uni_name t_name,'
      '  k.uni_name k_name,'
      '  p.name p_name,'
      '  m.uni_name m_name,'
      '  cl.name cl_name,'
      '  cl."'#1102#1088'_'#1072#1076#1088#1077#1089'",'
      '  cl."'#1102#1088'_'#1080#1084#1103'",'
      '  cl."'#1090#1077#1083#1077#1092#1086#1085'",'
      'cl."'#1087#1086#1095#1090#1072'",'
      'cl."'#1092#1072#1082#1089'",'
      'pl.uni_name pl_name,'
      'st.uni_name st_name,'
      'zd."'#1076#1083#1080#1085#1072'",'
      'zd."'#1094#1077#1085#1072'",'
      'zd."'#1089#1090#1077#1073#1083#1077#1081'"'
      ''
      'FROM'
      '  "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1072#1079#1099'" z'
      '  INNER JOIN "'#1082#1072#1088#1075#1086'"."'#1072#1075#1077#1085#1089#1090#1074#1072'" k ON (z."'#1082#1086#1076'_'#1082#1072#1088#1075#1086'" = k.id)'
      '  LEFT OUTER JOIN "'#1090#1088#1072#1082#1080'"."'#1090#1088#1072#1082#1080'" t ON (z."'#1082#1086#1076'_'#1090#1088#1072#1082#1072'" = t.id)'
      
        '  LEFT OUTER JOIN "'#1087#1088#1080#1082#1091#1083#1080#1085#1075'"."'#1072#1075#1077#1085#1089#1090#1074#1072'" p ON (z."'#1082#1086#1076'_'#1087#1088#1080#1082#1091#1083#1080#1085#1075#1072 +
        '" = p.id)'
      
        '  INNER JOIN "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"."'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'" m ON (z."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'" ' +
        '= m.id)'
      
        '  inner join "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1072#1079#1099'_'#1076#1077#1090#1072#1083#1100'" zd on (zd."'#1082#1086#1076'_'#1079#1072#1082#1072#1079#1072'"=' +
        'z.id)'
      '  inner join "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1092#1080#1090#1086'" f on (f.id=z."'#1082#1086#1076'_'#1092#1080#1090#1086'")'
      
        '  inner join "'#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099'"."'#1082#1083#1080#1077#1085#1090#1099'" cl on (m."'#1082#1086#1076'_'#1082#1083#1080#1077#1085#1090#1072'"=cl.i' +
        'd)'
      
        '  inner join "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pl on (pl.id=zd."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072 +
        #1094#1080#1080'")'
      '  inner join "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090#1072'" st on (st.id=zd."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'")'
      '  order by m_name, pl_name, st_name')
    Left = 256
    Top = 208
  end
end
