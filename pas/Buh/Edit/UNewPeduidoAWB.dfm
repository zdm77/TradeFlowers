object FNewPeduidoAWB: TFNewPeduidoAWB
  Left = 0
  Top = 0
  Caption = 'Pedido->AWB'
  ClientHeight = 560
  ClientWidth = 1057
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
    Top = 0
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
    TabOrder = 0
    Height = 35
    Width = 1057
    object lblKargo: TLabel
      Left = 343
      Top = 11
      Width = 34
      Height = 13
      Caption = #1050#1072#1088#1075#1086':'
    end
    object lblNum: TLabel
      Left = 3
      Top = 11
      Width = 77
      Height = 13
      Caption = #8470' '#1084#1085#1077#1084#1086'-AWB:'
    end
    object lblDate: TLabel
      Left = 179
      Top = 11
      Width = 56
      Height = 13
      Caption = #1044#1072#1090#1072' AWB:'
    end
    object lblOrg: TLabel
      Left = 810
      Top = 11
      Width = 70
      Height = 13
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103':'
    end
    object lblАвиалиния: TLabel
      Left = 573
      Top = 11
      Width = 65
      Height = 13
      Caption = #1040#1074#1072#1080#1072#1083#1080#1085#1080#1103':'
    end
    object edtDate: TDateTimePicker
      Left = 240
      Top = 7
      Width = 97
      Height = 21
      Date = 41535.395268159720000000
      Time = 41535.395268159720000000
      Checked = False
      Enabled = False
      TabOrder = 2
    end
    object edtNum: TMaskEdit
      Left = 80
      Top = 7
      Width = 93
      Height = 21
      EditMask = '000\-0000\-0000;1;_'
      MaxLength = 13
      TabOrder = 0
      Text = '   -    -    '
      OnChange = edtNumChange
    end
    object edtKARGO: TDBLookupComboboxEh
      Left = 383
      Top = 8
      Width = 184
      Height = 19
      AlwaysShowBorder = True
      DynProps = <>
      DataField = ''
      DropDownBox.Columns = <
        item
          FieldName = 'uni_name'
          Width = 200
        end>
      DropDownBox.ListSourceAutoFilter = True
      DropDownBox.Options = [dlgColumnResizeEh, dlgColLinesEh]
      DropDownBox.AutoDrop = True
      DropDownBox.Rows = 32
      DropDownBox.Sizable = True
      EditButtons = <>
      Flat = True
      KeyField = 'id'
      ListField = 'uni_name'
      ListSource = dsKARGO
      TabOrder = 1
      Visible = True
      OnChange = edtKARGOChange
    end
    object edtOrg: TDBLookupComboboxEh
      Left = 886
      Top = 8
      Width = 160
      Height = 19
      AlwaysShowBorder = True
      DynProps = <>
      DataField = ''
      DropDownBox.Columns = <
        item
          FieldName = 'name'
          Width = 200
        end>
      DropDownBox.ListSourceAutoFilter = True
      DropDownBox.Options = [dlgColumnResizeEh, dlgColLinesEh]
      DropDownBox.AutoDrop = True
      DropDownBox.Rows = 32
      DropDownBox.Sizable = True
      EditButtons = <>
      Flat = True
      KeyField = 'id'
      ListField = 'name'
      ListSource = dsORG
      TabOrder = 4
      Visible = True
      OnChange = edtOrgChange
    end
    object edtАвиалиния: TDBLookupComboboxEh
      Left = 644
      Top = 8
      Width = 160
      Height = 19
      AlwaysShowBorder = True
      DynProps = <>
      DataField = ''
      DropDownBox.Columns = <
        item
          FieldName = 'uni_name'
          Width = 200
        end>
      DropDownBox.ListSourceAutoFilter = True
      DropDownBox.Options = [dlgColumnResizeEh, dlgColLinesEh]
      DropDownBox.AutoDrop = True
      DropDownBox.Rows = 32
      DropDownBox.Sizable = True
      EditButtons = <>
      Flat = True
      KeyField = 'id'
      ListField = 'uni_name'
      ListSource = dsАвиалиния
      TabOrder = 3
      Visible = True
      OnChange = edtАвиалинияChange
    end
  end
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 528
    Width = 1057
    Height = 32
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 528
    ExplicitWidth = 1057
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
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 35
    Width = 1057
    Height = 38
    Align = alTop
    TabOrder = 2
    ExplicitTop = 35
    ExplicitWidth = 1057
    ExplicitHeight = 38
    inherited barProduct: TdxBarManager
      DockControlHeights = (
        0
        0
        34
        0)
      inherited btnAdd: TdxBarLargeButton
        OnClick = btnAddClick
      end
      inherited btnEdit: TdxBarLargeButton
        OnClick = FrameTopPanel1btnEditClick
      end
      inherited btnDel: TdxBarLargeButton
        OnClick = btnDelClick
      end
    end
  end
  object GridSubAWBPedido: TcxGrid
    Left = 0
    Top = 73
    Width = 1057
    Height = 455
    Align = alClient
    TabOrder = 3
    LookAndFeel.Kind = lfOffice11
    object ViewSubAWBPedido: TcxGridDBTableView
      OnDblClick = ViewSubAWBPedidoDblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSubAWBPedido
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object ColumnType: TcxGridDBColumn
        DataBinding.FieldName = #1090#1080#1087'_'#1084#1085#1077#1084#1086
        Options.CellMerging = True
        Width = 114
      end
      object ViewSubAWBPedidot_name: TcxGridDBColumn
        DataBinding.FieldName = 't_name'
        Width = 150
      end
      object ViewSubAWBPedidom_name: TcxGridDBColumn
        DataBinding.FieldName = 'm_name'
        Width = 150
      end
      object ColumnFito: TcxGridDBColumn
        DataBinding.FieldName = 'f_name'
        Width = 144
      end
      object ColumnPricul: TcxGridDBColumn
        DataBinding.FieldName = 'pr_name'
        Width = 164
      end
    end
    object LevelSubAWBPedido: TcxGridLevel
      GridView = ViewSubAWBPedido
    end
  end
  object QueryАвиалиния: TUniQuery
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
      'SELECT '
      '  *'
      'FROM'
      ' "'#1072#1074#1080#1072#1083#1080#1085#1080#1080'"."'#1072#1074#1080#1072#1083#1080#1085#1080#1080'" order by name')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 664
    Top = 192
  end
  object dsАвиалиния: TDataSource
    DataSet = QueryАвиалиния
    Left = 664
    Top = 256
  end
  object QueryKARGO: TUniQuery
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
      'SELECT '
      '  *'
      'FROM'
      ' "'#1072#1074#1080#1072#1083#1080#1085#1080#1080'"."'#1072#1074#1080#1072#1083#1080#1085#1080#1080'" order by name')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 544
    Top = 200
  end
  object dsKARGO: TDataSource
    DataSet = QueryKARGO
    Left = 544
    Top = 264
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
      'SELECT '
      '  *'
      'FROM'
      ' "'#1072#1074#1080#1072#1083#1080#1085#1080#1080'"."'#1072#1074#1080#1072#1083#1080#1085#1080#1080'" order by name')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 368
    Top = 248
  end
  object QueryOrg: TUniQuery
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
      'SELECT '
      '  *'
      'FROM'
      '"'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'"."'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'"  order by name')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 200
    Top = 192
  end
  object dsORG: TDataSource
    DataSet = QueryOrg
    Left = 200
    Top = 256
  end
  object QuerySubAWBPedido: TUniQuery
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
      'SELECT '
      '  t.uni_name AS t_name,'
      '  m.uni_name AS m_name,'
      '  sa.id,'
      '  sa."'#1082#1086#1076'_AWB",'
      '  sa."'#1082#1086#1076'_'#1090#1088#1072#1082#1072'",'
      '  sa."'#1090#1080#1087'_'#1084#1085#1077#1084#1086'",'
      '  sa."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'",'
      '  sa."'#1087#1086#1088#1103#1076#1086#1082'",'
      '  coalesce(sa."'#1087#1086#1088#1103#1076#1086#1082'", 0) AS ord,'
      '  f.uni_name as f_name,'
      '  sa."'#1082#1086#1076'_'#1092#1080#1090#1086'",'
      '  sa."'#1082#1086#1076'_'#1087#1088#1080#1082#1091#1083#1080#1085#1075#1072'",'
      '  pr.name as pr_name'
      'FROM'
      '  "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"."'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'" m'
      '  INNER JOIN "'#1073#1091#1093'".sub_awb sa ON (m.id = sa."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'")'
      '  INNER JOIN "'#1090#1088#1072#1082#1080'"."'#1090#1088#1072#1082#1080'" t ON (sa."'#1082#1086#1076'_'#1090#1088#1072#1082#1072'" = t.id)'
      '  inner join "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1092#1080#1090#1086'" f on (f.id=sa."'#1082#1086#1076'_'#1092#1080#1090#1086'")'
      
        '  inner join "'#1087#1088#1080#1082#1091#1083#1080#1085#1075'"."'#1072#1075#1077#1085#1089#1090#1074#1072'" pr on (pr.id=sa."'#1082#1086#1076'_'#1087#1088#1080#1082#1091#1083#1080 +
        #1085#1075#1072'")'
      'WHERE'
      '  sa."'#1082#1086#1076'_AWB" = :id '
      'ORDER BY'
      '  ord')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 64
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
  end
  object dsSubAWBPedido: TDataSource
    DataSet = QuerySubAWBPedido
    Left = 64
    Top = 280
  end
end
