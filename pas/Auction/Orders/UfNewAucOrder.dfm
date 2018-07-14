object fNewAucOrder: TfNewAucOrder
  Left = 0
  Top = 0
  Caption = #1047#1072#1082#1072#1079
  ClientHeight = 354
  ClientWidth = 807
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object groupHeader: TcxGroupBox
    Left = 0
    Top = 34
    Align = alTop
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 4
    ExplicitLeft = -1
    Height = 76
    Width = 807
    object cxLabel3: TcxLabel
      Left = 180
      Top = 12
      Caption = #1057#1090#1072#1090#1091#1089':'
    end
    object edtStatClient: TcxLookupComboBox
      Left = 230
      Top = 10
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsStatClient
      Style.LookAndFeel.Kind = lfUltraFlat
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.Kind = lfUltraFlat
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 1
      Width = 150
    end
    object lbl2: TcxLabel
      Left = 6
      Top = 12
      Caption = #1044#1072#1090#1072' '#1074#1099#1093#1086#1076#1072':'
    end
    object edtDateOut: TsDateEdit
      Left = 89
      Top = 10
      Width = 86
      Height = 21
      AutoSize = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      TabOrder = 3
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
    object edtStatManager: TcxLookupComboBox
      Left = 494
      Top = 10
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsStatManager
      Style.LookAndFeel.Kind = lfUltraFlat
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.Kind = lfUltraFlat
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 4
      Width = 160
    end
    object cxLabel4: TcxLabel
      Left = 382
      Top = 12
      Caption = #1056#1077#1096#1077#1085#1080#1077' '#1084#1077#1085#1077#1076#1078#1077#1088#1072':'
    end
    object chkClose: TcxCheckBox
      Left = 658
      Top = 10
      Caption = #1047#1072#1082#1088#1099#1090
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 6
      Width = 66
    end
  end
  object GridStatWork: TcxGrid
    Left = 0
    Top = 110
    Width = 807
    Height = 244
    Align = alClient
    TabOrder = 5
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    ExplicitLeft = -143
    ExplicitTop = -56
    ExplicitWidth = 950
    ExplicitHeight = 410
    object ViewReceipt: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Editing = False
      OptionsSelection.CellSelect = False
      OptionsView.CellAutoHeight = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object ViewReceiptDBColumn4: TcxGridDBColumn
        Caption = #1053#1086#1084#1077#1088
        DataBinding.FieldName = #1085#1086#1084#1077#1088
        Width = 74
      end
      object ViewReceipt_2: TcxGridDBColumn
        Caption = #1044#1072#1090#1072'/'#1042#1088#1077#1084#1103' '#1079#1072#1082#1072#1079#1072
        DataBinding.FieldName = #1076#1072#1090#1072'_'#1079#1072#1082#1072#1079#1072
        Width = 112
      end
      object ViewReceiptDBColumn: TcxGridDBColumn
        Caption = #1052#1072#1088#1082#1080#1088#1086#1074#1082#1072
        DataBinding.FieldName = #1084#1072#1088#1082#1080#1088#1086#1074#1082#1072
        Width = 130
      end
      object ViewReceiptDBColumn2: TcxGridDBColumn
        Caption = #1050#1083#1080#1077#1085#1090
        DataBinding.FieldName = #1082#1083#1080#1077#1085#1090
        Width = 172
      end
      object ViewReceipt_5: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1074#1099#1093#1086#1076#1072
        DataBinding.FieldName = #1076#1072#1090#1072'_'#1074#1099#1093#1086#1076#1072
        Width = 90
      end
      object columnCountry: TcxGridDBColumn
        Caption = 'C'#1090#1088#1072#1085#1072
        DataBinding.FieldName = #1089#1090#1088#1072#1085#1072
        Width = 140
      end
      object ViewReceipt_1: TcxGridDBColumn
        Caption = #1056#1077#1096#1077#1085#1080#1077' '#1084#1077#1085#1077#1076#1078#1077#1088#1072
        DataBinding.FieldName = #1089#1090#1072#1090#1091#1089'_'#1084#1077#1085#1077#1076#1078#1077#1088
        Width = 147
      end
      object ViewReceipt_: TcxGridDBColumn
        Caption = #1057#1090#1072#1090#1091#1089
        DataBinding.FieldName = #1089#1090#1072#1090#1091#1089'_'#1082#1083#1080#1077#1085#1090
        Width = 87
      end
      object ViewReceiptDBColumn3: TcxGridDBColumn
        Caption = #1047#1072#1082#1088#1099#1090
        DataBinding.FieldName = #1079#1072#1082#1088#1099#1090
        Width = 50
      end
      object ViewReceiptDBColumn1: TcxGridDBColumn
        Caption = #1052#1077#1085#1077#1076#1078#1077#1088
        DataBinding.FieldName = #1084#1077#1085#1077#1076#1078#1077#1088
        Width = 120
      end
    end
    object LevelStatWork: TcxGridLevel
      GridView = ViewReceipt
    end
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
          ItemName = 'btnSave'
        end
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
          ItemName = 'btnRest'
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
      Caption = #1050' '#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1077
      Category = 0
      Hint = #1050' '#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1077
      Visible = ivAlways
      LargeImageIndex = 3
      AutoGrayScale = False
      GlyphLayout = glLeft
      Height = 28
      Width = 140
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
    object btnSave: TdxBarLargeButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Visible = ivAlways
      LargeImageIndex = 13
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
  end
  object QueryStatClient: TUniQuery
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
      '  m.name as '#1084#1072#1088#1082#1080#1088#1086#1074#1082#1072','
      '  u.name as '#1084#1077#1085#1077#1076#1078#1077#1088','
      '  cl.name as '#1082#1083#1080#1077#1085#1090','
      '  stk.name as '#1089#1090#1072#1090#1091#1089'_'#1082#1083#1080#1077#1085#1090','
      '    stm.name as '#1089#1090#1072#1090#1091#1089'_'#1084#1077#1085#1077#1076#1078#1077#1088','
      '  ob.id,'
      '  ob."'#1076#1072#1090#1072'_'#1079#1072#1082#1072#1079#1072'",'
      '  ob."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'",'
      '  ob."'#1082#1086#1076'_'#1082#1083#1080#1077#1085#1090#1072'",'
      '  ob."'#1076#1072#1090#1072'_'#1074#1099#1093#1086#1076#1072'",'
      '  ob."'#1082#1086#1076'_'#1089#1090#1088#1072#1085#1099'",'
      '  ob."'#1089#1090#1072#1090#1091#1089'_'#1084#1077#1085#1077#1076#1078#1077#1088'",'
      '  ob."'#1089#1090#1072#1090#1091#1089'_'#1082#1083#1080#1077#1085#1090'",'
      '  ob."'#1079#1072#1082#1088#1099#1090'",'
      '  ob."'#1082#1086#1076'_'#1084#1077#1085#1077#1076#1078#1077#1088#1072'",'
      '  ob."'#1085#1086#1084#1077#1088'",'
      '  c.name as '#1089#1090#1088#1072#1085#1072
      'FROM'
      '  "'#1072#1091#1082#1094#1080#1086#1085'"."'#1047#1072#1082#1072#1079#1058#1077#1083#1086'" ob'
      
        '  INNER JOIN "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"."'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'" m ON (ob."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"' +
        ' = m.id)'
      
        '  LEFT JOIN "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'" u ON (ob."'#1082#1086#1076'_'#1084#1077#1085#1077#1076#1078#1077#1088 +
        #1072'" = u.id)'
      
        '  INNER JOIN "'#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099'"."'#1082#1083#1080#1077#1085#1090#1099'" cl ON (m."'#1082#1086#1076'_'#1082#1083#1080#1077#1085#1090#1072'" = cl' +
        '.id)'
      
        '  INNER JOIN "'#1072#1091#1082#1094#1080#1086#1085'"."'#1057#1090#1072#1090#1091#1089#1050#1083#1080#1077#1085#1090'" stk ON (stk.id=ob."'#1089#1090#1072#1090#1091#1089'_' +
        #1082#1083#1080#1077#1085#1090'")'
      
        '  INNER JOIN "'#1072#1091#1082#1094#1080#1086#1085'"."'#1057#1090#1072#1090#1091#1089#1052#1077#1085#1077#1076#1078#1077#1088'" stm ON (stm.id=ob."'#1089#1090#1072#1090#1091 +
        #1089'_'#1084#1077#1085#1077#1076#1078#1077#1088'")'
      'INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1090#1088#1072#1085#1099'" c ON (c.id=ob."'#1082#1086#1076'_'#1089#1090#1088#1072#1085#1099'")')
    Left = 206
    Top = 188
  end
  object dsStatClient: TDataSource
    DataSet = QueryStatClient
    Left = 289
    Top = 189
  end
  object dsStatManager: TDataSource
    DataSet = QueryStatManager
    Left = 535
    Top = 188
  end
  object QueryStatManager: TUniQuery
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
      '  m.name as '#1084#1072#1088#1082#1080#1088#1086#1074#1082#1072','
      '  u.name as '#1084#1077#1085#1077#1076#1078#1077#1088','
      '  cl.name as '#1082#1083#1080#1077#1085#1090','
      '  stk.name as '#1089#1090#1072#1090#1091#1089'_'#1082#1083#1080#1077#1085#1090','
      '    stm.name as '#1089#1090#1072#1090#1091#1089'_'#1084#1077#1085#1077#1076#1078#1077#1088','
      '  ob.id,'
      '  ob."'#1076#1072#1090#1072'_'#1079#1072#1082#1072#1079#1072'",'
      '  ob."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'",'
      '  ob."'#1082#1086#1076'_'#1082#1083#1080#1077#1085#1090#1072'",'
      '  ob."'#1076#1072#1090#1072'_'#1074#1099#1093#1086#1076#1072'",'
      '  ob."'#1082#1086#1076'_'#1089#1090#1088#1072#1085#1099'",'
      '  ob."'#1089#1090#1072#1090#1091#1089'_'#1084#1077#1085#1077#1076#1078#1077#1088'",'
      '  ob."'#1089#1090#1072#1090#1091#1089'_'#1082#1083#1080#1077#1085#1090'",'
      '  ob."'#1079#1072#1082#1088#1099#1090'",'
      '  ob."'#1082#1086#1076'_'#1084#1077#1085#1077#1076#1078#1077#1088#1072'",'
      '  ob."'#1085#1086#1084#1077#1088'",'
      '  c.name as '#1089#1090#1088#1072#1085#1072
      'FROM'
      '  "'#1072#1091#1082#1094#1080#1086#1085'"."'#1047#1072#1082#1072#1079#1058#1077#1083#1086'" ob'
      
        '  INNER JOIN "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"."'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'" m ON (ob."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"' +
        ' = m.id)'
      
        '  LEFT JOIN "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'" u ON (ob."'#1082#1086#1076'_'#1084#1077#1085#1077#1076#1078#1077#1088 +
        #1072'" = u.id)'
      
        '  INNER JOIN "'#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099'"."'#1082#1083#1080#1077#1085#1090#1099'" cl ON (m."'#1082#1086#1076'_'#1082#1083#1080#1077#1085#1090#1072'" = cl' +
        '.id)'
      
        '  INNER JOIN "'#1072#1091#1082#1094#1080#1086#1085'"."'#1057#1090#1072#1090#1091#1089#1050#1083#1080#1077#1085#1090'" stk ON (stk.id=ob."'#1089#1090#1072#1090#1091#1089'_' +
        #1082#1083#1080#1077#1085#1090'")'
      
        '  INNER JOIN "'#1072#1091#1082#1094#1080#1086#1085'"."'#1057#1090#1072#1090#1091#1089#1052#1077#1085#1077#1076#1078#1077#1088'" stm ON (stm.id=ob."'#1089#1090#1072#1090#1091 +
        #1089'_'#1084#1077#1085#1077#1076#1078#1077#1088'")'
      'INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1090#1088#1072#1085#1099'" c ON (c.id=ob."'#1082#1086#1076'_'#1089#1090#1088#1072#1085#1099'")')
    Left = 452
    Top = 187
  end
end
