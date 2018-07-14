object FNewZakupkaDetail: TFNewZakupkaDetail
  Left = 0
  Top = 0
  Caption = #1047#1072#1082#1091#1087#1082#1072
  ClientHeight = 605
  ClientWidth = 987
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 573
    Width = 987
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 573
    ExplicitWidth = 987
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
  object GroupProduct: TcxGroupBox
    Left = 0
    Top = 47
    Align = alLeft
    Caption = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 1
    Height = 526
    Width = 305
    object edtSort: TcxLookupComboBox
      Left = 60
      Top = 40
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'uni_name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsSort
      Properties.OnCloseUp = edtSortPropertiesCloseUp
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
      TabOrder = 1
      OnKeyDown = edtSortKeyDown
      Width = 243
    end
    object cxLabel1: TcxLabel
      Left = 8
      Top = 386
      Caption = #1044#1083#1080#1085#1072':'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
      Visible = False
    end
    object edtLength: TAdvEdit
      Left = 167
      Top = 108
      Width = 128
      Height = 21
      EmptyTextStyle = []
      LabelPosition = lpLeftCenter
      LabelTransparent = True
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
      Signed = True
      TabOrder = 5
      Text = '60'
      Visible = True
      Version = '3.3.2.0'
    end
    object lblPrice: TcxLabel
      Left = 3
      Top = 90
      Caption = #1062#1077#1085#1072':'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object lblCount: TcxLabel
      Left = 3
      Top = 117
      Caption = #1057#1090#1077#1073#1083#1077#1081':'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object btnINSERT: TcxButton
      Left = 3
      Top = 142
      Width = 149
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100'->'
      Enabled = False
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 9
      OnClick = btnINSERTClick
    end
    object lblType: TcxLabel
      Left = 3
      Top = 18
      Caption = #1058#1080#1087':'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object lblSort: TcxLabel
      Left = 3
      Top = 41
      Caption = #1057#1086#1088#1090':'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object lblProduct: TcxLabel
      Left = 3
      Top = 66
      Caption = #1058#1086#1074#1072#1088':'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object edtCount: TsCalcEdit
      Left = 60
      Top = 115
      Width = 92
      Height = 21
      AutoSize = False
      TabOrder = 3
      OnChange = edtCountChange
      OnKeyDown = edtCountKeyDown
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
      DecimalPlaces = 0
      DisplayFormat = '### ### ##0;-### ### ##0.00;0'
    end
    object edtType: TcxLookupComboBox
      Left = 60
      Top = 16
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'uni_name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsType
      Properties.OnCloseUp = edtTypePropertiesCloseUp
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
      Width = 243
    end
    object edtProduct: TcxLookupComboBox
      Left = 60
      Top = 64
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'uni_name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsProduct
      Properties.OnChange = edtProductPropertiesChange
      Properties.OnCloseUp = edtProductPropertiesCloseUp
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
      TabOrder = 2
      OnKeyDown = edtProductKeyDown
      Width = 243
    end
    object edtPrice: TsCalcEdit
      Left = 60
      Top = 88
      Width = 92
      Height = 21
      AutoSize = False
      TabOrder = 12
      OnChange = edtPriceChange
      OnKeyDown = edtPriceKeyDown
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
  object cxGroupBox1: TcxGroupBox
    Left = 313
    Top = 47
    Align = alClient
    Caption = #1044#1077#1090#1072#1083#1080#1079#1072#1094#1080#1103
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 2
    Height = 526
    Width = 674
    inline FrameTopPanel1: TFrameTopPanel
      Left = 3
      Top = 15
      Width = 668
      Height = 32
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 3
      ExplicitTop = 15
      ExplicitWidth = 668
      ExplicitHeight = 32
      inherited barProduct: TdxBarManager
        Top = 16
        DockControlHeights = (
          0
          0
          69
          0)
        inherited btnAdd: TdxBarLargeButton
          Visible = ivNever
          OnClick = btnINSClick
        end
        inherited btnEdit: TdxBarLargeButton
          OnClick = btnEditClick
        end
        inherited btnDel: TdxBarLargeButton
          OnClick = btnDelClick
        end
        inherited btnRefresh: TdxBarLargeButton
          Visible = ivNever
          OnClick = btnRefreshClick
        end
      end
    end
    object GridOrder: TcxGrid
      Left = 3
      Top = 47
      Width = 668
      Height = 469
      Align = alClient
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      object ViewOrder: TcxGridDBTableView
        OnDblClick = ViewOrderDblClick
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        DataController.DataSource = dsDetail
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.GroupByBox = False
        object ViewOrderpt_uni_name: TcxGridDBColumn
          Caption = #1055#1083#1072#1085#1090#1072#1094#1080#1103
          DataBinding.FieldName = 'pt_uni_name'
          Width = 140
        end
        object ViewOrderst_uni_name: TcxGridDBColumn
          Caption = #1057#1086#1088#1090
          DataBinding.FieldName = 'st_uni_name'
          Width = 132
        end
        object ViewOrderDBColumn1: TcxGridDBColumn
          Caption = #1044#1083#1080#1085#1072
          DataBinding.FieldName = #1076#1083#1080#1085#1072
          Width = 50
        end
        object ViewOrderDBColumn: TcxGridDBColumn
          Caption = #1062#1077#1085#1072
          DataBinding.FieldName = #1094#1077#1085#1072
          Width = 50
        end
        object ViewOrderDBColumn2: TcxGridDBColumn
          Caption = #1057#1090#1077#1073#1083#1077#1081
          DataBinding.FieldName = #1089#1090#1077#1073#1083#1077#1081
          Width = 59
        end
      end
      object GridLevelOrder: TcxGridLevel
        GridView = ViewOrder
      end
    end
  end
  object cxspltr1: TcxSplitter
    Left = 305
    Top = 47
    Width = 8
    Height = 526
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = GroupProduct
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
    TabOrder = 4
    Height = 47
    Width = 987
    object edtFB: TsCalcEdit
      Left = 262
      Top = 16
      Width = 92
      Height = 21
      AutoSize = False
      TabOrder = 1
      OnChange = edtFBChange
      OnExit = edtFBExit
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
    object lblFB: TcxLabel
      Left = 240
      Top = 17
      Caption = 'FB:'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object edtPlant: TcxButtonEdit
      Left = 69
      Top = 15
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edtPlantPropertiesButtonClick
      Properties.OnEditValueChanged = edtPlantPropertiesEditValueChanged
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 0
      Width = 165
    end
    object lblMarking: TcxLabel
      Left = 6
      Top = 17
      Caption = #1055#1083#1072#1085#1090#1072#1094#1080#1103'*'
      Transparent = True
    end
    object edtNumFact: TAdvEdit
      Left = 630
      Top = 16
      Width = 90
      Height = 21
      EmptyTextStyle = []
      LabelPosition = lpLeftCenter
      LabelTransparent = True
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
      Enabled = False
      Signed = True
      TabOrder = 4
      Text = ''
      Visible = True
      Version = '3.3.2.0'
    end
    object lblSum: TcxLabel
      Left = 554
      Top = 18
      Caption = #8470' '#1092#1072#1082#1090#1091#1088#1099':'
      Enabled = False
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object lblDateFact: TcxLabel
      Left = 360
      Top = 17
      Caption = #1044#1072#1090#1072' '#1092#1072#1082#1090#1091#1088#1099':'
      Enabled = False
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object edtDateFact: TAdvDateTimePicker
      Left = 443
      Top = 16
      Width = 105
      Height = 21
      Date = 0.475810185185185200
      Format = ''
      Time = 0.475810185185185200
      ShowCheckbox = True
      Checked = False
      DoubleBuffered = True
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = dkDate
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 7
      OnChange = edtDateFactChange
      BorderStyle = bsSingle
      Ctl3D = True
      DateTime = 0.475810185185185200
      Version = '1.2.0.6'
      LabelPosition = lpTopLeft
      LabelTransparent = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
    end
  end
  object QueryDetail: TUniQuery
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
    Connection = dbZakup
    SQL.Strings = (
      'SELECT '
      '  zd.id,'
      '  zd."'#1082#1086#1076'_'#1079#1072#1082#1091#1087#1082#1080'",'
      '  zd."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'",'
      '  zd."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'",'
      '  zd."'#1082#1086#1076'_'#1090#1086#1074#1072#1088#1072'",'
      '  zd."'#1094#1077#1085#1072'",'
      '  zd.fb,'
      '  zd."'#1076#1083#1080#1085#1072'",'
      '  zd."'#1089#1090#1077#1073#1083#1077#1081'",'
      '  pt.name pt_name,'
      '  pt.uni_name pt_uni_name,'
      '  pt.reg_name pt_reg_name,'
      '  st.name st_name,'
      '  st.uni_name st_uni_name,'
      '  st.reg_name st_reg_name'
      'FROM'
      '  "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1091#1087#1082#1080'_'#1076#1077#1090#1072#1083#1100'" zd'
      
        '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pt ON (zd."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" =' +
        ' pt.id)'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090#1072'" st ON (zd."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'" = st.id)'
      'where zd.'#1082#1086#1076'_'#1079#1072#1082#1091#1087#1082#1080'=:id'
      'order by zd.id')
    AfterFetch = QueryDetailAfterFetch
    Left = 487
    Top = 201
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
  end
  object dsDetail: TDataSource
    DataSet = QueryDetail
    Left = 400
    Top = 153
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
    Connection = dbZakup
    SQL.Strings = (
      'select * from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"'
      'order by id')
    Left = 195
    Top = 365
  end
  object dbZakup: TUniConnection
    ProviderName = 'PostgreSQL'
    SpecificOptions.Strings = (
      'PostgreSQL.Charset=WIN1251'
      'PostgreSQL.UseUnicode=True')
    Options.KeepDesignConnected = False
    PoolingOptions.ConnectionLifetime = 3
    Username = 'uniflora_trade'
    Server = 'pgsql.uniflora.mass.hc.ru'
    LoginPrompt = False
    Left = 176
    Top = 448
    EncryptedPassword = 'B4FF94FF9BFFCCFFC8FFBCFF94FF8EFF99FF92FF'
  end
  object TransactZakup: TUniTransaction
    DefaultConnection = dbZakup
    Left = 84
    Top = 332
  end
  object QueryCountry: TUniQuery
    Connection = DM1.db1
    SQL.Strings = (
      'select * from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1090#1088#1072#1085#1099'" order by '#1087#1088#1080#1086#1088#1080#1090#1077#1090)
    Left = 440
    Top = 16
  end
  object dsCountry: TUniDataSource
    DataSet = QueryCountry
    Left = 368
  end
  object dsSort: TUniDataSource
    DataSet = QuerySort
    Left = 376
    Top = 272
  end
  object QuerySort: TUniQuery
    Connection = DM1.db1
    SQL.Strings = (
      'select * from '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'.'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080' where id<>1')
    Left = 296
    Top = 288
  end
  object QueryType: TUniQuery
    Connection = DM1.db1
    SQL.Strings = (
      'select * from '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'.'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080' where id<>1')
    Left = 304
    Top = 160
  end
  object dsType: TUniDataSource
    DataSet = QueryType
    Left = 432
    Top = 344
  end
  object QueryProduct: TUniQuery
    Connection = dbZakup
    Transaction = TransactZakup
    UpdateTransaction = TransactZakup
    SQL.Strings = (
      'select * from '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'.'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080' where id<>1')
    Left = 232
    Top = 240
  end
  object dsProduct: TUniDataSource
    DataSet = QueryProduct
    Left = 296
    Top = 224
  end
end
