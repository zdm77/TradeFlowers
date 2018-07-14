object FramePriceLength: TFramePriceLength
  Left = 0
  Top = 0
  Width = 672
  Height = 469
  TabOrder = 0
  object GridPriceL: TcxDBPivotGrid
    Left = 0
    Top = 34
    Width = 672
    Height = 435
    Align = alClient
    DataSource = dsPriceL
    Groups = <>
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = ''
    OptionsView.ColumnFields = False
    OptionsView.ColumnGrandTotals = False
    OptionsView.ColumnTotals = False
    OptionsView.DataFields = False
    OptionsView.FilterFields = False
    OptionsView.RowGrandTotals = False
    OptionsView.RowTotals = False
    TabOrder = 0
    OnDblClick = GridPriceLDblClick
    object GridPriceLg_name: TcxDBPivotGridField
      Area = faRow
      AreaIndex = 0
      IsCaptionAssigned = True
      Caption = #1062#1077#1085#1086#1074#1072#1103' '#1075#1088#1091#1087#1087#1072
      DataBinding.FieldName = 'g_name'
      Options.Filtering = False
      Options.Sizing = False
      Options.Sorting = False
      TotalsVisibility = tvNone
      Visible = True
      Width = 120
      UniqueName = #1062#1077#1085#1086#1074#1072#1103' '#1075#1088#1091#1087#1087#1072
    end
    object GridPriceLl_name: TcxDBPivotGridField
      Area = faColumn
      AreaIndex = 0
      IsCaptionAssigned = True
      Caption = #1044#1083#1080#1085#1099
      DataBinding.ValueType = 'Integer'
      DataBinding.FieldName = 'l_name'
      Options.Filtering = False
      Options.Sorting = False
      PropertiesClassName = 'TcxCalcEditProperties'
      Properties.Alignment.Horz = taCenter
      TotalsVisibility = tvNone
      Visible = True
      Width = 43
      UniqueName = #1044#1083#1080#1085#1099
    end
    object GridPriceLcxDBPivotGridField: TcxDBPivotGridField
      Area = faData
      AreaIndex = 0
      DataBinding.FieldName = #1094#1077#1085#1072
      Visible = True
      UniqueName = #1094#1077#1085#1072
    end
    object Rec_ID: TcxDBPivotGridField
      AreaIndex = 0
      IsCaptionAssigned = True
      Caption = 'Rec_ID'
      DataBinding.FieldName = 'id'
      UniqueName = 'Rec_ID'
    end
  end
  object QueryPriceL: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1072'_'#1094#1077#1085#1072'"'
      '  ("'#1094#1077#1085#1072'")'
      'VALUES'
      '  (:"'#1094#1077#1085#1072'")')
    SQLDelete.Strings = (
      'DELETE FROM "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1072'_'#1094#1077#1085#1072'"'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1072'_'#1094#1077#1085#1072'"'
      'SET'
      '  "'#1094#1077#1085#1072'" = :"'#1094#1077#1085#1072'"'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1072'_'#1094#1077#1085#1072'"'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT "'#1094#1077#1085#1072'" FROM "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1072'_'#1094#1077#1085#1072'"'
      'WHERE'
      '  id = :id')
    Connection = DM1.db1
    SQL.Strings = (
      'SELECT '
      ' pl."'#1082#1086#1076'_'#1076#1083#1080#1085#1099'",'
      ''
      '  pl."'#1082#1086#1076'_'#1094#1077#1085#1099'",  '
      'g.'#1089#1086#1088#1090#1080#1088#1086#1074#1082#1072'||'#39'. '#39'||g.name g_name,'
      '  l.name l_name,'
      '  pl.id,'
      ' g.name g_only_name,'
      '  pl."'#1094#1077#1085#1072'"'
      'FROM'
      '  "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1072'_'#1094#1077#1085#1072'" pl'
      
        '  INNER JOIN "'#1089#1082#1083#1072#1076'"."'#1094#1077#1085#1086#1074#1099#1077'_'#1075#1088#1091#1087#1087#1099'" g ON (pl."'#1082#1086#1076'_'#1094#1077#1085#1099'" = g.id' +
        ')'
      '  INNER JOIN "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1099'" l ON (pl."'#1082#1086#1076'_'#1076#1083#1080#1085#1099'" = l.id)'
      'order by '
      ''
      '  pl."'#1082#1086#1076'_'#1094#1077#1085#1099'",'
      'pl."'#1082#1086#1076'_'#1076#1083#1080#1085#1099'"')
    Left = 176
    Top = 256
  end
  object dsPriceL: TDataSource
    DataSet = QueryPriceL
    Left = 76
    Top = 256
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
    Left = 408
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
          ItemName = 'btnRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnPrint'
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
      ButtonStyle = bsDropDown
      CloseSubMenuOnClick = False
      DropDownMenu = pmAdd
      LargeImageIndex = 3
      OnClick = btnAddClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      Height = 28
      Width = 94
    end
    object btnEdit: TdxBarLargeButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = pmEdt
      LargeImageIndex = 4
      OnClick = btnEditClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      Height = 28
    end
    object btnDel: TdxBarLargeButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ButtonStyle = bsDropDown
      DropDownMenu = pmDel
      LargeImageIndex = 5
      OnClick = btnDelClick
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
      OnClick = btnRefreshClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object btnPrint: TdxBarLargeButton
      Caption = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
      Category = 0
      Hint = #1055#1088#1072#1081#1089'-'#1083#1080#1089#1090
      Visible = ivAlways
      LargeImageIndex = 22
      OnClick = btnPrintClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object btnAddGroup: TdxBarButton
      Caption = #1062#1077#1085#1086#1074#1091#1102' '#1075#1088#1091#1087#1087#1091
      Category = 0
      Hint = #1062#1077#1085#1086#1074#1091#1102' '#1075#1088#1091#1087#1087#1091
      Visible = ivAlways
      OnClick = btnAddGroupClick
    end
    object btnAddLength: TdxBarButton
      Caption = #1044#1083#1080#1085#1091
      Category = 0
      Hint = #1044#1083#1080#1085#1091
      Visible = ivAlways
      OnClick = btnAddLengthClick
    end
    object btnEdtGroup: TdxBarButton
      Caption = #1062#1077#1085#1086#1074#1091#1102' '#1075#1088#1091#1087#1087#1091
      Category = 0
      Hint = #1062#1077#1085#1086#1074#1091#1102' '#1075#1088#1091#1087#1087#1091
      Visible = ivAlways
      OnClick = btnEdtGroupClick
    end
    object btnEdtДлину: TdxBarButton
      Caption = #1044#1083#1080#1085#1091
      Category = 0
      Hint = #1044#1083#1080#1085#1091
      Visible = ivAlways
      OnClick = btnEdtДлинуClick
    end
    object btnEdtPrice: TdxBarButton
      Caption = #1062#1077#1085#1099' '#1080' '#1089#1074#1103#1079#1100' '#1089#1086#1088#1090#1086#1074
      Category = 0
      Hint = #1062#1077#1085#1099' '#1080' '#1089#1074#1103#1079#1100' '#1089#1086#1088#1090#1086#1074
      Visible = ivAlways
      OnClick = btnEdtPriceClick
    end
    object btnDelГруппа: TdxBarButton
      Caption = #1062#1077#1085#1086#1074#1091#1102' '#1075#1088#1091#1087#1087#1091
      Category = 0
      Hint = #1062#1077#1085#1086#1074#1091#1102' '#1075#1088#1091#1087#1087#1091
      Visible = ivAlways
      OnClick = btnDelГруппаClick
    end
    object btnDelДлину: TdxBarButton
      Caption = #1044#1083#1080#1085#1091
      Category = 0
      Hint = #1044#1083#1080#1085#1091
      Visible = ivAlways
      OnClick = btnDelДлинуClick
    end
  end
  object frxcrsbjct1: TfrxCrossObject
    Left = 272
    Top = 232
  end
  object pmAdd: TdxBarPopupMenu
    BarManager = barProduct
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btnAddGroup'
      end
      item
        Visible = True
        ItemName = 'btnAddLength'
      end>
    UseOwnFont = False
    Left = 312
    Top = 160
  end
  object pmEdt: TdxBarPopupMenu
    BarManager = barProduct
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btnEdtPrice'
      end
      item
        Visible = True
        ItemName = 'btnEdtGroup'
      end
      item
        Visible = True
        ItemName = 'btnEdt'#1044#1083#1080#1085#1091
      end>
    UseOwnFont = False
    Left = 416
    Top = 136
  end
  object Dril1: TcxPivotGridDrillDownDataSet
    PivotGrid = GridPriceL
    SynchronizeData = True
    Left = 392
    Top = 240
  end
  object Query1: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1072'_'#1094#1077#1085#1072'"'
      '  ("'#1094#1077#1085#1072'")'
      'VALUES'
      '  (:"'#1094#1077#1085#1072'")')
    SQLDelete.Strings = (
      'DELETE FROM "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1072'_'#1094#1077#1085#1072'"'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1072'_'#1094#1077#1085#1072'"'
      'SET'
      '  "'#1094#1077#1085#1072'" = :"'#1094#1077#1085#1072'"'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1072'_'#1094#1077#1085#1072'"'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT "'#1094#1077#1085#1072'" FROM "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1072'_'#1094#1077#1085#1072'"'
      'WHERE'
      '  id = :id')
    Connection = DM1.db1
    SQL.Strings = (
      'SELECT '
      ' pl."'#1082#1086#1076'_'#1076#1083#1080#1085#1099'",'
      ''
      '  pl."'#1082#1086#1076'_'#1094#1077#1085#1099'",  '
      'g.'#1089#1086#1088#1090#1080#1088#1086#1074#1082#1072'||'#39'. '#39'||g.name g_name,'
      '  l.name l_name,'
      '  pl.id,'
      ' '
      '  pl."'#1094#1077#1085#1072'"'
      'FROM'
      '  "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1072'_'#1094#1077#1085#1072'" pl'
      
        '  INNER JOIN "'#1089#1082#1083#1072#1076'"."'#1094#1077#1085#1086#1074#1099#1077'_'#1075#1088#1091#1087#1087#1099'" g ON (pl."'#1082#1086#1076'_'#1094#1077#1085#1099'" = g.id' +
        ')'
      '  INNER JOIN "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1099'" l ON (pl."'#1082#1086#1076'_'#1076#1083#1080#1085#1099'" = l.id)'
      'order by '
      ''
      '  pl."'#1082#1086#1076'_'#1094#1077#1085#1099'",'
      'pl."'#1082#1086#1076'_'#1076#1083#1080#1085#1099'"')
    Left = 232
    Top = 312
  end
  object Query2: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1072'_'#1094#1077#1085#1072'"'
      '  ("'#1094#1077#1085#1072'")'
      'VALUES'
      '  (:"'#1094#1077#1085#1072'")')
    SQLDelete.Strings = (
      'DELETE FROM "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1072'_'#1094#1077#1085#1072'"'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1072'_'#1094#1077#1085#1072'"'
      'SET'
      '  "'#1094#1077#1085#1072'" = :"'#1094#1077#1085#1072'"'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1072'_'#1094#1077#1085#1072'"'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT "'#1094#1077#1085#1072'" FROM "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1072'_'#1094#1077#1085#1072'"'
      'WHERE'
      '  id = :id')
    Connection = DM1.db1
    SQL.Strings = (
      'SELECT '
      ' pl."'#1082#1086#1076'_'#1076#1083#1080#1085#1099'",'
      ''
      '  pl."'#1082#1086#1076'_'#1094#1077#1085#1099'",  '
      'g.'#1089#1086#1088#1090#1080#1088#1086#1074#1082#1072'||'#39'. '#39'||g.name g_name,'
      '  l.name l_name,'
      '  pl.id,'
      ' '
      '  pl."'#1094#1077#1085#1072'"'
      'FROM'
      '  "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1072'_'#1094#1077#1085#1072'" pl'
      
        '  INNER JOIN "'#1089#1082#1083#1072#1076'"."'#1094#1077#1085#1086#1074#1099#1077'_'#1075#1088#1091#1087#1087#1099'" g ON (pl."'#1082#1086#1076'_'#1094#1077#1085#1099'" = g.id' +
        ')'
      '  INNER JOIN "'#1089#1082#1083#1072#1076'"."'#1076#1083#1080#1085#1099'" l ON (pl."'#1082#1086#1076'_'#1076#1083#1080#1085#1099'" = l.id)'
      'order by '
      ''
      '  pl."'#1082#1086#1076'_'#1094#1077#1085#1099'",'
      'pl."'#1082#1086#1076'_'#1076#1083#1080#1085#1099'"')
    Left = 360
    Top = 312
  end
  object pmDel: TdxBarPopupMenu
    BarManager = barProduct
    ItemLinks = <
      item
        Visible = True
        ItemName = 'btnDel'#1043#1088#1091#1087#1087#1072
      end
      item
        Visible = True
        ItemName = 'btnDel'#1044#1083#1080#1085#1091
      end>
    UseOwnFont = False
    Left = 496
    Top = 184
  end
end
