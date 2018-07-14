object FrameRaznosAuc: TFrameRaznosAuc
  Left = 0
  Top = 0
  Width = 1097
  Height = 620
  TabOrder = 0
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
    Height = 37
    Width = 1097
    object Label1: TLabel
      Left = 449
      Top = 18
      Width = 73
      Height = 13
      Caption = #1044#1072#1090#1072' '#1088#1072#1079#1085#1086#1089#1072':'
      Transparent = True
      Visible = False
    end
    object Label2: TLabel
      Left = 11
      Top = 14
      Width = 72
      Height = 13
      Caption = #1044#1072#1090#1072' '#1074#1099#1093#1086#1076#1072':'
      Transparent = True
    end
    object btnSel: TcxButton
      Left = 634
      Top = 4
      Width = 85
      Height = 25
      Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 0
      Visible = False
      OnClick = btnSelClick
    end
    object edtDateFly: TsDateEdit
      Left = 89
      Top = 10
      Width = 86
      Height = 21
      AutoSize = False
      Enabled = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      TabOrder = 1
      Text = '  .  .    '
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
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 37
    Align = alLeft
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
    Height = 583
    Width = 420
    inline FrameTopPanel1: TFrameTopPanel
      Left = 3
      Top = 15
      Width = 414
      Height = 35
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 3
      ExplicitTop = 15
      ExplicitWidth = 414
      inherited barProduct: TdxBarManager
        DockControlHeights = (
          0
          0
          91
          0)
        inherited dxbrBardxbrmngr1Bar1: TdxBar
          ItemLinks = <
            item
              Visible = True
              ItemName = 'btnAdd'
            end
            item
              Visible = True
              ItemName = 'btnDel'
            end
            item
              Visible = True
              ItemName = 'btnRest'
            end
            item
              BeginGroup = True
              Visible = True
              ItemName = 'btnRefresh'
            end
            item
              BeginGroup = True
              Visible = True
              ItemName = 'btnFilter'
            end
            item
              BeginGroup = True
              Visible = True
              ItemName = 'btnPrint'
            end
            item
              Visible = True
              ItemName = 'btnRazdel'
            end
            item
              Visible = True
              ItemName = 'btnExport'
            end
            item
              Visible = True
              ItemName = 'btnAWB'
            end
            item
              ViewLayout = ivlGlyphControlCaption
              Visible = True
              ItemName = 'btnArch'
            end>
        end
        inherited btnAdd: TdxBarLargeButton
          OnClick = FrameTopPanel1btnAddClick
        end
        inherited btnDel: TdxBarLargeButton
          OnClick = FrameTopPanel1btnDelClick
        end
        inherited btnRest: TdxBarLargeButton
          OnClick = FrameTopPanel1btnRestClick
        end
      end
    end
    object GridStatWork: TcxGrid
      Left = 3
      Top = 50
      Width = 414
      Height = 523
      Align = alClient
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object ViewReceipt: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        DataController.DataSource = dsMark
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        object ViewReceiptDBColumn: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'name'
          Width = 149
        end
      end
      object LevelStatWork: TcxGridLevel
        GridView = ViewReceipt
      end
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 420
    Top = 37
    Width = 8
    Height = 583
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = cxGroupBox2
  end
  object cxGroupBox3: TcxGroupBox
    Left = 428
    Top = 37
    Align = alClient
    PanelStyle.Active = True
    TabOrder = 3
    Height = 583
    Width = 669
    object cxGroupBox4: TcxGroupBox
      Left = 2
      Top = 2
      Align = alTop
      Caption = #1056#1072#1079#1085#1086#1089#1082#1072
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 0
      Height = 311
      Width = 665
      inline FrameTopPanel2: TFrameTopPanel
        Left = 3
        Top = 15
        Width = 659
        Height = 35
        Align = alTop
        TabOrder = 0
        ExplicitLeft = 3
        ExplicitTop = 15
        ExplicitWidth = 659
        inherited barProduct: TdxBarManager
          DockControlHeights = (
            0
            0
            69
            0)
          inherited btnAdd: TdxBarLargeButton
            Caption = #1056#1072#1079#1085#1077#1089#1090#1080
            Hint = #1056#1072#1079#1085#1077#1089#1090#1080
            Visible = ivNever
            OnClick = FrameTopPanel2btnAddClick
          end
          inherited btnEdit: TdxBarLargeButton
            Caption = #1056#1072#1079#1085#1077#1089#1090#1080
            OnClick = FrameTopPanel2btnEditClick
          end
          inherited btnDel: TdxBarLargeButton
            OnClick = FrameTopPanel2btnDelClick
          end
          inherited btnRest: TdxBarLargeButton
            OnClick = FrameTopPanel2btnRestClick
          end
          inherited btnRefresh: TdxBarLargeButton
            OnClick = FrameTopPanel2btnRefreshClick
          end
        end
      end
      object cxGrid1: TcxGrid
        Left = 3
        Top = 50
        Width = 659
        Height = 251
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          DataController.DataSource = dsAucR
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsView.GroupByBox = False
          object ViewReceiptDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = #1044#1072#1090#1072#1040#1091#1082#1094#1080#1086#1085#1072
            Width = 70
          end
          object ViewReceiptDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = #1042#1088#1077#1084#1103#1040#1091#1082#1094#1080#1086#1085#1072
            Width = 70
          end
          object ViewReceiptseat: TcxGridDBColumn
            DataBinding.FieldName = 'seat'
            Width = 70
          end
          object ViewReceiptDBColumn3: TcxGridDBColumn
            DataBinding.FieldName = #1055#1086#1082#1091#1087#1072#1090#1077#1083#1100
            Width = 70
          end
          object ViewReceiptDBColumn4: TcxGridDBColumn
            DataBinding.FieldName = #1050#1086#1083#1042#1086#1041#1072#1082#1086#1074
            Width = 70
          end
          object ViewReceiptDBColumn5: TcxGridDBColumn
            DataBinding.FieldName = #1050#1086#1076#1055#1088#1086#1076#1091#1082#1090#1072
            Width = 70
          end
          object ViewReceiptDBColumn6: TcxGridDBColumn
            DataBinding.FieldName = #1050#1086#1083#1042#1086#1042#1041#1072#1082#1077
            Width = 70
          end
          object ViewReceiptDBColumn7: TcxGridDBColumn
            DataBinding.FieldName = #1062#1077#1085#1072#1040#1091#1082#1094#1080#1086#1085#1072
            Width = 70
          end
          object ViewReceiptDBColumn8: TcxGridDBColumn
            DataBinding.FieldName = #1053#1086#1084#1077#1088#1063#1072#1089#1086#1074
            Width = 70
          end
          object ViewReceiptDBColumn9: TcxGridDBColumn
            DataBinding.FieldName = #1058#1080#1087#1058#1072#1088#1099
            Width = 70
          end
          object ViewReceiptDBColumn10: TcxGridDBColumn
            DataBinding.FieldName = #1044#1083#1080#1085#1072
            Width = 70
          end
          object ViewReceipts2: TcxGridDBColumn
            DataBinding.FieldName = 's2'
            Width = 70
          end
          object ViewReceipts3: TcxGridDBColumn
            DataBinding.FieldName = 's3'
            Width = 70
          end
          object ViewReceipts4: TcxGridDBColumn
            DataBinding.FieldName = 's4'
            Width = 70
          end
          object ViewReceiptq: TcxGridDBColumn
            DataBinding.FieldName = 'q'
            Width = 70
          end
          object ViewReceiptcom1: TcxGridDBColumn
            DataBinding.FieldName = 'com1'
            Width = 70
          end
          object ViewReceiptcom2: TcxGridDBColumn
            DataBinding.FieldName = 'com2'
            Width = 70
          end
          object ViewReceiptpos1: TcxGridDBColumn
            DataBinding.FieldName = 'pos1'
            Width = 70
          end
          object ViewReceiptpos2: TcxGridDBColumn
            DataBinding.FieldName = 'pos2'
            Width = 70
          end
          object ViewReceiptpos3: TcxGridDBColumn
            DataBinding.FieldName = 'pos3'
            Width = 70
          end
          object ViewReceiptQL: TcxGridDBColumn
            DataBinding.FieldName = 'QL'
            Width = 70
          end
          object ViewReceiptMPS: TcxGridDBColumn
            DataBinding.FieldName = 'MPS'
            Width = 70
          end
          object ViewReceiptDBColumn11: TcxGridDBColumn
            DataBinding.FieldName = #1062#1077#1085#1072#1053#1072#1042#1099#1093#1086#1076#1077
            Width = 70
          end
          object ViewReceiptDBColumn12: TcxGridDBColumn
            DataBinding.FieldName = #1053#1086#1084#1077#1088#1058#1088#1072#1085#1079#1072#1082#1094#1080#1080
            Width = 70
          end
          object ViewReceiptDBColumn13: TcxGridDBColumn
            DataBinding.FieldName = #1053#1086#1084#1077#1088#1051#1086#1090#1072
            Width = 70
          end
          object ViewReceiptDBColumn14: TcxGridDBColumn
            DataBinding.FieldName = #1050#1086#1076#1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1103
            Width = 70
          end
          object ViewReceiptDBColumn15: TcxGridDBColumn
            DataBinding.FieldName = #1050#1086#1076#1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1103
            Width = 70
          end
          object ViewReceiptDBColumn16: TcxGridDBColumn
            DataBinding.FieldName = #1053#1072#1080#1084#1040#1091#1082#1094#1080#1086#1085
            Width = 70
          end
          object ViewReceiptDBColumn17: TcxGridDBColumn
            DataBinding.FieldName = #1050#1086#1076#1040#1091#1082#1094#1080#1086#1085#1072
            Width = 70
          end
          object ViewReceiptuni_name: TcxGridDBColumn
            DataBinding.FieldName = 'uni_name'
            Width = 70
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object cxSplitter2: TcxSplitter
      Left = 2
      Top = 313
      Width = 665
      Height = 8
      HotZoneClassName = 'TcxMediaPlayer9Style'
      AlignSplitter = salTop
      Control = cxGroupBox4
    end
    object cxGroupBox5: TcxGroupBox
      Left = 2
      Top = 321
      Align = alClient
      Caption = #1044#1077#1090#1072#1083#1080#1079#1072#1094#1080#1103' '#1087#1086#1079#1080#1094#1080#1080
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 2
      Height = 260
      Width = 665
      inline FrameTopPanel3: TFrameTopPanel
        Left = 3
        Top = 15
        Width = 659
        Height = 35
        Align = alTop
        TabOrder = 0
        ExplicitLeft = 3
        ExplicitTop = 15
        ExplicitWidth = 659
        inherited barProduct: TdxBarManager
          DockControlHeights = (
            0
            0
            69
            0)
          inherited btnAdd: TdxBarLargeButton
            OnClick = FrameTopPanel3btnAddClick
          end
          inherited btnEdit: TdxBarLargeButton
            OnClick = FrameTopPanel3btnEditClick
          end
          inherited btnDel: TdxBarLargeButton
            OnClick = FrameTopPanel3btnDelClick
          end
          inherited btnRefresh: TdxBarLargeButton
            OnClick = FrameTopPanel3btnRefreshClick
          end
        end
      end
      object cxGrid2: TcxGrid
        Left = 3
        Top = 50
        Width = 659
        Height = 200
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView2: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          DataController.DataSource = dsRD
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsView.GroupByBox = False
          object cxGridDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = #1044#1072#1090#1072#1040#1091#1082#1094#1080#1086#1085#1072
            Width = 70
          end
          object cxGridDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = #1042#1088#1077#1084#1103#1040#1091#1082#1094#1080#1086#1085#1072
            Width = 70
          end
          object cxGridDBColumn3: TcxGridDBColumn
            DataBinding.FieldName = 'seat'
            Width = 70
          end
          object cxGridDBColumn4: TcxGridDBColumn
            DataBinding.FieldName = #1055#1086#1082#1091#1087#1072#1090#1077#1083#1100
            Width = 70
          end
          object cxGridDBColumn5: TcxGridDBColumn
            DataBinding.FieldName = #1050#1086#1083#1042#1086#1041#1072#1082#1086#1074
            Width = 70
          end
          object cxGridDBColumn6: TcxGridDBColumn
            DataBinding.FieldName = #1050#1086#1076#1055#1088#1086#1076#1091#1082#1090#1072
            Width = 70
          end
          object cxGridDBColumn7: TcxGridDBColumn
            DataBinding.FieldName = #1050#1086#1083#1042#1086#1042#1041#1072#1082#1077
            Width = 70
          end
          object cxGridDBColumn8: TcxGridDBColumn
            DataBinding.FieldName = #1062#1077#1085#1072#1040#1091#1082#1094#1080#1086#1085#1072
            Width = 70
          end
          object cxGridDBColumn9: TcxGridDBColumn
            DataBinding.FieldName = #1053#1086#1084#1077#1088#1063#1072#1089#1086#1074
            Width = 70
          end
          object cxGridDBColumn10: TcxGridDBColumn
            DataBinding.FieldName = #1058#1080#1087#1058#1072#1088#1099
            Width = 70
          end
          object cxGridDBColumn11: TcxGridDBColumn
            DataBinding.FieldName = #1044#1083#1080#1085#1072
            Width = 70
          end
          object cxGridDBColumn12: TcxGridDBColumn
            DataBinding.FieldName = 's2'
            Width = 70
          end
          object cxGridDBColumn13: TcxGridDBColumn
            DataBinding.FieldName = 's3'
            Width = 70
          end
          object cxGridDBColumn14: TcxGridDBColumn
            DataBinding.FieldName = 's4'
            Width = 70
          end
          object cxGridDBColumn15: TcxGridDBColumn
            DataBinding.FieldName = 'q'
            Width = 70
          end
          object cxGridDBColumn16: TcxGridDBColumn
            DataBinding.FieldName = 'com1'
            Width = 70
          end
          object cxGridDBColumn17: TcxGridDBColumn
            DataBinding.FieldName = 'com2'
            Width = 70
          end
          object cxGridDBColumn18: TcxGridDBColumn
            DataBinding.FieldName = 'pos1'
            Width = 70
          end
          object cxGridDBColumn19: TcxGridDBColumn
            DataBinding.FieldName = 'pos2'
            Width = 70
          end
          object cxGridDBColumn20: TcxGridDBColumn
            DataBinding.FieldName = 'pos3'
            Width = 70
          end
          object cxGridDBColumn21: TcxGridDBColumn
            DataBinding.FieldName = 'QL'
            Width = 70
          end
          object cxGridDBColumn22: TcxGridDBColumn
            DataBinding.FieldName = 'MPS'
            Width = 70
          end
          object cxGridDBColumn23: TcxGridDBColumn
            DataBinding.FieldName = #1062#1077#1085#1072#1053#1072#1042#1099#1093#1086#1076#1077
            Width = 70
          end
          object cxGridDBColumn24: TcxGridDBColumn
            DataBinding.FieldName = #1053#1086#1084#1077#1088#1058#1088#1072#1085#1079#1072#1082#1094#1080#1080
            Width = 70
          end
          object cxGridDBColumn25: TcxGridDBColumn
            DataBinding.FieldName = #1053#1086#1084#1077#1088#1051#1086#1090#1072
            Width = 70
          end
          object cxGridDBColumn26: TcxGridDBColumn
            DataBinding.FieldName = #1050#1086#1076#1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1103
            Width = 70
          end
          object cxGridDBColumn27: TcxGridDBColumn
            DataBinding.FieldName = #1050#1086#1076#1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1103
            Width = 70
          end
          object cxGridDBColumn28: TcxGridDBColumn
            DataBinding.FieldName = #1053#1072#1080#1084#1040#1091#1082#1094#1080#1086#1085
            Width = 70
          end
          object cxGridDBColumn29: TcxGridDBColumn
            DataBinding.FieldName = #1050#1086#1076#1040#1091#1082#1094#1080#1086#1085#1072
            Width = 70
          end
          object cxGridDBColumn30: TcxGridDBColumn
            DataBinding.FieldName = 'uni_name'
            Width = 70
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
  end
  object QueryMark: TUniQuery
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
      
        'select DISTINCT a."'#1044#1072#1090#1072#1042#1099#1083#1077#1090#1072'" from "'#1072#1091#1082#1094#1080#1086#1085'"."'#1072#1091#1082#1094#1080#1086#1085'" a order ' +
        'by a."'#1044#1072#1090#1072#1042#1099#1083#1077#1090#1072'" DESC')
    Left = 96
    Top = 296
  end
  object dsMark: TDataSource
    DataSet = QueryMark
    Left = 176
    Top = 312
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
    Left = 352
    Top = 216
  end
  object QueryAucR: TUniQuery
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
      
        'select DISTINCT a."'#1044#1072#1090#1072#1042#1099#1083#1077#1090#1072'" from "'#1072#1091#1082#1094#1080#1086#1085'"."'#1072#1091#1082#1094#1080#1086#1085'" a order ' +
        'by a."'#1044#1072#1090#1072#1042#1099#1083#1077#1090#1072'" DESC')
    Left = 504
    Top = 208
  end
  object dsAucR: TDataSource
    DataSet = QueryAucR
    Left = 600
    Top = 208
  end
  object QueryRD: TUniQuery
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
      
        'select DISTINCT a."'#1044#1072#1090#1072#1042#1099#1083#1077#1090#1072'" from "'#1072#1091#1082#1094#1080#1086#1085'"."'#1072#1091#1082#1094#1080#1086#1085'" a order ' +
        'by a."'#1044#1072#1090#1072#1042#1099#1083#1077#1090#1072'" DESC')
    Left = 520
    Top = 480
  end
  object dsRD: TDataSource
    DataSet = QueryRD
    Left = 616
    Top = 480
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
    Connection = DM1.db1
    Left = 360
    Top = 272
  end
end
