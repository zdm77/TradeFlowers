object FFacturPlant: TFFacturPlant
  Left = 0
  Top = 0
  Caption = #1060#1072#1082#1090#1091#1088#1099' '#1087#1083#1072#1085#1090#1072#1094#1080#1080
  ClientHeight = 462
  ClientWidth = 1833
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 1833
    Height = 38
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1833
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
            BeginGroup = True
            Visible = True
            ItemName = 'btnRefresh'
          end
          item
            BeginGroup = True
            Visible = True
            ItemName = 'btnRest'
          end
          item
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
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        OnClick = btnEditClick
      end
      inherited btnDel: TdxBarLargeButton
        Visible = ivNever
      end
      inherited btnRest: TdxBarLargeButton
        Caption = #1054#1087#1083#1072#1090#1080#1090#1100
        Enabled = True
        Hint = #1054#1087#1083#1072#1090#1080#1090#1100
        Visible = ivAlways
        LargeImageIndex = 24
        OnClick = FrameTopPanel1btnRestClick
      end
      inherited btnRefresh: TdxBarLargeButton
        OnClick = btnRefreshClick
      end
      inherited btnFilter: TdxBarLargeButton
        Caption = #1050' AWB'
        Hint = #1050' AWB'
        Visible = ivAlways
        LargeImageIndex = 4
        OnClick = btnFilterClick
        AutoGrayScale = False
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
    Width = 1833
    Height = 424
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object ViewBalance: TcxGridDBBandedTableView
      OnDblClick = ViewBalanceDblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsFacturPlant
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0'
          Kind = skSum
          Column = ColumnКоробок
        end
        item
          Kind = skSum
          Column = ColumnFB
        end
        item
          Kind = skSum
          Column = ViewBalanceFB_
        end
        item
          Format = '$ ,0.00;$ -,0.00'
          Kind = skSum
          Column = ColumnСуммаФактуры
        end
        item
          Format = '0'
          Kind = skSum
          Column = ViewBalanceBOX_
        end
        item
          Format = '$ ,0.00;$ -,0.00'
          Kind = skSum
          Column = ColumnСуммаОплаты
        end
        item
          Format = '$ ,0.00;$ -,0.00'
          Column = ColumnРазница
        end
        item
          Format = '$ ,0.00;$ -,0.00'
          Kind = skSum
          Column = ColumnСуммаПретензии
        end
        item
          Format = '$ ,0.00;$ -,0.00'
          Kind = skSum
          Column = ColumnОдобреннаяСумма
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsCustomize.BandsQuickCustomization = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.Footer = True
      OptionsView.FooterAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.HeaderEndEllipsis = True
      OptionsView.ShowColumnFilterButtons = sfbAlways
      Bands = <
        item
          Caption = 'AWB'
          Width = 589
        end
        item
          Caption = #1060#1072#1082#1090#1091#1088#1072' /'#13#10' Factura'
          Width = 779
        end
        item
          Caption = #1055#1088#1077#1090#1077#1085#1079#1080#1103' / Pretensi'#243'n'
          Position.BandIndex = 1
          Position.ColIndex = 1
          Width = 154
        end
        item
          Caption = #1054#1087#1083#1072#1090#1072' / Pagas'
          Position.BandIndex = 1
          Position.ColIndex = 2
          Width = 255
        end
        item
          Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1089#1074#1077#1076#1077#1085#1080#1103' / '#13#10'Par'#225'metros de la factura'
          Position.BandIndex = 1
          Position.ColIndex = 0
          Width = 518
        end>
      object ColumnFB: TcxGridDBBandedColumn
        Caption = #1050#1086#1083'-'#1074#1086' FB /'#13#10'Cu'#225'nto FB'
        DataBinding.FieldName = #1086'_'#1082#1086#1083'_'#1074#1086'_fb'
        Width = 83
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object ViewBalanceFB_: TcxGridDBBandedColumn
        Caption = #1050#1086#1083'-'#1074#1086' FB /'#13#10'Cu'#225'nto FB'
        DataBinding.FieldName = #1086'_fb_'#1092#1072#1082#1090#1091#1088#1072
        OnCustomDrawCell = ViewBalanceFB_CustomDrawCell
        Width = 85
        Position.BandIndex = 4
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object ColumnКоробок: TcxGridDBBandedColumn
        Caption = #1050#1086#1088#1086#1073#1086#1082' /'#13#10'Cu'#225'ntas cajas'
        DataBinding.FieldName = #1086'_'#1082#1086#1083'_'#1074#1086
        Width = 75
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object ViewBalanceBOX_: TcxGridDBBandedColumn
        Caption = #1050#1086#1088#1086#1073#1086#1082' /'#13#10'Cu'#225'ntas cajas'
        DataBinding.FieldName = #1086'_box_'#1092#1072#1082#1090#1091#1088#1072
        OnCustomDrawCell = ViewBalanceBOX_CustomDrawCell
        Width = 71
        Position.BandIndex = 4
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object ColumnСуммаФактуры: TcxGridDBBandedColumn
        Caption = #1057#1091#1084#1084#1072' '#1092#1072#1082#1090#1091#1088#1099' $ /'#13#10'Suma de factura $'
        DataBinding.FieldName = #1086'_'#1089#1091#1084#1084#1072'_'#1092#1072#1082#1090#1091#1088#1099
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
        Width = 120
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object ColumnСуммаОплаты: TcxGridDBBandedColumn
        Caption = #1057#1091#1084#1084#1072' '#1086#1087#1083#1072#1090#1099' $/'#13#10'Suma de paga$'
        DataBinding.FieldName = #1086'_'#1089#1091#1084#1084#1072'_'#1086#1087#1083#1072#1090#1099
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
        Width = 80
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object ColumnРазница: TcxGridDBBandedColumn
        Caption = #1056#1072#1079#1085#1080#1094#1072'/'#13#10'La diferencia'#13#10
        DataBinding.FieldName = #1086'_'#1080#1090#1086#1075
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
        OnCustomDrawCell = ColumnРазницаCustomDrawCell
        Width = 65
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object ViewBalancename: TcxGridDBBandedColumn
        Caption = #1052#1072#1088#1082#1080#1088#1086#1074#1082#1072' /'#13#10'Marcasiones'
        DataBinding.FieldName = #1086'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1072
        Width = 137
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object ViewBalance_awb: TcxGridDBBandedColumn
        Caption = #1053#1086#1084#1077#1088' /'#13#10'El n'#250'mero AWB'
        DataBinding.FieldName = #1086'_'#1085#1086#1084#1077#1088'_awb'
        Width = 68
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object ViewBalance_: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072' '#1074#1099#1083#1077#1090#1072' /'#13#10'Fecha del vuelo'
        DataBinding.FieldName = #1086'_'#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object ViewBalance_1: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072' '#1092#1072#1082#1090#1091#1088#1099' /'#13#10'Fecha de la factura'
        DataBinding.FieldName = #1086'_'#1076#1072#1090#1072'_'#1092#1072#1082#1090#1091#1088#1099
        Width = 126
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object ViewBalance_2: TcxGridDBBandedColumn
        Caption = #1053#1086#1084#1077#1088' '#1092#1072#1082#1090#1091#1088#1099' /'#13#10'N'#250'mero de la factura'
        DataBinding.FieldName = #1086'_'#1085#1086#1084#1077#1088'_'#1092#1072#1082#1090#1091#1088#1099
        Width = 116
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object ViewBalance_4: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072' '#1086#1087#1083#1072#1090#1099' /'#13#10'Fecha de la paga'
        DataBinding.FieldName = #1086'_'#1076#1072#1090#1072'_'#1086#1087#1083#1072#1090#1099
        Width = 112
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object ColumnТрак: TcxGridDBBandedColumn
        Caption = #1058#1088#1072#1082' /'#13#10'Trak'
        DataBinding.FieldName = #1086'_'#1090#1088#1072#1082
        Width = 126
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object ColumnДатаПретензии: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072' '#1087#1088#1077#1090#1077#1085#1079#1080#1080' / '#13#10'Fecha de la pretensi'#243'n'
        DataBinding.FieldName = #1086'_'#1076#1072#1090#1072'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080
        Width = 125
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object ColumnСуммаПретензии: TcxGridDBBandedColumn
        Caption = #1057#1091#1084#1084#1072' '#1087#1088#1077#1090#1077#1085#1079#1080#1080' $/'#13#10'Suma de pretensi'#243'n$'
        DataBinding.FieldName = #1086'_'#1089#1091#1084#1084#1072'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object ColumnСтатусПретензии: TcxGridDBBandedColumn
        Caption = #1057#1090#1072#1090#1091#1089' /'#13#10'Estatus'
        DataBinding.FieldName = #1086'_'#1089#1090#1072#1090#1091#1089'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object ColumnОдобреннаяСумма: TcxGridDBBandedColumn
        Caption = #1054#1076#1086#1073#1088#1077#1085#1085#1072#1103' '#1089#1091#1084#1084#1072'$ /'#13#10'Suma aprobada$'#13#10
        DataBinding.FieldName = #1086'_'#1086#1076#1086#1073#1088#1077#1085#1085#1072#1103'_'#1089#1091#1084#1084#1072'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
    end
    object LevelOrg: TcxGridLevel
      GridView = ViewBalance
    end
  end
  object Group1: TcxGroupBox
    Left = 0
    Top = 38
    Align = alTop
    PanelStyle.Active = True
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 2
    Height = 0
    Width = 1833
  end
  object QueryFacturPlant: TUniQuery
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
      'select * from "'#1073#1091#1093'"."'#1086#1087#1083#1072#1090#1072'_'#1087#1083#1072#1085#1090#1072#1094#1080#1081'"(9)')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 480
    Top = 208
  end
  object dsFacturPlant: TDataSource
    DataSet = QueryFacturPlant
    Left = 480
    Top = 272
  end
  object QueryFacturPlant1: TUniQuery
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
