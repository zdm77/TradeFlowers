object FrameAWB: TFrameAWB
  Left = 0
  Top = 0
  Width = 1016
  Height = 440
  TabOrder = 0
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 1016
    Height = 36
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1016
    ExplicitHeight = 36
    inherited barProduct: TdxBarManager
      Left = 512
      Top = 8
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
            ItemName = 'btnExport'
          end
          item
            BeginGroup = True
            Visible = True
            ItemName = 'btnArch'
          end>
      end
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
      inherited btnRazdel: TdxBarLargeButton
        Caption = #1042' Excel'
        Hint = #1042' Excel'
        LargeImageIndex = 23
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
  object GridAWB: TcxGrid
    Left = 0
    Top = 36
    Width = 1016
    Height = 404
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object ViewAWB: TcxGridDBTableView
      OnDblClick = ViewAWBDblClick
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Position = fpTop
      DataController.DataSource = dsAWB
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
  object QueryAWB: TUniQuery
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
      ', a.'#1084#1085#1077#1084#1086', '#1084#1085#1077#1084#1086'_'#1085#1086#1084#1077#1088
      ' FROM "'#1073#1091#1093'".awb a'
      ' INNER JOIN "'#1082#1072#1088#1075#1086'"."'#1072#1075#1077#1085#1089#1090#1074#1072'" k ON (a."'#1082#1086#1076'_'#1082#1072#1088#1075#1086'" = k.id)'
      ' LEFT join "'#1073#1091#1093'".sub_awb sa on (sa."'#1082#1086#1076'_AWB" = a.id)'
      
        ' inner join "'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'"."'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'" o on (a."'#1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080 +
        '" = o.id)'
      
        ' LEFT join "'#1072#1074#1080#1072#1083#1080#1085#1080#1080'"."'#1072#1074#1080#1072#1083#1080#1085#1080#1080'" air on (a.'#1082#1086#1076'_'#1072#1074#1080#1072#1083#1080#1085#1080#1080' = air' +
        '.id)'
      ' group by k.name, a.'#1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080', '
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
  end
  object dsAWB: TDataSource
    DataSet = QueryAWB
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
      
        'select * from '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'.'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080' where '#1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'=:i' +
        'd order by name')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 336
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 49
      end>
  end
end
