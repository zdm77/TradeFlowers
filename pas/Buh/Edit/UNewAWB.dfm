object FNewAWB: TFNewAWB
  Left = 0
  Top = 0
  Caption = 'AWB'
  ClientHeight = 509
  ClientWidth = 1466
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblТрак: TLabel
    Left = 474
    Top = 38
    Width = 28
    Height = 13
    Caption = #1058#1088#1072#1082':'
  end
  object Group1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 0
    Height = 32
    Width = 1466
    object lblKargo: TLabel
      Left = 583
      Top = 11
      Width = 34
      Height = 13
      Caption = #1050#1072#1088#1075#1086':'
    end
    object lblNum: TLabel
      Left = 3
      Top = 11
      Width = 43
      Height = 13
      Caption = #8470' AWB:'
    end
    object lblDate: TLabel
      Left = 193
      Top = 11
      Width = 56
      Height = 13
      Caption = #1044#1072#1090#1072' AWB:'
    end
    object lblOrg: TLabel
      Left = 1239
      Top = 13
      Width = 70
      Height = 13
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103':'
      Visible = False
    end
    object lblАвиалиния: TLabel
      Left = 358
      Top = 11
      Width = 65
      Height = 13
      Caption = #1040#1074#1072#1080#1072#1083#1080#1085#1080#1103':'
    end
    object lbl1: TLabel
      Left = 815
      Top = 11
      Width = 28
      Height = 13
      Caption = #1058#1088#1072#1082':'
    end
    object Label1: TLabel
      Left = 1007
      Top = 11
      Width = 58
      Height = 13
      Caption = #1055#1088#1080#1082#1091#1083#1080#1085#1075':'
    end
    object edtDate: TDateTimePicker
      Left = 255
      Top = 7
      Width = 97
      Height = 21
      Date = 41535.000000000000000000
      Time = 0.395268159722036200
      ShowCheckbox = True
      Checked = False
      TabOrder = 0
      OnChange = edtDateChange
    end
    object edtOrg: TcxLookupComboBox
      Left = 1307
      Top = 8
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsOrg
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
      TabOrder = 1
      Visible = False
      Width = 174
    end
    object edtNum: TMaskEdit
      Left = 52
      Top = 7
      Width = 135
      Height = 21
      EditMask = '000\-0000\-0000;1;_'
      MaxLength = 13
      TabOrder = 2
      Text = '   -    -    '
      OnChange = edtNumChange
    end
    object edtАвиалиния: TcxLookupComboBox
      Left = 429
      Top = 7
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsАвиалиния
      Properties.OnCloseUp = edtАвиалинияPropertiesCloseUp
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
      TabOrder = 3
      Width = 148
    end
    object edtTrack: TcxLookupComboBox
      Left = 849
      Top = 7
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsTrack
      Properties.OnCloseUp = edtTrackPropertiesCloseUp
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
      TabOrder = 4
      Width = 150
    end
    object edtKargo: TcxLookupComboBox
      Left = 623
      Top = 7
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsKargo
      Properties.OnCloseUp = edtKargoPropertiesCloseUp
      Properties.OnEditValueChanged = edtKargoPropertiesEditValueChanged
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
      TabOrder = 5
      Width = 186
    end
    object edtPrikul: TcxLookupComboBox
      Left = 1071
      Top = 7
      Enabled = False
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsPrikul
      Properties.OnCloseUp = edtPrikulPropertiesCloseUp
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
      TabOrder = 6
      Width = 150
    end
  end
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 32
    Width = 1466
    Height = 38
    Align = alTop
    TabOrder = 1
    ExplicitTop = 32
    ExplicitWidth = 1466
    ExplicitHeight = 38
    inherited barProduct: TdxBarManager
      PixelsPerInch = 96
      inherited dxbrBardxbrmngr1Bar1: TdxBar
        ItemLinks = <
          item
            Visible = True
            ItemName = 'btnSave'
          end
          item
            BeginGroup = True
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
            ItemName = 'btnRazdel'
          end
          item
            Visible = True
            ItemName = 'btnExport'
          end>
      end
      inherited btnAdd: TdxBarLargeButton
        OnClick = btnAddClick
      end
      inherited btnEdit: TdxBarLargeButton
        Enabled = False
        OnClick = btnEditClick
      end
      inherited btnDel: TdxBarLargeButton
        Enabled = False
        OnClick = btnDelClick
      end
      inherited btnRazdel: TdxBarLargeButton
        Caption = #1042' Excel'
        Hint = #1042' Excel'
        Visible = ivAlways
        LargeImageIndex = 23
      end
      inherited btnExport: TdxBarLargeButton
        Enabled = False
        OnClick = btnExportClick
      end
      inherited btnSave: TdxBarLargeButton
        OnClick = btnSaveClick
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
  object GridAWB: TcxGrid
    Left = 0
    Top = 70
    Width = 1466
    Height = 439
    Align = alClient
    TabOrder = 2
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object ViewAWB: TcxGridDBTableView
      OnDblClick = ViewAWBDblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsNewAWB
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
        end
        item
          Format = '$ ,0.00;$ -,0.00'
          Kind = skSum
          Column = ColumnСтоимость
        end
        item
          Format = ',0 '#1082#1075#39'.'#39';'
          Kind = skSum
          Column = ColumnВес
        end
        item
          Format = ',0.00'
          Kind = skSum
          Column = ColumnFB
        end
        item
          Kind = skSum
          Column = ColumnBox
        end
        item
          Format = ',0.00 '#8364';-,0.00 '#8364
          Kind = skSum
          Column = ColumnПрикулинг
        end
        item
          Format = '$ ,0.00;$ -,0.00'
          Kind = skSum
          Column = ColumnТранспорт
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Editing = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object ColumnМаркировка: TcxGridDBColumn
        Caption = #1052#1072#1088#1082#1080#1088#1086#1074#1082#1072
        DataBinding.FieldName = 'name'
        Width = 169
      end
      object ColumnВес: TcxGridDBColumn
        Caption = #1042#1077#1089
        DataBinding.FieldName = #1074#1077#1089
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = ',0 '#1082#1075#39'.'#39';'
        Width = 125
      end
      object ColumnFB: TcxGridDBColumn
        Caption = #1050#1086#1083'-'#1074#1086' FB'
        DataBinding.FieldName = 'sum_FB'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = ',0.00'
        Width = 93
      end
      object ColumnBox: TcxGridDBColumn
        Caption = #1050#1086#1088#1086#1073#1086#1082
        DataBinding.FieldName = 'sum_BOX'
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = ',0'
        Width = 115
      end
      object ColumnПрикулинг: TcxGridDBColumn
        DataBinding.FieldName = #1055#1088#1080#1082#1091#1083#1080#1085#1075
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = ',0.00 '#8364';-,0.00 '#8364
        Visible = False
        Width = 103
      end
      object ColumnТранспорт: TcxGridDBColumn
        DataBinding.FieldName = #1058#1088#1072#1085#1089#1087#1086#1088#1090
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
        Visible = False
        Width = 88
      end
      object ColumnСтоимость: TcxGridDBColumn
        Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
        DataBinding.FieldName = #1089#1090#1086#1080#1084#1086#1089#1090#1100
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
        Width = 109
      end
    end
    object LevelOrg: TcxGridLevel
      GridView = ViewAWB
    end
  end
  object QueryNewAWB: TUniQuery
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
      '  sa.id,'
      '  sa."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'",'
      '  sa."'#1074#1077#1089'",'
      '  sa."'#1089#1090#1086#1080#1084#1086#1089#1090#1100'",'
      '  sa."sum_BOX",'
      '  sa."sum_FB",'
      '  m.name,'
      '  sa."'#1074#1077#1089'"*0.18+7.5 as '#1055#1088#1080#1082#1091#1083#1080#1085#1075','
      '  2200/18*sa."sum_BOX" as '#1058#1088#1072#1085#1089#1087#1086#1088#1090
      'FROM'
      '  "'#1073#1091#1093'".sub_awb sa'
      
        '  INNER JOIN "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"."'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'" m ON (sa."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"' +
        ' = m.id)')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 480
    Top = 208
  end
  object dsNewAWB: TDataSource
    DataSet = QueryNewAWB
    Left = 480
    Top = 272
  end
  object QueryNewAWB1: TUniQuery
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
      '"'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'"."'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'" order by name')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 712
    Top = 160
  end
  object dsOrg: TDataSource
    DataSet = QueryOrg
    Left = 712
    Top = 224
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
    Left = 856
    Top = 176
  end
  object dsАвиалиния: TDataSource
    DataSet = QueryАвиалиния
    Left = 856
    Top = 240
  end
  object QueryTrack: TUniQuery
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
      'SELECT sad.*,'
      '       pl.name'
      'FROM "'#1073#1091#1093'".sub_awb_detail sad'
      
        '     INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pl ON (sad."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080 +
        #1080'" = pl.id)'
      'where sad."'#1082#1086#1076'_sub_awb" = :a')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 712
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'a'
        Value = nil
      end>
  end
  object dsTrack: TDataSource
    DataSet = QueryTrack
    Left = 712
    Top = 288
  end
  object QueryKargo: TUniQuery
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
      'SELECT sad.*,'
      '       pl.name'
      'FROM "'#1073#1091#1093'".sub_awb_detail sad'
      
        '     INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pl ON (sad."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080 +
        #1080'" = pl.id)'
      'where sad."'#1082#1086#1076'_sub_awb" = :a')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 592
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'a'
        Value = nil
      end>
  end
  object dsKargo: TDataSource
    DataSet = QueryKargo
    Left = 592
    Top = 288
  end
  object QueryPrikul: TUniQuery
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
      'SELECT * from "'#1087#1088#1080#1082#1091#1083#1080#1085#1075'"."'#1072#1075#1077#1085#1089#1090#1074#1072'"')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 1032
    Top = 208
  end
  object dsPrikul: TDataSource
    DataSet = QueryPrikul
    Left = 1032
    Top = 272
  end
end
