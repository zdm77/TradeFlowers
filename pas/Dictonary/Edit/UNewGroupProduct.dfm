object FNewGroupProduct: TFNewGroupProduct
  Left = 0
  Top = 0
  Caption = #1053#1086#1074#1072#1103' '#1075#1088#1091#1087#1087#1072' '#1090#1086#1074#1072#1088#1072
  ClientHeight = 379
  ClientWidth = 366
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
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 347
    Width = 366
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 347
    ExplicitWidth = 366
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
  object Group1: TcxGroupBox
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
    TabOrder = 1
    Height = 91
    Width = 366
    object lblSum: TcxLabel
      Left = 3
      Top = 9
      Caption = #1044#1083#1080#1085#1072':'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object edtLength: TAdvEdit
      Left = 53
      Top = 9
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
      TabOrder = 0
      Text = '0'
      Visible = True
      Version = '3.3.2.0'
    end
    object lblFB: TcxLabel
      Left = 187
      Top = 9
      Caption = 'FB:'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object lblCount: TcxLabel
      Left = 187
      Top = 37
      Caption = #1057#1090#1077#1073#1083#1077#1081' '#1074' HB:'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object lblPrice: TcxLabel
      Left = 3
      Top = 38
      Caption = #1062#1077#1085#1072':'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object edtPrice: TAdvEdit
      Left = 53
      Top = 36
      Width = 128
      Height = 21
      EmptyTextStyle = []
      Prefix = '$ '
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
      TabOrder = 1
      Text = '0'
      Visible = True
      Version = '3.3.2.0'
    end
    object edtFB: TsCalcEdit
      Left = 269
      Top = 7
      Width = 92
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
    object edtCount: TsCalcEdit
      Left = 269
      Top = 35
      Width = 92
      Height = 21
      AutoSize = False
      TabOrder = 7
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
    end
    object edtOrder: TcxButtonEdit
      Left = 53
      Top = 60
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edtOrderPropertiesButtonClick
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = ''
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = ''
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = ''
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = ''
      TabOrder = 8
      Width = 310
    end
    object lblOrder: TcxLabel
      Left = 3
      Top = 61
      Caption = #1047#1072#1082#1072#1079':'
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
  end
  object Group2: TcxGroupBox
    Left = 0
    Top = 91
    Align = alClient
    Caption = #1052#1072#1088#1082#1080#1088#1086#1074#1082#1080
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 2
    Height = 256
    Width = 366
    inline FrameTopPanel1: TFrameTopPanel
      Left = 3
      Top = 15
      Width = 360
      Height = 32
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = -2
      ExplicitWidth = 362
      ExplicitHeight = 32
      inherited barProduct: TdxBarManager
        DockControlHeights = (
          0
          0
          134
          0)
        inherited btnAdd: TdxBarLargeButton
          OnClick = btnAddClick
        end
        inherited btnEdit: TdxBarLargeButton
          Visible = ivNever
        end
        inherited btnDel: TdxBarLargeButton
          OnClick = btnDelClick
        end
        inherited btnRefresh: TdxBarLargeButton
          OnClick = btnRefreshClick
        end
      end
    end
    object cxGrid1: TcxGrid
      Left = 3
      Top = 47
      Width = 360
      Height = 199
      Align = alClient
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      ExplicitLeft = 2
      ExplicitTop = 50
      ExplicitWidth = 362
      ExplicitHeight = 204
      object cxGridDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        DataController.DataSource = dsMarking
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object cxGridDBTableView1name: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'name'
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBTableView1
      end
    end
  end
  object dsMarking: TDataSource
    DataSet = QueryMarking
    Left = 276
    Top = 157
  end
  object QueryMarking: TUniQuery
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
      '  m.name,'
      '  m.uni_name,'
      '  m.reg_name,'
      '  md.id,'
      '  md."'#1082#1086#1076'_'#1076#1077#1090#1072#1083#1080'_'#1089#1090#1077#1085#1076#1080#1085#1075#1072'",'
      '  md."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"'
      'FROM'
      '  "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"."'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'" m'
      
        '  INNER JOIN "'#1089#1090#1077#1085#1076#1080#1085#1075'"."'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'" md ON (m.id = md."'#1082#1086#1076'_'#1084#1072#1088#1082#1080 +
        #1088#1086#1074#1082#1080'")'
      'where '#1082#1086#1076'_'#1076#1077#1090#1072#1083#1080'_'#1089#1090#1077#1085#1076#1080#1085#1075#1072'=:id')
    Left = 255
    Top = 233
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
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
      'select *'
      'from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"'
      'where id_group = 1 and'
      '      '#1082#1086#1076'_'#1089#1090#1088#1091#1082#1090#1091#1088#1099' = 4 and id in(select pid'
      'from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"'
      'where id_group = 1 and'
      '      '#1082#1086#1076'_'#1089#1090#1088#1091#1082#1090#1091#1088#1099' = 5 and'
      '      Upper(name) Like '#39'IG%'#39')       '
      'union all'
      'select *'
      'from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"'
      'where id_group = 1 and'
      '      '#1082#1086#1076'_'#1089#1090#1088#1091#1082#1090#1091#1088#1099' = 5 and'
      '      Upper(name) Like '#39'IG%'#39
      'order by id')
    Left = 375
    Top = 289
  end
end
