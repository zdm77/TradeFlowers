object FNewPriceLength: TFNewPriceLength
  Left = 0
  Top = 0
  Caption = #1047#1072#1082#1091#1087#1086#1095#1085#1099#1081' '#1083#1080#1089#1090
  ClientHeight = 488
  ClientWidth = 623
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
  object Group1: TcxGroupBox
    Left = 0
    Top = 108
    Align = alClient
    Caption = #1057#1086#1088#1090#1072
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 0
    Height = 380
    Width = 623
    inline FrameTopPanel1: TFrameTopPanel
      Left = 3
      Top = 15
      Width = 617
      Height = 35
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = -2
      ExplicitWidth = 619
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
          Visible = ivNever
        end
        inherited btnDel: TdxBarLargeButton
          OnClick = btnDelClick
        end
      end
    end
    object GridUsers: TcxGrid
      Left = 3
      Top = 50
      Width = 617
      Height = 320
      Align = alClient
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      ExplicitLeft = 2
      ExplicitTop = 53
      ExplicitWidth = 619
      ExplicitHeight = 325
      object ViewUsers: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsSort
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
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object ColumnUniName: TcxGridDBColumn
          Caption = #1052#1077#1078#1076#1091#1085#1072#1088#1086#1076#1085#1086#1077
          DataBinding.FieldName = 'uni_name'
          Width = 200
        end
        object ColumnName: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'name'
          Width = 200
        end
        object ColumnRegName: TcxGridDBColumn
          Caption = #1056#1077#1075#1080#1086#1085#1072#1083#1100#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'reg_name'
          Width = 200
        end
      end
      object LevelOrg: TcxGridLevel
        GridView = ViewUsers
      end
    end
  end
  object GroupPrice: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = #1062#1077#1085#1099
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 1
    Height = 108
    Width = 623
    inline FrameTopPanel2: TFrameTopPanel
      Left = 3
      Top = 15
      Width = 617
      Height = 35
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = -2
      ExplicitWidth = 619
      inherited barProduct: TdxBarManager
        DockControlHeights = (
          0
          0
          69
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
      end
    end
    object GridPriceL: TcxDBPivotGrid
      Left = 3
      Top = 50
      Width = 617
      Height = 48
      Align = alClient
      DataSource = dsPriceL
      Groups = <>
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = ''
      OptionsView.ColumnFields = False
      OptionsView.ColumnGrandTotals = False
      OptionsView.ColumnTotals = False
      OptionsView.DataFields = False
      OptionsView.FilterFields = False
      OptionsView.RowGrandTotals = False
      OptionsView.RowTotals = False
      TabOrder = 1
      OnDblClick = GridPriceLDblClick
      OnKeyDown = GridPriceLKeyDown
      ExplicitLeft = 2
      ExplicitTop = 53
      ExplicitWidth = 619
      ExplicitHeight = 53
      object GridPriceLg_name: TcxDBPivotGridField
        Area = faRow
        AreaIndex = 0
        IsCaptionAssigned = True
        Caption = #1062#1077#1085#1086#1074#1072#1103' '#1075#1088#1091#1087#1087#1072
        DataBinding.FieldName = 'g_name'
        Options.Filtering = False
        Options.Sizing = False
        Options.Sorting = False
        TotalsVisibility = tvNone
        Visible = True
        Width = 120
        UniqueName = #1062#1077#1085#1086#1074#1072#1103' '#1075#1088#1091#1087#1087#1072
      end
      object GridPriceLl_name: TcxDBPivotGridField
        Area = faColumn
        AreaIndex = 0
        IsCaptionAssigned = True
        Caption = #1044#1083#1080#1085#1099
        DataBinding.ValueType = 'Integer'
        DataBinding.FieldName = 'l_name'
        Options.Filtering = False
        Options.Sorting = False
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.Alignment.Horz = taCenter
        TotalsVisibility = tvNone
        Visible = True
        Width = 43
        UniqueName = #1044#1083#1080#1085#1099
      end
      object GridPriceLcxDBPivotGridField: TcxDBPivotGridField
        Area = faData
        AreaIndex = 0
        DataBinding.FieldName = #1094#1077#1085#1072
        Visible = True
        UniqueName = #1094#1077#1085#1072
      end
      object Rec_ID: TcxDBPivotGridField
        AreaIndex = 0
        IsCaptionAssigned = True
        Caption = 'Rec_ID'
        DataBinding.FieldName = 'id'
        UniqueName = 'Rec_ID'
      end
    end
  end
  object dsPriceL: TDataSource
    DataSet = QueryPriceL
    Left = 140
    Top = 192
  end
  object QueryPriceL: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1072'_'#1094#1077#1085#1072'"'
      '  ("'#1094#1077#1085#1072'")'
      'VALUES'
      '  (:"'#1094#1077#1085#1072'")')
    SQLDelete.Strings = (
      'DELETE FROM "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1072'_'#1094#1077#1085#1072'"'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1072'_'#1094#1077#1085#1072'"'
      'SET'
      '  "'#1094#1077#1085#1072'" = :"'#1094#1077#1085#1072'"'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1072'_'#1094#1077#1085#1072'"'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT "'#1094#1077#1085#1072'" FROM "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1072'_'#1094#1077#1085#1072'"'
      'WHERE'
      '  id = :id')
    Connection = DM1.db1
    SQL.Strings = (
      'SELECT '
      ' pl."'#1082#1086#1076'_'#1076#1083#1080#1085#1099'",'
      ''
      '  pl."'#1082#1086#1076'_'#1094#1077#1085#1099'",  '
      'g.name g_name,'
      '  l.name l_name,'
      '  pl.id,'
      ' '
      '  pl."'#1094#1077#1085#1072'"'
      'FROM'
      '  "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1072'_'#1094#1077#1085#1072'" pl'
      
        '  INNER JOIN "'#1089#1082#1083#1072#1076'"."'#1094#1077#1085#1086#1074#1099#1077'_'#1075#1088#1091#1087#1087#1099'" g ON (pl."'#1082#1086#1076'_'#1094#1077#1085#1099'" = g.id' +
        ')'
      '  INNER JOIN "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1099'" l ON (pl."'#1082#1086#1076'_'#1076#1083#1080#1085#1099'" = l.id)'
      'where '#1082#1086#1076'_'#1094#1077#1085#1099'=:id_type')
    Left = 240
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_type'
        Value = nil
      end>
  end
  object Dril1: TcxPivotGridDrillDownDataSet
    PivotGrid = GridPriceL
    SynchronizeData = True
    Left = 392
    Top = 240
  end
  object Query1: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1072'_'#1094#1077#1085#1072'"'
      '  ("'#1094#1077#1085#1072'")'
      'VALUES'
      '  (:"'#1094#1077#1085#1072'")')
    SQLDelete.Strings = (
      'DELETE FROM "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1072'_'#1094#1077#1085#1072'"'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1072'_'#1094#1077#1085#1072'"'
      'SET'
      '  "'#1094#1077#1085#1072'" = :"'#1094#1077#1085#1072'"'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1072'_'#1094#1077#1085#1072'"'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT "'#1094#1077#1085#1072'" FROM "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1072'_'#1094#1077#1085#1072'"'
      'WHERE'
      '  id = :id')
    Connection = DM1.db1
    SQL.Strings = (
      'SELECT '
      ' pl."'#1082#1086#1076'_'#1076#1083#1080#1085#1099'",'
      ''
      '  pl."'#1082#1086#1076'_'#1094#1077#1085#1099'",  '
      'g.'#1089#1086#1088#1090#1080#1088#1086#1074#1082#1072'||'#39'. '#39'||g.name g_name,'
      '  l.name l_name,'
      '  pl.id,'
      ' '
      '  pl."'#1094#1077#1085#1072'"'
      'FROM'
      '  "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1072'_'#1094#1077#1085#1072'" pl'
      
        '  INNER JOIN "'#1089#1082#1083#1072#1076'"."'#1094#1077#1085#1086#1074#1099#1077'_'#1075#1088#1091#1087#1087#1099'" g ON (pl."'#1082#1086#1076'_'#1094#1077#1085#1099'" = g.id' +
        ')'
      '  INNER JOIN "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1099'" l ON (pl."'#1082#1086#1076'_'#1076#1083#1080#1085#1099'" = l.id)'
      'order by '
      ''
      '  pl."'#1082#1086#1076'_'#1094#1077#1085#1099'",'
      'pl."'#1082#1086#1076'_'#1076#1083#1080#1085#1099'"')
    Left = 232
    Top = 312
  end
  object QuerySort: TUniQuery
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
    Connection = DM1.db1
    SQL.Strings = (
      'select *'
      'from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090#1072'"'
      'where id in ('
      '              select '#1082#1086#1076'_'#1089#1086#1088#1090#1072
      '              from "'#1089#1082#1083#1072#1076'"."'#1094#1077#1085#1072'_'#1089#1086#1088#1090'"'
      '              where '#1082#1086#1076'_'#1094#1077#1085#1099' = :id_type'
      '      )')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1090#1080#1087#1072
    Left = 491
    Top = 325
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_type'
        Value = nil
      end>
  end
  object dsSort: TDataSource
    DataSet = QuerySort
    Left = 404
    Top = 329
  end
end
