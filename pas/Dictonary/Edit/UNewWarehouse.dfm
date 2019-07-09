object FNewWarehouse: TFNewWarehouse
  Left = 0
  Top = 0
  Caption = #1052#1077#1089#1090#1086' '#1088#1077#1072#1083#1080#1079#1072#1094#1080#1080
  ClientHeight = 422
  ClientWidth = 618
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
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 390
    Width = 618
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 390
    ExplicitWidth = 618
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
    Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1089#1074#1077#1076#1077#1085#1080#1103
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 1
    Height = 121
    Width = 618
    object lblOrg: TLabel
      Left = 6
      Top = 23
      Width = 70
      Height = 13
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103':'
    end
    object edtOrg: TcxLookupComboBox
      Left = 102
      Top = 19
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
      TabOrder = 0
      Width = 265
    end
    inline FrameUniName1: TFrameUniName
      Left = 3
      Top = 39
      Width = 612
      Height = 72
      Align = alBottom
      TabOrder = 1
      ExplicitLeft = 2
      ExplicitTop = 47
      ExplicitWidth = 614
      ExplicitHeight = 72
      inherited Group1: TcxGroupBox
        ExplicitWidth = 614
        ExplicitHeight = 72
        Height = 72
        Width = 612
        inherited edtUniName: TcxTextEdit
          Properties.OnEditValueChanged = FrameUniName1edtUniNamePropertiesEditValueChanged
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.SkinName = ''
          OnKeyUp = FrameUniName1edtUniNameKeyUp
        end
        inherited edtRegName: TcxTextEdit
          Properties.OnEditValueChanged = FrameUniName1edtRegNamePropertiesEditValueChanged
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.SkinName = ''
          OnKeyUp = FrameUniName1edtRegNameKeyUp
        end
        inherited edtName: TcxTextEdit
          Properties.OnEditValueChanged = FrameUniName1edtNamePropertiesEditValueChanged
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.SkinName = ''
          OnKeyUp = FrameUniName1edtNameKeyUp
        end
        inherited btnTranslit: TcxButton
          LookAndFeel.NativeStyle = False
        end
      end
    end
  end
  object Group2: TcxGroupBox
    Left = 0
    Top = 121
    Align = alClient
    Caption = #1062#1077#1093#1072
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 2
    Height = 269
    Width = 618
    inline FrameTopPanel1: TFrameTopPanel
      Left = 3
      Top = 15
      Width = 612
      Height = 35
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = -2
      ExplicitWidth = 614
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
    object GridUsers: TcxGrid
      Left = 3
      Top = 50
      Width = 612
      Height = 209
      Align = alClient
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      ExplicitLeft = 2
      ExplicitTop = 53
      ExplicitWidth = 614
      ExplicitHeight = 214
      object ViewUsers: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsStoreloc
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
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object ColumnName: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 's_name'
          Width = 174
        end
        object ColumnCount: TcxGridDBColumn
          Caption = #1054#1089#1090#1072#1090#1086#1082
          DataBinding.FieldName = #1086#1089#1090#1072#1090#1086#1082
          Width = 103
        end
        object ColumnNameE: TcxGridDBColumn
          Caption = #1045#1076'. '#1080#1079#1084#1077#1088#1077#1085#1080#1103
          DataBinding.FieldName = 'e_name'
          Width = 132
        end
      end
      object LevelOrg: TcxGridLevel
        GridView = ViewUsers
      end
    end
  end
  object QueryOrg: TUniQuery
    Connection = DM1.db1
    SQL.Strings = (
      'select * from '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'.'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
      'where id<>1')
    Left = 464
    Top = 216
  end
  object dsOrg: TUniDataSource
    DataSet = QueryOrg
    Left = 376
    Top = 216
  end
  object UniQuery1: TUniQuery
    Connection = DM1.db1
    SQL.Strings = (
      'select * from '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'.'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
      'where id<>1')
    Left = 168
    Top = 40
  end
  object UniDataSource1: TUniDataSource
    DataSet = UniQuery1
    Left = 120
    Top = 64
  end
  object QueryStoreloc: TUniQuery
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
      '  e.name e_name,'
      '  e.reg_name e_reg_name,'
      '  e.uni_name e_uni_name,'
      '  s.id,'
      '  s."'#1082#1086#1076'_'#1094#1077#1093#1072'",'
      '  s.name s_name,'
      '  s.uni_name s_uni_name,'
      '  s.reg_name s_reg_name,'
      '  s."'#1082#1086#1076'_'#1077#1076#1080#1085#1080#1094#1099'_'#1080#1079#1084#1077#1088#1077#1085#1080#1103'",'
      '  s."'#1086#1089#1090#1072#1090#1086#1082'"'
      'FROM'
      '  "'#1089#1082#1083#1072#1076'"."'#1089#1082#1083#1072#1076#1099'" s'
      
        '  INNER JOIN "'#1089#1082#1083#1072#1076'"."'#1077#1076#1080#1085#1080#1094#1099'_'#1080#1079#1084#1077#1088#1077#1085#1080#1103'" e ON (s."'#1082#1086#1076'_'#1077#1076#1080#1085#1080#1094#1099'_'#1080#1079 +
        #1084#1077#1088#1077#1085#1080#1103'" = e.id)')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 136
    Top = 232
  end
  object dsStoreloc: TDataSource
    DataSet = QueryStoreloc
    Left = 232
    Top = 240
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
      '  o.name o_name,'
      '  w.name w_name,'
      '  w.id,'
      '  w."'#1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'"'
      'FROM'
      '  "'#1089#1082#1083#1072#1076'"."'#1094#1077#1093#1072'" w'
      
        '  INNER JOIN "'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'"."'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'" o ON (w."'#1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080 +
        #1080'" = o.id)'
      '  order by o_name, w_name')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 328
    Top = 248
  end
end
