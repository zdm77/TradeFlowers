object FFacturKargo: TFFacturKargo
  Left = 0
  Top = 0
  Caption = #1041#1072#1083#1072#1085#1089' '#1050#1072#1088#1075#1086
  ClientHeight = 565
  ClientWidth = 1242
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
    Width = 1242
    Height = 38
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1242
    ExplicitHeight = 38
    inherited barProduct: TdxBarManager
      Left = 248
      Top = 8
      PixelsPerInch = 96
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
          end>
      end
      inherited btnAdd: TdxBarLargeButton
        Visible = ivNever
        OnClick = btnAddClick
      end
      inherited btnEdit: TdxBarLargeButton
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        OnClick = btnEditClick
      end
      inherited btnDel: TdxBarLargeButton
        Visible = ivNever
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
  object Page1: TcxPageControl
    Left = 0
    Top = 38
    Width = 1242
    Height = 527
    Align = alClient
    DragMode = dmAutomatic
    TabOrder = 1
    Properties.ActivePage = tabOsn
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Blue'
    OnChange = Page1Change
    ClientRectBottom = 527
    ClientRectRight = 1242
    ClientRectTop = 24
    object tabOsn: TcxTabSheet
      Caption = #1060#1072#1082#1090#1091#1088#1099
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GridBalance: TcxGrid
        Left = 0
        Top = 0
        Width = 1233
        Height = 495
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        object GridBalanceDBBandedTableView1: TcxGridDBBandedTableView
          OnDblClick = GridBalanceDBBandedTableView1DblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsFacturKargo
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
              Kind = skSum
            end
            item
              Format = '$ ,0.00;$ -,0.00'
              Kind = skSum
              Column = ColumnСтоимость
            end
            item
              Format = '0'
              Kind = skSum
            end
            item
              Format = '$ ,0.00;$ -,0.00'
              Kind = skSum
              Column = ColumnСуммаОплаты
            end
            item
              Format = '$ ,0.00;$ -,0.00'
              Kind = skSum
              Column = ColumnРазница
            end
            item
              Format = '$ ,0.00;$ -,0.00'
              Kind = skSum
              Column = ColumnСуммаФактуры
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
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          OptionsView.Indicator = True
          OptionsView.ShowColumnFilterButtons = sfbAlways
          Bands = <
            item
              Caption = 'AWB'
              Width = 424
            end
            item
              Caption = #1060#1072#1082#1090#1091#1088#1072
              Width = 748
            end
            item
              Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1089#1074#1077#1076#1077#1085#1080#1103
              Position.BandIndex = 1
              Position.ColIndex = 0
              Width = 289
            end
            item
              Caption = #1054#1087#1083#1072#1090#1072
              Position.BandIndex = 1
              Position.ColIndex = 1
              Width = 459
            end>
          object ColumnСтоимость: TcxGridDBBandedColumn
            Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
            DataBinding.FieldName = #1089#1090#1086#1080#1084#1086#1089#1090#1100
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
            Width = 117
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object ColumnСуммаОплаты: TcxGridDBBandedColumn
            Caption = #1057#1091#1084#1084#1072
            DataBinding.FieldName = #1089#1091#1084#1084#1072'_'#1086#1087#1083#1072#1090#1099
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
            Width = 114
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object ColumnРазница: TcxGridDBBandedColumn
            Caption = #1056#1072#1079#1085#1080#1094#1072
            DataBinding.FieldName = #1088#1072#1079#1085#1080#1094#1072
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
            OnCustomDrawCell = ColumnРазницаCustomDrawCell
            Width = 166
            Position.BandIndex = 3
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object ColumnНомер: TcxGridDBBandedColumn
            Caption = #1053#1086#1084#1077#1088
            DataBinding.FieldName = #1085#1086#1084#1077#1088'_awb'
            Width = 112
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object ColumnДатаВылета: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072' '#1074#1099#1083#1077#1090#1072
            DataBinding.FieldName = #1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072
            Width = 86
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object ColumnДатаФактура: TcxGridDBBandedColumn
            Caption = #1044#1072#1090#1072
            DataBinding.FieldName = #1076#1072#1090#1072'_'#1092#1072#1082#1090#1091#1088#1099'_'#1082#1072#1088#1075#1086
            Width = 79
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object ColumnНомерФактура: TcxGridDBBandedColumn
            Caption = #1053#1086#1084#1077#1088
            DataBinding.FieldName = #1085#1086#1084#1077#1088'_'#1092#1072#1082#1090#1091#1088#1099'_'#1082#1072#1088#1075#1086
            Width = 92
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object ColumnПослПлатеж: TcxGridDBBandedColumn
            Caption = #1055#1086#1089#1083#1077#1076#1085#1080#1081' '#1087#1083#1072#1090#1077#1078
            DataBinding.FieldName = #1076#1072#1090#1072'_'#1086#1087#1083#1072#1090#1099
            Width = 179
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object ColumnСуммаФактуры: TcxGridDBBandedColumn
            Caption = #1057#1091#1084#1084#1072' '#1092#1072#1082#1090#1091#1088#1099
            DataBinding.FieldName = #1089#1091#1084#1084#1072'_'#1092#1072#1082#1090#1091#1088#1099'_'#1082#1072#1088#1075#1086
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
            Width = 118
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object ColumnПретензия: TcxGridDBBandedColumn
            Caption = #1055#1088#1077#1090#1077#1085#1079#1080#1103
            DataBinding.FieldName = #1087#1088#1077#1090#1077#1085#1079#1080#1103
            Width = 109
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
        end
        object LevelOrg: TcxGridLevel
          GridView = GridBalanceDBBandedTableView1
        end
      end
    end
    object tabOpl: TcxTabSheet
      Caption = #1042#1089#1077' '#1086#1087#1083#1072#1090#1099
      ImageIndex = 1
      ExplicitLeft = 3
      ExplicitTop = 26
      ExplicitWidth = 1233
      ExplicitHeight = 495
      object cxGroupBox1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        PanelStyle.Active = True
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 0
        ExplicitWidth = 1233
        Height = 33
        Width = 1242
        object lblDo: TLabel
          Left = 246
          Top = 10
          Width = 16
          Height = 13
          Caption = #1087#1086':'
        end
        object chkDate: TCheckBox
          Left = 3
          Top = 8
          Width = 150
          Height = 17
          Caption = #1060#1080#1083#1100#1090#1088'. '#1044#1072#1090#1072' '#1074#1099#1083#1077#1090#1072' '#1089':'
          TabOrder = 0
          OnClick = chkDateClick
        end
        object edtOt: TsDateEdit
          Left = 159
          Top = 6
          Width = 81
          Height = 21
          AutoSize = False
          Enabled = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          TabOrder = 1
          OnKeyDown = edtOtKeyDown
          SkinData.SkinSection = 'EDIT'
          OnCloseUp = edtOtCloseUp
          DefaultToday = True
        end
        object edtDo: TsDateEdit
          Left = 268
          Top = 6
          Width = 81
          Height = 21
          AutoSize = False
          Enabled = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          TabOrder = 2
          Text = '  .  .    '
          OnChange = edtDoChange
          OnKeyDown = edtDoKeyDown
          SkinData.SkinSection = 'EDIT'
          OnCloseUp = edtDoCloseUp
        end
      end
      object GridOPl: TcxGrid
        Left = 0
        Top = 33
        Width = 1242
        Height = 470
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        ExplicitWidth = 1233
        ExplicitHeight = 462
        object GridOPlDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsOplAll
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = '$ ,0.00;$ -,0.00'
              Kind = skSum
              Column = ColumnОплСтоимость
            end
            item
              Format = '$ ,0.00;$ -,0.00'
              Kind = skSum
              Column = ColumnОплСуммаФактуры
            end
            item
              Format = '$ ,0.00;$ -,0.00'
              Kind = skSum
              Column = ColumnОплОплата
            end>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.ColumnFiltering = False
          OptionsCustomize.ColumnSorting = False
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsCustomize.ColumnsQuickCustomizationReordering = qcrEnabled
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.HeaderAutoHeight = True
          object ColumnОплДатаВылета: TcxGridDBColumn
            Caption = #1044#1072#1090#1072' '#1074#1099#1083#1077#1090#1072
            DataBinding.FieldName = #1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072
            Width = 85
          end
          object ColumnОплНомерAWB: TcxGridDBColumn
            Caption = #1053#1086#1084#1077#1088' AWB'
            DataBinding.FieldName = #1085#1086#1084#1077#1088'_awb'
            Width = 78
          end
          object ColumnОплСтоимость: TcxGridDBColumn
            Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' AWB'
            DataBinding.FieldName = #1089#1090#1086#1080#1084#1086#1089#1090#1100
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
            Width = 103
          end
          object ColumnОплДатаФактуры: TcxGridDBColumn
            Caption = #1044#1072#1090#1072' '#1092#1072#1082#1090#1091#1088#1099
            DataBinding.FieldName = #1076#1072#1090#1072'_'#1092#1072#1082#1090#1091#1088#1099'_'#1082#1072#1088#1075#1086
            Width = 96
          end
          object ColumnОплНомерФактуры: TcxGridDBColumn
            Caption = #8470' '#1092#1072#1082#1090#1091#1088#1099
            DataBinding.FieldName = #1085#1086#1084#1077#1088'_'#1092#1072#1082#1090#1091#1088#1099'_'#1082#1072#1088#1075#1086
            Width = 85
          end
          object ColumnОплСуммаФактуры: TcxGridDBColumn
            Caption = 'C'#1091#1084#1084#1072' '#1092#1072#1082#1090#1091#1088#1099
            DataBinding.FieldName = #1089#1091#1084#1084#1072'_'#1092#1072#1082#1090#1091#1088#1099'_'#1082#1072#1088#1075#1086
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
            Width = 98
          end
          object ColumnОплПретензия: TcxGridDBColumn
            Caption = #1055#1088#1077#1090#1077#1085#1079#1080#1103
            DataBinding.FieldName = #1087#1088#1077#1090#1077#1085#1079#1080#1103
            Width = 77
          end
          object ColumnОплДатаОплаты: TcxGridDBColumn
            Caption = #1044#1072#1090#1072' '#1086#1087#1083#1072#1090#1099
            DataBinding.FieldName = #1076#1072#1090#1072'_'#1086#1087#1083#1072#1090#1099
            Width = 90
          end
          object ColumnОплОплата: TcxGridDBColumn
            Caption = #1054#1087#1083#1072#1090#1072
            DataBinding.FieldName = #1089#1091#1084#1084#1072
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
            Width = 102
          end
          object ColumnОплРазница: TcxGridDBColumn
            Caption = #1056#1072#1079#1085#1080#1094#1072
            DataBinding.FieldName = #1088#1072#1079#1085#1080#1094#1072
            PropertiesClassName = 'TcxCalcEditProperties'
            Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
            Width = 120
          end
          object ColumnОплНомерПП: TcxGridDBColumn
            Caption = #1053#1086#1084#1077#1088' '#1055'/'#1055
            DataBinding.FieldName = #1085#1086#1084#1077#1088'_'#1087#1087
            Width = 101
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = GridOPlDBTableView1
        end
      end
    end
  end
  object QueryFacturKargo: TUniQuery
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
      'SELECT a."'#1085#1086#1084#1077#1088'_awb",'
      '       a."'#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072'",'
      '       a."'#1089#1090#1086#1080#1084#1086#1089#1090#1100'",'
      '       a."'#1076#1072#1090#1072'_'#1092#1072#1082#1090#1091#1088#1099'_'#1082#1072#1088#1075#1086'",'
      '       a."'#1085#1086#1084#1077#1088'_'#1092#1072#1082#1090#1091#1088#1099'_'#1082#1072#1088#1075#1086'",'
      '       a."'#1089#1091#1084#1084#1072'_'#1092#1072#1082#1090#1091#1088#1099'_'#1082#1072#1088#1075#1086'",'
      '       max(o."'#1076#1072#1090#1072'") '#1076#1072#1090#1072'_'#1086#1087#1083#1072#1090#1099','
      '       sum(o."'#1089#1091#1084#1084#1072'") '#1089#1091#1084#1084#1072'_'#1086#1087#1083#1072#1090#1099','
      
        '       COALESCE(sum(o."'#1089#1091#1084#1084#1072'") - min(a."'#1089#1091#1084#1084#1072'_'#1092#1072#1082#1090#1091#1088#1099'_'#1082#1072#1088#1075#1086'"), -' +
        ' min('
      '       a."'#1089#1091#1084#1084#1072'_'#1092#1072#1082#1090#1091#1088#1099'_'#1082#1072#1088#1075#1086'")) '#1088#1072#1079#1085#1080#1094#1072
      'FROM "'#1073#1091#1093'".awb a'
      '     left JOIN "'#1073#1091#1093'"."'#1086#1087#1083#1072#1090#1072'_awb" o on o."'#1082#1086#1076'_awb" = a.id'
      'group by a."'#1085#1086#1084#1077#1088'_awb",'
      '         a."'#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072'",'
      '         a."'#1076#1072#1090#1072'_'#1092#1072#1082#1090#1091#1088#1099'_'#1082#1072#1088#1075#1086'",'
      '         a."'#1085#1086#1084#1077#1088'_'#1092#1072#1082#1090#1091#1088#1099'_'#1082#1072#1088#1075#1086'",'
      '         a."'#1089#1091#1084#1084#1072'_'#1092#1072#1082#1090#1091#1088#1099'_'#1082#1072#1088#1075#1086'",'
      '          a."'#1089#1090#1086#1080#1084#1086#1089#1090#1100'"'
      'order by '#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072' DESC')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 304
    Top = 384
  end
  object dsFacturKargo: TDataSource
    DataSet = QueryFacturKargo
    Left = 408
    Top = 392
  end
  object QueryFacturKargo1: TUniQuery
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
  object QueryOplAll: TUniQuery
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
      'select * from'
      '( '
      ' SELECT a.id,'
      '        a."'#1082#1086#1076'_'#1082#1072#1088#1075#1086'",'
      '        a."'#1085#1086#1084#1077#1088'_awb",'
      '        a."'#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072'",'
      '        a."'#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072'" a2,'
      '        a."'#1089#1090#1086#1080#1084#1086#1089#1090#1100'",'
      '        a."'#1076#1072#1090#1072'_'#1092#1072#1082#1090#1091#1088#1099'_'#1082#1072#1088#1075#1086'",'
      '        a."'#1085#1086#1084#1077#1088'_'#1092#1072#1082#1090#1091#1088#1099'_'#1082#1072#1088#1075#1086'",'
      '        a."'#1089#1091#1084#1084#1072'_'#1092#1072#1082#1090#1091#1088#1099'_'#1082#1072#1088#1075#1086'",'
      '        a."'#1087#1088#1077#1090#1077#1085#1079#1080#1103'",'
      '        NULL as id_o,'
      '        NULL as '#1082#1086#1076'_awb,'
      '        NULL as '#1089#1091#1084#1084#1072','
      '        NULL as '#1076#1072#1090#1072'_'#1086#1087#1083#1072#1090#1099','
      '        NULL as '#1088#1072#1079#1085#1080#1094#1072','
      '        NULL as '#1085#1086#1084#1077#1088'_'#1087#1087
      ' FROM "'#1073#1091#1093'".awb a'
      ' union ALL ('
      '             select a.id,'
      '                    a."'#1082#1086#1076'_'#1082#1072#1088#1075#1086'",'
      '                    NULL,'
      '                    NULL,'
      '                    a."'#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072'" a2,'
      '                    NULL,'
      '                    NULL,'
      '                    NULL,'
      '                    NULL,'
      '                    NULL,'
      '                    o.id,'
      '                    o."'#1082#1086#1076'_awb",'
      '                    o."'#1089#1091#1084#1084#1072'",'
      '                    o."'#1076#1072#1090#1072'",'
      '                    o."'#1088#1072#1079#1085#1080#1094#1072'",'
      '                    o."'#1085#1086#1084#1077#1088'_'#1087#1087'"'
      '             from "'#1073#1091#1093'"."'#1086#1087#1083#1072#1090#1072'_awb" o'
      '                  left join "'#1073#1091#1093'".awb a on (a.id = o."'#1082#1086#1076'_awb")'
      '           )'
      ') t'
      'where '#1082#1086#1076'_'#1082#1072#1088#1075#1086'=1'
      ' order by id,'
      '          '#1082#1086#1076'_'#1082#1072#1088#1075#1086)
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 512
    Top = 264
  end
  object dsOplAll: TDataSource
    DataSet = QueryOplAll
    Left = 616
    Top = 272
  end
end
