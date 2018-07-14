object fAuctionDetail: TfAuctionDetail
  Left = 0
  Top = 0
  Caption = #1040#1091#1082#1094#1080#1086#1085
  ClientHeight = 603
  ClientWidth = 1101
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 1101
    Height = 32
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1101
    ExplicitHeight = 32
    inherited barProduct: TdxBarManager
      DockControlHeights = (
        0
        0
        34
        0)
      inherited btnAdd: TdxBarLargeButton
        Caption = #1048#1084#1087#1086#1088#1090
        Hint = #1048#1084#1087#1086#1088#1090
        LargeImageIndex = 23
        OnClick = FrameTopPanel1btnAddClick
      end
      inherited btnEdit: TdxBarLargeButton
        Enabled = False
      end
      inherited btnDel: TdxBarLargeButton
        Caption = #1059#1076#1072#1083#1080#1090#1100
        Enabled = False
        OnClick = btnDelClick
      end
      inherited btnRefresh: TdxBarLargeButton
        OnClick = FrameTopPanel1btnRefreshClick
      end
      inherited btnSel: TdxBarLargeButton
        OnClick = FrameTopPanel1btnSelClick
      end
    end
  end
  object GridStatWork: TcxGrid
    Left = 0
    Top = 65
    Width = 1101
    Height = 538
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object ViewReceipt: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
      DataController.DataSource = dsAucD
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
      end
      object ViewReceiptseat: TcxGridDBColumn
        DataBinding.FieldName = 'seat'
      end
      object ViewReceiptDBColumn3: TcxGridDBColumn
        DataBinding.FieldName = #1055#1086#1082#1091#1087#1072#1090#1077#1083#1100
      end
      object ViewReceiptDBColumn4: TcxGridDBColumn
        DataBinding.FieldName = #1050#1086#1083#1042#1086#1041#1072#1082#1086#1074
      end
      object ViewReceiptDBColumn5: TcxGridDBColumn
        DataBinding.FieldName = #1050#1086#1076#1055#1088#1086#1076#1091#1082#1090#1072
      end
      object ViewReceiptDBColumn6: TcxGridDBColumn
        DataBinding.FieldName = #1050#1086#1083#1042#1086#1042#1041#1072#1082#1077
      end
      object ViewReceiptDBColumn7: TcxGridDBColumn
        DataBinding.FieldName = #1062#1077#1085#1072#1040#1091#1082#1094#1080#1086#1085#1072
      end
      object ViewReceiptDBColumn8: TcxGridDBColumn
        DataBinding.FieldName = #1053#1086#1084#1077#1088#1063#1072#1089#1086#1074
      end
      object ViewReceiptDBColumn9: TcxGridDBColumn
        DataBinding.FieldName = #1058#1080#1087#1058#1072#1088#1099
      end
      object ViewReceiptDBColumn10: TcxGridDBColumn
        DataBinding.FieldName = #1044#1083#1080#1085#1072
      end
      object ViewReceipts2: TcxGridDBColumn
        DataBinding.FieldName = 's2'
      end
      object ViewReceipts3: TcxGridDBColumn
        DataBinding.FieldName = 's3'
      end
      object ViewReceipts4: TcxGridDBColumn
        DataBinding.FieldName = 's4'
      end
      object ViewReceiptq: TcxGridDBColumn
        DataBinding.FieldName = 'q'
      end
      object ViewReceiptcom1: TcxGridDBColumn
        DataBinding.FieldName = 'com1'
      end
      object ViewReceiptcom2: TcxGridDBColumn
        DataBinding.FieldName = 'com2'
      end
      object ViewReceiptpos1: TcxGridDBColumn
        DataBinding.FieldName = 'pos1'
      end
      object ViewReceiptpos2: TcxGridDBColumn
        DataBinding.FieldName = 'pos2'
      end
      object ViewReceiptpos3: TcxGridDBColumn
        DataBinding.FieldName = 'pos3'
      end
      object ViewReceiptQL: TcxGridDBColumn
        DataBinding.FieldName = 'QL'
      end
      object ViewReceiptMPS: TcxGridDBColumn
        DataBinding.FieldName = 'MPS'
      end
      object ViewReceiptDBColumn11: TcxGridDBColumn
        DataBinding.FieldName = #1062#1077#1085#1072#1053#1072#1042#1099#1093#1086#1076#1077
      end
      object ViewReceiptDBColumn12: TcxGridDBColumn
        DataBinding.FieldName = #1053#1086#1084#1077#1088#1058#1088#1072#1085#1079#1072#1082#1094#1080#1080
      end
      object ViewReceiptDBColumn13: TcxGridDBColumn
        DataBinding.FieldName = #1053#1086#1084#1077#1088#1051#1086#1090#1072
      end
      object ViewReceiptDBColumn16: TcxGridDBColumn
        DataBinding.FieldName = #1056#1072#1079#1085#1077#1089#1077#1085
      end
      object ViewReceiptDBColumn17: TcxGridDBColumn
        DataBinding.FieldName = #1044#1072#1090#1072#1056#1072#1079#1085#1086#1089#1082#1080
      end
    end
    object LevelStatWork: TcxGridLevel
      GridView = ViewReceipt
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 32
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
    TabOrder = 2
    Height = 33
    Width = 1101
    object Label1: TLabel
      Left = 3
      Top = 10
      Width = 74
      Height = 13
      Caption = #1044#1072#1090#1072' '#1079#1072#1082#1091#1087#1082#1080':'
      Transparent = True
    end
    object edtDateZakup: TsDateEdit
      Left = 83
      Top = 6
      Width = 86
      Height = 21
      AutoSize = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      TabOrder = 0
      Text = '  .  .    '
      OnKeyDown = edtDateZakupKeyDown
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
      DirectInput = False
      OnCloseUp = edtDateZakupCloseUp
    end
    object btnSel: TcxButton
      Left = 764
      Top = 6
      Width = 85
      Height = 25
      Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 1
      Visible = False
      OnClick = btnSelClick
    end
    object cxLabel1: TcxLabel
      Left = 175
      Top = 8
      Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082':'
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      Transparent = True
    end
    object edtPostav: TcxLookupComboBox
      Left = 238
      Top = 6
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsPostav
      Properties.OnCloseUp = edtPostavPropertiesCloseUp
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
      Width = 221
    end
    object cxLabel2: TcxLabel
      Left = 463
      Top = 8
      Caption = #1040#1091#1082#1094#1080#1086#1085':'
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      Transparent = True
    end
    object edtAucType: TcxLookupComboBox
      Left = 520
      Top = 6
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsAucType
      Properties.OnCloseUp = edtAucTypePropertiesCloseUp
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
      Width = 221
    end
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
      '  *'
      'FROM'
      '  "'#1072#1091#1082#1094#1080#1086#1085'"."'#1072#1091#1082#1094#1080#1086#1085'" a')
    Left = 480
    Top = 200
  end
  object dsAucD: TDataSource
    DataSet = QueryAucD
    Left = 480
    Top = 272
  end
  object QueryPostav: TUniQuery
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
      '  a.id,'
      '  a."'#1044#1072#1090#1072#1042#1099#1083#1077#1090#1072'",'
      '  a."'#1044#1072#1090#1072#1040#1091#1082#1094#1080#1086#1085#1072'",'
      '  a."'#1042#1088#1077#1084#1103#1040#1091#1082#1094#1080#1086#1085#1072'",'
      '  a.seat,'
      '  a."'#1055#1086#1082#1091#1087#1072#1090#1077#1083#1100'",'
      '  a."'#1050#1086#1083#1042#1086#1041#1072#1082#1086#1074'",'
      '  a."'#1050#1086#1076#1055#1088#1086#1076#1091#1082#1090#1072'", '
      '  a."'#1050#1086#1083#1042#1086#1042#1041#1072#1082#1077'",'
      '  a."'#1062#1077#1085#1072#1040#1091#1082#1094#1080#1086#1085#1072'",'
      '  a."'#1053#1086#1084#1077#1088#1063#1072#1089#1086#1074'",'
      '  a."'#1058#1080#1087#1058#1072#1088#1099'",'
      '  a."'#1044#1083#1080#1085#1072'",'
      '  a.s2,'
      '  a.s3,'
      '  a.s4,'
      '  a.q,'
      '  a.com1,'
      '  a.com2,'
      '  a.pos1,'
      '  a.pos2,'
      '  a.pos3,'
      '  a."QL",'
      '  a."MPS",'
      '  a."'#1062#1077#1085#1072#1053#1072#1042#1099#1093#1086#1076#1077'",'
      '  a."'#1053#1086#1084#1077#1088#1058#1088#1072#1085#1079#1072#1082#1094#1080#1080'",'
      '  a."'#1053#1086#1084#1077#1088#1051#1086#1090#1072'",'
      '  a."'#1050#1086#1076#1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1103'",'
      '  a."'#1050#1086#1076#1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1103'",'
      '  s."'#1053#1072#1080#1084#1040#1091#1082#1094#1080#1086#1085'",'
      '  s."'#1050#1086#1076#1040#1091#1082#1094#1080#1086#1085#1072'",'
      '  pl.uni_name'
      'FROM'
      '  "'#1072#1091#1082#1094#1080#1086#1085'"."'#1072#1091#1082#1094#1080#1086#1085'" a'
      
        '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077'" s ON (a."'#1050#1086#1076#1057#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1103 +
        '" = s.id)'
      
        '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pl ON (a."'#1050#1086#1076#1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1103'"' +
        ' = pl.id)')
    Left = 640
    Top = 232
  end
  object dsPostav: TDataSource
    DataSet = QueryPostav
    Left = 640
    Top = 296
  end
  object QueryAucType: TUniQuery
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
      '* from  "'#1072#1091#1082#1094#1080#1086#1085'"."'#1072#1091#1082#1094#1080#1086#1085#1099'"')
    Left = 768
    Top = 240
  end
  object dsAucType: TDataSource
    DataSet = QueryAucType
    Left = 768
    Top = 304
  end
end
