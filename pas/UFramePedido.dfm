object FramePedido: TFramePedido
  Left = 0
  Top = 0
  Width = 1061
  Height = 538
  TabOrder = 0
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 1061
    Height = 32
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1061
    ExplicitHeight = 32
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
            ItemName = 'btnEdit'
          end
          item
            Visible = True
            ItemName = 'btnRefresh'
          end
          item
            BeginGroup = True
            Visible = True
            ItemName = 'btnFilter'
          end
          item
            Visible = True
            ItemName = 'btnPrint'
          end
          item
            Visible = True
            ItemName = 'btnAWB'
          end>
      end
      inherited btnAdd: TdxBarLargeButton
        Visible = ivNever
      end
      inherited btnEdit: TdxBarLargeButton
        OnClick = btnEditClick
      end
      inherited btnDel: TdxBarLargeButton
        Visible = ivNever
      end
      inherited btnRefresh: TdxBarLargeButton
        OnClick = btnRefreshClick
      end
      inherited btnPrint: TdxBarLargeButton
        Visible = ivAlways
        DropDownMenu = FrameTopPanel1.pmПедидо
      end
      inherited btnPrintLogistic: TdxBarButton
        OnClick = btnPrintLogisticClick
      end
      inherited btnЗакупка: TdxBarButton
        OnClick = btnЗакупкаClick
      end
      inherited btnAWB: TdxBarLargeButton
        Visible = ivAlways
        OnClick = btnAWBClick
      end
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
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 1
    Visible = False
    Height = 37
    Width = 1061
    object chkИтог: TcxCheckBox
      Left = 15
      Top = 6
      Caption = #1048#1090#1086#1075#1080' '#1075#1088#1091#1087#1087
      Properties.OnEditValueChanged = chkИтогPropertiesEditValueChanged
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 0
      Transparent = True
      Width = 90
    end
  end
  object GridOrder: TcxGrid
    Left = 0
    Top = 69
    Width = 1061
    Height = 469
    Align = alClient
    PopupMenu = pm1
    TabOrder = 2
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object ViewOrder: TcxGridDBBandedTableView
      OnDblClick = ViewOrderDblClick
      Navigator.Buttons.CustomButtons = <>
      FilterBox.CustomizeButtonAlignment = fbaLeft
      FilterBox.Position = fpTop
      OnCustomDrawCell = BandOrderCustomDrawCell
      DataController.DataSource = dsGroupOrder
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '0.00'
          Kind = skSum
          Position = spFooter
          Column = ViewOrderfb
        end
        item
          Format = '0'
          Kind = skSum
          Position = spFooter
          Column = ViewOrdercount_zakup
        end
        item
          Format = ',$ 0.00;-,$ 0.00'
          Kind = skSum
          Position = spFooter
          Column = ColumnItog
        end
        item
          Format = '0.00'
          Kind = skMin
          Position = spFooter
        end
        item
          Format = '0'
          Position = spFooter
          Column = ViewOrdercount_zakup
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0.00'
          Kind = skSum
          Column = ViewOrderfb
        end
        item
          Format = '0'
          Kind = skSum
          Column = ViewOrdercount_zakup
        end
        item
          Format = '$ 0.00;-,$ 0.00'
          Kind = skSum
          Column = ColumnItog
        end
        item
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.GroupRowHeight = 19
      OptionsView.GroupRowStyle = grsOffice11
      Styles.Group = cxstyl1
      OnCustomDrawGroupCell = ViewOrderCustomDrawGroupCell
      Bands = <
        item
          Caption = #1047#1072#1082#1072#1079
        end
        item
          Caption = #1047#1072#1082#1091#1087#1082#1072
        end>
      object ViewOrder_5: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072' '#1080#1089#1087#1086#1083#1085#1077#1085#1080#1103
        DataBinding.FieldName = #1076#1072#1090#1072'_'#1080#1089#1087#1086#1083#1085#1077#1085#1080#1103
        Width = 77
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object ViewOrderu_name: TcxGridDBBandedColumn
        Caption = #1052#1077#1085#1077#1076#1078#1077#1088
        DataBinding.FieldName = 'u_name'
        Width = 129
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object ViewOrdersss: TcxGridDBBandedColumn
        Caption = #1055#1083#1072#1085#1090#1072#1094#1080#1103
        DataBinding.FieldName = 'sss'
        Visible = False
        GroupIndex = 1
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object ViewOrderpt_name: TcxGridDBBandedColumn
        Caption = #1055#1083#1072#1085#1090#1072#1094#1080#1103
        DataBinding.FieldName = 'pt_name'
        Width = 87
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object ViewOrderst_name: TcxGridDBBandedColumn
        Caption = #1057#1086#1088#1090
        DataBinding.FieldName = 'st_name'
        Width = 58
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object ViewOrderDBBandedColumn1: TcxGridDBBandedColumn
        Caption = #1057#1090#1077#1085#1076'.'
        DataBinding.FieldName = #1089#1090#1077#1085#1076#1080#1085#1075
        Width = 44
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object ViewOrderm_name: TcxGridDBBandedColumn
        Caption = #1052#1072#1088#1082#1080#1088#1086#1074#1082#1072
        DataBinding.FieldName = 'm_name'
        Visible = False
        GroupIndex = 0
        Width = 75
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object ViewOrder_11: TcxGridDBBandedColumn
        DataBinding.FieldName = #1079#1072#1087#1088#1077#1090'_'#1087#1086#1082#1091#1087#1082#1080
        Visible = False
        Width = 40
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object ViewOrderp2_name: TcxGridDBBandedColumn
        Caption = #1055#1083#1072#1085#1090#1072#1094#1080#1103
        DataBinding.FieldName = 'p2_name'
        Width = 80
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object ViewOrders2_name: TcxGridDBBandedColumn
        Caption = #1057#1086#1088#1090
        DataBinding.FieldName = 's2_name'
        Width = 69
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object ViewOrderu1_name: TcxGridDBBandedColumn
        Caption = #1052#1077#1085#1077#1076#1078#1077#1088
        DataBinding.FieldName = 'u1_name'
        Width = 133
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object ViewOrderfb: TcxGridDBBandedColumn
        Caption = 'FB'
        DataBinding.FieldName = 'fb'
        Width = 45
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object ViewOrdercount_zakup: TcxGridDBBandedColumn
        Caption = #1057#1090#1077#1073#1083#1077#1081
        DataBinding.FieldName = 'count_zakup'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '0'
        Width = 55
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object ViewOrderdlina_zakup: TcxGridDBBandedColumn
        Caption = #1044#1083#1080#1085#1072
        DataBinding.FieldName = 'dlina_zakup'
        Width = 63
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object ViewOrderprice_zakup: TcxGridDBBandedColumn
        Caption = #1062#1077#1085#1072
        DataBinding.FieldName = 'price_zakup'
        Width = 58
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object ColumnItog: TcxGridDBBandedColumn
        Caption = #1057#1091#1084#1084#1072
        DataBinding.FieldName = 'itog'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',$ 0.00;-,$ 0.00'
        Position.BandIndex = 1
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object ColumnGoodPlant: TcxGridDBBandedColumn
        Caption = #1046#1077#1083#1072#1077#1084#1099#1077' '#1087#1083#1072#1085#1090#1072#1094#1080#1080
        DataBinding.FieldName = #1078#1077#1083#1072#1077#1084#1099#1077'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080
        Width = 200
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
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
      '  m.name  m_name,'
      '  dt.id dt_id,'
      '  dt."'#1082#1086#1076'_'#1079#1072#1082#1072#1079#1072'",'
      '  dt."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'",'
      '  dt."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'",'
      
        'pt.name||'#39'. '#1057#1086#1088#1090':'#39'||st.name||'#39'. FB:'#39'||dt."'#1082#1086#1083'_'#1074#1086'_'#1092#1091#1083#1073#1086#1082#1089#1086#1074'"||'#39'. ' +
        #1044#1083#1080#1085#1072':'#39'||dt."'#1076#1083#1080#1085#1072'"||'#39'. '#1062#1077#1085#1072':'#39'||dt."'#1094#1077#1085#1072'"||'#39'. '#1057#1090#1077#1073#1083#1077#1081':'#39'||dt."'#1089#1090#1077 +
        #1073#1083#1077#1081'" as sss,'
      'pt.name pt_name, st.name st_name,'
      ' '
      '  dt."'#1089#1090#1077#1085#1076#1080#1085#1075'",'
      '  dt."'#1082#1086#1076'_'#1089#1090#1077#1085#1076#1080#1085#1075#1072'",'
      '  '
      '  dt."'#1089#1090#1077#1073#1083#1077#1081'",'
      ' '
      '  t.uni_name AS t_name,'
      '  k.uni_name AS k_name,'
      '  pt.uni_name AS pt_uni_name,'
      '  st.uni_name st_uni_name, dt.'#1079#1072#1087#1088#1077#1090'_'#1087#1086#1082#1091#1087#1082#1080','
      
        '  pt2.name p2_name, pt2.uni_name p2_uni_name, pt2.reg_name p2_re' +
        'g_name,'
      
        '  st2.name s2_name, st2.uni_name s2_uni_name, st2.reg_name s2_re' +
        'g_name,'
      '  u1.name u1_name ,'
      
        'zt.fb, zt."'#1089#1090#1077#1073#1083#1077#1081'" count_zakup , zt."'#1076#1083#1080#1085#1072'" dlina_zakup, zt."'#1094#1077 +
        #1085#1072'" price_zakup'
      ''
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
      
        'left join "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1091#1087#1082#1080'_'#1076#1077#1090#1072#1083#1100'" zt on (zt."'#1082#1086#1076'_'#1079#1072#1082#1091#1087#1082#1080'"=z' +
        '.id)'
      
        ' left join  "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pt2 ON (zt."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" =' +
        ' pt2.id)'
      ' left join  "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090#1072'" st2 ON (zt."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'" = st2.id)'
      ''
      
        ' left JOIN "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'" u1 ON (z."'#1082#1086#1076'_'#1087#1086#1083#1100#1079#1086#1074#1072#1090 +
        #1077#1083#1103'" = u1.id)'
      ''
      'where  ID = :ID')
    Connection = DM1.db1
    SQL.Strings = (
      'SELECT doc.id as '#1082#1086#1076'_'#1079#1072#1082#1072#1079#1072',doc."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'",'
      '       doc."'#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072'",'
      '       doc."'#1082#1086#1076'_'#1082#1072#1088#1075#1086'",'
      '       doc."'#1082#1086#1076'_'#1090#1088#1072#1082#1072'",'
      '       doc."'#1082#1086#1076'_'#1087#1088#1080#1082#1091#1083#1080#1085#1075#1072'",'
      '       doc."'#1076#1072#1090#1072'_'#1080#1089#1087#1086#1083#1085#1077#1085#1080#1103'",'
      '       doc."'#1082#1086#1076'_'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103'", z.'#1076#1072#1090#1072'_'#1079#1072#1082#1091#1087#1082#1080','
      '     dt."'#1078#1077#1083#1072#1077#1084#1099#1077'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'", dt."'#1079#1072#1087#1088#1077#1090'_'#1087#1083#1072#1085#1090#1072#1094#1080#1081'",'
      '       u.name AS u_name,'
      '       u.login,'
      '       doc."'#1085#1086#1084#1077#1088'",'
      '       m.name m_name,'
      '       dt.id dt_id,'
      '       dt."'#1082#1086#1076'_'#1079#1072#1082#1072#1079#1072'",'
      '       dt."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'",'
      '       dt."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'",'
      
        '       pt.name || '#39'. '#1057#1086#1088#1090': '#39' || st.name || '#39'. FB: '#39' || dt."'#1082#1086#1083'_'#1074 +
        #1086'_'#1092#1091#1083#1073#1086#1082#1089#1086#1074'" ||'
      
        '        '#39'. '#1044#1083#1080#1085#1072': '#39' || dt."'#1076#1083#1080#1085#1072'" || '#39'. '#1062#1077#1085#1072': '#39' || dt."'#1094#1077#1085#1072'" || ' +
        #39'. '#1057#1090#1077#1073#1083#1077#1081': '#39' ||'
      '         dt."'#1089#1090#1077#1073#1083#1077#1081'"||'#39'. NO COMPRAS: '#39'|| dd1.fbb'
      '          as sss,'
      '       pt.name pt_name,'
      '       st.name st_name,'
      '       dt."'#1082#1086#1083'_'#1074#1086'_'#1092#1091#1083#1073#1086#1082#1089#1086#1074'",'
      '       dt."'#1089#1090#1077#1085#1076#1080#1085#1075'",'
      '       dt."'#1082#1086#1076'_'#1089#1090#1077#1085#1076#1080#1085#1075#1072'",'
      '       dt."'#1089#1090#1077#1073#1083#1077#1081'",'
      '       t.uni_name AS t_name,'
      '       k.uni_name AS k_name,'
      '       pt.uni_name AS pt_uni_name,'
      '       st.uni_name st_uni_name,'
      '       dt.'#1079#1072#1087#1088#1077#1090'_'#1087#1086#1082#1091#1087#1082#1080','
      '       pt2.name p2_name,'
      '       pt2.uni_name p2_uni_name,'
      '       pt2.reg_name p2_reg_name,'
      '       st2.name s2_name,'
      '       st2.uni_name s2_uni_name,'
      '       st2.reg_name s2_reg_name,'
      '       u1.name u1_name,'
      '       zt.fb,'
      '       zt."'#1089#1090#1077#1073#1083#1077#1081'" count_zakup,'
      '       zt."'#1076#1083#1080#1085#1072'" dlina_zakup,'
      '       zt."'#1094#1077#1085#1072'" price_zakup,'
      '       zt."'#1089#1090#1077#1073#1083#1077#1081'" * zt."'#1094#1077#1085#1072'" itog'
      '      ,dd1.fbb, zt.id zt_id'
      'FROM "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1072#1079#1099'" doc'
      
        '     INNER JOIN "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'" u ON (doc."'#1082#1086#1076'_'#1087#1086#1083 +
        #1100#1079#1086#1074#1072#1090#1077#1083#1103'" ='
      '      u.id)'
      
        '     LEFT OUTER JOIN "'#1087#1088#1080#1082#1091#1083#1080#1085#1075'"."'#1072#1075#1077#1085#1089#1090#1074#1072'" p ON (doc."'#1082#1086#1076'_'#1087#1088#1080#1082#1091 +
        #1083#1080#1085#1075#1072'" = p.id)'
      
        '     LEFT OUTER JOIN "'#1082#1072#1088#1075#1086'"."'#1072#1075#1077#1085#1089#1090#1074#1072'" k ON (doc."'#1082#1086#1076'_'#1082#1072#1088#1075#1086'" = ' +
        'k.id)'
      
        '     LEFT OUTER JOIN "'#1090#1088#1072#1082#1080'"."'#1090#1088#1072#1082#1080'" t ON (doc."'#1082#1086#1076'_'#1090#1088#1072#1082#1072'" = t.i' +
        'd)'
      
        '     INNER JOIN "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"."'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'" m ON (doc."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086 +
        #1074#1082#1080'" = m.id)'
      
        '     INNER JOIN "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1072#1079#1099'_'#1076#1077#1090#1072#1083#1100'" dt ON (doc.id = dt."' +
        #1082#1086#1076'_'#1079#1072#1082#1072#1079#1072'")'
      
        '     INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pt ON (dt."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080 +
        '" = pt.id)'
      
        '     INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090#1072'" st ON (dt."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'" = st.i' +
        'd)'
      
        '     left join "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1091#1087#1082#1080'" z on (z."'#1082#1086#1076'_'#1076#1077#1090#1072#1083#1080'_'#1079#1072#1082#1072#1079#1072'"' +
        ' = dt.id)'
      
        '     left join "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1091#1087#1082#1080'_'#1076#1077#1090#1072#1083#1100'" zt on (zt."'#1082#1086#1076'_'#1079#1072#1082#1091#1087 +
        #1082#1080'" = z.id)'
      
        '     left join "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pt2 ON (zt."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080 +
        '" = pt2.id)'
      
        '     left join "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090#1072'" st2 ON (zt."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'" = st2.' +
        'id)'
      
        '     left JOIN "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'" u1 ON (z."'#1082#1086#1076'_'#1087#1086#1083#1100#1079 +
        #1086#1074#1072#1090#1077#1083#1103'" = u1.id'
      '     )'
      '     left join '
      '     ('
      '       select id, '#1082#1086#1083'_'#1074#1086'_'#1092#1091#1083#1073#1086#1082#1089#1086#1074'-COALESCE(fb,0) fbb'
      '        '
      ' from ('
      '        SELECT z1."'#1082#1086#1083'_'#1074#1086'_'#1092#1091#1083#1073#1086#1082#1089#1086#1074'", z1.id'
      '        FROM "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1072#1079#1099'_'#1076#1077#1090#1072#1083#1100'" z1'
      '      ) d1'
      '      left join'
      '      ('
      '        SELECT sum(zd.fb) fb,'
      '               '#1082#1086#1076'_'#1076#1077#1090#1072#1083#1080'_'#1079#1072#1082#1072#1079#1072
      '        FROM "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1091#1087#1082#1080'_'#1076#1077#1090#1072#1083#1100'" zd'
      
        '             INNER JOIN "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1091#1087#1082#1080'" z ON (zd."'#1082#1086#1076'_'#1079#1072#1082#1091 +
        #1087#1082#1080'" = z.id)'
      '             INNER JOIN "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1072#1079#1099'_'#1076#1077#1090#1072#1083#1100'" zdd ON ('
      '             z."'#1082#1086#1076'_'#1076#1077#1090#1072#1083#1080'_'#1079#1072#1082#1072#1079#1072'" = zdd.id)'
      '        group by '#1082#1086#1076'_'#1076#1077#1090#1072#1083#1080'_'#1079#1072#1082#1072#1079#1072
      '      ) d2 on (d2.'#1082#1086#1076'_'#1076#1077#1090#1072#1083#1080'_'#1079#1072#1082#1072#1079#1072' = d1.id)'
      '     ) dd1 on (dd1.id = dt.id)'
      'where '#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072'=:d'
      'order by m_name,  pt.name, st.name, dt_id, sss, zt.id')
    BeforeFetch = QueryGroupOrderBeforeFetch
    AfterFetch = QueryGroupOrderAfterFetch
    Left = 288
    Top = 276
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'd'
        Value = nil
      end>
  end
  object dsGroupOrder: TDataSource
    DataSet = QueryGroupOrder
    Left = 184
    Top = 360
  end
  object cxstylrpstry1: TcxStyleRepository
    Left = 104
    Top = 272
    PixelsPerInch = 96
    object cxstyl1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      TextColor = clBtnText
    end
  end
  object pm1: TPopupMenu
    Left = 320
    Top = 416
    object N1: TMenuItem
      Caption = #1057#1074#1077#1088#1085#1091#1090#1100' '#1074#1089#1105
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1056#1072#1079#1074#1077#1088#1085#1091#1090#1100' '#1074#1089#1105
      OnClick = N2Click
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
      '  m.name  m_name,'
      '  dt.id dt_id,'
      '  dt."'#1082#1086#1076'_'#1079#1072#1082#1072#1079#1072'",'
      '  dt."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'",'
      '  dt."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'",'
      
        'pt.name||'#39'. '#1057#1086#1088#1090':'#39'||st.name||'#39'. FB:'#39'||dt."'#1082#1086#1083'_'#1074#1086'_'#1092#1091#1083#1073#1086#1082#1089#1086#1074'"||'#39'. ' +
        #1044#1083#1080#1085#1072':'#39'||dt."'#1076#1083#1080#1085#1072'"||'#39'. '#1062#1077#1085#1072':'#39'||dt."'#1094#1077#1085#1072'"||'#39'. '#1057#1090#1077#1073#1083#1077#1081':'#39'||dt."'#1089#1090#1077 +
        #1073#1083#1077#1081'" as sss,'
      'pt.name pt_name, st.name st_name,'
      ' '
      '  dt."'#1089#1090#1077#1085#1076#1080#1085#1075'",'
      '  dt."'#1082#1086#1076'_'#1089#1090#1077#1085#1076#1080#1085#1075#1072'",'
      '  '
      '  dt."'#1089#1090#1077#1073#1083#1077#1081'",'
      ' '
      '  t.uni_name AS t_name,'
      '  k.uni_name AS k_name,'
      '  pt.uni_name AS pt_uni_name,'
      '  st.uni_name st_uni_name, dt.'#1079#1072#1087#1088#1077#1090'_'#1087#1086#1082#1091#1087#1082#1080','
      
        '  pt2.name p2_name, pt2.uni_name p2_uni_name, pt2.reg_name p2_re' +
        'g_name,'
      
        '  st2.name s2_name, st2.uni_name s2_uni_name, st2.reg_name s2_re' +
        'g_name,'
      '  u1.name u1_name ,'
      
        'zt.fb, zt."'#1089#1090#1077#1073#1083#1077#1081'" count_zakup , zt."'#1076#1083#1080#1085#1072'" dlina_zakup, zt."'#1094#1077 +
        #1085#1072'" price_zakup'
      ''
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
      
        'left join "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1091#1087#1082#1080'_'#1076#1077#1090#1072#1083#1100'" zt on (zt."'#1082#1086#1076'_'#1079#1072#1082#1091#1087#1082#1080'"=z' +
        '.id)'
      
        ' left join  "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pt2 ON (zt."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" =' +
        ' pt2.id)'
      ' left join  "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090#1072'" st2 ON (zt."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'" = st2.id)'
      ''
      
        ' left JOIN "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'" u1 ON (z."'#1082#1086#1076'_'#1087#1086#1083#1100#1079#1086#1074#1072#1090 +
        #1077#1083#1103'" = u1.id)'
      ''
      'where  ID = :ID')
    Connection = DM1.db1
    SQL.Strings = (
      'SELECT '
      'dd2.no_compras_mark , dd3.no_compras_all,'
      'dt."'#1078#1077#1083#1072#1077#1084#1099#1077'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'",'
      '       doc."'#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072'",        '
      '       z.'#1076#1072#1090#1072'_'#1079#1072#1082#1091#1087#1082#1080',         '
      '       m.name m_name,     '
      '       pt.name pt_name,'
      '       st.name st_name,'
      '       dt."'#1082#1086#1083'_'#1074#1086'_'#1092#1091#1083#1073#1086#1082#1089#1086#1074'",    '
      '       dt."'#1089#1090#1077#1073#1083#1077#1081'",      '
      '       pt.uni_name AS pt_uni_name,'
      '       st.uni_name st_uni_name,       '
      '       pt2.uni_name p2_uni_name,      '
      '       st2.uni_name s2_uni_name,      '
      '       zt.fb,'
      '       zt."'#1089#1090#1077#1073#1083#1077#1081'" count_zakup,'
      '       zt."'#1076#1083#1080#1085#1072'" dlina_zakup,'
      '       zt."'#1094#1077#1085#1072'" price_zakup,     '
      '     u.name u_name,'
      '     u1.name u_name_zakup,'
      
        ' pt.name || '#39'. '#1057#1086#1088#1090': '#39' || st.name || '#39'. FB: '#39' || dt."'#1082#1086#1083'_'#1074#1086'_'#1092#1091#1083#1073 +
        #1086#1082#1089#1086#1074'" ||'
      
        '        '#39'. '#1044#1083#1080#1085#1072': '#39' || dt."'#1076#1083#1080#1085#1072'" || '#39'. '#1062#1077#1085#1072': '#39' || dt."'#1094#1077#1085#1072'" || ' +
        #39'. '#1057#1090#1077#1073#1083#1077#1081': '#39' ||'
      '         dt."'#1089#1090#1077#1073#1083#1077#1081'"||'#39'. NO COMPRAS: '#39'|| dd1.fbb'
      '          as sss,dt.id dt_id,dd1.fbb'
      'FROM "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1072#1079#1099'" doc'
      
        '     INNER JOIN "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'" u ON (doc."'#1082#1086#1076'_'#1087#1086#1083 +
        #1100#1079#1086#1074#1072#1090#1077#1083#1103'" ='
      '      u.id)'
      '    '
      
        '     INNER JOIN "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"."'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'" m ON (doc."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086 +
        #1074#1082#1080'" = m.id)'
      
        '     INNER JOIN "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1072#1079#1099'_'#1076#1077#1090#1072#1083#1100'" dt ON (doc.id = dt."' +
        #1082#1086#1076'_'#1079#1072#1082#1072#1079#1072'")'
      
        '     INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pt ON (dt."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080 +
        '" = pt.id)'
      
        '     INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090#1072'" st ON (dt."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'" = st.i' +
        'd)'
      
        '     left join "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1091#1087#1082#1080'" z on (z."'#1082#1086#1076'_'#1076#1077#1090#1072#1083#1080'_'#1079#1072#1082#1072#1079#1072'"' +
        ' = dt.id)'
      
        '     left join "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1091#1087#1082#1080'_'#1076#1077#1090#1072#1083#1100'" zt on (zt."'#1082#1086#1076'_'#1079#1072#1082#1091#1087 +
        #1082#1080'" = z.id)'
      
        '     left join "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pt2 ON (zt."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080 +
        '" = pt2.id)'
      
        '     left join "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090#1072'" st2 ON (zt."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'" = st2.' +
        'id)'
      
        '     left JOIN "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'" u1 ON (z."'#1082#1086#1076'_'#1087#1086#1083#1100#1079 +
        #1086#1074#1072#1090#1077#1083#1103'" = u1.id'
      '     ) '
      ' left join '
      '     ('
      '       select id, '#1082#1086#1083'_'#1074#1086'_'#1092#1091#1083#1073#1086#1082#1089#1086#1074'-COALESCE(fb,0) fbb'
      '        '
      ' from ('
      '        SELECT z1."'#1082#1086#1083'_'#1074#1086'_'#1092#1091#1083#1073#1086#1082#1089#1086#1074'", z1.id'
      '        FROM "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1072#1079#1099'_'#1076#1077#1090#1072#1083#1100'" z1'
      '      ) d1'
      '      left join'
      '      ('
      '        SELECT sum(zd.fb) fb,'
      '               '#1082#1086#1076'_'#1076#1077#1090#1072#1083#1080'_'#1079#1072#1082#1072#1079#1072
      '        FROM "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1091#1087#1082#1080'_'#1076#1077#1090#1072#1083#1100'" zd'
      
        '             INNER JOIN "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1091#1087#1082#1080'" z ON (zd."'#1082#1086#1076'_'#1079#1072#1082#1091 +
        #1087#1082#1080'" = z.id)'
      '             INNER JOIN "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1072#1079#1099'_'#1076#1077#1090#1072#1083#1100'" zdd ON ('
      '             z."'#1082#1086#1076'_'#1076#1077#1090#1072#1083#1080'_'#1079#1072#1082#1072#1079#1072'" = zdd.id)'
      '        group by '#1082#1086#1076'_'#1076#1077#1090#1072#1083#1080'_'#1079#1072#1082#1072#1079#1072
      '      ) d2 on (d2.'#1082#1086#1076'_'#1076#1077#1090#1072#1083#1080'_'#1079#1072#1082#1072#1079#1072' = d1.id)'
      '     ) dd1 on (dd1.id = dt.id)'
      'inner join '
      '('
      'select sum(o.fbo-COALESCE(z.fbz,0)) no_compras_mark , o.ido from'
      '('
      'select sum(od."'#1082#1086#1083'_'#1074#1086'_'#1092#1091#1083#1073#1086#1082#1089#1086#1074'") fbo, od."'#1082#1086#1076'_'#1079#1072#1082#1072#1079#1072'" ido'
      'from "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1072#1079#1099'_'#1076#1077#1090#1072#1083#1100'" od'
      'group by od."'#1082#1086#1076'_'#1079#1072#1082#1072#1079#1072'"'
      ') o'
      'left join'
      '('
      'select sum(zd.fb) fbz, zd."'#1082#1086#1076'_'#1079#1072#1082#1072#1079#1072'" idz'
      'from'
      '"'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1091#1087#1082#1080'_'#1076#1077#1090#1072#1083#1100'" zd '
      'group by zd."'#1082#1086#1076'_'#1079#1072#1082#1072#1079#1072'"'
      ') z on(z.idz=o.ido)'
      ''
      'group by o.ido) dd2 on (dd2.ido = doc.id),'
      '('
      'select sum(o.fbo-COALESCE(z.fbz,0)) no_compras_all from'
      '('
      'select sum(od."'#1082#1086#1083'_'#1074#1086'_'#1092#1091#1083#1073#1086#1082#1089#1086#1074'") fbo, od."'#1082#1086#1076'_'#1079#1072#1082#1072#1079#1072'" ido'
      'from "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1072#1079#1099'_'#1076#1077#1090#1072#1083#1100'" od'
      'inner join "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1072#1079#1099'" o on (o.id=od."'#1082#1086#1076'_'#1079#1072#1082#1072#1079#1072'")'
      ''
      'group by od."'#1082#1086#1076'_'#1079#1072#1082#1072#1079#1072'"'
      ') o'
      'left join'
      '('
      'select sum(zd.fb) fbz, zd."'#1082#1086#1076'_'#1079#1072#1082#1072#1079#1072'" idz'
      'from'
      '"'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1091#1087#1082#1080'_'#1076#1077#1090#1072#1083#1100'" zd '
      'group by zd."'#1082#1086#1076'_'#1079#1072#1082#1072#1079#1072'"'
      ') z on(z.idz=o.ido)'
      ') dd3'
      ''
      ''
      ''
      ''
      ''
      'order by m_name,  pt.name, st.name, zt.id')
    BeforeFetch = QueryGroupOrderBeforeFetch
    AfterFetch = QueryGroupOrderAfterFetch
    Left = 404
    Top = 272
  end
end
