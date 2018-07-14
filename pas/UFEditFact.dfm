object FEditFact: TFEditFact
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1060#1072#1082#1090#1091#1088#1072' '#1087#1083#1072#1085#1090#1072#1094#1080#1080
  ClientHeight = 517
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 485
    Width = 688
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 485
    ExplicitWidth = 688
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
  object Group1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 1
    Height = 49
    Width = 688
    object lblDate: TLabel
      Left = 3
      Top = 3
      Width = 79
      Height = 13
      Caption = #1044#1072#1090#1072' '#1092#1072#1082#1090#1091#1088#1099':'
    end
    object lblNum: TLabel
      Left = 106
      Top = 3
      Width = 84
      Height = 13
      Caption = #1053#1086#1084#1077#1088' '#1092#1072#1082#1090#1091#1088#1099':'
    end
    object lblSum: TLabel
      Left = 234
      Top = 3
      Width = 84
      Height = 13
      Caption = #1057#1091#1084#1084#1072' '#1092#1072#1082#1090#1091#1088#1099':'
    end
    object lblFB: TLabel
      Left = 343
      Top = 3
      Width = 16
      Height = 13
      Caption = 'FB:'
    end
    object lblBOX: TLabel
      Left = 425
      Top = 3
      Width = 47
      Height = 13
      Caption = #1050#1086#1088#1086#1073#1086#1082':'
    end
    object edtNum: TEdit
      Left = 106
      Top = 22
      Width = 122
      Height = 21
      TabOrder = 0
      OnChange = edtNumChange
      OnKeyDown = edtNumKeyDown
    end
    object edtFB: TAdvEdit
      Left = 343
      Top = 22
      Width = 76
      Height = 21
      EditType = etFloat
      EmptyTextStyle = []
      ExcelStyleDecimalSeparator = True
      FocusColor = clBtnFace
      Precision = 2
      Suffix = ' '#1096#1090'.'
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      TabOrder = 1
      Text = '0,00'
      Visible = True
      OnChange = edtFBChange
      OnKeyDown = edtFBKeyDown
      Version = '3.3.2.0'
    end
    object edtBox: TAdvEdit
      Left = 425
      Top = 22
      Width = 76
      Height = 21
      EditType = etFloat
      EmptyTextStyle = []
      ExcelStyleDecimalSeparator = True
      Suffix = ' '#1096#1090'.'
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Lookup.Font.Charset = DEFAULT_CHARSET
      Lookup.Font.Color = clWindowText
      Lookup.Font.Height = -11
      Lookup.Font.Name = 'Arial'
      Lookup.Font.Style = []
      Lookup.Separator = ';'
      Color = clWindow
      TabOrder = 2
      Text = '0'
      Visible = True
      OnChange = edtBoxChange
      Version = '3.3.2.0'
    end
    object edtDateFact: TDateTimePicker
      Left = 3
      Top = 22
      Width = 97
      Height = 21
      Date = 41535.395268159720000000
      Time = 41535.395268159720000000
      ShowCheckbox = True
      TabOrder = 3
    end
    object edtSumFact: TsCalcEdit
      Left = 234
      Top = 22
      Width = 103
      Height = 21
      AutoSize = False
      TabOrder = 4
      OnChange = edtWeightChange
      OnKeyDown = edtWeightKeyDown
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'EDIT'
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
    end
  end
  object GroupПретензия: TcxGroupBox
    Left = 0
    Top = 49
    Align = alClient
    Caption = #1055#1088#1077#1090#1077#1085#1079#1080#1103
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 2
    Height = 436
    Width = 688
    inline FrameTopPanel1: TFrameTopPanel
      Left = 2
      Top = 18
      Width = 684
      Height = 38
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 5
      ExplicitWidth = 684
      ExplicitHeight = 38
      inherited barProduct: TdxBarManager
        DockControlHeights = (
          0
          0
          69
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
      end
    end
    object GridUsers: TcxGrid
      Left = 2
      Top = 56
      Width = 684
      Height = 378
      Align = alClient
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      object ViewUsers: TcxGridDBTableView
        OnDblClick = ViewUsersDblClick
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsПретензия
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
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Editing = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object ViewUsers_10: TcxGridDBColumn
          Caption = #8470
          DataBinding.FieldName = #1085#1086#1084#1077#1088'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080
          Width = 90
        end
        object ViewUsers_7: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = #1076#1072#1090#1072'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080
          Width = 95
        end
        object ViewUsers_8: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = #1089#1091#1084#1084#1072'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080
          Width = 89
        end
        object ViewUsers__: TcxGridDBColumn
          Caption = #1054#1076#1086#1073#1088#1077#1085#1085#1072#1103' '#1089#1091#1084#1084#1072
          DataBinding.FieldName = #1086#1076#1086#1073#1088#1077#1085#1085#1072#1103'_'#1089#1091#1084#1084#1072'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080
          Width = 120
        end
        object ViewUsers_9: TcxGridDBColumn
          Caption = #1057#1090#1072#1090#1091#1089
          DataBinding.FieldName = #1089#1090#1072#1090#1091#1089'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080
          Width = 78
        end
        object ColumnМенеджер: TcxGridDBColumn
          Caption = #1057#1086#1079#1076#1072#1083' '#1084#1077#1085#1077#1076#1078#1077#1088
          DataBinding.FieldName = 'u_name'
          Width = 167
        end
      end
      object LevelOrg: TcxGridLevel
        GridView = ViewUsers
      end
    end
  end
  object QueryOpl: TUniQuery
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
      '  id,'
      '  "'#1082#1086#1076'_'#1076#1077#1090#1072#1083#1080'_awb",'
      '  "'#1076#1072#1090#1072'",'
      '  "'#1089#1091#1084#1084#1072'"'
      'FROM '
      '  "'#1073#1091#1093'"."'#1086#1087#1083#1072#1090#1072'" ;')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 480
    Top = 214
  end
  object dsOpl: TDataSource
    DataSet = QueryOpl
    Left = 480
    Top = 272
  end
  object QueryOpl1: TUniQuery
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
    Left = 272
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 49
      end>
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
    Left = 200
    Top = 368
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 49
      end>
  end
  object Query2: TUniQuery
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
    Left = 248
    Top = 312
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 49
      end>
  end
  object QueryПретензия: TUniQuery
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
      'select sad."'#1076#1072#1090#1072'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'",'
      '       sad."'#1085#1086#1084#1077#1088'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'",'
      '       sad."'#1086#1076#1086#1073#1088#1077#1085#1085#1072#1103'_'#1089#1091#1084#1084#1072'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'",'
      '       sad."'#1089#1090#1072#1090#1091#1089'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'",'
      '       u.name user_name,'
      
        '       sum(sp."'#1094#1077#1085#1072'" * sp."'#1089#1090#1077#1073#1083#1077#1081'" + sp."'#1089#1090#1086#1080#1084#1086#1089#1090#1100'_'#1090#1088#1072#1085#1089#1087#1086#1088#1090#1072'")' +
        ' sum_pret'
      'from "'#1073#1091#1093'".sub_awb_detail sad'
      
        '     left join "'#1073#1091#1093'"."'#1089#1086#1089#1090#1072#1074'_'#1087#1088#1077#1090#1077#1085#1079#1080#1080'" sp on sp."'#1082#1086#1076'_sub_awb_de' +
        'tail" = sad.id'
      '     left join "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'" u on u.id ='
      '      sad."'#1082#1086#1076'_'#1084#1077#1085#1077#1076#1078#1077#1088#1072'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'"'
      'group by sad."'#1076#1072#1090#1072'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'",'
      '         sad."'#1085#1086#1084#1077#1088'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'",'
      '         sad."'#1086#1076#1086#1073#1088#1077#1085#1085#1072#1103'_'#1089#1091#1084#1084#1072'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'",'
      '         sad."'#1089#1090#1072#1090#1091#1089'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'",'
      '         u.name'
      'where sad.id=:sad_id')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 379
    Top = 204
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sad_id'
        Value = nil
      end>
  end
  object dsПретензия: TDataSource
    DataSet = QueryПретензия
    Left = 379
    Top = 268
  end
end
