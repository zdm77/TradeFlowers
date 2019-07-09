object FNewAirLine: TFNewAirLine
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1040#1074#1080#1072#1083#1080#1085#1080#1103
  ClientHeight = 361
  ClientWidth = 427
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 329
    Width = 427
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 329
    ExplicitWidth = 427
    inherited bardxbrmngr1: TdxBarManager
      PixelsPerInch = 96
      inherited btnSave: TdxBarLargeButton
        OnClick = FrameSave1btnSaveClick
      end
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 73
    Align = alClient
    Caption = #1056#1072#1089#1087#1080#1089#1072#1085#1080#1077
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 1
    Height = 256
    Width = 427
    inline FrameTopPanel1: TFrameTopPanel
      Left = 2
      Top = 18
      Width = 423
      Height = 32
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 18
      ExplicitWidth = 423
      ExplicitHeight = 32
      inherited barProduct: TdxBarManager
        PixelsPerInch = 96
        DockControlHeights = (
          0
          0
          134
          0)
        inherited btnAdd: TdxBarLargeButton
          OnClick = FrameTopPanel1btnAddClick
        end
        inherited btnEdit: TdxBarLargeButton
          OnClick = FrameTopPanel1btnEditClick
        end
        inherited btnDel: TdxBarLargeButton
          OnClick = FrameTopPanel1btnDelClick
        end
        inherited btnRefresh: TdxBarLargeButton
          OnClick = FrameTopPanel1btnRefreshClick
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
      Left = 2
      Top = 50
      Width = 423
      Height = 204
      Align = alClient
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object ViewStatWork: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeButtonAlignment = fbaLeft
        FilterBox.Position = fpTop
        FilterBox.Visible = fvNever
        DataController.DataSource = dsTimes
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.Editing = False
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        object ColumnName: TcxGridDBColumn
          Caption = #1044#1085#1080' '#1074#1099#1083#1077#1090#1072
          DataBinding.FieldName = #1076#1077#1085#1100
          Width = 192
        end
        object ColumnTimeВылет: TcxGridDBColumn
          Caption = #1042#1088#1077#1084#1103' '#1074#1099#1083#1077#1090#1072
          DataBinding.FieldName = #1074#1088#1077#1084#1103'_'#1074#1099#1083#1077#1090#1072
          Width = 106
        end
        object ColumnTimeПрилет: TcxGridDBColumn
          Caption = #1042#1088#1077#1084#1103' '#1087#1088#1080#1083#1077#1090#1072
          DataBinding.FieldName = #1074#1088#1077#1084#1103'_'#1087#1088#1080#1083#1077#1090#1072
          Width = 107
        end
      end
      object LevelStatWork: TcxGridLevel
        GridView = ViewStatWork
      end
    end
  end
  inline FrameUniName1: TFrameUniName
    Left = 0
    Top = 0
    Width = 427
    Height = 73
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 427
    ExplicitHeight = 73
    inherited Group1: TcxGroupBox
      Align = alTop
      ExplicitWidth = 427
      ExplicitHeight = 69
      Height = 69
      Width = 427
      inherited edtUniName: TcxTextEdit
        Properties.OnEditValueChanged = FrameUniName1edtUniNamePropertiesEditValueChanged
        OnKeyUp = FrameUniName1edtUniNameKeyUp
      end
      inherited edtRegName: TcxTextEdit
        Properties.OnEditValueChanged = FrameUniName1edtRegNamePropertiesEditValueChanged
        OnKeyUp = FrameUniName1edtRegNameKeyUp
      end
      inherited edtName: TcxTextEdit
        Properties.OnEditValueChanged = FrameUniName1edtNamePropertiesEditValueChanged
        OnKeyUp = FrameUniName1edtNameKeyUp
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
    SQL.Strings = (
      
        'select * from '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'.'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080' where '#1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'=:i' +
        'd order by name')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 316
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 49
      end>
  end
  object QueryTimes: TUniQuery
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
    Left = 80
    Top = 80
  end
  object dsTimes: TDataSource
    DataSet = QueryTimes
    Left = 80
    Top = 176
  end
end
