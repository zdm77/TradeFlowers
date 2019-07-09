object FNewTarifKargo: TFNewTarifKargo
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1058#1072#1088#1080#1092' '#1072#1074#1080#1072#1083#1080#1085#1080#1080
  ClientHeight = 266
  ClientWidth = 505
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
    Caption = #1040#1074#1080#1072#1083#1080#1085#1080#1103
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 0
    Height = 137
    Width = 505
    object edtAirline: TcxButtonEdit
      Left = 90
      Top = 16
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = btnAirlinePropertiesButtonClick
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
      Width = 409
    end
    object cxlbl2: TcxLabel
      Left = 3
      Top = 18
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object GridStatWork: TcxGrid
      Left = 3
      Top = 43
      Width = 499
      Height = 84
      TabOrder = 2
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object ViewStatWork: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeButtonAlignment = fbaLeft
        FilterBox.Position = fpTop
        FilterBox.Visible = fvNever
        DataController.DataSource = dsAirDay
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.Editing = False
        OptionsView.CellAutoHeight = True
        OptionsView.GroupByBox = False
        object ColumnName: TcxGridDBColumn
          Caption = #1044#1085#1080' '#1074#1099#1083#1077#1090#1072
          DataBinding.FieldName = #1076#1077#1085#1100
          Width = 192
        end
        object ColumnTimeВылет: TcxGridDBColumn
          Caption = #1042#1088#1077#1084#1103' '#1074#1099#1083#1077#1090#1072
          DataBinding.FieldName = #1074#1088#1077#1084#1103'_'#1074#1099#1083#1077#1090#1072
          Width = 106
        end
        object ColumnTimeПрилет: TcxGridDBColumn
          Caption = #1042#1088#1077#1084#1103' '#1087#1088#1080#1083#1077#1090#1072
          DataBinding.FieldName = #1074#1088#1077#1084#1103'_'#1087#1088#1080#1083#1077#1090#1072
          Width = 107
        end
      end
      object LevelStatWork: TcxGridLevel
        GridView = ViewStatWork
      end
    end
  end
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 230
    Width = 505
    Height = 36
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 230
    ExplicitWidth = 505
    ExplicitHeight = 36
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
  object cxGroupBox2: TcxGroupBox
    Left = 0
    Top = 137
    Align = alClient
    Caption = #1058#1072#1088#1080#1092#1099
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 2
    Height = 93
    Width = 505
    object cxLabel1: TcxLabel
      Left = 3
      Top = 17
      Caption = #1054#1073#1097#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100':'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object edtSumTarif: TsCalcEdit
      Left = 107
      Top = 15
      Width = 121
      Height = 21
      AutoSize = False
      TabOrder = 0
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
    object edtFITO: TsCalcEdit
      Left = 378
      Top = 15
      Width = 121
      Height = 21
      AutoSize = False
      TabOrder = 3
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
    object cxLabel2: TcxLabel
      Left = 234
      Top = 17
      Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1092#1080#1090#1086':'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object edtTermo: TsCalcEdit
      Left = 378
      Top = 38
      Width = 121
      Height = 21
      AutoSize = False
      TabOrder = 4
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
    object cxLabel4: TcxLabel
      Left = 234
      Top = 40
      Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1090#1077#1088#1084#1086#1076#1072#1090#1095#1080#1082#1072':'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object edtAWB: TsCalcEdit
      Left = 107
      Top = 38
      Width = 121
      Height = 21
      AutoSize = False
      TabOrder = 1
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
    object edtDopSbor: TsCalcEdit
      Left = 107
      Top = 61
      Width = 121
      Height = 21
      AutoSize = False
      TabOrder = 2
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
    object cxLabel5: TcxLabel
      Left = 3
      Top = 63
      Caption = #1044#1086#1087'. '#1089#1073#1086#1088#1099':'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object cxLabel3: TcxLabel
      Left = 3
      Top = 40
      Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' AWB:'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
  end
  object dsAirDay: TDataSource
    DataSet = QueryAirDay
    Left = 180
    Top = 80
  end
  object QueryAirDay: TUniQuery
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
      ' *'
      'FROM'
      'airlines_day_fly'
      'where id_airline=:id')
    Left = 80
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
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
      ' *'
      'FROM'
      'airlines_day_fly'
      'where id_airline=:id')
    Left = 24
    Top = 76
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
  end
end
