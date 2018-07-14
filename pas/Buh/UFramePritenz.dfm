object FramePritenz: TFramePritenz
  Left = 0
  Top = 0
  Width = 963
  Height = 459
  TabOrder = 0
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 963
    Height = 38
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 963
    ExplicitHeight = 38
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
            ItemName = 'btnSel'
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
            BeginGroup = True
            Visible = True
            ItemName = 'btnArch'
          end>
      end
      inherited btnAdd: TdxBarLargeButton
        Visible = ivNever
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
      inherited btnExport: TdxBarLargeButton
        Visible = ivAlways
        OnClick = btnExportClick
      end
      inherited btnArch: TcxBarEditItem
        Visible = ivAlways
        Properties.OnEditValueChanged = FrameTopPanel1btnArchPropertiesEditValueChanged
      end
    end
  end
  object GridPritenz: TcxGrid
    Left = 0
    Top = 38
    Width = 963
    Height = 421
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object ViewAWB: TcxGridDBTableView
      OnDblClick = ViewAWBDblClick
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Position = fpTop
      DataController.DataSource = dsPritenz
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
          Format = ',0.000 '#1082#1075#39'.'#39';'
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
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Editing = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object ColumnНомер: TcxGridDBColumn
        Caption = #1053#1086#1084#1077#1088' /'#13#10'N'#250'mero'
        DataBinding.FieldName = #1085#1086#1084#1077#1088'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080
        Width = 85
      end
      object ViewAWB_6: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1087#1088#1077#1090#1077#1085#1079#1080#1080' /'#13#10'Fecha de la pretensi'#243'n'
        DataBinding.FieldName = #1076#1072#1090#1072'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080
        Width = 121
      end
      object ViewAWBname: TcxGridDBColumn
        Caption = #1052#1072#1088#1082#1080#1088#1086#1074#1082#1072' /'#13#10'Marcasiones'
        DataBinding.FieldName = 'name'
        Width = 138
      end
      object ColumnPlant: TcxGridDBColumn
        Caption = #1055#1083#1072#1085#1090#1072#1094#1080#1103' /'#13#10'Finca'
        DataBinding.FieldName = 'name_plant'
        Width = 150
      end
      object ViewAWB_3: TcxGridDBColumn
        Caption = #1053#1086#1084#1077#1088' '#1092#1072#1082#1090#1091#1088#1099' /'#13#10'N'#250'mero de la factura'
        DataBinding.FieldName = #1085#1086#1084#1077#1088'_'#1092#1072#1082#1090#1091#1088#1099
        Width = 113
      end
      object ViewAWB_7: TcxGridDBColumn
        Caption = #1057#1091#1084#1084#1072' '#1087#1088#1077#1090#1077#1085#1079#1080#1080' $ /'#13#10'Suma de pretensi'#243'n$'
        DataBinding.FieldName = #1089#1091#1084#1084#1072'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',$0.00;-,$0.00'
        Width = 116
      end
      object ViewAWB_8: TcxGridDBColumn
        Caption = #1057#1090#1072#1090#1091#1089' /'#13#10'Estatus'
        DataBinding.FieldName = #1089#1090#1072#1090#1091#1089'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
      end
      object ViewAWB__: TcxGridDBColumn
        Caption = #1054#1076#1086#1073#1088#1077#1085#1085#1072#1103' '#1089#1091#1084#1084#1072'$ / '#13#10'Suma aprobada$'
        DataBinding.FieldName = #1086#1076#1086#1073#1088#1077#1085#1085#1072#1103'_'#1089#1091#1084#1084#1072'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',$0.00;-,$0.00'
        Width = 140
      end
    end
    object LevelOrg: TcxGridLevel
      GridView = ViewAWB
    end
  end
  object QueryPritenz: TUniQuery
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
      'SELECT a.id id_awb,'
      '        sad.id,'
      '        sa.id sa_id,'
      '        sa."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'",'
      '        sad."'#1076#1072#1090#1072'_'#1092#1072#1082#1090#1091#1088#1099'",'
      '        sad."'#1085#1086#1084#1077#1088'_'#1092#1072#1082#1090#1091#1088#1099'",'
      '        sad."'#1089#1091#1084#1084#1072'_'#1092#1072#1082#1090#1091#1088#1099'",'
      '        m.name,'
      '        sad."'#1076#1072#1090#1072'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'",'
      '        sad."'#1089#1091#1084#1084#1072'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'",'
      '        sad."'#1086#1076#1086#1073#1088#1077#1085#1085#1072#1103'_'#1089#1091#1084#1084#1072'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'",'
      '        sad."'#1089#1090#1072#1090#1091#1089'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'",'
      'sad."'#1090#1077#1082#1089#1090'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'_'#1080#1089#1087'",'
      '        sad."'#1090#1077#1082#1089#1090'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'_'#1088#1091#1089'",'
      '        pl.name name_plant'
      ' FROM "'#1073#1091#1093'".sub_awb_detail sad'
      '      INNER JOIN "'#1073#1091#1093'".sub_awb sa ON (sad."'#1082#1086#1076'_sub_awb" = sa.id)'
      '      INNER JOIN "'#1073#1091#1093'".awb a ON (sa."'#1082#1086#1076'_AWB" = a.id)'
      
        '      INNER JOIN "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"."'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'" m ON (sa."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086 +
        #1074#1082#1080'" = m.id)'
      
        '      inner join "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pl on (pl.id = sad."'#1082#1086#1076 +
        '_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'")'
      'where sad."'#1076#1072#1090#1072'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'" is not null'
      ' order by '#1076#1072#1090#1072'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080' DESC')
    Left = 440
    Top = 192
  end
  object dsPritenz: TDataSource
    DataSet = QueryPritenz
    Left = 544
    Top = 200
  end
  object Query1: TUniQuery
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
      'SELECT a.id id_awb,'
      '        sad.id,'
      '        sa.id sa_id,'
      '        sa."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'",'
      '        sad."'#1076#1072#1090#1072'_'#1092#1072#1082#1090#1091#1088#1099'",'
      '        sad."'#1085#1086#1084#1077#1088'_'#1092#1072#1082#1090#1091#1088#1099'",'
      '        sad."'#1089#1091#1084#1084#1072'_'#1092#1072#1082#1090#1091#1088#1099'",'
      '        m.name,'
      '        sad."'#1076#1072#1090#1072'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'",'
      '        sad."'#1089#1091#1084#1084#1072'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'",'
      '        sad."'#1086#1076#1086#1073#1088#1077#1085#1085#1072#1103'_'#1089#1091#1084#1084#1072'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'",'
      '        sad."'#1089#1090#1072#1090#1091#1089'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'",'
      'sad."'#1090#1077#1082#1089#1090'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'_'#1080#1089#1087'",'
      '        sad."'#1090#1077#1082#1089#1090'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'_'#1088#1091#1089'",'
      '        pl.name name_plant'
      ' FROM "'#1073#1091#1093'".sub_awb_detail sad'
      '      INNER JOIN "'#1073#1091#1093'".sub_awb sa ON (sad."'#1082#1086#1076'_sub_awb" = sa.id)'
      '      INNER JOIN "'#1073#1091#1093'".awb a ON (sa."'#1082#1086#1076'_AWB" = a.id)'
      
        '      INNER JOIN "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"."'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'" m ON (sa."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086 +
        #1074#1082#1080'" = m.id)'
      
        '      inner join "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pl on (pl.id = sad."'#1082#1086#1076 +
        '_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'")'
      'where sad."'#1076#1072#1090#1072'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'" is not null'
      ' order by '#1076#1072#1090#1072'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080' DESC')
    Left = 312
    Top = 176
  end
end
