object FFacturaDetail: TFFacturaDetail
  Left = 0
  Top = 0
  Caption = #1060#1072#1082#1090#1091#1088#1072
  ClientHeight = 430
  ClientWidth = 982
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
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 45
    Width = 982
    Height = 33
    Align = alTop
    TabOrder = 0
    ExplicitTop = 45
    ExplicitWidth = 982
    ExplicitHeight = 33
    inherited barProduct: TdxBarManager
      DockControlHeights = (
        0
        0
        34
        0)
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
    end
  end
  object GridFactura: TcxGrid
    Left = 0
    Top = 78
    Width = 982
    Height = 318
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    object ViewFactura: TcxGridDBBandedTableView
      OnDblClick = ViewFacturaDblClick
      Navigator.Buttons.CustomButtons = <>
      FilterBox.CustomizeButtonAlignment = fbaLeft
      DataController.DataSource = dsFacturaD
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = #1047#1072#1082#1091#1087#1082#1072
          Width = 417
        end
        item
          Caption = #1055#1086' '#1092#1072#1082#1090#1091
        end
        item
          Caption = #1056#1072#1079#1085#1080#1094#1072
        end>
      object ViewFacturafb_fact: TcxGridDBBandedColumn
        Caption = 'FB'
        DataBinding.FieldName = 'fb_fact'
        OnCustomDrawCell = ViewFacturafb_factCustomDrawCell
        Width = 41
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object ViewFacturast_fact: TcxGridDBBandedColumn
        Caption = #1057#1090#1077#1073#1083#1077#1081
        DataBinding.FieldName = 'st_fact'
        OnCustomDrawCell = ViewFacturast_factCustomDrawCell
        Width = 72
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object ViewFacturadl_fact: TcxGridDBBandedColumn
        Caption = #1044#1083#1080#1085#1072
        DataBinding.FieldName = 'dl_fact'
        OnCustomDrawCell = ViewFacturadl_factCustomDrawCell
        Width = 40
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object ViewFacturaprice_fact: TcxGridDBBandedColumn
        Caption = #1062#1077#1085#1072
        DataBinding.FieldName = 'price_fact'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        OnCustomDrawCell = ViewFacturaprice_factCustomDrawCell
        Width = 56
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object ViewFacturaprice_zakup: TcxGridDBBandedColumn
        Caption = #1062#1077#1085#1072
        DataBinding.FieldName = 'price_zakup'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        OnCustomDrawCell = ViewFacturaprice_zakupCustomDrawCell
        Width = 48
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object ViewFacturafb_zakup: TcxGridDBBandedColumn
        Caption = 'FB'
        DataBinding.FieldName = 'fb_zakup'
        OnCustomDrawCell = ViewFacturafb_zakupCustomDrawCell
        Width = 41
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object ViewFacturadl_zakup: TcxGridDBBandedColumn
        Caption = #1044#1083#1080#1085#1072
        DataBinding.FieldName = 'dl_zakup'
        OnCustomDrawCell = ViewFacturadl_zakupCustomDrawCell
        Width = 38
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object ViewFacturasteb_zakup: TcxGridDBBandedColumn
        Caption = #1057#1090#1077#1073#1083#1077#1081
        DataBinding.FieldName = 'steb_zakup'
        OnCustomDrawCell = ViewFacturasteb_zakupCustomDrawCell
        Width = 47
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object ViewFacturasort_zakup: TcxGridDBBandedColumn
        Caption = #1057#1086#1088#1090
        DataBinding.FieldName = 'sort_zakup'
        OnCustomDrawCell = ViewFacturasort_zakupCustomDrawCell
        Width = 83
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object ViewFacturasort_fact: TcxGridDBBandedColumn
        Caption = #1057#1086#1088#1090
        DataBinding.FieldName = 'sort_fact'
        OnCustomDrawCell = ViewFacturasort_factCustomDrawCell
        Width = 107
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object ColumnItogFact: TcxGridDBBandedColumn
        Caption = #1048#1090#1086#1075
        DataBinding.FieldName = 'itog_fact'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        OnCustomDrawCell = ColumnItogFactCustomDrawCell
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object ColumnItogZakup: TcxGridDBBandedColumn
        Caption = #1048#1090#1086#1075
        DataBinding.FieldName = 'itog_zakup'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00;-,0.00'
        OnCustomDrawCell = ColumnItogZakupCustomDrawCell
        Width = 54
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object ColumnItogRaznica: TcxGridDBBandedColumn
        Caption = #1048#1090#1086#1075
        DataBinding.FieldName = #1056#1072#1079#1085#1080#1094#1072
        OnCustomDrawCell = ColumnItogRaznicaCustomDrawCell
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object ColumnStat: TcxGridDBBandedColumn
        Visible = False
        Width = 38
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object ColumnTypeF: TcxGridDBBandedColumn
        Caption = #1058#1080#1087
        DataBinding.FieldName = 't1_uni_name'
        Width = 87
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object ColumnTypeZ: TcxGridDBBandedColumn
        Caption = #1058#1080#1087
        DataBinding.FieldName = 't_uni_name'
        Width = 84
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
    end
    object LevelOrg: TcxGridLevel
      GridView = ViewFactura
    end
  end
  object GroupOsn: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 6
    Height = 45
    Width = 982
    object edtNum: TcxTextEdit
      Left = 3
      Top = 20
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 0
      OnKeyUp = edtNumKeyUp
      Width = 86
    end
    object lblNumber: TcxLabel
      Left = 3
      Top = 3
      Caption = #8470
      Transparent = True
    end
    object edtДатаФактуры: TAdvDateTimePicker
      Left = 99
      Top = 20
      Width = 105
      Height = 21
      Date = 0.475810185185185200
      Format = ''
      Time = 0.475810185185185200
      Checked = False
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = dkDate
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 2
      OnChange = edtДатаФактурыChange
      BorderStyle = bsSingle
      Ctl3D = True
      DateTime = 0.475810185185185200
      Version = '1.2.0.6'
      LabelCaption = #1044#1072#1090#1072' '#1092#1072#1082#1090#1091#1088#1099
      LabelPosition = lpTopLeft
      LabelTransparent = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
    end
    object edtДатаЗакупки: TAdvDateTimePicker
      Left = 210
      Top = 20
      Width = 105
      Height = 21
      Date = 41137.475810185180000000
      Format = ''
      Time = 41137.475810185180000000
      DoubleBuffered = True
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = dkDate
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 3
      BorderStyle = bsSingle
      Ctl3D = True
      DateTime = 41137.475810185180000000
      Version = '1.2.0.6'
      LabelCaption = #1044#1072#1090#1072' '#1079#1072#1082#1091#1087#1082#1080
      LabelPosition = lpTopLeft
      LabelTransparent = True
      LabelAlwaysEnabled = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
    end
    object edtMarking: TcxTextEdit
      Left = 321
      Top = 20
      Properties.ReadOnly = True
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 4
      OnKeyUp = edtNumKeyUp
      Width = 280
    end
    object lblMarking: TcxLabel
      Left = 321
      Top = 3
      Caption = #1052#1072#1088#1082#1080#1088#1086#1074#1082#1072
      Transparent = True
    end
  end
  object bardxbrmngr1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = FOsn.imgMidle
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 224
    Top = 212
    DockControlHeights = (
      0
      0
      0
      34)
    object dxbrBarManager1Bar: TdxBar
      AllowClose = False
      AllowQuickCustomizing = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsBottom
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsBottom
      FloatLeft = 616
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnSave'
        end
        item
          Visible = True
          ItemName = 'BtnExe'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btnSave: TdxBarLargeButton
      Align = iaRight
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Enabled = False
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Visible = ivNever
      LargeImageIndex = 13
      OnClick = btnSaveClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object BtnExe: TdxBarLargeButton
      Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1100
      Category = 0
      Hint = #1048#1089#1087#1086#1083#1085#1080#1090#1100
      Visible = ivAlways
      LargeImageIndex = 1
      OnClick = BtnExeClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
  end
  object QueryFacturaD: TUniQuery
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
    Connection = dbOrder
    SQL.Strings = (
      'SELECT'
      'fd.id id_fd, '
      '  p.uni_name p_uni_name,'
      '  p.reg_name p_reg_name,'
      '  p.name p_name,'
      '  fd.fb fb_fact,'
      '  fd."'#1089#1090#1077#1073#1083#1077#1081'" st_fact,'
      '  fd."'#1076#1083#1080#1085#1072'" dl_fact,'
      '  fd."'#1094#1077#1085#1072'" price_fact,'
      '  fd."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'",'
      '  p.id p_id,'
      '  p.brand,'
      '  p."'#1082#1086#1076'_'#1089#1090#1088#1072#1085#1099'",'
      '  p."'#1087#1088#1080#1084#1077#1095#1072#1085#1080#1077'",'
      '  zd."'#1094#1077#1085#1072'" price_zakup,'
      '  zd.fb fb_zakup,'
      '  zd."'#1076#1083#1080#1085#1072'" dl_zakup,'
      '  zd."'#1089#1090#1077#1073#1083#1077#1081'" steb_zakup,'
      's1.id s_id,'
      '  s1.name sort_fact,'
      '  s.name sort_zakup,'
      '  pr.id pr_id_zakup,'
      '  pr.name pr_name_zakup,'
      '  pr.uni_name pr_uni_name_zakup,'
      '  pr.reg_name pr_reg_name_zakup,'
      ' pr1.id pr_id_fact,'
      '  pr1.name pr_name_fact,'
      '  pr1.uni_name pr_uni_name_fact,'
      '  pr1.reg_name pr_reg_name_fact,'
      'fd."'#1089#1090#1077#1073#1083#1077#1081'"*fd."'#1094#1077#1085#1072'" itog_fact,'
      'zd."'#1089#1090#1077#1073#1083#1077#1081'"*zd."'#1094#1077#1085#1072'" itog_zakup,'
      'zd."'#1089#1090#1077#1073#1083#1077#1081'"*zd."'#1094#1077#1085#1072'" - fd."'#1089#1090#1077#1073#1083#1077#1081'"*fd."'#1094#1077#1085#1072'" '#1056#1072#1079#1085#1080#1094#1072
      ''
      'FROM'
      '  "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1092#1072#1082#1090#1091#1088#1072'_'#1076#1077#1090#1072#1083#1100'" fd'
      
        '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" p ON (fd."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" = ' +
        'p.id)'
      
        '  INNER JOIN "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1091#1087#1082#1080'_'#1076#1077#1090#1072#1083#1100'" zd ON (fd."'#1082#1086#1076'_'#1076#1077#1090#1072#1083#1080#1079 +
        '_'#1079#1072#1082#1091#1087#1082#1080'" = zd.id)'
      '  AND (p.id = zd."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'")'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090#1072'" s ON (zd."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'" = s.id)'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090#1072'" s1 ON (fd."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'" = s1.id)'
      'inner join "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1088#1086#1076#1091#1082#1094#1080#1103'" pr on (zd."'#1082#1086#1076'_'#1090#1086#1074#1072#1088#1072'"=pr.id)'
      
        'inner join "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1088#1086#1076#1091#1082#1094#1080#1103'" pr1 on (fd."'#1082#1086#1076'_'#1090#1086#1074#1072#1088#1072'"=pr1.i' +
        'd)')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    BeforeFetch = QueryFacturaDBeforeFetch
    AfterFetch = QueryFacturaDAfterFetch
    BeforeRefresh = QueryFacturaDBeforeRefresh
    Left = 480
    Top = 208
  end
  object dsFacturaD: TDataSource
    DataSet = QueryFacturaD
    Left = 480
    Top = 272
  end
  object TransactOrder: TUniTransaction
    DefaultConnection = dbOrder
    OnStart = TransactOrderStart
    Left = 32
    Top = 228
  end
  object dbOrder: TUniConnection
    ProviderName = 'PostgreSQL'
    Database = 'wwwunifloragroup_trade'
    SpecificOptions.Strings = (
      'PostgreSQL.Charset=WIN1251'
      'PostgreSQL.UseUnicode=True')
    Options.KeepDesignConnected = False
    PoolingOptions.ConnectionLifetime = 3
    Username = 'uniflora_trade'
    Server = 'pgsql.uniflora.mass.hc.ru'
    Connected = True
    LoginPrompt = False
    Left = 132
    Top = 240
    EncryptedPassword = 'B4FF94FF9BFFCCFFC8FFBCFF94FF8EFF99FF92FF'
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
    Connection = dbOrder
    Transaction = TransactOrder
    SQL.Strings = (
      'select * from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"'
      'order by id')
    Left = 51
    Top = 173
  end
end
