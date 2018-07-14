object FrameTypeClient: TFrameTypeClient
  Left = 0
  Top = 0
  Width = 885
  Height = 565
  TabOrder = 0
  object Group1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = #1058#1080#1087#1099' '#1082#1083#1080#1077#1085#1090#1072
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 0
    Height = 273
    Width = 885
    inline FrameTopPanel1: TFrameTopPanel
      Left = 3
      Top = 15
      Width = 879
      Height = 33
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 3
      ExplicitTop = 15
      ExplicitWidth = 879
      ExplicitHeight = 33
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
          Visible = ivNever
          OnClick = FrameTopPanel1btnEditClick
        end
        inherited btnDel: TdxBarLargeButton
          OnClick = FrameTopPanel1btnDelClick
        end
        inherited btnRefresh: TdxBarLargeButton
          OnClick = FrameTopPanel1btnRefreshClick
        end
        inherited btnSel: TdxBarLargeButton
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074#1089#1077
          Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074#1089#1077
          LargeImageIndex = 0
          OnClick = FrameTopPanel1btnSelClick
        end
      end
    end
    object GridType: TcxGrid
      Left = 3
      Top = 48
      Width = 879
      Height = 215
      Align = alClient
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object ViewType: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsType
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
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object ViewTypeDBColumn: TcxGridDBColumn
          DataBinding.FieldName = #1089#1090#1088#1072#1085#1072
          Width = 140
        end
        object ViewTypeDBColumn1: TcxGridDBColumn
          DataBinding.FieldName = #1090#1080#1087
          Width = 92
        end
        object ViewTypeDBColumn2: TcxGridDBColumn
          DataBinding.FieldName = #1090#1080#1087' '#1090#1086#1074#1072#1088#1072
          Width = 140
        end
        object ViewTypeDBColumn3: TcxGridDBColumn
          DataBinding.FieldName = #1074#1072#1083#1102#1090#1072
          Width = 140
        end
        object ViewTypeColumn1: TcxGridDBColumn
          Caption = #1052#1072#1088#1082#1080#1088#1086#1074#1082#1072
          DataBinding.FieldName = #1084#1072#1088#1082#1080#1088#1086#1074#1082#1072
          Width = 158
        end
      end
      object LevelOrg: TcxGridLevel
        GridView = ViewType
      end
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 273
    Align = alBottom
    Caption = #1052#1072#1088#1082#1080#1088#1086#1074#1082#1080
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 1
    Visible = False
    Height = 292
    Width = 885
    inline FrameTopPanel2: TFrameTopPanel
      Left = 3
      Top = 15
      Width = 879
      Height = 33
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 3
      ExplicitTop = 15
      ExplicitWidth = 879
      ExplicitHeight = 33
      inherited barProduct: TdxBarManager
        DockControlHeights = (
          0
          0
          69
          0)
        inherited btnAdd: TdxBarLargeButton
          OnClick = FrameTopPanel2btnAddClick
        end
        inherited btnEdit: TdxBarLargeButton
          Visible = ivNever
          OnClick = FrameTopPanel2btnEditClick
        end
        inherited btnDel: TdxBarLargeButton
          OnClick = FrameTopPanel2btnDelClick
        end
        inherited btnRefresh: TdxBarLargeButton
          OnClick = FrameTopPanel2btnRefreshClick
        end
        inherited btnSel: TdxBarLargeButton
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074#1089#1077
          Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074#1089#1077
          LargeImageIndex = 0
          OnClick = FrameTopPanel2btnSelClick
        end
      end
    end
    object GridVid: TcxGrid
      Left = 3
      Top = 48
      Width = 879
      Height = 234
      Align = alClient
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object ViewVid: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsMarking
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
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object cxGridDBColumn1: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'name'
          Width = 243
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = ViewVid
      end
    end
  end
  object QueryType: TUniQuery
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
      '  s.name "'#1089#1090#1088#1072#1085#1072'",'
      '  v.name "'#1090#1080#1087'",'
      '  st."'#1082#1086#1076'_'#1090#1080#1087#1072'_'#1087#1088#1086#1076#1091#1082#1090#1072'",'
      '  st."'#1082#1086#1076'_'#1089#1090#1088#1072#1085#1099'",'
      '  st."'#1082#1086#1076'_'#1074#1072#1083#1102#1090#1099'",'
      '  st."'#1082#1086#1076'_'#1090#1080#1087#1072'",'
      '  st.id,'
      '  tt.name "'#1090#1080#1087' '#1090#1086#1074#1072#1088#1072'",'
      '  vl.name "'#1074#1072#1083#1102#1090#1072'",'
      '  kv."'#1082#1086#1076'_'#1082#1083#1080#1077#1085#1090#1072'"'
      'FROM'
      '  "'#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099'"."'#1089#1090#1088#1072#1085#1072'_'#1090#1080#1087'" st'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1090#1088#1072#1085#1099'" s ON (st."'#1082#1086#1076'_'#1089#1090#1088#1072#1085#1099'" = s.id)'
      '  INNER JOIN "'#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099'"."'#1074#1080#1076#1099'" v ON (st."'#1082#1086#1076'_'#1090#1080#1087#1072'" = v.id)'
      
        '  INNER JOIN "'#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099'"."'#1090#1080#1087#1099'_'#1090#1086#1074#1072#1088#1086#1074'" tt ON (st."'#1082#1086#1076'_'#1090#1080#1087#1072'_'#1087#1088 +
        #1086#1076#1091#1082#1090#1072'" = tt.id)'
      '  INNER JOIN public."'#1074#1072#1083#1102#1090#1099'" vl ON (st."'#1082#1086#1076'_'#1074#1072#1083#1102#1090#1099'" = vl.id)'
      
        '  inner join "'#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099'"."'#1082#1083#1080#1077#1085#1090'_'#1074#1080#1076'" kv on (kv.'#1082#1086#1076'_'#1089#1074#1103#1079#1080'=st.i' +
        'd)')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 483
    Top = 124
  end
  object dsType: TDataSource
    DataSet = QueryType
    Left = 483
    Top = 188
  end
  object dsMarking: TDataSource
    DataSet = QueryMarking
    Left = 459
    Top = 420
  end
  object QueryMarking: TUniQuery
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
      'select * from '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'.'#1088#1086#1083#1080)
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 459
    Top = 356
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
      'select * from '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'.'#1088#1086#1083#1080)
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 347
    Top = 148
  end
  object Query2: TUniQuery
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
      'select * from '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'.'#1088#1086#1083#1080)
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 259
    Top = 148
  end
end
