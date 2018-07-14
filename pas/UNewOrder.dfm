object FNewOrder: TFNewOrder
  Left = 0
  Top = 0
  Caption = #1047#1072#1082#1072#1079
  ClientHeight = 505
  ClientWidth = 934
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 473
    Width = 934
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 473
    ExplicitWidth = 934
    inherited bardxbrmngr1: TdxBarManager
      DockControlHeights = (
        0
        0
        0
        34)
      inherited btnSave: TdxBarLargeButton
        Enabled = False
        OnClick = FrameSave1btnSaveClick
      end
    end
  end
  object GroupШапка: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 1
    Height = 101
    Width = 934
    object GroupOsn: TcxGroupBox
      Left = 2
      Top = 2
      Align = alLeft
      Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1089#1074#1077#1076#1077#1085#1080#1103
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 0
      Height = 97
      Width = 435
      object edtKargo: TcxButtonEdit
        Left = 207
        Top = 67
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        Properties.OnButtonClick = edtKargoPropertiesButtonClick
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
        TabOrder = 4
        Width = 224
      end
      object lblKargo: TcxLabel
        Left = 209
        Top = 52
        Caption = #1050#1072#1088#1075#1086'*'
        Transparent = True
      end
      object edtMarking: TcxButtonEdit
        Left = 4
        Top = 67
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        Properties.OnButtonClick = edtMarkingPropertiesButtonClick
        Properties.OnEditValueChanged = edtMarkingPropertiesEditValueChanged
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
        TabOrder = 3
        Width = 197
      end
      object lblMarking: TcxLabel
        Left = 3
        Top = 52
        Caption = #1052#1072#1088#1082#1080#1088#1086#1074#1082#1072'*'
        Transparent = True
      end
      object edtNum: TcxTextEdit
        Left = 3
        Top = 32
        Properties.OnEditValueChanged = edtNumPropertiesEditValueChanged
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 0
        OnKeyUp = edtNumKeyUp
        Width = 86
      end
      object lblNumber: TcxLabel
        Left = 3
        Top = 14
        Caption = #8470'*'
        Transparent = True
      end
      object edtДатаВылета: TAdvDateTimePicker
        Left = 95
        Top = 32
        Width = 105
        Height = 21
        Date = 0.475810185185185200
        Format = ''
        Time = 0.475810185185185200
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Kind = dkDate
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 1
        OnChange = edtДатаВылетаChange
        BorderStyle = bsSingle
        Ctl3D = True
        DateTime = 0.475810185185185200
        Version = '1.2.0.6'
        LabelCaption = #1044#1072#1090#1072' '#1074#1099#1083#1077#1090#1072
        LabelPosition = lpTopLeft
        LabelTransparent = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
      end
      object edtДатаЗаказа: TAdvDateTimePicker
        Left = 209
        Top = 32
        Width = 105
        Height = 21
        Date = 41137.475810185180000000
        Format = ''
        Time = 41137.475810185180000000
        DoubleBuffered = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Kind = dkDate
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 2
        OnChange = edtДатаЗаказаChange
        BorderStyle = bsSingle
        Ctl3D = True
        DateTime = 41137.475810185180000000
        Version = '1.2.0.6'
        LabelCaption = #1044#1072#1090#1072' '#1079#1072#1082#1072#1079#1072
        LabelPosition = lpTopLeft
        LabelTransparent = True
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Tahoma'
        LabelFont.Style = []
      end
      object lblFito: TcxLabel
        Left = 320
        Top = 14
        Caption = #1060#1080#1090#1086
        Transparent = True
      end
    end
    object GroupDop: TcxGroupBox
      Left = 437
      Top = 2
      Align = alClient
      Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1077' '#1089#1074#1077#1076#1077#1085#1080#1103
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 1
      Height = 97
      Width = 495
      object edtTrack: TcxButtonEdit
        Left = 6
        Top = 32
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        Properties.OnButtonClick = edtTrackPropertiesButtonClick
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
        Width = 224
      end
      object edtPricooling: TcxButtonEdit
        Left = 6
        Top = 67
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Properties.ReadOnly = True
        Properties.OnButtonClick = edtPricoolingPropertiesButtonClick
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
        Width = 224
      end
      object lblTrack: TcxLabel
        Left = 6
        Top = 17
        Caption = #1058#1088#1072#1082
        Transparent = True
      end
      object lblPricooling: TcxLabel
        Left = 6
        Top = 52
        Caption = #1055#1088#1080#1082#1091#1083#1080#1085#1075
        Transparent = True
      end
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 297
    Top = 101
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
    Height = 372
    Width = 637
    inline FrameTopPanel1: TFrameTopPanel
      Left = 3
      Top = 15
      Width = 631
      Height = 32
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = -2
      ExplicitWidth = 633
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
        end
        inherited btnEdit: TdxBarLargeButton
          OnClick = btnEditClick
        end
        inherited btnDel: TdxBarLargeButton
          OnClick = btnDelClick
        end
        inherited btnRefresh: TdxBarLargeButton
          Visible = ivNever
        end
        inherited btnPrint: TdxBarLargeButton
          OnClick = btnPrintClick
        end
      end
    end
    object GridOrder: TcxGrid
      Left = 3
      Top = 47
      Width = 631
      Height = 315
      Align = alClient
      PopupMenu = pmLock
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      ExplicitLeft = 2
      ExplicitTop = 50
      ExplicitWidth = 633
      ExplicitHeight = 320
      object ViewOrder: TcxGridDBTableView
        OnDblClick = ViewOrderDblClick
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        OnCustomDrawCell = ViewOrderCustomDrawCell
        DataController.DataSource = dsOrderDeatil
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
        object ColumnViewOrderpl_name: TcxGridDBColumn
          Caption = #1055#1083#1072#1085#1090#1072#1094#1080#1103
          DataBinding.FieldName = 'pl_name'
          Width = 116
        end
        object ColumnViewOrders_name: TcxGridDBColumn
          Caption = #1057#1086#1088#1090
          DataBinding.FieldName = 's_name'
          Width = 126
        end
        object ColumnViewOrderDBColumn: TcxGridDBColumn
          Caption = #1044#1083#1080#1085#1072
          DataBinding.FieldName = #1076#1083#1080#1085#1072
          Width = 67
        end
        object ColumnViewOrder__1: TcxGridDBColumn
          Caption = #1050#1086#1083'-'#1074#1086' FB'
          DataBinding.FieldName = #1082#1086#1083'_'#1074#1086'_'#1092#1091#1083#1073#1086#1082#1089#1086#1074
          Width = 85
        end
        object ColumnСтеблей: TcxGridDBColumn
          Caption = 'C'#1090#1077#1073#1083#1077#1081
          DataBinding.FieldName = #1089#1090#1077#1073#1083#1077#1081
          Width = 67
        end
        object ColumnPrice: TcxGridDBColumn
          Caption = #1062#1077#1085#1072
          DataBinding.FieldName = #1094#1077#1085#1072
          Width = 52
        end
        object ColumnStand: TcxGridDBColumn
          Caption = #1057#1090#1077#1085#1076#1080#1085#1075
          DataBinding.FieldName = #1089#1090#1077#1085#1076#1080#1085#1075
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 68
        end
        object ColumnLock: TcxGridDBColumn
          Caption = #1047#1072#1087#1088#1077#1090' '#1087#1083#1072#1085#1090#1072#1094#1080#1081
          DataBinding.FieldName = #1079#1072#1087#1088#1077#1090'_'#1087#1083#1072#1085#1090#1072#1094#1080#1081
          Width = 150
        end
        object ColumnGood: TcxGridDBColumn
          Caption = #1046#1077#1083#1072#1077#1084#1099#1077' '#1087#1083#1072#1085#1090#1072#1094#1080#1080
          DataBinding.FieldName = #1078#1077#1083#1072#1077#1084#1099#1077'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080
          Width = 150
        end
        object ColumnLockPos: TcxGridDBColumn
          DataBinding.FieldName = #1079#1072#1087#1088#1077#1090'_'#1087#1086#1082#1091#1087#1082#1080
          Visible = False
        end
        object ColumnЗакуп: TcxGridDBColumn
          DataBinding.FieldName = #1082#1086#1076'_'#1079#1072#1082#1091#1087#1082#1080
          Visible = False
        end
      end
      object GridLevelOrder: TcxGridLevel
        GridView = ViewOrder
      end
    end
  end
  object cxspltr1: TcxSplitter
    Left = 289
    Top = 101
    Width = 8
    Height = 372
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = GroupProduct
  end
  object GroupProduct: TcxGroupBox
    Left = 0
    Top = 101
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
    TabOrder = 4
    Height = 372
    Width = 289
    inline FrameSearch1: TFrameSearch
      Left = 3
      Top = 15
      Width = 283
      Height = 28
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = -2
      ExplicitWidth = 285
      inherited Group1: TcxGroupBox
        ExplicitWidth = 285
        Width = 283
        inherited LabelName: TcxLabel
          Style.IsFontAssigned = True
        end
        inherited edtName: TcxTextEdit
          Left = 36
          TabOrder = 0
          OnKeyUp = FrameSearch1edtNameKeyUp
          ExplicitLeft = 36
          ExplicitWidth = 244
          Width = 244
        end
      end
    end
    object lstTreeProducts: TcxDBTreeList
      Left = 3
      Top = 43
      Width = 283
      Height = 319
      Align = alClient
      Bands = <
        item
          Expandable = tlbeExpandable
        end>
      DataController.DataSource = dsProduct
      DataController.ImageIndexField = 'ID_GROUP'
      DataController.ParentField = 'pid'
      DataController.KeyField = 'id'
      DataController.StateIndexField = '0'
      Images = il1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = ''
      Navigator.Buttons.CustomButtons = <>
      OptionsBehavior.DragExpand = False
      OptionsBehavior.HeaderHints = True
      OptionsSelection.CellSelect = False
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.CheckGroups = True
      OptionsView.DropNodeIndicator = True
      Preview.AutoHeight = False
      RootValue = -1
      Styles.Content = cxstyl1
      TabOrder = 1
      OnCustomDrawDataCell = lstTreeProductsCustomDrawDataCell
      OnDblClick = lstTreeProductsDblClick
      OnKeyDown = lstTreeProductsKeyDown
      ExplicitLeft = 2
      ExplicitTop = 46
      ExplicitWidth = 285
      ExplicitHeight = 324
      object ColumnName: TcxDBTreeListColumn
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Vert = taVCenter
        Caption.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'name'
        Width = 566
        Position.ColIndex = 0
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
      object ColumnID: TcxDBTreeListColumn
        Visible = False
        DataBinding.FieldName = 'id'
        Position.ColIndex = 1
        Position.RowIndex = 0
        Position.BandIndex = 0
        Summary.FooterSummaryItems = <>
        Summary.GroupFooterSummaryItems = <>
      end
    end
  end
  object edtFito: TcxLookupComboBox
    Left = 322
    Top = 41
    Properties.DropDownListStyle = lsFixedList
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        FieldName = 'name'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = dsFito
    Properties.OnCloseUp = edtFitoPropertiesCloseUp
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
    TabOrder = 5
    Width = 109
  end
  object QueryOrderDetail: TUniQuery
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
    Connection = dbOrder
    SQL.Strings = (
      'SELECT '
      '  pl.name pl_name,'
      '  d.id,'
      '  d."'#1082#1086#1076'_'#1079#1072#1082#1072#1079#1072'",'
      '  d."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'",'
      '  d."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'",'
      '  d."'#1076#1083#1080#1085#1072'",'
      '  d."'#1082#1086#1083'_'#1074#1086'_'#1092#1091#1083#1073#1086#1082#1089#1086#1074'",'
      '  s.name s_name,'
      '  pl.uni_name pl_uni_name,'
      '  pl.reg_name pl_reg_name,'
      '  s.uni_name s_uni_name,'
      '  s.reg_name s_reg_name,'
      
        'd.'#1094#1077#1085#1072', d.'#1089#1090#1077#1085#1076#1080#1085#1075', d.'#1089#1090#1077#1073#1083#1077#1081', d.'#1079#1072#1087#1088#1077#1090'_'#1087#1083#1072#1085#1090#1072#1094#1080#1081', d.'#1078#1077#1083#1072#1077#1084#1099#1077'_'#1087#1083 +
        #1072#1085#1090#1072#1094#1080#1080', '#1079#1072#1087#1088#1077#1090'_'#1087#1086#1082#1091#1087#1082#1080', '#1082#1086#1076#1099'_'#1079#1072#1087#1088#1077#1090'_'#1087#1083#1072#1085#1090#1072#1094#1080#1081', '#1082#1086#1076#1099'_'#1078#1077#1083#1072#1077#1084#1099#1077'_'#1087#1083 +
        #1072#1085#1090#1072#1094#1080#1080', '#1082#1086#1076'_'#1079#1072#1082#1091#1087#1082#1080
      'FROM'
      '  "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1072#1079#1099'_'#1076#1077#1090#1072#1083#1100'" d'
      
        '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pl ON (d."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" = ' +
        'pl.id)'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090#1072'" s ON (d."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'" = s.id)'
      'where '#1082#1086#1076'_'#1079#1072#1082#1072#1079#1072'=:id_order'
      'order by id')
    AfterFetch = QueryOrderDetailAfterFetch
    Left = 480
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_order'
        Value = nil
      end>
  end
  object dsOrderDeatil: TDataSource
    DataSet = QueryOrderDetail
    Left = 480
    Top = 272
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
    Connection = dbOrder
    Transaction = TransactOrder
    SQL.Strings = (
      'SELECT '
      '  pl.name pl_name,'
      '  d.id,'
      '  d."'#1082#1086#1076'_'#1079#1072#1082#1072#1079#1072'",'
      '  d."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'",'
      '  d."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'",'
      '  d."'#1076#1083#1080#1085#1072'",'
      '  d."'#1082#1086#1083'_'#1074#1086'_'#1092#1091#1083#1073#1086#1082#1089#1086#1074'",'
      '  s.name s_name,'
      '  pl.uni_name pl_uni_name,'
      '  pl.reg_name pl_reg_name,'
      '  s.uni_name s_uni_name,'
      '  s.reg_name s_reg_name'
      'FROM'
      '  "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1072#1079#1099'_'#1076#1077#1090#1072#1083#1100'" d'
      
        '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pl ON (d."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" = ' +
        'pl.id)'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090#1072'" s ON (d."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'" = s.id)'
      'where '#1082#1086#1076'_'#1079#1072#1082#1072#1079#1072'=:id_order'
      'order by id desc')
    Left = 40
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_order'
        Value = nil
      end>
  end
  object dsProduct: TDataSource
    DataSet = QueryProduct
    Left = 192
    Top = 205
  end
  object QueryProduct: TUniQuery
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
    Connection = dbOrder
    SQL.Strings = (
      
        'select * from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1088#1086#1076#1091#1082#1094#1080#1103'" where id_group=1 and id no' +
        't in ('
      'SELECT '
      '  p.id'
      'FROM'
      '  "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"."'#1087#1086#1089#1090#1086#1103#1085#1085#1099#1081'_'#1079#1072#1087#1088#1077#1090'_'#1087#1083#1072#1085#1090#1072#1094#1080#1081'" zp'
      
        '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1088#1086#1076#1091#1082#1094#1080#1103'" p ON (zp."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" = ' +
        'p."'#1082#1086#1076'_'#1076#1077#1090#1072#1083#1080#1079#1072#1094#1080#1080'")'
      '  AND (p."'#1082#1086#1076'_'#1089#1090#1088#1091#1082#1090#1091#1088#1099'" = 4) and (zp."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"=19)'
      ') '
      'and pid not in ('
      'SELECT '
      '  p.id'
      'FROM'
      '  "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"."'#1087#1086#1089#1090#1086#1103#1085#1085#1099#1081'_'#1079#1072#1087#1088#1077#1090'_'#1087#1083#1072#1085#1090#1072#1094#1080#1081'" zp'
      
        '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1088#1086#1076#1091#1082#1094#1080#1103'" p ON (zp."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" = ' +
        'p."'#1082#1086#1076'_'#1076#1077#1090#1072#1083#1080#1079#1072#1094#1080#1080'")'
      '  AND (p."'#1082#1086#1076'_'#1089#1090#1088#1091#1082#1090#1091#1088#1099'" = 4) and (zp."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"=19)'
      ')'
      'order by id')
    Left = 139
    Top = 313
  end
  object il1: TImageList
    Left = 228
    Top = 333
    Bitmap = {
      494C010102000500440010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      00000000000000000000000000000000000000000000FCFCFC04D0CFCE39CCCB
      CA3ECDCBCA3ECDCBCA3ECDCBCA3ECDCBCA3ECDCBCA3ECDCBCA3ECDCBCA3ECBCA
      C93ECAC9C83ECECDCC39FCFCFC04000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DDD6D255C7AA98FFC6A9
      97FFC6A998FFC6A997FFC6A997FFC5A996FFC5A895FFC4A794FFC3A693FFC3A6
      92FFC2A590FF7E6C61DAF6F5F50D000000000000000000000000000000007DC5
      E0882A9FC8DA77C7E38CC4E7F23DFCFEFE030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E0D8D455F2E5D9FFD9CF
      C4FFD9CEC4FFD8CEC4FFD8CDC2FFD7CDC1FFD7CBC0FFF0E3D6FFEFE2D5FFEEE1
      D2FFEAD9C8FF88776BDAF6F5F50D0000000000000000000000000000000042B7
      DAD417B5DEFF19D5FFFF13C8F4FF20B2DDE969C4E29CB7E2F04CF7FCFD080000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E4DCD855F6EDE4FFDFD9
      D2FFDFD9D2FFDED9D2FFDED8D1FFDDD7CFFFDCD6CEFFF5EEE4FFF5EDE2FFF4EB
      E0FFEDDFCFFF89776BDAF6F6F50D000000000000000000000000E6F4F91C3FCC
      E8FE28BBDFFF30DBFFFF2AD9FFFF24D7FFFF1DD6FFFF18CEF9FF1DB3DFF35DBB
      DEABA9D9EB5CF0F9FC1100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E9E1DD55F7F0E8FFCAC6
      C0FFC9C5BFFFC8C4BFFFC7C3BEFFC6C2BCFFC5C0BAFFC3BEB7FFC2BCB5FFC0BA
      B2FFDDCFC2FF89776CDAF7F6F60D000000000000000000000000A5D7E8686CF0
      FEFF3BC2E0FF46E2FFFF40E0FFFF39DEFFFF32DCFFFF2BD9FFFF28D7FFFF2AD5
      FFFF2AD0FCFF25B5E2F956B4D6BBEFF8FB130000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E9E2DE55F8F2EBFFCBC8
      C4FFCBC8C4FFCAC7C3FFE9E5E0FFC8C4C0FFC7C3BDFFC5C1BBFFC4BFB8FFC3BD
      B5FFDED1C4FF89776DDAF7F6F60D00000000000000000000000074C7DFB684F8
      FFFF4FC8E1FF5CEAFFFF56E8FFFF4FE5FFFF47E3FFFF3FE0FFFF38DDFFFF37DB
      FFFF39D8FFFF3AD5FEFF61DAF2FFC6E6F1450000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EAE3DF55FAF4EFFFE4E2
      DEFFE4E1DEFFE4E1DDFFE3E0DCFFE2DEDAFFE1DDD8FFE0DBD5FFEFEAE3FFDDD7
      D0FFE7DACEFF8A786EDAF7F6F60D0000000000000000F5FBFD0F73D3E4F89AFE
      FFFF60CDE2FF72F1FFFF6CEFFFFF64ECFFFF5CEAFFFF54E7FFFF4BE4FFFF47E1
      FFFF48DFFFFF48D7F7FF8EECFAFFC8E6F1470000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EAE4E055FBF6F2FFE6E4
      E2FFE5E4E2FFE5E3E1FFE4E2E0FFE3E1DEFFE2DFDBFFE1DDD8FFF0EBE5FFDED9
      D2FFE8DBD0FF8A796FDAF7F6F60D0000000000000000BBE0ED5BB0FBFCFFAAFF
      FFFF6ED0E3FF87F9FFFF81F6FFFF79F3FFFF71F1FFFF68EEFFFF5FEBFFFF58E8
      FFFF57E6FFFF72E4F6FFA0F4FBFFCCE9F2470000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBE4E155FCF8F6FFD1D1
      D0FFD1D0D0FFEEEDECFFCFCDCCFFCDCBCAFFEBE9E5FFCAC7C4FFC9C5C0FFC7C3
      BDFFE0D4CAFF8B796FDAF7F6F60D000000000000000089C9E0AFC2FFFFFFB9FF
      FFFF7AD2E4FF9BFEFFFF94FCFFFF8CF9FFFF83F6FFFF7BF4FFFF72F1FFFF69EE
      FFFF66EAFCFFA2F4F9FFADF7FBFFD2EBF3440000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBE5E155FDFAF9FFD3D3
      D3FFD3D3D3FFD2D2D2FFD0D0D0FFCFCECDFFCDCCCAFFCCC9C6FFCAC7C3FFC8C4
      BFFFE1D5CBFF8B7A70DAF7F6F60D00000000F6FAFC0E9AD3E4F7D1FFFFFFC5FF
      FFFF81D2E6FFAAFFFFFFA2FDFFFF9AFBFFFF91F8FFFF88F5FFFF80F2FFFF77F0
      FFFF7DEAF7FFC1FFFFFFB8F8FAFFD5ECF3440000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ECE5E255FDFBFAFFE9E9
      E9FFE9E9E9FFE9E9E9FFE8E8E8FFF6F5F5FFE6E4E2FFE4E2DEFFE3DFDBFFE1DD
      D8FFE9DED3FF8B7970DAF6F6F60D00000000EDF7FA1CA4D4E685A2D6E7A080C6
      DFBB73C7DFF4A6F2F7FF9FF2F8FF9FF6FBFF9CF7FDFF95F6FFFF8CF3FFFF84F0
      FEFFABF2F8FFCAFFFFFFC1F8FAFFD8EDF3440000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ECE6E255FDFBF9FFEAEA
      EAFFE9E9E9FFE9E9E9FFE9E9E9FFF6F6F5FFE6E4E3FFDBD6D2FFCFC5BFFFCFC3
      BCFFCEBCB1FF948780A9FCFCFC04000000000000000000000000000000000000
      00008ACFE7C7DEFFFFFFD6FDFEFFCCF9FBFFC3F5F9FFBAF3F9FFB4F2F9FFAAEF
      F8FFD3FDFEFFD4FFFFFFCAF7FAFFDBEEF4420000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EDE6E355FDFBF9FFD6D6
      D6FFF1F1F1FFD4D4D4FFD4D4D4FFD2D2D1FFDFDEDCFFD3C2B9FFE8D8C3FFDDBB
      8CFF9F8B7AB5F6F6F50E00000000000000000000000000000000000000000000
      00007FCCE6C8D2F2F8FFDCF7FBFFE6FDFEFFECFFFFFFEAFFFFFFE7FFFFFFDFFF
      FFFFDFFFFFFFDEFFFFFFD2F6F9FFDBEDF4410000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ECE5E155FDFAF9FFD7D7
      D7FFD6D6D6FFD6D6D6FFD4D4D4FFD3D2D1FFE0DEDCFFD5C4B9FFEDCC99FFA490
      7FB0F8F7F60C0000000000000000000000000000000000000000000000000000
      0000EAF7FC21DEF2F937D7F0F743D3EDF64EB9E0EF59B3DEEE6590CDE4CAEBFF
      FFFFE9FFFFFFE9FFFFFFD1EFF5FFE0EFF5370000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ECE4E155FBF9F6FFFDFC
      FCFFFDFDFCFFFDFCFBFFFCFBFAFFFCFAF7FFFBF8F5FFD1BDAEFFA59382ABF9F9
      F80A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B7DEED679FCE
      E2ED9ECDE1EF9ECCDFF176B7D4E6FCFEFE050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4EFED38E0D1CAAADFD1
      CBAAE0D2CBAAE0D3CCAADFD2CBAADDD0C9AADBCCC3AACEC2BB7EFBFBFB070000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF008001FFFF000000008001E0FF00000000
      8001E01F000000008001C003000000008001C000000000008001C00000000000
      8001800000000000800180000000000080018000000000008001000000000000
      80010000000000008001F000000000008003F000000000008007F00000000000
      800FFFC000000000801FFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object QueryReport: TUniQuery
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
      'SELECT '
      '  pl.name pl_name,'
      '  d.id,'
      '  d."'#1082#1086#1076'_'#1079#1072#1082#1072#1079#1072'",'
      '  d."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'",'
      '  d."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'",'
      '  d."'#1076#1083#1080#1085#1072'",'
      '  d."'#1082#1086#1083'_'#1074#1086'_'#1092#1091#1083#1073#1086#1082#1089#1086#1074'",'
      '  s.name s_name,'
      '  pl.uni_name pl_uni_name,'
      '  pl.reg_name pl_reg_name,'
      '  s.uni_name s_uni_name,'
      '  s.reg_name s_reg_name,'
      'd.'#1094#1077#1085#1072', d.'#1089#1090#1077#1085#1076#1080#1085#1075', d.'#1089#1090#1077#1073#1083#1077#1081
      'FROM'
      '  "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1072#1079#1099'_'#1076#1077#1090#1072#1083#1100'" d'
      
        '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pl ON (d."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" = ' +
        'pl.id)'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090#1072'" s ON (d."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'" = s.id)'
      'where '#1082#1086#1076'_'#1079#1072#1082#1072#1079#1072'=:id_order'
      'order by pl_name, pl_uni_name, pl_reg_name')
    Left = 648
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_order'
        Value = nil
      end>
  end
  object pmLock: TPopupMenu
    OnPopup = pmLockPopup
    Left = 592
    Top = 296
    object N1: TMenuItem
      Caption = #1047#1072#1087#1088#1077#1090' '#1087#1083#1072#1085#1090#1072#1094#1080#1081
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1046#1077#1083#1072#1077#1084#1099#1077' '#1087#1083#1072#1085#1090#1072#1094#1080#1080
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object NLock: TMenuItem
      Caption = #1047#1072#1087#1088#1077#1090' '#1087#1086#1082#1091#1087#1082#1080
      OnClick = NLockClick
    end
  end
  object QueryFito: TUniQuery
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
    Connection = dbOrder
    SQL.Strings = (
      'SELECT '
      '  pl.name pl_name,'
      '  d.id,'
      '  d."'#1082#1086#1076'_'#1079#1072#1082#1072#1079#1072'",'
      '  d."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'",'
      '  d."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'",'
      '  d."'#1076#1083#1080#1085#1072'",'
      '  d."'#1082#1086#1083'_'#1074#1086'_'#1092#1091#1083#1073#1086#1082#1089#1086#1074'",'
      '  s.name s_name,'
      '  pl.uni_name pl_uni_name,'
      '  pl.reg_name pl_reg_name,'
      '  s.uni_name s_uni_name,'
      '  s.reg_name s_reg_name,'
      
        'd.'#1094#1077#1085#1072', d.'#1089#1090#1077#1085#1076#1080#1085#1075', d.'#1089#1090#1077#1073#1083#1077#1081', d.'#1079#1072#1087#1088#1077#1090'_'#1087#1083#1072#1085#1090#1072#1094#1080#1081', d.'#1078#1077#1083#1072#1077#1084#1099#1077'_'#1087#1083 +
        #1072#1085#1090#1072#1094#1080#1080
      'FROM'
      '  "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1072#1079#1099'_'#1076#1077#1090#1072#1083#1100'" d'
      
        '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pl ON (d."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" = ' +
        'pl.id)'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090#1072'" s ON (d."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'" = s.id)'
      'where '#1082#1086#1076'_'#1079#1072#1082#1072#1079#1072'=:id_order'
      'order by pl_name, pl_uni_name, pl_reg_name')
    Left = 204
    Top = 264
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_order'
        Value = nil
      end>
  end
  object dsFito: TDataSource
    DataSet = QueryFito
    Left = 56
    Top = 320
  end
  object Style1: TcxStyleRepository
    Left = 120
    Top = 408
    PixelsPerInch = 96
    object cxstyl1: TcxStyle
      AssignedValues = [svColor, svFont]
      Color = clDefault
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet
      BuiltIn = True
    end
  end
  object TransactOrder: TUniTransaction
    DefaultConnection = dbOrder
    OnStart = TransactOrderStart
    Left = 32
    Top = 228
  end
  object dbOrder: TUniConnection
    ProviderName = 'PostgreSQL'
    Database = 'wwwunifloragroup_trade'
    SpecificOptions.Strings = (
      'PostgreSQL.Charset=WIN1251'
      'PostgreSQL.UseUnicode=True')
    Options.KeepDesignConnected = False
    PoolingOptions.ConnectionLifetime = 3
    Username = 'uniflora_trade'
    Server = 'pgsql.uniflora.mass.hc.ru'
    Connected = True
    LoginPrompt = False
    Left = 100
    Top = 236
    EncryptedPassword = 'B4FF94FF9BFFCCFFC8FFBCFF94FF8EFF99FF92FF'
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
    Connection = dbOrder
    Transaction = TransactOrder
    SQL.Strings = (
      'select * from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"'
      'order by id')
    Left = 107
    Top = 181
  end
end
