object FSelectOrder: TFSelectOrder
  Left = 0
  Top = 0
  Caption = #1042#1099#1073#1086#1088' '#1079#1072#1082#1072#1079#1072
  ClientHeight = 490
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  inline FrameOrder1: TFrameOrder
    Left = 0
    Top = 0
    Width = 635
    Height = 265
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 635
    ExplicitHeight = 265
    inherited FrameTopPanel1: TFrameTopPanel
      Width = 635
      ExplicitWidth = 635
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
          Visible = ivNever
        end
        inherited btnDel: TdxBarLargeButton
          Visible = ivNever
        end
        inherited btnSel: TdxBarLargeButton
          Visible = ivAlways
          OnClick = FrameTopPanel1btnSelClick
        end
      end
    end
    inherited GridOrder: TcxGrid
      Width = 635
      Height = 196
      ExplicitWidth = 635
      ExplicitHeight = 196
      inherited ViewOrder: TcxGridDBTableView
        OnDblClick = FrameOrder1ViewOrderDblClick
      end
    end
    inherited Group1: TcxGroupBox
      ExplicitWidth = 635
      Width = 635
    end
  end
  object cxspltr1: TcxSplitter
    Left = 0
    Top = 265
    Width = 635
    Height = 8
    HotZoneClassName = 'TcxMediaPlayer9Style'
    AlignSplitter = salTop
    Control = FrameOrder1
    ExplicitWidth = 8
  end
  object GridOrder: TcxGrid
    Left = 0
    Top = 273
    Width = 635
    Height = 217
    Align = alClient
    TabOrder = 2
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object ViewOrder: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
      DataController.DataSource = dsOrderDeatil
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsData.Editing = False
      OptionsSelection.CellSelect = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      object ColumnViewOrderpl_name: TcxGridDBColumn
        Caption = #1055#1083#1072#1085#1090#1072#1094#1080#1103
        DataBinding.FieldName = 'pl_name'
        Width = 107
      end
      object ColumnViewOrders_name: TcxGridDBColumn
        Caption = #1057#1086#1088#1090
        DataBinding.FieldName = 's_name'
        Width = 112
      end
      object ColumnViewOrderDBColumn: TcxGridDBColumn
        Caption = #1044#1083#1080#1085#1072
        DataBinding.FieldName = #1076#1083#1080#1085#1072
        Width = 89
      end
      object ColumnViewOrder__1: TcxGridDBColumn
        Caption = #1050#1086#1083'-'#1074#1086' FB'
        DataBinding.FieldName = #1082#1086#1083'_'#1074#1086'_'#1092#1091#1083#1073#1086#1082#1089#1086#1074
        Width = 76
      end
      object ColumnСтеблей: TcxGridDBColumn
        Caption = 'C'#1090#1077#1073#1083#1077#1081
        DataBinding.FieldName = #1089#1090#1077#1073#1083#1077#1081
        Width = 66
      end
      object ColumnPrice: TcxGridDBColumn
        Caption = #1062#1077#1085#1072
        DataBinding.FieldName = #1094#1077#1085#1072
        Width = 62
      end
      object ColumnStand: TcxGridDBColumn
        Caption = #1057#1090#1077#1085#1076#1080#1085#1075
        DataBinding.FieldName = #1089#1090#1077#1085#1076#1080#1085#1075
        PropertiesClassName = 'TcxCheckBoxProperties'
      end
    end
    object GridLevelOrder: TcxGridLevel
      GridView = ViewOrder
    end
  end
  object QueryOrderDetail: TUniQuery
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
      '  pl.name pl_name,'
      '  d.id,'
      '  d."'#1082#1086#1076'_'#1079#1072#1082#1072#1079#1072'",'
      '  d."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'",'
      '  d."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'",'
      '  d."'#1076#1083#1080#1085#1072'",'
      '  d."'#1082#1086#1083'_'#1074#1086'_'#1092#1091#1083#1073#1086#1082#1089#1086#1074'",'
      '  s.name s_name,'
      '  pl.uni_name pl_uni_name,'
      '  pl.reg_name pl_reg_name,'
      '  s.uni_name s_uni_name,'
      '  s.reg_name s_reg_name,'
      'd.'#1094#1077#1085#1072', d.'#1089#1090#1077#1085#1076#1080#1085#1075', d.'#1089#1090#1077#1073#1083#1077#1081
      'FROM'
      '  "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1072#1079#1099'_'#1076#1077#1090#1072#1083#1100'" d'
      
        '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pl ON (d."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" = ' +
        'pl.id)'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090#1072'" s ON (d."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'" = s.id)'
      'where '#1082#1086#1076'_'#1079#1072#1082#1072#1079#1072'=:id'
      'order by pl_name, pl_uni_name, pl_reg_name')
    MasterSource = FrameOrder1.dsOrder
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1079#1072#1082#1072#1079#1072
    Left = 224
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
  end
  object dsOrderDeatil: TDataSource
    DataSet = QueryOrderDetail
    Left = 224
    Top = 400
  end
end
