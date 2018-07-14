object FNewZakupka: TFNewZakupka
  Left = 0
  Top = 0
  Caption = #1047#1072#1082#1091#1087#1082#1072
  ClientHeight = 432
  ClientWidth = 648
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
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 648
    Height = 32
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 648
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
    end
  end
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 400
    Width = 648
    Height = 32
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 400
    ExplicitWidth = 648
    inherited bardxbrmngr1: TdxBarManager
      DockControlHeights = (
        0
        0
        0
        34)
      inherited btnSave: TdxBarLargeButton
        OnClick = FrameSave1btnSaveClick
      end
    end
  end
  object GridOrder: TcxGrid
    Left = 0
    Top = 57
    Width = 648
    Height = 343
    Align = alClient
    TabOrder = 2
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object ViewOrder: TcxGridDBTableView
      OnDblClick = ViewOrderDblClick
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
      DataController.DataSource = dsGroupZakupka
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = ViewOrderfb
        end
        item
          Format = '0'
          Kind = skSum
          Column = ViewOrdersum
        end
        item
          Format = '0'
          Kind = skSum
          Column = Columnpos
        end
        item
          Format = '$ 0.00'
          Kind = skSum
          Column = ColumnItog
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsData.Editing = False
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object ColumnName: TcxGridDBColumn
        Caption = #1055#1083#1072#1085#1090#1072#1094#1080#1103
        DataBinding.FieldName = 'name'
        Width = 124
      end
      object Columnpos: TcxGridDBColumn
        Caption = #1055#1086#1079#1080#1094#1080#1081
        DataBinding.FieldName = 'pos'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '0'
      end
      object ColumnNumF: TcxGridDBColumn
        Caption = #8470' '#1092#1072#1082#1090#1091#1088#1099
        DataBinding.FieldName = #1092#1072#1082#1090#1091#1088#1072'_'#1085#1086#1084#1077#1088
        Width = 87
      end
      object ColumnDateF: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1092#1072#1082#1090#1091#1088#1099
        DataBinding.FieldName = #1092#1072#1082#1090#1091#1088#1072'_'#1076#1072#1090#1072
        Width = 91
      end
      object ViewOrderfb: TcxGridDBColumn
        Caption = #1050#1086#1083'-'#1074#1086' FB'
        DataBinding.FieldName = 'fb'
        Width = 73
      end
      object ViewOrdersum: TcxGridDBColumn
        Caption = #1057#1090#1077#1073#1083#1077#1081
        DataBinding.FieldName = 'sum'
      end
      object ColumnItog: TcxGridDBColumn
        Caption = #1057#1091#1084#1084#1072
        DataBinding.FieldName = 'itog'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',$ 0.00;-,$ 0.00'
      end
    end
    object GridLevelOrder: TcxGridLevel
      GridView = ViewOrder
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
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 3
    Height = 25
    Width = 648
    object lblName: TLabel
      Left = 8
      Top = 6
      Width = 37
      Height = 13
      Caption = 'lblName'
    end
  end
  object QueryGroupZakupka: TUniQuery
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
      'z.id, zd."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'", p.name, p.uni_name, p.reg_name,'
      ' sum(zd.fb) fb,'
      
        ' sum(zd."'#1089#1090#1077#1073#1083#1077#1081'"), count(z.id) pos, z."'#1092#1072#1082#1090#1091#1088#1072'_'#1076#1072#1090#1072'", z."'#1092#1072#1082#1090#1091#1088 +
        #1072'_'#1085#1086#1084#1077#1088'", z.'#1082#1086#1076'_'#1092#1072#1082#1090#1091#1088#1099
      ' , sum(zd."'#1089#1090#1077#1073#1083#1077#1081'"*zd."'#1094#1077#1085#1072'")  itog'
      'FROM'
      '  "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1091#1087#1082#1080'" z'
      
        '  INNER JOIN "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1091#1087#1082#1080'_'#1076#1077#1090#1072#1083#1100'" zd ON (z.id = zd."'#1082#1086#1076'_' +
        #1079#1072#1082#1091#1087#1082#1080'")'
      
        ' inner join "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" p on (p.id=zd."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080 +
        '")'
      'where z."'#1082#1086#1076'_'#1076#1077#1090#1072#1083#1080'_'#1079#1072#1082#1072#1079#1072'"=:id'
      
        '  group by z.id, zd."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'", p.name, p.uni_name, p.reg_n' +
        'ame'
      '  , z."'#1092#1072#1082#1090#1091#1088#1072'_'#1076#1072#1090#1072'", z."'#1092#1072#1082#1090#1091#1088#1072'_'#1085#1086#1084#1077#1088'",z.'#1082#1086#1076'_'#1092#1072#1082#1090#1091#1088#1099)
    AfterFetch = QueryGroupZakupkaAfterFetch
    Left = 484
    Top = 212
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
  end
  object dsGroupZakupka: TDataSource
    DataSet = QueryGroupZakupka
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
      'SELECT '
      'z.id,'
      ' sum(zd.fb) fb,'
      ' sum(zd."'#1089#1090#1077#1073#1083#1077#1081'")'
      'FROM'
      '  "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1091#1087#1082#1080'" z'
      
        '  INNER JOIN "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1091#1087#1082#1080'_'#1076#1077#1090#1072#1083#1100'" zd ON (z.id = zd."'#1082#1086#1076'_' +
        #1079#1072#1082#1091#1087#1082#1080'")'
      'where z."'#1082#1086#1076'_'#1076#1077#1090#1072#1083#1080'_'#1079#1072#1082#1072#1079#1072'"=:id'
      '  group by z.id')
    Left = 360
    Top = 204
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
  end
end
