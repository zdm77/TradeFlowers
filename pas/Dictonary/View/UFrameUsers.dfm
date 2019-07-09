object FrameUsers: TFrameUsers
  Left = 0
  Top = 0
  Width = 752
  Height = 469
  TabOrder = 0
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 752
    Height = 32
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 752
    ExplicitHeight = 32
    inherited barProduct: TdxBarManager
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
      inherited btnRazdel: TdxBarLargeButton
        Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1055#1050
        Hint = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1055#1050
        LargeImageIndex = 7
        OnClick = btnRazdelClick
      end
    end
  end
  object GroupOrg: TcxGroupBox
    Left = 0
    Top = 32
    Align = alLeft
    Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 1
    Height = 437
    Width = 245
    object cxGrid1: TcxGrid
      Left = 3
      Top = 15
      Width = 239
      Height = 412
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      ExplicitTop = 18
      ExplicitWidth = 241
      ExplicitHeight = 417
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        DataController.DataSource = dsOrg
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        object cxGridDBColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'name'
          Width = 455
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  object GroupUsers: TcxGroupBox
    Left = 245
    Top = 32
    Align = alClient
    Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 2
    Height = 437
    Width = 507
    object GridUsers: TcxGrid
      Left = 3
      Top = 15
      Width = 501
      Height = 412
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      ExplicitLeft = 2
      ExplicitTop = 18
      ExplicitWidth = 503
      ExplicitHeight = 417
      object ViewStatWork: TcxGridDBTableView
        OnDblClick = ViewStatWorkDblClick
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        DataController.DataSource = dsUsers
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
        object ColumnName: TcxGridDBColumn
          DataBinding.FieldName = 'name'
          Width = 380
        end
        object ColumnLogin: TcxGridDBColumn
          DataBinding.FieldName = 'login'
        end
      end
      object LevelStatWork: TcxGridLevel
        GridView = ViewStatWork
      end
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
  object QueryUsers: TUniQuery
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
    MasterSource = dsOrg
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 480
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 49
      end>
  end
  object dsUsers: TDataSource
    DataSet = QueryUsers
    Left = 480
    Top = 272
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
    Left = 92
    Top = 168
  end
  object dsOrg: TDataSource
    DataSet = QueryOrg
    Left = 92
    Top = 232
  end
end
