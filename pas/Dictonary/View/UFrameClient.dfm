object FrameClient: TFrameClient
  Left = 0
  Top = 0
  Width = 854
  Height = 452
  TabOrder = 0
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 854
    Height = 32
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 854
    ExplicitHeight = 32
    inherited barProduct: TdxBarManager
      PixelsPerInch = 96
      DockControlHeights = (
        0
        0
        69
        0)
      inherited btnAdd: TdxBarLargeButton
        OnClick = btnAddClick
      end
      inherited btnEdit: TdxBarLargeButton
        OnClick = btnEditClick
      end
      inherited btnDel: TdxBarLargeButton
        OnClick = btnDelClick
      end
      inherited btnRest: TdxBarLargeButton
        Visible = ivAlways
        OnClick = btnRestClick
      end
      inherited btnRefresh: TdxBarLargeButton
        OnClick = btnRefreshClick
      end
      inherited btnPrint: TdxBarLargeButton
        Visible = ivAlways
        DropDownMenu = FrameTopPanel1.pmClients
      end
      inherited btnReportClients: TdxBarButton
        OnClick = btnReportClientsClick
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
  object GridStatWork: TcxGrid
    Left = 0
    Top = 61
    Width = 854
    Height = 391
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object ViewStatWork: TcxGridDBTableView
      OnDblClick = ViewStatWorkDblClick
      Navigator.Buttons.CustomButtons = <>
      FilterBox.CustomizeButtonAlignment = fbaLeft
      FilterBox.Position = fpTop
      DataController.DataSource = dsClient
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Editing = False
      OptionsSelection.CellSelect = False
      OptionsView.GroupByBox = False
      OptionsView.ShowColumnFilterButtons = sfbAlways
      object ColumnName: TcxGridDBColumn
        DataBinding.FieldName = 'name'
        Width = 322
      end
      object ColumnPhone: TcxGridDBColumn
        DataBinding.FieldName = #1090#1077#1083#1077#1092#1086#1085
        Width = 137
      end
      object ColumnStat: TcxGridDBColumn
        Caption = #1057#1090#1072#1090#1091#1089
        DataBinding.FieldName = 'status'
      end
      object ColumnManager: TcxGridDBColumn
        Caption = #1052#1077#1085#1077#1076#1078#1077#1088
        DataBinding.FieldName = 'user_name'
        Width = 93
      end
      object ColumnDel: TcxGridDBColumn
        DataBinding.FieldName = #1089#1082#1088#1099#1090
        Visible = False
      end
      object ColumnMark: TcxGridDBColumn
        Caption = #1059#1095#1072#1074#1089#1090#1074#1091#1077#1090' '#1074' '#1084#1072#1088#1082#1080#1088#1086#1074#1082#1072#1093
        DataBinding.FieldName = #1074'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1072#1093
        PropertiesClassName = 'TcxCheckBoxProperties'
        Width = 171
      end
    end
    object LevelStatWork: TcxGridLevel
      GridView = ViewStatWork
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
    TabOrder = 2
    Height = 29
    Width = 854
    object lbl1: TLabel
      Left = 3
      Top = 7
      Width = 70
      Height = 13
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103':'
    end
    object edtOrg: TcxLookupComboBox
      Left = 72
      Top = 3
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsOrg
      Properties.OnEditValueChanged = edtOrgPropertiesEditValueChanged
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
      Width = 261
    end
    object chkDel: TcxCheckBox
      Left = 339
      Top = 4
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1089#1082#1088#1099#1090#1099#1077
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 1
      Transparent = True
      OnClick = chkDelClick
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
      
        'SELECT ID, PID, NAME, id_is_client, id_supplier, id_competitor, ' +
        'adress, phone, comment, id_del FROM clients'
      'WHERE'
      '  ID = :ID')
    Connection = DM1.db1
    Left = 352
    Top = 216
  end
  object QueryOrg: TUniQuery
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
      
        'select * from   "'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'"."'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'" where id<>1 order by' +
        ' name')
    BeforeFetch = QueryOrgBeforeFetch
    Left = 480
    Top = 208
  end
  object dsOrg: TDataSource
    DataSet = QueryOrg
    Left = 480
    Top = 272
  end
  object QueryClient: TUniQuery
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
      'SELECT '
      'c.*,'
      ' '
      '  s.name status,'
      '  '
      '  u.name user_name'
      'FROM'
      '  "'#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099'"."'#1082#1083#1080#1077#1085#1090#1099'" c'
      
        '  INNER JOIN "'#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099'"."'#1089#1090#1072#1090#1091#1089#1099'" s ON (c."'#1082#1086#1076'_'#1089#1090#1072#1090#1091#1089#1072'_'#1088#1072#1073#1086#1090#1099 +
        '" = s.id)'
      
        '  LEFT OUTER JOIN "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'" u ON (c."'#1082#1086#1076'_'#1087#1086#1083 +
        #1100#1079#1086#1074#1072#1090#1077#1083#1103'" = u.id)'
      'order by name')
    BeforeFetch = QueryClientBeforeFetch
    AfterFetch = QueryClientAfterFetch
    Left = 80
    Top = 184
  end
  object dsClient: TDataSource
    DataSet = QueryClient
    Left = 76
    Top = 240
  end
  object Style1: TcxStyleRepository
    Left = 184
    Top = 168
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInactiveBorder
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle2: TcxStyle
    end
  end
  object Report1: TfrxReport
    Version = '6.7.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41319.714743460650000000
    ReportOptions.LastChange = 41319.714743460650000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 152
    Top = 288
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
