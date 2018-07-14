object FQuestionSort: TFQuestionSort
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1057#1086#1088#1090#1072
  ClientHeight = 548
  ClientWidth = 756
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
  object cxGroupBox1: TcxGroupBox
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
    Height = 25
    Width = 756
    object lblSort: TcxLabel
      Left = 2
      Top = 2
      Align = alClient
      Caption = 'lblSort'
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      Style.Shadow = True
      Style.TextStyle = [fsBold]
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      Properties.Alignment.Horz = taCenter
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      AnchorX = 378
      AnchorY = 13
    end
  end
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 59
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
    TabOrder = 5
    ExplicitLeft = 2
    ExplicitTop = 2
    Height = 489
    Width = 756
    object GridUsers: TcxGrid
      Left = 2
      Top = 2
      Width = 752
      Height = 449
      Align = alClient
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      ExplicitLeft = 58
      ExplicitTop = 88
      ExplicitHeight = 432
      object ViewUsers: TcxGridDBTableView
        OnDblClick = ViewUsersDblClick
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Position = fpTop
        DataController.DataSource = dsSort
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
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
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object ColumnUniName: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'uni_name'
          Width = 512
        end
      end
      object LevelOrg: TcxGridLevel
        GridView = ViewUsers
      end
    end
    object cxGroupBox3: TcxGroupBox
      Left = 2
      Top = 451
      Align = alBottom
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
      ExplicitTop = -17
      Height = 36
      Width = 752
      object cxButton1: TcxButton
        Left = 3
        Top = 5
        Width = 75
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 0
        OnClick = cxButton1Click
      end
      object cxButton2: TcxButton
        Left = 641
        Top = 6
        Width = 106
        Height = 25
        Caption = #1054#1090#1084#1077#1085#1072
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 1
        OnClick = btnCancelClick
      end
    end
  end
  object dsSort: TDataSource
    DataSet = QuerySort
    Left = 396
    Top = 273
  end
  object QuerySort: TUniQuery
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
      'SELECT '
      '* '
      'FROM'
      '  "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090#1072'"'
      'order by name')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1090#1080#1087#1072
    Left = 443
    Top = 269
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 1
      end>
  end
  object Query1: TUniQuery
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
      'SELECT '
      '* '
      'FROM'
      '  "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090#1072'"'
      'order by name')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1090#1080#1087#1072
    Left = 514
    Top = 311
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 1
      end>
  end
  object barProduct: TdxBarManager
    AlwaysSaveText = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = FOsn.imgMidle
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 407
    DockControlHeights = (
      0
      0
      34
      0)
    object dxbrBardxbrmngr1Bar1: TdxBar
      AllowClose = False
      AllowQuickCustomizing = False
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 334
      FloatTop = 167
      FloatClientWidth = 120
      FloatClientHeight = 121
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnSel'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = True
    end
    object btnAdd: TdxBarLargeButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      LargeImageIndex = 3
      AutoGrayScale = False
      GlyphLayout = glLeft
      Height = 28
      Width = 94
    end
    object btnAddGroup: TdxBarLargeButton
      Category = 0
      Hint = #1057#1086#1079#1076#1072#1090#1100' '#1088#1086#1083#1100
      Visible = ivAlways
      LargeImageIndex = 2
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object btnEdit: TdxBarLargeButton
      Category = 0
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100
      Visible = ivAlways
      LargeImageIndex = 4
      AutoGrayScale = False
      GlyphLayout = glLeft
      Height = 28
    end
    object btnDel: TdxBarLargeButton
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      LargeImageIndex = 5
      AutoGrayScale = False
      GlyphLayout = glLeft
      Height = 28
    end
    object btnRest: TdxBarLargeButton
      Category = 0
      Enabled = False
      Visible = ivNever
      LargeImageIndex = 6
      AutoGrayScale = False
      GlyphLayout = glLeft
      Height = 28
    end
    object btnRefresh: TdxBarLargeButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      LargeImageIndex = 11
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object btnSel: TdxBarLargeButton
      Caption = #1042#1099#1073#1088#1072#1090#1100
      Category = 0
      Hint = #1042#1099#1073#1088#1072#1090#1100
      Visible = ivAlways
      LargeImageIndex = 1
      OnClick = btnSelClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object btnFilter: TdxBarLargeButton
      Caption = #1060#1080#1083#1100#1090#1088
      Category = 0
      Hint = #1060#1080#1083#1100#1090#1088
      Visible = ivNever
      LargeImageIndex = 27
      GlyphLayout = glLeft
    end
    object btnPrint: TdxBarLargeButton
      Caption = #1054#1090#1095#1077#1090#1099
      Category = 0
      Hint = #1054#1090#1095#1077#1090#1099
      Visible = ivNever
      ButtonStyle = bsDropDown
      LargeImageIndex = 22
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object btnPrintLogistic: TdxBarButton
      Caption = #1051#1086#1075#1080#1089#1090#1080#1082#1072
      Category = 0
      Hint = #1051#1086#1075#1080#1089#1090#1080#1082#1072
      Visible = ivAlways
    end
    object btnRazdel: TdxBarLargeButton
      Caption = #1056#1072#1079#1076#1077#1083#1080#1090#1100
      Category = 0
      Hint = #1056#1072#1079#1076#1077#1083#1080#1090#1100
      Visible = ivNever
      LargeImageIndex = 28
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object btnЗаказ: TdxBarButton
      Caption = #1047#1072#1082#1072#1079
      Category = 0
      Hint = #1047#1072#1082#1072#1079
      Visible = ivAlways
    end
    object btnЗакупка: TdxBarButton
      Caption = #1047#1072#1082#1091#1087#1082#1072
      Category = 0
      Hint = #1047#1072#1082#1091#1087#1082#1072
      Visible = ivAlways
    end
    object btnReportClients: TdxBarButton
      Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099
      Category = 0
      Hint = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099
      Visible = ivAlways
    end
    object btnCardClient: TdxBarButton
      Caption = #1050#1072#1088#1090#1086#1095#1082#1072' '#1082#1083#1080#1077#1085#1090#1072
      Category = 0
      Hint = #1050#1072#1088#1090#1086#1095#1082#1072' '#1082#1083#1080#1077#1085#1090#1072
      Visible = ivAlways
    end
    object btnExport: TdxBarLargeButton
      Caption = #1042' Excel'
      Category = 0
      Hint = #1042' Excel'
      Visible = ivNever
      LargeImageIndex = 23
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object btnSave: TdxBarLargeButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Visible = ivAlways
      LargeImageIndex = 13
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object btnAWB: TdxBarLargeButton
      Caption = #1057#1086#1089#1090#1072#1074' AWB'
      Category = 0
      Hint = #1057#1086#1089#1090#1072#1074' AWB'
      Visible = ivNever
      LargeImageIndex = 29
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object btnArch: TcxBarEditItem
      Caption = #1040#1088#1093#1080#1074
      Category = 0
      Hint = #1040#1088#1093#1080#1074
      Visible = ivNever
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      InternalEditValue = False
    end
    object btnLoadPrice: TdxBarLargeButton
      Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1087#1088#1072#1081#1089
      Category = 0
      Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1087#1088#1072#1081#1089
      Visible = ivAlways
      LargeImageIndex = 28
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
  end
end
