object FramePrikulingBuh: TFramePrikulingBuh
  Left = 0
  Top = 0
  Width = 1046
  Height = 598
  TabOrder = 0
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 1046
    Height = 36
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1046
    ExplicitHeight = 36
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
          end>
      end
      inherited btnRefresh: TdxBarLargeButton
        OnClick = btnRefreshClick
      end
      inherited btnArch: TcxBarEditItem
        Visible = ivAlways
        Properties.OnEditValueChanged = FrameTopPanel1btnArchPropertiesEditValueChanged
      end
    end
  end
  object GridAWB: TcxGrid
    Left = 0
    Top = 36
    Width = 1046
    Height = 562
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object ViewAWB: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Position = fpTop
      DataController.DataSource = dsPrik
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
          Column = ColumnВес
        end
        item
          Format = '$ ,0.00;$ -,0.00'
          Kind = skSum
          Column = ColumnСтоимость
        end
        item
          Kind = skSum
          Column = ColumnFB
        end
        item
          Kind = skSum
          Column = ColumnBOX
        end
        item
          Format = '$ ,0.00;$ -,0.00'
          Kind = skSum
          Column = ColumnПрикулинг
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Editing = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.ShowColumnFilterButtons = sfbAlways
      object ColumnДата: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1074#1099#1083#1077#1090#1072
        DataBinding.FieldName = #1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072
        Width = 93
      end
      object ColumnMnemo: TcxGridDBColumn
        Caption = #1052#1085#1077#1084#1086
        DataBinding.FieldName = #1084#1085#1077#1084#1086
        PropertiesClassName = 'TcxCheckBoxProperties'
        Width = 66
      end
      object ColumnMnemoNUM: TcxGridDBColumn
        Caption = #1052#1085#1077#1084#1086' '#8470
        DataBinding.FieldName = #1084#1085#1077#1084#1086'_'#1085#1086#1084#1077#1088
        Width = 88
      end
      object ColumnAWBNum: TcxGridDBColumn
        Caption = #8470' AWB'
        DataBinding.FieldName = #1085#1086#1084#1077#1088'_awb'
        Width = 129
      end
      object ColumnKargo: TcxGridDBColumn
        Caption = #1050#1072#1088#1075#1086
        DataBinding.FieldName = 'name'
        Width = 172
      end
      object ColumnАвиалиния: TcxGridDBColumn
        Caption = #1040#1074#1080#1072#1083#1080#1085#1080#1103
        DataBinding.FieldName = 'air_name_rus'
        Width = 200
      end
      object ColumnFB: TcxGridDBColumn
        Caption = #1050#1086#1083'-'#1074#1086' FB'
        DataBinding.FieldName = 'fb'
        Width = 96
      end
      object ColumnBOX: TcxGridDBColumn
        Caption = #1050#1086#1088#1086#1073#1086#1082
        DataBinding.FieldName = 'boxs'
        Width = 117
      end
      object ColumnВес: TcxGridDBColumn
        Caption = #1042#1077#1089
        DataBinding.FieldName = #1074#1077#1089
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = ',0 '#1082#1075#39'.'#39';'
        Width = 126
      end
      object ColumnСтоимость: TcxGridDBColumn
        Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
        DataBinding.FieldName = #1089#1090#1086#1080#1084#1086#1089#1090#1100
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
        Visible = False
        Width = 116
      end
      object ColumnПрикулинг: TcxGridDBColumn
        DataBinding.FieldName = #1055#1088#1080#1082#1091#1083#1080#1085#1075
        Width = 104
      end
      object ColumnOrg: TcxGridDBColumn
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        DataBinding.FieldName = #1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        Width = 155
      end
      object ColumnID: TcxGridDBColumn
        Caption = 'ID'
        DataBinding.FieldName = 'id'
        HeaderAlignmentHorz = taCenter
        Width = 89
      end
    end
    object LevelOrg: TcxGridLevel
      GridView = ViewAWB
    end
  end
  object QueryPrik: TUniQuery
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
      'SELECT k.name,'
      ' a.id, a.'#1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080','
      ' a."'#1082#1086#1076'_'#1082#1072#1088#1075#1086'",'
      ' a."'#1085#1086#1084#1077#1088'_awb",'
      ' a."'#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072'", a.'#1082#1086#1076'_'#1072#1074#1080#1072#1083#1080#1085#1080#1080',  '
      
        'air.name air_name_rus, air.uni_name air_name_en, air.reg_name ai' +
        'r_name_esp,'
      ' o."name" '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103','
      ' sum(sa."'#1089#1090#1086#1080#1084#1086#1089#1090#1100'") '#1089#1090#1086#1080#1084#1086#1089#1090#1100','
      ' sum(sa."sum_FB") FB,'
      ' sum(sa."sum_BOX") BOXS,'
      ' sum(sa."'#1074#1077#1089'") '#1074#1077#1089
      
        ', a.'#1084#1085#1077#1084#1086', '#1084#1085#1077#1084#1086'_'#1085#1086#1084#1077#1088', sum(sa."'#1074#1077#1089'")* min(pr."'#1089#1090#1086#1080#1084#1086#1089#1090#1100'")+min(p' +
        'r."'#1086#1092#1086#1088#1084#1083#1077#1085#1080#1077'") as '#1055#1088#1080#1082#1091#1083#1080#1085#1075
      ' FROM "'#1073#1091#1093'".awb a'
      ' INNER JOIN "'#1082#1072#1088#1075#1086'"."'#1072#1075#1077#1085#1089#1090#1074#1072'" k ON (a."'#1082#1086#1076'_'#1082#1072#1088#1075#1086'" = k.id)'
      ' LEFT join "'#1073#1091#1093'".sub_awb sa on (sa."'#1082#1086#1076'_AWB" = a.id)'
      
        ' inner join "'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'"."'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'" o on (a."'#1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080 +
        '" = o.id)'
      
        ' LEFT join "'#1072#1074#1080#1072#1083#1080#1085#1080#1080'"."'#1072#1074#1080#1072#1083#1080#1085#1080#1080'" air on (a.'#1082#1086#1076'_'#1072#1074#1080#1072#1083#1080#1085#1080#1080' = air' +
        '.id)'
      ' inner join "'#1090#1088#1072#1082#1080'"."'#1090#1088#1072#1082#1080'" tr on (sa."'#1082#1086#1076'_'#1090#1088#1072#1082#1072'"=tr.id)'
      
        ' inner join "'#1073#1091#1093'"."'#1088#1072#1089#1095#1077#1090'_'#1087#1088#1080#1082#1091#1083#1080#1085#1075'" rpr on (rpr."'#1082#1086#1076'_'#1090#1088#1072#1082#1072'"=tr.' +
        'id)'
      
        ' inner join "'#1087#1088#1080#1082#1091#1083#1080#1085#1075'"."'#1072#1075#1077#1085#1089#1090#1074#1072'" pr on (pr.id=rpr."'#1082#1086#1076'_'#1087#1088#1080#1082#1091#1083#1080 +
        #1085#1075#1072'")'
      'where a.'#1072#1088#1093#1080#1074'_awb=:i_arch'
      'group by k.name, a.'#1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080', '
      ' a.id,'
      ' a."'#1082#1086#1076'_'#1082#1072#1088#1075#1086'",'
      ' a."'#1085#1086#1084#1077#1088'_awb",'
      ' a."'#1074#1077#1089'",'
      ' a."'#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072'",'
      ' o."name",'
      ' a.'#1082#1086#1076'_'#1072#1074#1080#1072#1083#1080#1085#1080#1080', air.name, air.uni_name,air.reg_name '
      ', a.'#1084#1085#1077#1084#1086', '#1084#1085#1077#1084#1086'_'#1085#1086#1084#1077#1088
      ' order by '#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072' DESC')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 480
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'i_arch'
        Value = nil
      end>
  end
  object dsPrik: TDataSource
    DataSet = QueryPrik
    Left = 480
    Top = 272
  end
end
