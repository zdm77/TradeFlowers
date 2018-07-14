object FrameProductAuc: TFrameProductAuc
  Left = 0
  Top = 0
  Width = 927
  Height = 670
  TabOrder = 0
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
    TabOrder = 0
    Height = 670
    Width = 927
    inline FrameTopPanel1: TFrameTopPanel
      Left = 2
      Top = 2
      Width = 923
      Height = 35
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitWidth = 923
      inherited barProduct: TdxBarManager
        Left = 296
        Top = 24
        DockControlHeights = (
          0
          0
          69
          0)
        inherited dxbrBardxbrmngr1Bar1: TdxBar
          ItemLinks = <
            item
              Visible = True
              ItemName = 'btnAdd'
            end
            item
              BeginGroup = True
              Visible = True
              ItemName = 'btnSel'
            end
            item
              BeginGroup = True
              Visible = True
              ItemName = 'btnPrintLogistic'
            end
            item
              BeginGroup = True
              Visible = True
              ItemName = 'btnLoadPrice'
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
          Caption = #1048#1084#1087#1086#1088#1090
          Hint = #1048#1084#1087#1086#1088#1090
          LargeImageIndex = 23
          OnClick = btnAddClick
        end
        inherited btnEdit: TdxBarLargeButton
          Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
          OnClick = btnEditClick
        end
        inherited btnRest: TdxBarLargeButton
          Caption = #1059#1076#1072#1083#1080#1090#1100' '#1074#1089#1077
          Enabled = True
          Hint = #1059#1076#1072#1083#1080#1090#1100' '#1074#1089#1077
          LargeImageIndex = 5
          OnClick = btnRestClick
        end
        inherited btnRefresh: TdxBarLargeButton
          OnClick = btnRefreshClick
        end
        inherited btnSel: TdxBarLargeButton
          Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1094#1077#1085#1099
          Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1094#1077#1085#1099
          Visible = ivAlways
          LargeImageIndex = 23
          OnClick = FrameTopPanel1btnSelClick
        end
        inherited btnPrintLogistic: TdxBarButton
          Caption = #1042' Excel'
          Hint = #1042' Excel'
          LargeImageIndex = 23
          OnClick = btnPrintLogisticClick
        end
        inherited btnArch: TcxBarEditItem
          Caption = #1047#1072#1082#1091#1087#1082#1080
          Hint = #1047#1072#1082#1091#1087#1082#1080
        end
        inherited btnLoadPrice: TdxBarLargeButton
          Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1103
          Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1103
          LargeImageIndex = 9
          OnClick = btnLoadPriceClick
        end
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 2
      Top = 37
      Align = alClient
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
      Height = 435
      Width = 923
      object GridStatWork: TcxGrid
        Left = 3
        Top = 15
        Width = 917
        Height = 410
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        object ViewReceipt: TcxGridDBTableView
          OnDblClick = ViewReceiptDblClick
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvAlways
          DataController.DataSource = dsAucD
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsSelection.CellSelect = False
          OptionsView.HeaderAutoHeight = True
          object columnID: TcxGridDBColumn
            Caption = 'ID'
            DataBinding.FieldName = 'id'
            HeaderAlignmentHorz = taCenter
            Width = 70
          end
          object ViewReceiptColumn2: TcxGridDBColumn
            DataBinding.FieldName = #1072#1091#1082#1094#1080#1086#1085
            Width = 120
          end
          object ColumnIMG: TcxGridDBColumn
            DataBinding.FieldName = 'img'
            PropertiesClassName = 'TcxHyperLinkEditProperties'
            Properties.AutoSelect = True
            Properties.ReadOnly = False
            Properties.SingleClick = True
            Visible = False
            Width = 100
          end
          object ViewReceiptNAME: TcxGridDBColumn
            Caption = #1043#1088#1091#1087#1087#1072' '#1090#1086#1074#1072#1088#1072
            DataBinding.FieldName = 'NAME'
            Width = 100
          end
          object ViewReceiptDBColumn2: TcxGridDBColumn
            DataBinding.FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 100
          end
          object ViewReceiptDBColumn1: TcxGridDBColumn
            DataBinding.FieldName = #1055#1086#1089#1090#1072#1074#1097#1080#1082
            Width = 100
          end
          object ViewReceiptDBColumn: TcxGridDBColumn
            Caption = #1050#1086#1076' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
            DataBinding.FieldName = #1050#1086#1076#1055#1086#1089#1090#1072#1074#1097#1080#1082#1072
            Width = 100
          end
          object ViewReceiptDBColumn3: TcxGridDBColumn
            Caption = #1043#1088#1091#1087#1087#1072' '#1087#1088#1086#1076#1091#1082#1090#1072
            DataBinding.FieldName = #1043#1088#1091#1087#1087#1072#1055#1088#1086#1076#1091#1082#1090#1072
            Width = 100
          end
          object ViewReceiptDBColumn4: TcxGridDBColumn
            Caption = #1063#1072#1089#1099
            DataBinding.FieldName = #1063#1040#1057#1067
            Width = 100
          end
          object ViewReceipt_: TcxGridDBColumn
            Caption = #1050#1086#1076' '#1075#1088#1091#1087#1087#1099
            DataBinding.FieldName = #1050#1054#1044'_'#1043#1056#1059#1055#1055#1067
            Width = 100
          end
          object ViewReceipt__: TcxGridDBColumn
            Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074' '#1090#1072#1088#1077
            DataBinding.FieldName = #1050#1054#1051#1042#1054'_'#1042'_'#1058#1040#1056#1045
            Width = 100
          end
          object ViewReceipt_1: TcxGridDBColumn
            Caption = #1050#1086#1076' '#1090#1072#1088#1099
            DataBinding.FieldName = #1050#1054#1044'_'#1058#1040#1056#1067
            Width = 100
          end
          object ViewReceiptS1: TcxGridDBColumn
            DataBinding.FieldName = 'S1'
            Width = 100
          end
          object ViewReceiptS2: TcxGridDBColumn
            DataBinding.FieldName = 'S2'
            Width = 100
          end
          object ViewReceiptS3: TcxGridDBColumn
            DataBinding.FieldName = 'S3'
            Width = 100
          end
          object ViewReceiptS4: TcxGridDBColumn
            DataBinding.FieldName = 'S4'
            Width = 100
          end
          object ViewReceiptDBColumn5: TcxGridDBColumn
            Caption = #1050#1086#1076' '#1087#1088#1086#1076#1091#1082#1090#1072
            DataBinding.FieldName = #1050#1086#1076#1055#1088#1086#1076#1091#1082#1090#1072
            PropertiesClassName = 'TcxTextEditProperties'
            Width = 100
          end
          object ViewReceiptuni_name: TcxGridDBColumn
            DataBinding.FieldName = 'uni_name'
            Width = 100
          end
          object ViewReceiptDBColumn6: TcxGridDBColumn
            Caption = #1050#1086#1076' '#1089#1090#1088#1072#1085#1099
            DataBinding.FieldName = #1050#1086#1076#1057#1090#1088#1072#1085#1099
            Width = 100
          end
          object ViewReceiptDBColumn7: TcxGridDBColumn
            Caption = #1050#1072#1095#1077#1089#1090#1074#1086' '#1090#1086#1074#1072#1088#1072
            DataBinding.FieldName = #1050#1072#1095#1077#1089#1090#1074#1086#1058#1086#1074#1072#1088#1072
            Width = 100
          end
          object ViewReceiptDBColumn8: TcxGridDBColumn
            Caption = #1058#1080#1087' '#1089#1088#1077#1079#1082#1072
            DataBinding.FieldName = #1058#1080#1087#1057#1088#1077#1079#1082#1072
            Width = 100
          end
          object ViewReceiptColumn1: TcxGridDBColumn
            Caption = #1062#1077#1085#1072
            DataBinding.FieldName = #1094#1077#1085#1072
          end
        end
        object LevelStatWork: TcxGridLevel
          GridView = ViewReceipt
        end
      end
    end
    object cxSplitter1: TcxSplitter
      Left = 2
      Top = 472
      Width = 923
      Height = 8
      HotZoneClassName = 'TcxMediaPlayer9Style'
      HotZone.SizePercent = 40
      AlignSplitter = salBottom
      ResizeUpdate = True
      Control = cxGroupBox3
      ExplicitWidth = 8
    end
    object cxGroupBox3: TcxGroupBox
      Left = 2
      Top = 480
      Align = alBottom
      Caption = #1047#1072#1082#1091#1087#1082#1080
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 3
      Height = 188
      Width = 923
      object cxGrid1: TcxGrid
        Left = 3
        Top = 15
        Width = 917
        Height = 163
        Align = alClient
        TabOrder = 0
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          FilterBox.Visible = fvNever
          DataController.DataSource = dsDetail
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsCustomize.ColumnsQuickCustomization = True
          OptionsSelection.CellSelect = False
          OptionsView.GroupByBox = False
          object cxGridDBTableView1Column1: TcxGridDBColumn
            Caption = #1044#1072#1090#1072' '#1074#1099#1093#1086#1076#1072
            DataBinding.FieldName = #1044#1072#1090#1072#1042#1099#1083#1077#1090#1072
            Width = 74
          end
          object cxGridDBTableView1Column2: TcxGridDBColumn
            Caption = #1062#1077#1085#1072' '#1072#1091#1082#1094#1080#1086#1085#1072
            DataBinding.FieldName = #1062#1077#1085#1072#1040#1091#1082#1094#1080#1086#1085#1072
            Width = 107
          end
          object cxGridDBTableView1Column3: TcxGridDBColumn
            Caption = #1062#1077#1085#1072' '#1085#1072' '#1074#1099#1093#1086#1076#1077
            DataBinding.FieldName = #1062#1077#1085#1072#1053#1072#1042#1099#1093#1086#1076#1077
            Width = 95
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
  object QueryAucD: TUniQuery
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
      '  n.id,'
      '  n."'#1050#1086#1076#1055#1086#1089#1090#1072#1074#1097#1080#1082#1072'",'
      '  n."'#1055#1086#1089#1090#1072#1074#1097#1080#1082'",'
      '  n."'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'",'
      '  n."'#1043#1088#1091#1087#1087#1072#1055#1088#1086#1076#1091#1082#1090#1072'",'
      '  n."'#1063#1040#1057#1067'",'
      '  n."'#1050#1054#1044'_'#1043#1056#1059#1055#1055#1067'",'
      '  n."'#1050#1054#1051#1042#1054'_'#1042'_'#1058#1040#1056#1045'",'
      '  n."'#1050#1054#1044'_'#1058#1040#1056#1067'",'
      '  n."S1",'
      '  n."S2",'
      '  n."S3",'
      '  n."S4",'
      '  n."'#1050#1086#1076#1055#1088#1086#1076#1091#1082#1090#1072'",'
      '  n."'#1050#1086#1076#1057#1090#1088#1072#1085#1099'",'
      '  n."'#1050#1072#1095#1077#1089#1090#1074#1086#1058#1086#1074#1072#1088#1072'",'
      '  n."'#1058#1080#1087#1057#1088#1077#1079#1082#1072'",'
      'n."'#1094#1077#1085#1072'",'
      '  t.name,'
      '  s.uni_name,'
      '  s.code,'
      '  s."'#1087#1088#1080#1086#1088#1080#1090#1077#1090'",'
      'n.img,'
      'a1.name as '#1072#1091#1082#1094#1080#1086#1085
      'FROM'
      '  "'#1072#1091#1082#1094#1080#1086#1085'"."'#1058#1080#1087#1099'" t'
      
        '  RIGHT JOIN "'#1072#1091#1082#1094#1080#1086#1085'"."'#1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072'" n ON (t.code = n."'#1043#1088#1091#1087#1087#1072#1055#1088 +
        #1086#1076#1091#1082#1090#1072'")'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1090#1088#1072#1085#1099'" s ON (n."'#1050#1086#1076#1057#1090#1088#1072#1085#1099'" = s.code)'
      'inner join "'#1072#1091#1082#1094#1080#1086#1085'"."'#1072#1091#1082#1094#1080#1086#1085#1099'" a1 on (a1.id=n."'#1082#1086#1076'_'#1072#1091#1082#1094#1080#1086#1085#1072'")'
      'order by n.id')
    Left = 480
    Top = 200
  end
  object dsAucD: TDataSource
    DataSet = QueryAucD
    Left = 480
    Top = 272
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
    SQL.Strings = (
      'SELECT '
      '  n.id,'
      '  n."'#1050#1086#1076#1055#1086#1089#1090#1072#1074#1097#1080#1082#1072'",'
      '  n."'#1055#1086#1089#1090#1072#1074#1097#1080#1082'",'
      '  n."'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'",'
      '  n."'#1043#1088#1091#1087#1087#1072#1055#1088#1086#1076#1091#1082#1090#1072'",'
      '  n."'#1063#1040#1057#1067'",'
      '  n."'#1050#1054#1044'_'#1043#1056#1059#1055#1055#1067'",'
      '  n."'#1050#1054#1051#1042#1054'_'#1042'_'#1058#1040#1056#1045'",'
      '  n."'#1050#1054#1044'_'#1058#1040#1056#1067'",'
      '  n."S1",'
      '  n."S2",'
      '  n."S3",'
      '  n."S4",'
      '  n."'#1050#1086#1076#1055#1088#1086#1076#1091#1082#1090#1072'",'
      '  n."'#1050#1086#1076#1057#1090#1088#1072#1085#1099'",'
      '  n."'#1050#1072#1095#1077#1089#1090#1074#1086#1058#1086#1074#1072#1088#1072'",'
      '  n."'#1058#1080#1087#1057#1088#1077#1079#1082#1072'",'
      '  t.name,'
      '  s.uni_name,'
      '  s.code,'
      '  s."'#1087#1088#1080#1086#1088#1080#1090#1077#1090'",'
      'n.img'
      'FROM'
      '  "'#1072#1091#1082#1094#1080#1086#1085'"."'#1058#1080#1087#1099'" t'
      
        '  RIGHT JOIN "'#1072#1091#1082#1094#1080#1086#1085'"."'#1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072'" n ON (t.code = n."'#1043#1088#1091#1087#1087#1072#1055#1088 +
        #1086#1076#1091#1082#1090#1072'")'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1090#1088#1072#1085#1099'" s ON (n."'#1050#1086#1076#1057#1090#1088#1072#1085#1099'" = s.code)')
    Left = 384
    Top = 240
  end
  object QueryDetail: TUniQuery
    KeyFields = 'id'
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
      '  *'
      'from '
      ' "'#1072#1091#1082#1094#1080#1086#1085'"."'#1072#1091#1082#1094#1080#1086#1085'"')
    MasterSource = dsAucD
    MasterFields = 'id'
    DetailFields = '"'#1050#1086#1076#1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1103'"'
    Left = 320
    Top = 496
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 2
      end>
  end
  object dsDetail: TDataSource
    DataSet = QueryDetail
    Left = 320
    Top = 568
  end
end
