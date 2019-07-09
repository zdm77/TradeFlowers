object FramePlant: TFramePlant
  Left = 0
  Top = 0
  Width = 921
  Height = 490
  TabOrder = 0
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 921
    Height = 35
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 921
    inherited barProduct: TdxBarManager
      DockControlHeights = (
        0
        0
        34
        0)
      inherited dxbrBardxbrmngr1Bar1: TdxBar
        ItemLinks = <
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
            BeginGroup = True
            Visible = True
            ItemName = 'btnRefresh'
          end>
      end
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
  end
  object GroupCountry: TcxGroupBox
    Left = 0
    Top = 35
    Align = alLeft
    Caption = #1057#1090#1088#1072#1085#1099
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 1
    Height = 455
    Width = 205
    object cxGrid1: TcxGrid
      Left = 3
      Top = 15
      Width = 199
      Height = 430
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      ExplicitLeft = 2
      ExplicitTop = 18
      ExplicitWidth = 201
      ExplicitHeight = 435
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsCountry
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
    Top = 35
    Width = 8
    Height = 455
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = GroupCountry
  end
  object GroupPlant: TcxGroupBox
    Left = 213
    Top = 35
    Align = alClient
    Caption = #1055#1083#1072#1085#1090#1072#1094#1080#1080
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 3
    Height = 455
    Width = 708
    object GridUsers: TcxGrid
      Left = 3
      Top = 42
      Width = 702
      Height = 403
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      ExplicitLeft = 2
      ExplicitTop = 45
      ExplicitWidth = 704
      ExplicitHeight = 408
      object ViewUsers: TcxGridDBTableView
        OnDblClick = ViewUsersDblClick
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsPlant
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
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object ColumnBrand: TcxGridDBColumn
          Caption = 'Brand'
          DataBinding.FieldName = 'brand'
          Width = 224
        end
        object ColumnUniName: TcxGridDBColumn
          Caption = 'Name'
          DataBinding.FieldName = 'uni_name'
          Width = 255
        end
        object ColumnName: TcxGridDBColumn
          DataBinding.FieldName = 'name'
          Width = 255
        end
        object ColumnRegName: TcxGridDBColumn
          DataBinding.FieldName = 'reg_name'
          Width = 255
        end
      end
      object LevelOrg: TcxGridLevel
        GridView = ViewUsers
      end
    end
    inline FrameSearch1: TFrameSearch
      Left = 3
      Top = 15
      Width = 702
      Height = 27
      Align = alTop
      TabOrder = 1
      ExplicitLeft = 3
      ExplicitTop = 15
      ExplicitWidth = 702
      ExplicitHeight = 27
      inherited Group1: TcxGroupBox
        ExplicitWidth = 702
        ExplicitHeight = 27
        Height = 27
        Width = 702
        inherited LabelName: TcxLabel
          Top = 4
          Style.IsFontAssigned = True
          ExplicitTop = 4
        end
      end
    end
  end
  object QueryPlant: TUniQuery
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
      'select * from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'"')
    MasterSource = dsCountry
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1089#1090#1088#1072#1085#1099
    AfterFetch = QueryPlantAfterFetch
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
  object dsPlant: TDataSource
    DataSet = QueryPlant
    Left = 396
    Top = 273
  end
  object QueryCountry: TUniQuery
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
      'select * from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1090#1088#1072#1085#1099'"')
    BeforeFetch = QueryCountryBeforeFetch
    Left = 71
    Top = 185
  end
  object dsCountry: TDataSource
    DataSet = QueryCountry
    Left = 80
    Top = 273
  end
end
