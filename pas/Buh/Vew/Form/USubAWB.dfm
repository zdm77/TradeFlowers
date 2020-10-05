object FSubAWB: TFSubAWB
  Left = 0
  Top = 0
  Caption = #1044#1077#1090#1072#1083#1080#1079#1072#1094#1080#1103' AWB'
  ClientHeight = 530
  ClientWidth = 1030
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
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
    TabOrder = 0
    Height = 33
    Width = 1030
    object lblМарикровка: TLabel
      Left = 3
      Top = 10
      Width = 66
      Height = 13
      Caption = #1052#1072#1088#1082#1080#1088#1086#1074#1082#1072':'
    end
    object lblВес: TLabel
      Left = 315
      Top = 10
      Width = 21
      Height = 13
      Caption = #1042#1077#1089':'
    end
    object Label2: TLabel
      Left = 431
      Top = 10
      Width = 58
      Height = 13
      Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100':'
    end
    object lblТрак: TLabel
      Left = 756
      Top = 9
      Width = 28
      Height = 13
      Caption = #1058#1088#1072#1082':'
      Visible = False
    end
    object edtMarking: TcxButtonEdit
      Left = 75
      Top = 6
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
      Width = 234
    end
    object edtTrack: TcxLookupComboBox
      Left = 790
      Top = 5
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsTrack
      Properties.OnChange = edtTrackPropertiesChange
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 1
      Visible = False
      Width = 115
    end
    object edtWeight: TsCalcEdit
      Left = 342
      Top = 6
      Width = 83
      Height = 21
      AutoSize = False
      TabOrder = 2
      OnChange = edtWeightChange
      SkinData.SkinSection = 'EDIT'
      DecimalPlaces = 0
      DisplayFormat = '### ### ##0;-### ### ##0.00;0'
      Value = 1.000000000000000000
    end
    object edtStoim: TsCalcEdit
      Left = 495
      Top = 6
      Width = 104
      Height = 21
      AutoSize = False
      TabOrder = 3
      SkinData.SkinSection = 'EDIT'
    end
    object btnCalc: TcxButton
      Left = 653
      Top = 3
      Width = 97
      Height = 25
      Caption = #1057#1086#1089#1090#1072#1074
      TabOrder = 4
      Visible = False
      OnClick = btnCalcClick
    end
  end
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 33
    Width = 1030
    Height = 38
    Align = alTop
    TabOrder = 1
    ExplicitTop = 33
    ExplicitWidth = 1030
    ExplicitHeight = 38
    inherited barProduct: TdxBarManager
      Left = 416
      Top = 32
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
        Enabled = False
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
      inherited btnRefresh: TdxBarLargeButton
        OnClick = btnRefreshClick
      end
      inherited btnFilter: TdxBarLargeButton
        Caption = #1050' '#1092#1072#1082#1090#1091#1088#1077
        Hint = #1050' '#1092#1072#1082#1090#1091#1088#1077
        Visible = ivAlways
        OnClick = btnFilterClick
        AutoGrayScale = False
        LargeImageIndex = 4
      end
      inherited btnRazdel: TdxBarLargeButton
        Visible = ivAlways
        OnClick = btnRazdelClick
      end
      inherited btnCardClient: TdxBarButton
        LargeImageIndex = 8
      end
      inherited btnExport: TdxBarLargeButton
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
  object GridSubAWB: TcxGrid
    Left = 0
    Top = 71
    Width = 1030
    Height = 459
    Align = alClient
    TabOrder = 2
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object GridSubAWBDBBandedTableView1: TcxGridDBBandedTableView
      OnDblClick = GridSubAWBDBBandedTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSubAWB
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = ColumnFB
        end
        item
          Kind = skSum
          Column = ColumnBOX
        end
        item
          Kind = skSum
          Column = ColumnFBфакт
        end
        item
          Kind = skSum
          Column = ColumnBOXфакт
        end
        item
          Format = '$ ,0.00;$ -,0.00'
          Kind = skSum
          Column = ColumnСумма
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      Bands = <
        item
          Caption = #1040#1074#1080#1072#1085#1072#1082#1083#1072#1076#1085#1072#1103
          Width = 513
        end
        item
          Caption = #1060#1072#1082#1090#1091#1088#1072
          Width = 573
        end>
      object ColumnПлантация: TcxGridDBBandedColumn
        Caption = #1055#1083#1072#1085#1090#1072#1094#1080#1103
        DataBinding.FieldName = 'name'
        Width = 198
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object ColumnFB: TcxGridDBBandedColumn
        Caption = #1050#1086#1083'-'#1074#1086' FB'
        DataBinding.FieldName = #1082#1086#1083'_'#1074#1086'_fb'
        PropertiesClassName = 'TcxCalcEditProperties'
        Width = 82
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object ColumnBOX: TcxGridDBBandedColumn
        Caption = #1050#1086#1088#1086#1073#1086#1082
        DataBinding.FieldName = #1082#1086#1083'_'#1074#1086
        Width = 82
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object ColumnLДата: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = #1076#1072#1090#1072'_'#1092#1072#1082#1090#1091#1088#1099
        Width = 103
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object ColumnНомер: TcxGridDBBandedColumn
        Caption = #1053#1086#1084#1077#1088
        DataBinding.FieldName = #1085#1086#1084#1077#1088'_'#1092#1072#1082#1090#1091#1088#1099
        Width = 102
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object ColumnСумма: TcxGridDBBandedColumn
        Caption = #1057#1091#1084#1084#1072
        DataBinding.FieldName = #1089#1091#1084#1084#1072'_'#1092#1072#1082#1090#1091#1088#1099
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
        Width = 103
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object GridSubAWBDBBandedTableView1_5: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072' '#1086#1087#1083#1072#1090#1099
        DataBinding.FieldName = #1076#1072#1090#1072'_'#1086#1087#1083#1072#1090#1099
        Visible = False
        Width = 103
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object GridSubAWBDBBandedTableView1_6: TcxGridDBBandedColumn
        Caption = #1054#1087#1083#1072#1095#1077#1085#1086
        DataBinding.FieldName = #1089#1091#1084#1084#1072'_'#1086#1087#1083#1072#1090#1099
        Visible = False
        Width = 84
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object ColumnFBфакт: TcxGridDBBandedColumn
        Caption = #1050#1086#1083'-'#1074#1086' FB'
        DataBinding.FieldName = 'FB_'#1092#1072#1082#1090#1091#1088#1072
        Width = 71
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object ColumnBOXфакт: TcxGridDBBandedColumn
        Caption = #1050#1086#1088#1086#1073#1086#1082
        DataBinding.FieldName = 'BOX_'#1092#1072#1082#1090#1091#1088#1072
        Width = 70
        Position.BandIndex = 1
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
    end
    object LevelOrg: TcxGridLevel
      GridView = GridSubAWBDBBandedTableView1
    end
  end
  object QuerySubAWB: TUniQuery
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
    Left = 480
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'a'
        Value = nil
      end>
  end
  object dsSubAWB: TDataSource
    DataSet = QuerySubAWB
    Left = 480
    Top = 272
  end
  object QuerySubAWB1: TUniQuery
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
    Left = 216
    Top = 248
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 49
      end>
  end
end
