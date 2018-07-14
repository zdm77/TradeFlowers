object FrameBalance: TFrameBalance
  Left = 0
  Top = 0
  Width = 1071
  Height = 433
  TabOrder = 0
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 1071
    Height = 38
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1071
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
        OnClick = btnAddClick
      end
      inherited btnEdit: TdxBarLargeButton
        Caption = #1050' '#1092#1072#1082#1090#1091#1088#1072#1084
        OnClick = btnEditClick
      end
      inherited btnDel: TdxBarLargeButton
        Visible = ivNever
        OnClick = btnDelClick
      end
      inherited btnRefresh: TdxBarLargeButton
        OnClick = btnRefreshClick
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
    Top = 73
    Width = 1071
    Height = 360
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = ''
    object GridBalanceDBBandedTableView1: TcxGridDBBandedTableView
      OnDblClick = GridBalanceDBBandedTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      FilterBox.CustomizeButtonAlignment = fbaLeft
      FilterBox.Position = fpTop
      DataController.DataSource = dsBalance
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoImmediatePost]
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Kind = skSum
          Position = spFooter
          Column = ColumnСуммаФактур
        end
        item
          Kind = skSum
          Column = ColumnСуммаФактур
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0'
          Kind = skSum
          Column = ColumnBOXфакт
        end
        item
          Format = '0'
          Kind = skSum
          Column = ColumnFBфакт
        end
        item
          Format = '0'
          Kind = skSum
          Column = ColumnBOX
        end
        item
          Kind = skSum
          Column = ColumnFB
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
        end
        item
          Format = '$ ,0.00;$ -,0.00'
          Kind = skSum
          Column = ColumnПритензия
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsCustomize.BandsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.HeaderAutoHeight = True
      OptionsView.ShowColumnFilterButtons = sfbAlways
      Bands = <
        item
          Caption = 'AWB'
        end
        item
          Caption = #1060#1072#1082#1090#1091#1088#1099
          Width = 555
        end>
      object ColumnFB: TcxGridDBBandedColumn
        Caption = #1050#1086#1083'-'#1074#1086' FB'
        DataBinding.FieldName = #1086'_fb'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object ColumnFBфакт: TcxGridDBBandedColumn
        Caption = #1050#1086#1083'-'#1074#1086' FB'
        DataBinding.FieldName = #1086'_fb_fact'
        OnCustomDrawCell = ColumnFBфактCustomDrawCell
        Width = 75
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object ColumnBOX: TcxGridDBBandedColumn
        Caption = #1050#1086#1088#1086#1073#1086#1082
        DataBinding.FieldName = #1086'_box'
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object ColumnBOXфакт: TcxGridDBBandedColumn
        Caption = #1050#1086#1088#1086#1073#1086#1082
        DataBinding.FieldName = #1086'_box_fact'
        OnCustomDrawCell = ColumnBOXфактCustomDrawCell
        Width = 67
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object ColumnРазница: TcxGridDBBandedColumn
        Caption = #1056#1072#1079#1085#1080#1094#1072
        DataBinding.FieldName = #1086'_'#1088#1072#1079#1085#1080#1094#1072
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
        OnCustomDrawCell = ColumnРазницаCustomDrawCell
        Width = 109
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object ColumnПлантация: TcxGridDBBandedColumn
        Caption = #1055#1083#1072#1085#1090#1072#1094#1080#1103
        DataBinding.FieldName = #1086'_name'
        Width = 141
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object ColumnСуммаФактур: TcxGridDBBandedColumn
        Caption = #1057#1091#1084#1084#1072' '#1092#1072#1082#1090#1091#1088
        DataBinding.FieldName = #1086'_'#1089#1091#1084#1084#1072'_'#1092#1072#1082#1090#1091#1088
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
        Width = 100
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object ColumnСуммаОплат: TcxGridDBBandedColumn
        Caption = #1057#1091#1084#1084#1072' '#1086#1087#1083#1072#1090
        DataBinding.FieldName = #1086'_'#1089#1091#1084#1084#1072'_'#1086#1087#1083#1072#1090
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
        Width = 96
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object ColumnПритензия: TcxGridDBBandedColumn
        Caption = #1055#1088#1077#1090#1077#1085#1079#1080#1080
        DataBinding.FieldName = #1086'_'#1087#1088#1077#1090#1077#1085#1079#1080#1080
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
        Width = 108
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
    end
    object LevelOrg: TcxGridLevel
      GridView = GridBalanceDBBandedTableView1
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 38
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
    TabOrder = 2
    Height = 35
    Width = 1071
    object lbl1: TLabel
      Left = 3
      Top = 10
      Width = 45
      Height = 13
      Caption = #1053#1072' '#1076#1072#1090#1091':'
    end
    object edtDate: TDateTimePicker
      Left = 54
      Top = 6
      Width = 129
      Height = 21
      Date = 41911.581691261580000000
      Time = 41911.581691261580000000
      TabOrder = 0
      OnCloseUp = edtDateCloseUp
    end
  end
  object QueryBalance: TUniQuery
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
      'select * from "'#1073#1091#1093'"."'#1080#1090#1086#1075'_'#1073#1072#1083#1072#1085#1089'_'#1087#1083#1072#1085#1090#1072#1094#1080#1081'"()')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 480
    Top = 214
  end
  object dsBalance: TDataSource
    DataSet = QueryBalance
    Left = 480
    Top = 272
  end
  object QueryBalance1: TUniQuery
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
