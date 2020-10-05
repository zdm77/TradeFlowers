object FrameTypeLengthWeight: TFrameTypeLengthWeight
  Left = 0
  Top = 0
  Width = 996
  Height = 450
  TabOrder = 0
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 996
    Height = 38
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 996
    ExplicitHeight = 38
    inherited barProduct: TdxBarManager
      PixelsPerInch = 96
      inherited btnAdd: TdxBarLargeButton
        OnClick = btnAddClick
      end
      inherited btnEdit: TdxBarLargeButton
        OnClick = btnEditClick
      end
      inherited btnDel: TdxBarLargeButton
        OnClick = btnDelClick
      end
      inherited btnRefresh: TdxBarLargeButton
        OnClick = btnRefreshClick
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
  object GroupCountry: TcxGroupBox
    Left = 0
    Top = 38
    Align = alLeft
    Caption = #1058#1080#1087#1099
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 1
    Height = 412
    Width = 205
    object cxGrid1: TcxGrid
      Left = 2
      Top = 18
      Width = 201
      Height = 392
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object cxGridDBTableView1: TcxGridDBTableView
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
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object ColumnCountry: TcxGridDBColumn
          Caption = 'Name'
          DataBinding.FieldName = 'name'
          Width = 163
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  object cxspltr1: TcxSplitter
    Left = 205
    Top = 38
    Width = 8
    Height = 412
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = GroupCountry
  end
  object Group1: TcxGroupBox
    Left = 213
    Top = 38
    Align = alClient
    Caption = #1061#1072#1088#1072#1082#1090#1077#1088#1080#1089#1090#1080#1082#1080
    Style.LookAndFeel.Kind = lfFlat
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 3
    Height = 412
    Width = 783
    object GridUsers: TcxGrid
      Left = 2
      Top = 18
      Width = 779
      Height = 392
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object ViewUsers: TcxGridDBTableView
        OnDblClick = ViewUsersDblClick
        OnKeyDown = ViewUsersKeyDown
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsTTH
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
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object ColumnСтрана: TcxGridDBColumn
          Caption = #1057#1090#1088#1072#1085#1072
          DataBinding.FieldName = #1089#1090#1088#1072#1085#1072
          Width = 153
        end
        object ColumnВидУпаковки: TcxGridDBColumn
          Caption = #1042#1080#1076' '#1091#1087#1072#1082#1086#1074#1082#1080
          DataBinding.FieldName = #1074#1080#1076'_'#1091#1087#1072#1082#1086#1074#1082#1080
          Width = 135
        end
        object ViewUserslength: TcxGridDBColumn
          Caption = #1044#1083#1080#1085#1072
          DataBinding.FieldName = #1076#1083#1080#1085#1072
          PropertiesClassName = 'TcxCalcEditProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 79
        end
        object ColumnВес: TcxGridDBColumn
          Caption = #1042#1077#1089
          DataBinding.FieldName = #1074#1077#1089
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          HeaderAlignmentHorz = taCenter
          Width = 78
        end
      end
      object LevelOrg: TcxGridLevel
        GridView = ViewUsers
      end
    end
  end
  object QueryType: TUniQuery
    SQLDelete.Strings = (
      'DELETE FROM clients'
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
      'select * from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1090#1080#1087#1099'" order by '#1087#1088#1080#1086#1088#1080#1090#1077#1090)
    Left = 71
    Top = 169
  end
  object dsType: TDataSource
    DataSet = QueryType
    Left = 96
    Top = 281
  end
  object QueryTTH: TUniQuery
    Connection = DM1.db1
    SQL.Strings = (
      'SELECT s.name '#1089#1090#1088#1072#1085#1072','
      '       tdv.id,'
      '       tdv."'#1082#1086#1076'_'#1090#1080#1087#1072'",'
      '       tdv."'#1076#1083#1080#1085#1072'",'
      '       tdv."'#1074#1077#1089'",'
      '       tdv."'#1082#1086#1076'_'#1089#1090#1088#1072#1085#1099'",'
      '       tdv."'#1082#1086#1076'_'#1091#1087#1072#1082#1086#1074#1082#1080'",'
      '       v.name '#1074#1080#1076'_'#1091#1087#1072#1082#1086#1074#1082#1080
      'FROM "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1074#1080#1076#1099'_'#1091#1087#1072#1082#1086#1074#1082#1080'" v'
      
        '     INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1090#1080#1087'_'#1076#1083#1080#1085#1072'_'#1074#1077#1089'" tdv ON (v.id = tdv."' +
        #1082#1086#1076'_'#1091#1087#1072#1082#1086#1074#1082#1080'")'
      
        '     INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1090#1088#1072#1085#1099'" s ON (tdv."'#1082#1086#1076'_'#1089#1090#1088#1072#1085#1099'" = s.' +
        'id)')
    MasterSource = dsType
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1090#1080#1087#1072
    Left = 343
    Top = 185
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 1
      end>
  end
  object dsTTH: TDataSource
    DataSet = QueryTTH
    Left = 396
    Top = 273
  end
  object Query1: TUniQuery
    Connection = DM1.db1
    SQL.Strings = (
      'select * from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1090#1080#1087'_'#1076#1083#1080#1085#1072'_'#1074#1077#1089'"')
    Left = 447
    Top = 233
  end
end
