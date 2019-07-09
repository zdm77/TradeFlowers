object FrameBalanceKargo: TFrameBalanceKargo
  Left = 0
  Top = 0
  Width = 959
  Height = 523
  TabOrder = 0
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 959
    Height = 38
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 959
    ExplicitHeight = 38
    inherited barProduct: TdxBarManager
      Left = 512
      Top = 16
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
        Visible = ivNever
      end
      inherited btnEdit: TdxBarLargeButton
        Caption = #1050' '#1092#1072#1082#1090#1091#1088#1072#1084
        OnClick = FrameTopPanel1btnEditClick
      end
      inherited btnDel: TdxBarLargeButton
        Visible = ivNever
      end
      inherited btnRefresh: TdxBarLargeButton
        OnClick = FrameTopPanel1btnRefreshClick
      end
      inherited btnRazdel: TdxBarLargeButton
        Caption = #1042' Excel'
        Hint = #1042' Excel'
        Visible = ivAlways
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
  object GridBalance: TcxGrid
    Left = 0
    Top = 38
    Width = 959
    Height = 485
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object GridBalanceDBBandedTableView1: TcxGridDBBandedTableView
      OnDblClick = GridBalanceDBBandedTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsBalanceKargo
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0'
          Kind = skSum
        end
        item
          Kind = skSum
        end
        item
          Format = '$ ,0.00;$ -,0.00'
          Kind = skSum
          Column = ColumnСумма
        end
        item
          Format = ',0.00;-,0.00'
          Kind = skSum
          Column = ColumnВес
        end
        item
          Format = '$ ,0.00;$ -,0.00'
          Kind = skSum
          Column = ColumnСуммаФактур
        end
        item
          Format = '$ ,0.00;$ -,0.00'
          Kind = skSum
          Column = ColumnРазница
        end
        item
          Format = '$ ,0.00;$ -,0.00'
          Column = ColumnСуммаОплат
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.ShowColumnFilterButtons = sfbAlways
      Bands = <
        item
          Caption = 'AWB'
          Width = 502
        end
        item
          Caption = #1060#1072#1082#1090#1091#1088#1099
          Width = 449
        end>
      object ColumnВес: TcxGridDBBandedColumn
        Caption = #1042#1077#1089
        DataBinding.FieldName = #1074#1077#1089
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        Width = 97
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object ColumnСумма: TcxGridDBBandedColumn
        Caption = #1057#1091#1084#1084#1072' AWB'
        DataBinding.FieldName = #1089#1090#1086#1080#1084#1086#1089#1090#1100
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
        Width = 125
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object ColumnРазница: TcxGridDBBandedColumn
        Caption = #1056#1072#1079#1085#1080#1094#1072
        DataBinding.FieldName = #1088#1072#1079#1085#1080#1094#1072
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
        OnCustomDrawCell = ColumnРазницаCustomDrawCell
        Width = 84
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object ColumnКарго: TcxGridDBBandedColumn
        Caption = #1050#1072#1088#1075#1086
        DataBinding.FieldName = 'name'
        Width = 162
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object ColumnСуммаФактур: TcxGridDBBandedColumn
        Caption = #1057#1091#1084#1084#1072' '#1092#1072#1082#1090#1091#1088
        DataBinding.FieldName = #1089#1091#1084#1084#1072'_'#1092#1072#1082#1090#1091#1088
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
        Width = 98
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object ColumnСуммаОплат: TcxGridDBBandedColumn
        Caption = #1054#1087#1083#1072#1095#1077#1085#1086
        DataBinding.FieldName = #1089#1091#1084#1084#1072'_'#1086#1087#1083#1072#1090
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
        Width = 92
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object ColumnПретензия: TcxGridDBBandedColumn
        Caption = #1055#1088#1077#1090#1077#1085#1079#1080#1103
        DataBinding.FieldName = #1087#1088#1077#1090#1077#1085#1079#1080#1103
        Width = 80
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
    end
    object LevelOrg: TcxGridLevel
      GridView = GridBalanceDBBandedTableView1
    end
  end
  object QueryBalanceKargo: TUniQuery
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
      'SELECT sum(sad."'#1089#1091#1084#1084#1072'_'#1092#1072#1082#1090#1091#1088#1099'") '#1089#1091#1084#1084#1072'_'#1092#1072#1082#1090#1091#1088','
      '        k.name,'
      '        k.reg_name,'
      '        k.uni_name,'
      '        sum(a."'#1074#1077#1089'") '#1074#1077#1089
      ' FROM "'#1073#1091#1093'".sub_awb_detail sad'
      '      inner join "'#1073#1091#1093'".sub_awb sa on sa.id = sad."'#1082#1086#1076'_sub_awb"'
      '      inner join "'#1073#1091#1093'".awb a on a.id = sa."'#1082#1086#1076'_AWB"'
      '      inner join "'#1082#1072#1088#1075#1086'"."'#1072#1075#1077#1085#1089#1090#1074#1072'" k on k.id = a."'#1082#1086#1076'_'#1082#1072#1088#1075#1086'"'
      ' group by k.name,'
      '          k.reg_name,'
      '          k.uni_name')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 224
    Top = 182
  end
  object dsBalanceKargo: TDataSource
    DataSet = QueryBalanceKargo
    Left = 360
    Top = 176
  end
  object QueryBalanceKargo1: TUniQuery
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
    Left = 216
    Top = 264
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 49
      end>
  end
end
