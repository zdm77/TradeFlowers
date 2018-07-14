object FEditProductAuc: TFEditProductAuc
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1055#1088#1086#1076#1091#1082#1090
  ClientHeight = 417
  ClientWidth = 276
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
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 385
    Width = 276
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = 104
    ExplicitTop = 416
    inherited bardxbrmngr1: TdxBarManager
      DockControlHeights = (
        0
        0
        0
        34)
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
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
    ExplicitLeft = 208
    ExplicitTop = 56
    ExplicitWidth = 185
    ExplicitHeight = 105
    Height = 385
    Width = 276
    object Label1: TLabel
      Left = 5
      Top = 8
      Width = 85
      Height = 13
      Caption = #1050#1086#1076' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
      FocusControl = cxDBSpinEdit1
      Transparent = True
    end
    object Label2: TLabel
      Left = 5
      Top = 48
      Width = 57
      Height = 13
      Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
      FocusControl = cxDBTextEdit1
    end
    object Label3: TLabel
      Left = 5
      Top = 88
      Width = 73
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      FocusControl = cxDBTextEdit2
    end
    object Label4: TLabel
      Left = 5
      Top = 128
      Width = 88
      Height = 13
      Caption = #1043#1088#1091#1087#1087#1072' '#1087#1088#1086#1076#1091#1082#1090#1072
      FocusControl = cxDBSpinEdit2
    end
    object Label5: TLabel
      Left = 5
      Top = 168
      Width = 29
      Height = 13
      Caption = #1063#1040#1057#1067
      FocusControl = cxDBTextEdit3
    end
    object Label6: TLabel
      Left = 5
      Top = 208
      Width = 70
      Height = 13
      Caption = #1050#1054#1044'_'#1043#1056#1059#1055#1055#1067
      FocusControl = cxDBTextEdit4
    end
    object Label7: TLabel
      Left = 5
      Top = 248
      Width = 79
      Height = 13
      Caption = #1050#1054#1051#1042#1054'_'#1042'_'#1058#1040#1056#1045
      FocusControl = cxDBSpinEdit3
    end
    object Label8: TLabel
      Left = 5
      Top = 288
      Width = 56
      Height = 13
      Caption = #1050#1054#1044'_'#1058#1040#1056#1067
      FocusControl = cxDBTextEdit5
    end
    object Label9: TLabel
      Left = 143
      Top = 128
      Width = 12
      Height = 13
      Caption = 'S1'
      FocusControl = cxDBSpinEdit4
    end
    object Label10: TLabel
      Left = 143
      Top = 168
      Width = 12
      Height = 13
      Caption = 'S2'
      FocusControl = cxDBSpinEdit5
    end
    object Label11: TLabel
      Left = 143
      Top = 208
      Width = 12
      Height = 13
      Caption = 'S3'
      FocusControl = cxDBSpinEdit6
    end
    object Label12: TLabel
      Left = 143
      Top = 248
      Width = 12
      Height = 13
      Caption = 'S4'
      FocusControl = cxDBSpinEdit7
    end
    object Label13: TLabel
      Left = 143
      Top = 288
      Width = 70
      Height = 13
      Caption = #1050#1086#1076#1055#1088#1086#1076#1091#1082#1090#1072
      FocusControl = cxDBSpinEdit8
    end
    object Label14: TLabel
      Left = 143
      Top = 331
      Width = 84
      Height = 13
      Caption = #1050#1072#1095#1077#1089#1090#1074#1086#1058#1086#1074#1072#1088#1072
      FocusControl = cxDBTextEdit6
    end
    object Label15: TLabel
      Left = 5
      Top = 331
      Width = 54
      Height = 13
      Caption = #1058#1080#1087#1057#1088#1077#1079#1082#1072
      FocusControl = cxDBTextEdit7
    end
    object Label16: TLabel
      Left = 143
      Top = 8
      Width = 26
      Height = 13
      Caption = #1062#1077#1085#1072
      FocusControl = cxDBCalcEdit1
      Transparent = True
    end
    object cxDBSpinEdit1: TcxDBSpinEdit
      Left = 5
      Top = 24
      DataBinding.DataField = #1050#1086#1076#1055#1086#1089#1090#1072#1074#1097#1080#1082#1072
      DataBinding.DataSource = dsAucPrEdit
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 0
      Width = 121
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 5
      Top = 64
      DataBinding.DataField = #1055#1086#1089#1090#1072#1074#1097#1080#1082
      DataBinding.DataSource = dsAucPrEdit
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 1
      Width = 259
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 5
      Top = 104
      DataBinding.DataField = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      DataBinding.DataSource = dsAucPrEdit
      TabOrder = 2
      Width = 259
    end
    object cxDBSpinEdit2: TcxDBSpinEdit
      Left = 5
      Top = 144
      DataBinding.DataField = #1043#1088#1091#1087#1087#1072#1055#1088#1086#1076#1091#1082#1090#1072
      DataBinding.DataSource = dsAucPrEdit
      TabOrder = 3
      Width = 121
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 5
      Top = 184
      DataBinding.DataField = #1063#1040#1057#1067
      DataBinding.DataSource = dsAucPrEdit
      TabOrder = 4
      Width = 121
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 5
      Top = 224
      DataBinding.DataField = #1050#1054#1044'_'#1043#1056#1059#1055#1055#1067
      DataBinding.DataSource = dsAucPrEdit
      TabOrder = 5
      Width = 121
    end
    object cxDBSpinEdit3: TcxDBSpinEdit
      Left = 5
      Top = 264
      DataBinding.DataField = #1050#1054#1051#1042#1054'_'#1042'_'#1058#1040#1056#1045
      DataBinding.DataSource = dsAucPrEdit
      TabOrder = 6
      Width = 121
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 5
      Top = 304
      DataBinding.DataField = #1050#1054#1044'_'#1058#1040#1056#1067
      DataBinding.DataSource = dsAucPrEdit
      TabOrder = 7
      Width = 121
    end
    object cxDBSpinEdit4: TcxDBSpinEdit
      Left = 143
      Top = 144
      DataBinding.DataField = 'S1'
      DataBinding.DataSource = dsAucPrEdit
      TabOrder = 8
      Width = 121
    end
    object cxDBSpinEdit5: TcxDBSpinEdit
      Left = 143
      Top = 184
      DataBinding.DataField = 'S2'
      DataBinding.DataSource = dsAucPrEdit
      TabOrder = 9
      Width = 121
    end
    object cxDBSpinEdit6: TcxDBSpinEdit
      Left = 143
      Top = 224
      DataBinding.DataField = 'S3'
      DataBinding.DataSource = dsAucPrEdit
      TabOrder = 10
      Width = 121
    end
    object cxDBSpinEdit7: TcxDBSpinEdit
      Left = 143
      Top = 264
      DataBinding.DataField = 'S4'
      DataBinding.DataSource = dsAucPrEdit
      TabOrder = 11
      Width = 121
    end
    object cxDBSpinEdit8: TcxDBSpinEdit
      Left = 143
      Top = 304
      DataBinding.DataField = #1050#1086#1076#1055#1088#1086#1076#1091#1082#1090#1072
      DataBinding.DataSource = dsAucPrEdit
      TabOrder = 12
      Width = 121
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Left = 143
      Top = 347
      DataBinding.DataField = #1050#1072#1095#1077#1089#1090#1074#1086#1058#1086#1074#1072#1088#1072
      DataBinding.DataSource = dsAucPrEdit
      TabOrder = 13
      Width = 121
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Left = 5
      Top = 347
      DataBinding.DataField = #1058#1080#1087#1057#1088#1077#1079#1082#1072
      DataBinding.DataSource = dsAucPrEdit
      TabOrder = 14
      Width = 121
    end
    object cxDBCalcEdit1: TcxDBCalcEdit
      Left = 143
      Top = 24
      DataBinding.DataField = #1094#1077#1085#1072
      DataBinding.DataSource = dsAucPrEdit
      TabOrder = 15
      Width = 121
    end
  end
  object QueryAucPrEdit: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO "'#1072#1091#1082#1094#1080#1086#1085'"."'#1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072'"'
      
        '  (id, "'#1050#1086#1076#1055#1086#1089#1090#1072#1074#1097#1080#1082#1072'", "'#1055#1086#1089#1090#1072#1074#1097#1080#1082'", "'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'", "'#1043#1088#1091#1087#1087#1072#1055#1088#1086#1076 +
        #1091#1082#1090#1072'", "'#1063#1040#1057#1067'", "'#1050#1054#1044'_'#1043#1056#1059#1055#1055#1067'", "'#1050#1054#1051#1042#1054'_'#1042'_'#1058#1040#1056#1045'", "'#1050#1054#1044'_'#1058#1040#1056#1067'", "S1", "' +
        'S2", "S3", "S4", "'#1050#1086#1076#1055#1088#1086#1076#1091#1082#1090#1072'", "'#1050#1086#1076#1057#1090#1088#1072#1085#1099'", "'#1050#1072#1095#1077#1089#1090#1074#1086#1058#1086#1074#1072#1088#1072'", "' +
        #1058#1080#1087#1057#1088#1077#1079#1082#1072'", img, "'#1094#1077#1085#1072'", "'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'", "'#1072#1091#1082#1094#1080#1086#1085'", "'#1076#1072#1090#1072'_'#1076#1086#1073#1072#1074 +
        #1083#1077#1085#1080#1103'", "'#1082#1086#1076'_'#1072#1091#1082#1094#1080#1086#1085#1072'")'
      'VALUES'
      
        '  (:id, :"'#1050#1086#1076#1055#1086#1089#1090#1072#1074#1097#1080#1082#1072'", :"'#1055#1086#1089#1090#1072#1074#1097#1080#1082'", :"'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'", :"'#1043#1088#1091#1087#1087 +
        #1072#1055#1088#1086#1076#1091#1082#1090#1072'", :"'#1063#1040#1057#1067'", :"'#1050#1054#1044'_'#1043#1056#1059#1055#1055#1067'", :"'#1050#1054#1051#1042#1054'_'#1042'_'#1058#1040#1056#1045'", :"'#1050#1054#1044'_'#1058#1040#1056#1067'"' +
        ', :"S1", :"S2", :"S3", :"S4", :"'#1050#1086#1076#1055#1088#1086#1076#1091#1082#1090#1072'", :"'#1050#1086#1076#1057#1090#1088#1072#1085#1099'", :"'#1050#1072 +
        #1095#1077#1089#1090#1074#1086#1058#1086#1074#1072#1088#1072'", :"'#1058#1080#1087#1057#1088#1077#1079#1082#1072'", :img, :"'#1094#1077#1085#1072'", :"'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'", :"' +
        #1072#1091#1082#1094#1080#1086#1085'", :"'#1076#1072#1090#1072'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103'", :"'#1082#1086#1076'_'#1072#1091#1082#1094#1080#1086#1085#1072'")')
    SQLDelete.Strings = (
      'DELETE FROM "'#1072#1091#1082#1094#1080#1086#1085'"."'#1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072'"'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE "'#1072#1091#1082#1094#1080#1086#1085'"."'#1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072'"'
      'SET'
      
        '  id = :id, "'#1050#1086#1076#1055#1086#1089#1090#1072#1074#1097#1080#1082#1072'" = :"'#1050#1086#1076#1055#1086#1089#1090#1072#1074#1097#1080#1082#1072'", "'#1055#1086#1089#1090#1072#1074#1097#1080#1082'" = :"' +
        #1055#1086#1089#1090#1072#1074#1097#1080#1082'", "'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'" = :"'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'", "'#1043#1088#1091#1087#1087#1072#1055#1088#1086#1076#1091#1082#1090#1072'" =' +
        ' :"'#1043#1088#1091#1087#1087#1072#1055#1088#1086#1076#1091#1082#1090#1072'", "'#1063#1040#1057#1067'" = :"'#1063#1040#1057#1067'", "'#1050#1054#1044'_'#1043#1056#1059#1055#1055#1067'" = :"'#1050#1054#1044'_'#1043#1056#1059#1055#1055 +
        #1067'", "'#1050#1054#1051#1042#1054'_'#1042'_'#1058#1040#1056#1045'" = :"'#1050#1054#1051#1042#1054'_'#1042'_'#1058#1040#1056#1045'", "'#1050#1054#1044'_'#1058#1040#1056#1067'" = :"'#1050#1054#1044'_'#1058#1040#1056#1067'", ' +
        '"S1" = :"S1", "S2" = :"S2", "S3" = :"S3", "S4" = :"S4", "'#1050#1086#1076#1055#1088#1086#1076 +
        #1091#1082#1090#1072'" = :"'#1050#1086#1076#1055#1088#1086#1076#1091#1082#1090#1072'", "'#1050#1086#1076#1057#1090#1088#1072#1085#1099'" = :"'#1050#1086#1076#1057#1090#1088#1072#1085#1099'", "'#1050#1072#1095#1077#1089#1090#1074#1086#1058#1086#1074 +
        #1072#1088#1072'" = :"'#1050#1072#1095#1077#1089#1090#1074#1086#1058#1086#1074#1072#1088#1072'", "'#1058#1080#1087#1057#1088#1077#1079#1082#1072'" = :"'#1058#1080#1087#1057#1088#1077#1079#1082#1072'", img = :img' +
        ', "'#1094#1077#1085#1072'" = :"'#1094#1077#1085#1072'", "'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" = :"'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'", "'#1072#1091#1082#1094#1080#1086#1085 +
        '" = :"'#1072#1091#1082#1094#1080#1086#1085'", "'#1076#1072#1090#1072'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103'" = :"'#1076#1072#1090#1072'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103'", "'#1082#1086#1076'_'#1072#1091#1082 +
        #1094#1080#1086#1085#1072'" = :"'#1082#1086#1076'_'#1072#1091#1082#1094#1080#1086#1085#1072'"'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM "'#1072#1091#1082#1094#1080#1086#1085'"."'#1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072'"'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, "'#1050#1086#1076#1055#1086#1089#1090#1072#1074#1097#1080#1082#1072'", "'#1055#1086#1089#1090#1072#1074#1097#1080#1082'", "'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'", "'#1043#1088#1091#1087#1087#1072 +
        #1055#1088#1086#1076#1091#1082#1090#1072'", "'#1063#1040#1057#1067'", "'#1050#1054#1044'_'#1043#1056#1059#1055#1055#1067'", "'#1050#1054#1051#1042#1054'_'#1042'_'#1058#1040#1056#1045'", "'#1050#1054#1044'_'#1058#1040#1056#1067'", "S1' +
        '", "S2", "S3", "S4", "'#1050#1086#1076#1055#1088#1086#1076#1091#1082#1090#1072'", "'#1050#1086#1076#1057#1090#1088#1072#1085#1099'", "'#1050#1072#1095#1077#1089#1090#1074#1086#1058#1086#1074#1072#1088#1072 +
        '", "'#1058#1080#1087#1057#1088#1077#1079#1082#1072'", img, "'#1094#1077#1085#1072'", "'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'", "'#1072#1091#1082#1094#1080#1086#1085'", "'#1076#1072#1090#1072'_'#1076 +
        #1086#1073#1072#1074#1083#1077#1085#1080#1103'", "'#1082#1086#1076'_'#1072#1091#1082#1094#1080#1086#1085#1072'" FROM "'#1072#1091#1082#1094#1080#1086#1085'"."'#1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072'"'
      'WHERE'
      '  id = :id')
    SQLRecCount.Strings = (
      'SELECT count(*) FROM ('
      'SELECT * FROM "'#1072#1091#1082#1094#1080#1086#1085'"."'#1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072'"'
      ''
      ') t')
    Connection = DM1.db1
    SQL.Strings = (
      'SELECT '
      '  *'
      'FROM'
      '  "'#1072#1091#1082#1094#1080#1086#1085'"."'#1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072'" where id=:id')
    Left = 624
    Top = 440
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
    object QueryAucPrEditid: TIntegerField
      FieldName = 'id'
    end
    object QueryAucPrEditКодПоставщика: TIntegerField
      FieldName = #1050#1086#1076#1055#1086#1089#1090#1072#1074#1097#1080#1082#1072
    end
    object QueryAucPrEditПоставщик: TWideStringField
      FieldName = #1055#1086#1089#1090#1072#1074#1097#1080#1082
      Size = 200
    end
    object QueryAucPrEditНаименование: TWideStringField
      FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Size = 150
    end
    object QueryAucPrEditГруппаПродукта: TIntegerField
      FieldName = #1043#1088#1091#1087#1087#1072#1055#1088#1086#1076#1091#1082#1090#1072
    end
    object QueryAucPrEditЧАСЫ: TWideStringField
      FieldName = #1063#1040#1057#1067
    end
    object QueryAucPrEditКОД_ГРУППЫ: TWideStringField
      FieldName = #1050#1054#1044'_'#1043#1056#1059#1055#1055#1067
    end
    object QueryAucPrEditКОЛВО_В_ТАРЕ: TIntegerField
      FieldName = #1050#1054#1051#1042#1054'_'#1042'_'#1058#1040#1056#1045
    end
    object QueryAucPrEditКОД_ТАРЫ: TWideStringField
      FieldName = #1050#1054#1044'_'#1058#1040#1056#1067
    end
    object QueryAucPrEditS1: TIntegerField
      FieldName = 'S1'
    end
    object QueryAucPrEditS2: TIntegerField
      FieldName = 'S2'
    end
    object QueryAucPrEditS3: TIntegerField
      FieldName = 'S3'
    end
    object QueryAucPrEditS4: TIntegerField
      FieldName = 'S4'
    end
    object QueryAucPrEditКодПродукта: TIntegerField
      FieldName = #1050#1086#1076#1055#1088#1086#1076#1091#1082#1090#1072
    end
    object QueryAucPrEditКодСтраны: TWideStringField
      FieldName = #1050#1086#1076#1057#1090#1088#1072#1085#1099
      Size = 10
    end
    object QueryAucPrEditКачествоТовара: TWideStringField
      FieldName = #1050#1072#1095#1077#1089#1090#1074#1086#1058#1086#1074#1072#1088#1072
      Size = 10
    end
    object QueryAucPrEditТипСрезка: TWideStringField
      FieldName = #1058#1080#1087#1057#1088#1077#1079#1082#1072
      Size = 10
    end
    object QueryAucPrEditimg: TWideStringField
      FieldName = 'img'
      Size = 500
    end
    object QueryAucPrEditцена: TFloatField
      FieldName = #1094#1077#1085#1072
    end
    object QueryAucPrEditкод_плантации: TIntegerField
      FieldName = #1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080
    end
    object QueryAucPrEditаукцион: TWideStringField
      FieldName = #1072#1091#1082#1094#1080#1086#1085
      Size = 50
    end
    object QueryAucPrEditдата_добавления: TDateField
      FieldName = #1076#1072#1090#1072'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103
    end
    object QueryAucPrEditкод_аукциона: TIntegerField
      FieldName = #1082#1086#1076'_'#1072#1091#1082#1094#1080#1086#1085#1072
    end
  end
  object dsAucPrEdit: TDataSource
    DataSet = QueryAucPrEdit
    Left = 400
    Top = 456
  end
end
