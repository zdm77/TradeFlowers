object FrameGroupOrderDetail: TFrameGroupOrderDetail
  Left = 0
  Top = 0
  Width = 808
  Height = 547
  TabOrder = 0
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 808
    Height = 33
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 808
    ExplicitHeight = 33
    inherited barProduct: TdxBarManager
      DockControlHeights = (
        0
        0
        69
        0)
      inherited btnEdit: TdxBarLargeButton
        OnClick = btnEditClick
      end
    end
  end
  object GridOrder: TcxGrid
    Left = 0
    Top = 33
    Width = 808
    Height = 514
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object ViewOrder: TcxGridDBTableView
      OnDblClick = ViewOrderDblClick
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
      DataController.DataSource = dsGroupOrder
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Editing = False
      OptionsSelection.CellSelect = False
      object ViewOrderm_name: TcxGridDBColumn
        Caption = #1052#1072#1088#1082#1080#1088#1086#1074#1082#1072
        DataBinding.FieldName = 'm_name'
        Width = 50
      end
      object ViewOrdersss: TcxGridDBColumn
        Caption = #1055#1086#1079#1080#1094#1080#1103
        DataBinding.FieldName = '?column?'
        Width = 70
      end
      object ColumnViewOrderColumn1: TcxGridDBColumn
        Caption = #1050#1086#1076' '#1079#1072#1082#1072#1079#1072
        DataBinding.FieldName = 'id'
      end
      object ViewOrder_5: TcxGridDBColumn
        DataBinding.FieldName = #1076#1072#1090#1072'_'#1080#1089#1087#1086#1083#1085#1077#1085#1080#1103
        Width = 89
      end
      object ViewOrderu_name: TcxGridDBColumn
        DataBinding.FieldName = 'u_name'
        Width = 104
      end
      object ViewOrderlogin: TcxGridDBColumn
        DataBinding.FieldName = 'login'
        Width = 50
      end
      object ViewOrderDBColumn: TcxGridDBColumn
        DataBinding.FieldName = #1085#1086#1084#1077#1088
        Width = 50
      end
      object ViewOrderDBColumn1: TcxGridDBColumn
        DataBinding.FieldName = #1089#1090#1077#1085#1076#1080#1085#1075
        Width = 50
      end
      object ViewOrderDBColumn2: TcxGridDBColumn
        DataBinding.FieldName = #1089#1090#1077#1073#1083#1077#1081
        Width = 50
      end
      object ViewOrderpt_name: TcxGridDBColumn
        DataBinding.FieldName = 'pt_name'
        Width = 50
      end
      object ViewOrderst_name: TcxGridDBColumn
        DataBinding.FieldName = 'st_name'
        Width = 50
      end
      object ViewOrderp2_name: TcxGridDBColumn
        DataBinding.FieldName = 'p2_name'
        Width = 113
      end
      object ViewOrders2_name: TcxGridDBColumn
        DataBinding.FieldName = 's2_name'
        Width = 80
      end
    end
    object GridLevelOrder: TcxGridLevel
      GridView = ViewOrder
    end
  end
  object QueryGroupOrder: TUniQuery
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
      '  '
      '  doc."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'",'
      '  doc."'#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072'",'
      '  doc."'#1082#1086#1076'_'#1082#1072#1088#1075#1086'",'
      '  doc."'#1082#1086#1076'_'#1090#1088#1072#1082#1072'",'
      '  doc."'#1082#1086#1076'_'#1087#1088#1080#1082#1091#1083#1080#1085#1075#1072'",'
      '  doc."'#1076#1072#1090#1072'_'#1080#1089#1087#1086#1083#1085#1077#1085#1080#1103'",'
      '  doc."'#1082#1086#1076'_'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103'",'
      '  u.name AS u_name,'
      '  u.login,'
      '  doc."'#1085#1086#1084#1077#1088'",'
      '  m.uni_name  m_name,'
      '  dt.id,'
      '  dt."'#1082#1086#1076'_'#1079#1072#1082#1072#1079#1072'",'
      '  dt."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'",'
      '  dt."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'",'
      
        #39#1055#1083#1072#1085#1090#1072#1094#1080#1103':'#39'||pt.name||'#39' '#1057#1086#1088#1090':'#39'||st.name||'#39' FB:'#39'||dt."'#1082#1086#1083'_'#1074#1086'_'#1092#1091#1083 +
        #1073#1086#1082#1089#1086#1074'"||'#39' '#1044#1083#1080#1085#1072':'#39'||dt."'#1076#1083#1080#1085#1072'"||'#39' '#1062#1077#1085#1072':'#39'||dt."'#1094#1077#1085#1072'",'
      ''
      ' '
      '  dt."'#1089#1090#1077#1085#1076#1080#1085#1075'",'
      '  dt."'#1082#1086#1076'_'#1089#1090#1077#1085#1076#1080#1085#1075#1072'",'
      '  '
      '  dt."'#1089#1090#1077#1073#1083#1077#1081'",'
      ' '
      '  t.uni_name AS t_name,'
      '  k.uni_name AS k_name,'
      '  pt.uni_name AS pt_name,'
      '  st.uni_name st_name, dt.'#1079#1072#1087#1088#1077#1090'_'#1087#1086#1082#1091#1087#1082#1080','
      
        '  pt2.name p2_name, pt2.uni_name p2_uni_name, pt2.reg_name p2_re' +
        'g_name,'
      
        '  st2.name s2_name, st2.uni_name s2_uni_name, st2.reg_name s2_re' +
        'g_name '
      'FROM'
      '  "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1072#1079#1099'" doc'
      
        '  INNER JOIN "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'" u ON (doc."'#1082#1086#1076'_'#1087#1086#1083#1100#1079#1086 +
        #1074#1072#1090#1077#1083#1103'" = u.id)'
      
        '  LEFT OUTER JOIN "'#1087#1088#1080#1082#1091#1083#1080#1085#1075'"."'#1072#1075#1077#1085#1089#1090#1074#1072'" p ON (doc."'#1082#1086#1076'_'#1087#1088#1080#1082#1091#1083#1080#1085 +
        #1075#1072'" = p.id)'
      
        '  LEFT OUTER JOIN "'#1082#1072#1088#1075#1086'"."'#1072#1075#1077#1085#1089#1090#1074#1072'" k ON (doc."'#1082#1086#1076'_'#1082#1072#1088#1075#1086'" = k.i' +
        'd)'
      '  LEFT OUTER JOIN "'#1090#1088#1072#1082#1080'"."'#1090#1088#1072#1082#1080'" t ON (doc."'#1082#1086#1076'_'#1090#1088#1072#1082#1072'" = t.id)'
      
        '  INNER JOIN "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"."'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'" m ON (doc."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080 +
        '" = m.id)'
      
        '  INNER JOIN "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1072#1079#1099'_'#1076#1077#1090#1072#1083#1100'" dt ON (doc.id = dt."'#1082#1086#1076 +
        '_'#1079#1072#1082#1072#1079#1072'")'
      
        '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pt ON (dt."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" =' +
        ' pt.id)'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090#1072'" st ON (dt."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'" = st.id)'
      
        '  left join "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1091#1087#1082#1080'" z on (z."'#1082#1086#1076'_'#1076#1077#1090#1072#1083#1080'_'#1079#1072#1082#1072#1079#1072'"=dt' +
        '.id)'
      
        ' left join  "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pt2 ON (z."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" = ' +
        'pt2.id)'
      ' left join  "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090#1072'" st2 ON (z."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'" = st2.id)'
      ''
      'order by m_name,st_name')
    Left = 144
    Top = 296
  end
  object dsGroupOrder: TDataSource
    DataSet = QueryGroupOrder
    Left = 232
    Top = 300
  end
end
