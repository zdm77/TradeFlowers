object FNewPedidoPosition: TFNewPedidoPosition
  Left = 0
  Top = 0
  Caption = 'FNewPedidoPosition'
  ClientHeight = 569
  ClientWidth = 1022
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
    Width = 1022
    Height = 35
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1022
    inherited barProduct: TdxBarManager
      DockControlHeights = (
        0
        0
        34
        0)
      inherited btnAdd: TdxBarLargeButton
        OnClick = btnAddClick
      end
    end
  end
  object Group1: TcxGroupBox
    Left = 0
    Top = 35
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
    TabOrder = 1
    Height = 37
    Width = 1022
    object lbl1: TLabel
      Left = 320
      Top = 14
      Width = 67
      Height = 13
      Caption = #1044#1072#1090#1072' '#1074#1099#1083#1077#1090#1072
    end
    object edtMarking: TcxButtonEdit
      Left = 58
      Top = 10
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edtMarkingPropertiesButtonClick
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
      Width = 256
    end
    object lblMarking: TcxLabel
      Left = 11
      Top = 12
      Caption = 'Marking'
      Transparent = True
    end
    object edtDateFly: TDateTimePicker
      Left = 393
      Top = 10
      Width = 113
      Height = 21
      Date = 0.339362465274462000
      Time = 0.339362465274462000
      ShowCheckbox = True
      Checked = False
      TabOrder = 2
    end
  end
  object GridOrder: TcxGrid
    Left = 0
    Top = 72
    Width = 1022
    Height = 497
    Align = alClient
    TabOrder = 2
    LookAndFeel.Kind = lfOffice11
    object ViewOrder: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
      DataController.DataSource = dsPedidoPos
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsData.Editing = False
      OptionsSelection.CellSelect = False
      OptionsView.CellEndEllipsis = True
      OptionsView.GroupByBox = False
      object ColumnViewOrderpl_name: TcxGridDBColumn
        Caption = #1055#1083#1072#1085#1090#1072#1094#1080#1103
        DataBinding.FieldName = 'pl_name'
        Width = 116
      end
      object ColumnViewOrders_name: TcxGridDBColumn
        Caption = #1057#1086#1088#1090
        DataBinding.FieldName = 's_name'
        Width = 126
      end
      object ColumnViewOrderDBColumn: TcxGridDBColumn
        Caption = #1044#1083#1080#1085#1072
        DataBinding.FieldName = #1076#1083#1080#1085#1072
        Width = 67
      end
      object ColumnViewOrder__1: TcxGridDBColumn
        Caption = #1050#1086#1083'-'#1074#1086' FB'
        DataBinding.FieldName = #1082#1086#1083'_'#1074#1086'_'#1092#1091#1083#1073#1086#1082#1089#1086#1074
        Width = 85
      end
      object ColumnСтеблей: TcxGridDBColumn
        Caption = 'C'#1090#1077#1073#1083#1077#1081
        DataBinding.FieldName = #1089#1090#1077#1073#1083#1077#1081
        Width = 67
      end
      object ColumnPrice: TcxGridDBColumn
        Caption = #1062#1077#1085#1072
        DataBinding.FieldName = #1094#1077#1085#1072
        Width = 52
      end
      object ColumnStand: TcxGridDBColumn
        Caption = #1057#1090#1077#1085#1076#1080#1085#1075
        DataBinding.FieldName = #1089#1090#1077#1085#1076#1080#1085#1075
        PropertiesClassName = 'TcxCheckBoxProperties'
        Visible = False
        Width = 68
      end
      object ColumnLock: TcxGridDBColumn
        Caption = #1047#1072#1087#1088#1077#1090' '#1087#1083#1072#1085#1090#1072#1094#1080#1081
        DataBinding.FieldName = #1079#1072#1087#1088#1077#1090'_'#1087#1083#1072#1085#1090#1072#1094#1080#1081
        Visible = False
        Width = 150
      end
      object ColumnGood: TcxGridDBColumn
        Caption = #1046#1077#1083#1072#1077#1084#1099#1077' '#1087#1083#1072#1085#1090#1072#1094#1080#1080
        DataBinding.FieldName = #1078#1077#1083#1072#1077#1084#1099#1077'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080
        Visible = False
        Width = 150
      end
      object ColumnLockPos: TcxGridDBColumn
        DataBinding.FieldName = #1079#1072#1087#1088#1077#1090'_'#1087#1086#1082#1091#1087#1082#1080
        Visible = False
      end
      object ColumnЗакуп: TcxGridDBColumn
        DataBinding.FieldName = #1082#1086#1076'_'#1079#1072#1082#1091#1087#1082#1080
        Visible = False
      end
    end
    object GridLevelOrder: TcxGridLevel
      GridView = ViewOrder
    end
  end
  object QueryPedidoPos: TUniQuery
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
      'select z."'#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072'"'
      'from "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1072#1079#1099'" z'
      ''
      'group by z."'#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072'"'
      'order by z."'#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072'" desc')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 480
    Top = 208
  end
  object dsPedidoPos: TDataSource
    DataSet = QueryPedidoPos
    Left = 480
    Top = 272
  end
  object Query1: TUniQuery
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
      'select z."'#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072'"'
      'from "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1072#1079#1099'" z'
      ''
      'group by z."'#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072'"'
      'order by z."'#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072'" desc')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 352
    Top = 240
  end
end
