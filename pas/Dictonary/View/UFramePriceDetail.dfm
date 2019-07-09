object FramePriceDetail: TFramePriceDetail
  Left = 0
  Top = 0
  Width = 1011
  Height = 538
  TabOrder = 0
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 1011
    Height = 33
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1011
    ExplicitHeight = 33
    inherited barProduct: TdxBarManager
      DockControlHeights = (
        0
        0
        69
        0)
      inherited dxbrBardxbrmngr1Bar1: TdxBar
        ItemLinks = <
          item
            Visible = True
            ItemName = 'btnSel'
          end
          item
            Visible = True
            ItemName = 'btnLoadPrice'
          end
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
            Visible = True
            ItemName = 'btnRest'
          end
          item
            BeginGroup = True
            Visible = True
            ItemName = 'btnRefresh'
          end
          item
            BeginGroup = True
            Visible = True
            ItemName = 'btnFilter'
          end
          item
            BeginGroup = True
            Visible = True
            ItemName = 'btnPrint'
          end
          item
            Visible = True
            ItemName = 'btnRazdel'
          end
          item
            Visible = True
            ItemName = 'btnExport'
          end
          item
            Visible = True
            ItemName = 'btnAWB'
          end
          item
            ViewLayout = ivlGlyphControlCaption
            Visible = True
            ItemName = 'btnArch'
          end>
      end
      inherited btnAdd: TdxBarLargeButton
        Visible = ivNever
      end
      inherited btnDel: TdxBarLargeButton
        OnClick = btnDelClick
      end
      inherited btnRefresh: TdxBarLargeButton
        OnClick = btnRefreshClick
      end
      inherited btnLoadPrice: TdxBarLargeButton
        OnClick = btnLoadPriceClick
      end
    end
  end
  object GridPedidoALL: TcxGrid
    Left = 0
    Top = 64
    Width = 1011
    Height = 474
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object ViewPedidoALL: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Position = fpTop
      DataController.DataSource = dsPriceDetail
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
        end
        item
          Format = ',0 '#1082#1075#39'.'#39';'
          Kind = skSum
        end
        item
          Format = '$ ,0.00;$ -,0.00'
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Kind = skSum
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.ApplyChanges = fracImmediately
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Editing = False
      OptionsSelection.CellSelect = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.ShowColumnFilterButtons = sfbAlways
      object ColumnSort: TcxGridDBColumn
        DataBinding.FieldName = #1057#1086#1088#1090
        Width = 249
      end
      object ColumnDlina: TcxGridDBColumn
        Caption = #1044#1083#1080#1085#1072
        DataBinding.FieldName = #1076#1083#1080#1085#1072
        Width = 118
      end
      object ColumnPrice: TcxGridDBColumn
        Caption = #1062#1077#1085#1072
        DataBinding.FieldName = #1094#1077#1085#1072
        Width = 139
      end
    end
    object LevelOrg: TcxGridLevel
      GridView = ViewPedidoALL
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 33
    Align = alTop
    Ctl3D = True
    PanelStyle.Active = True
    ParentCtl3D = False
    Style.LookAndFeel.Kind = lfOffice11
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2010Blue'
    Style.Shadow = False
    StyleDisabled.LookAndFeel.Kind = lfOffice11
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2010Blue'
    StyleFocused.LookAndFeel.Kind = lfOffice11
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2010Blue'
    StyleHot.LookAndFeel.Kind = lfOffice11
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2010Blue'
    TabOrder = 2
    Height = 31
    Width = 1011
    object edtCountry: TcxLookupComboBox
      Left = 190
      Top = 6
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsCountry
      Properties.OnCloseUp = edtCountryPropertiesCloseUp
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 0
      Width = 143
    end
    object edtType: TcxLookupComboBox
      Left = 361
      Top = 6
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsType
      Properties.OnCloseUp = edtTypePropertiesCloseUp
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 1
      Width = 179
    end
    object edtPlant: TcxLookupComboBox
      Left = 607
      Top = 6
      Properties.DropDownRows = 40
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsPlant
      Properties.OnCloseUp = edtPlantPropertiesCloseUp
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 2
      OnKeyDown = edtPlantKeyDown
      OnMouseDown = edtPlantMouseDown
      Width = 219
    end
    object cxLabel1: TcxLabel
      Left = 3
      Top = 8
      Caption = #1044#1072#1090#1072':'
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 144
      Top = 8
      Caption = #1057#1090#1088#1072#1085#1072':'
      Transparent = True
    end
    object edtDate: TcxDateEdit
      Left = 38
      Top = 6
      Properties.DateButtons = [btnClear, btnToday]
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      Style.ButtonStyle = btsOffice11
      Style.ButtonTransparency = ebtAlways
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 5
      Width = 105
    end
    object cxLabel3: TcxLabel
      Left = 541
      Top = 8
      Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082':'
      Transparent = True
    end
    object cxLabel4: TcxLabel
      Left = 334
      Top = 8
      Caption = #1058#1080#1087':'
      Transparent = True
    end
  end
  object QueryPriceDetail: TUniQuery
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
      'SELECT '
      '  pd.id,'
      '  pd."'#1082#1086#1076'_'#1087#1088#1072#1081#1089#1072'",'
      '  pd."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'",'
      '  pd."'#1094#1077#1085#1072'",'
      '  pd."'#1076#1083#1080#1085#1072'",'
      '  pd."'#1082#1086#1076'_'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103'",'
      '  s.uni_name '#1057#1086#1088#1090
      'FROM'
      '  "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1087#1088#1072#1081#1089'_'#1076#1077#1090#1072#1083#1100'" pd'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090#1072'" s ON (pd."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'" = s.id)')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 479
    Top = 208
  end
  object dsPriceDetail: TDataSource
    DataSet = QueryPriceDetail
    Left = 480
    Top = 272
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
    Left = 84
    Top = 186
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
      'SELECT'
      ' zd.id, '
      ' zd."'#1082#1086#1076'_'#1079#1072#1082#1091#1087#1082#1080'",'
      ' zd."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'",'
      ' zd."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'",'
      ' zd."'#1094#1077#1085#1072'",'
      ' zd.fb,'
      ' zd."'#1076#1083#1080#1085#1072'",'
      ' zd."'#1089#1090#1077#1073#1083#1077#1081'",'
      ' zd."'#1082#1086#1076'_'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103'",'
      ' zd.no_compras,'
      ' zd."'#1082#1086#1076'_'#1076#1077#1090#1072#1083#1100'_'#1079#1072#1082#1072#1079'",'
      ' zd."'#1082#1086#1076'_'#1079#1072#1082#1072#1079#1072'",'
      ' s.uni_name '#1089#1086#1088#1090#1072','
      ''
      ' pl.name,'
      '  z."'#1076#1072#1090#1072'_'#1079#1072#1082#1091#1087#1082#1080'",'
      '  t.uni_name '#1090#1080#1087','
      '  str.uni_name '#1089#1090#1088#1072#1085#1072
      ' FROM'
      ' "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1091#1087#1082#1080'_'#1076#1077#1090#1072#1083#1100'" zd'
      ' INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090#1072'" s ON (zd."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'" = s.id)'
      
        ' INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pl ON (zd."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" = ' +
        'pl.id)'
      ' INNER JOIN "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1091#1087#1082#1080'" z ON (zd."'#1082#1086#1076'_'#1079#1072#1082#1091#1087#1082#1080'" = z.id)'
      ' INNER join "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1090#1080#1087#1099'" t on (t.id=s."'#1082#1086#1076'_'#1090#1080#1087#1072'")'
      ' inner JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1090#1088#1072#1085#1099'" str on (str.id=pl."'#1082#1086#1076'_'#1089#1090#1088#1072#1085#1099'")'
      'where 1=1'
      ' and (zd.id, zd.'#1082#1086#1076'_'#1089#1086#1088#1090#1072', zd."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'", '#1076#1083#1080#1085#1072') in ('
      ' select max(id),'
      ' '#1082#1086#1076'_'#1089#1086#1088#1090#1072','
      ' '#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080', '#1076#1083#1080#1085#1072
      ' from "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1091#1087#1082#1080'_'#1076#1077#1090#1072#1083#1100'"'
      ' group by '#1082#1086#1076'_'#1089#1086#1088#1090#1072','#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080', '#1076#1083#1080#1085#1072
      ' )')
    Left = 220
    Top = 194
  end
  object QueryPlant: TUniQuery
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
      'select * from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'"')
    MasterSource = dsCountry
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1089#1090#1088#1072#1085#1099
    Left = 300
    Top = 202
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
  end
  object dsPlant: TDataSource
    DataSet = QueryPlant
    Left = 302
    Top = 263
  end
  object dsType: TDataSource
    DataSet = QueryType
    Left = 222
    Top = 255
  end
  object dsCountry: TDataSource
    DataSet = QueryCountry
    Left = 86
    Top = 247
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
    Options.AutoPrepare = True
    Left = 391
    Top = 345
  end
  object Query2: TUniQuery
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
    Left = 495
    Top = 356
  end
end
