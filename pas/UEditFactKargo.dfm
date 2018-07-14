object FEditFactKargo: TFEditFactKargo
  Left = 0
  Top = 0
  Caption = #1060#1072#1082#1090#1091#1088#1072' '#1050#1072#1088#1075#1086
  ClientHeight = 492
  ClientWidth = 668
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
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 460
    Width = 668
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 460
    ExplicitWidth = 668
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
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 1
    Height = 43
    Width = 668
    object lblДата: TLabel
      Left = 3
      Top = 3
      Width = 79
      Height = 13
      Caption = #1044#1072#1090#1072' '#1092#1072#1082#1090#1091#1088#1099':'
    end
    object lblНомер: TLabel
      Left = 90
      Top = 3
      Width = 84
      Height = 13
      Caption = #1053#1086#1084#1077#1088' '#1092#1072#1082#1090#1091#1088#1099':'
    end
    object lblСуммаФактуры: TLabel
      Left = 354
      Top = 3
      Width = 84
      Height = 13
      Caption = #1057#1091#1084#1084#1072' '#1092#1072#1082#1090#1091#1088#1099':'
    end
    object lblСуммаAWB: TLabel
      Left = 218
      Top = 3
      Width = 61
      Height = 13
      Caption = #1057#1091#1084#1084#1072' AWB:'
    end
    object lblПретензия: TLabel
      Left = 482
      Top = 3
      Width = 58
      Height = 13
      Caption = #1055#1088#1077#1090#1077#1085#1079#1080#1103':'
    end
    object edtDateFact: TsDateEdit
      Left = 3
      Top = 18
      Width = 81
      Height = 21
      AutoSize = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      TabOrder = 0
      OnKeyDown = edtDateFactKeyDown
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
      OnCloseUp = edtDateFactCloseUp
      DefaultToday = True
    end
    object edtNum: TEdit
      Left = 90
      Top = 18
      Width = 122
      Height = 21
      TabOrder = 1
      OnKeyDown = edtNumKeyDown
    end
    object edtSumFact: TAdvEdit
      Left = 350
      Top = 18
      Width = 126
      Height = 21
      EditType = etFloat
      EmptyTextStyle = []
      ExcelStyleDecimalSeparator = True
      Precision = 2
      Prefix = '$ '
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
      TabOrder = 3
      Text = '0,00'
      Visible = True
      Version = '3.3.2.0'
    end
    object edtSumAWB: TAdvEdit
      Left = 218
      Top = 18
      Width = 126
      Height = 21
      EditType = etFloat
      EmptyTextStyle = []
      ExcelStyleDecimalSeparator = True
      Precision = 2
      Prefix = '$ '
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
      Text = '0,00'
      Visible = True
      OnKeyDown = edtSumAWBKeyDown
      Version = '3.3.2.0'
    end
    object edtПретензия: TAdvEdit
      Left = 482
      Top = 18
      Width = 126
      Height = 21
      EditType = etFloat
      EmptyTextStyle = []
      ExcelStyleDecimalSeparator = True
      Precision = 2
      Prefix = '$ '
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
      TabOrder = 4
      Text = '0,00'
      Visible = True
      Version = '3.3.2.0'
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 43
    Align = alClient
    Caption = #1054#1087#1083#1072#1090#1072
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 2
    Height = 417
    Width = 668
    inline FrameTopPanel1: TFrameTopPanel
      Left = 3
      Top = 15
      Width = 662
      Height = 38
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = -2
      ExplicitWidth = 664
      ExplicitHeight = 38
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
    object GridAWB: TcxGrid
      Left = 3
      Top = 53
      Width = 662
      Height = 354
      Align = alClient
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      ExplicitLeft = 2
      ExplicitTop = 56
      ExplicitWidth = 664
      ExplicitHeight = 359
      object ViewAWB: TcxGridDBTableView
        OnDblClick = ViewAWBDblClick
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsOpl
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
            Format = ',0.000 '#1082#1075#39'.'#39';'
            Kind = skSum
          end
          item
            Format = '$ ,0.00;$ -,0.00'
            Kind = skSum
          end
          item
            Kind = skSum
          end
          item
            Kind = skSum
          end
          item
            Format = '$ ,0.00;$ -,0.00'
            Kind = skSum
            Column = ColumnСумма
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object ColumnNum: TcxGridDBColumn
          Caption = #1053#1086#1084#1077#1088' '#1055'/'#1055
          DataBinding.FieldName = #1085#1086#1084#1077#1088'_'#1087#1087
          Width = 111
        end
        object ColumnДата: TcxGridDBColumn
          Caption = #1044#1072#1090#1072
          DataBinding.FieldName = #1076#1072#1090#1072
          Width = 131
        end
        object ColumnСумма: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = #1089#1091#1084#1084#1072
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
          Width = 142
        end
        object ColumnРазница: TcxGridDBColumn
          Caption = #1056#1072#1079#1085#1080#1094#1072
          DataBinding.FieldName = #1088#1072#1079#1085#1080#1094#1072
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
          Width = 104
        end
      end
      object LevelOrg: TcxGridLevel
        GridView = ViewAWB
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
    Left = 136
    Top = 224
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
    Left = 320
    Top = 296
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 49
      end>
  end
end
