object FNewTypeClient: TFNewTypeClient
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1053#1086#1074#1099#1081' '#1090#1080#1087
  ClientHeight = 400
  ClientWidth = 592
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
    Top = 368
    Width = 592
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 309
    ExplicitWidth = 493
    inherited bardxbrmngr1: TdxBarManager
      DockControlHeights = (
        0
        0
        0
        34)
      inherited btnSave: TdxBarLargeButton
        Caption = #1042#1099#1073#1088#1072#1090#1100
        Hint = #1042#1099#1073#1088#1072#1090#1100
        LargeImageIndex = 12
        OnClick = FrameSave1btnSaveClick
      end
    end
  end
  object GridStatWork: TcxGrid
    Left = 0
    Top = 33
    Width = 592
    Height = 335
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    ExplicitTop = 72
    ExplicitWidth = 674
    ExplicitHeight = 282
    object ViewStatWork: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.CustomizeButtonAlignment = fbaLeft
      FilterBox.Position = fpTop
      DataController.DataSource = dsAll
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
      OptionsView.ShowColumnFilterButtons = sfbAlways
      object ViewStatWorkDBColumn1: TcxGridDBColumn
        DataBinding.FieldName = #1090#1080#1087
        Width = 140
      end
      object ViewStatWorkDBColumn: TcxGridDBColumn
        DataBinding.FieldName = #1089#1090#1088#1072#1085#1072
        Width = 140
      end
      object ViewStatWorkDBColumn2: TcxGridDBColumn
        DataBinding.FieldName = #1090#1080#1087' '#1090#1086#1074#1072#1088#1072
        Width = 140
      end
      object ViewStatWorkDBColumn3: TcxGridDBColumn
        DataBinding.FieldName = #1074#1072#1083#1102#1090#1072
        Width = 140
      end
    end
    object LevelStatWork: TcxGridLevel
      GridView = ViewStatWork
    end
  end
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
    TabOrder = 2
    ExplicitWidth = 674
    Height = 33
    Width = 592
    object edtMarking: TcxButtonEdit
      Left = 81
      Top = 6
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edtMarkingPropertiesButtonClick
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
    object lblMarking: TcxLabel
      Left = 3
      Top = 8
      Caption = #1052#1072#1088#1082#1080#1088#1086#1074#1082#1072'*'
      Transparent = True
    end
  end
  object dsAll: TUniDataSource
    DataSet = QueryAll
    Left = 88
    Top = 344
  end
  object QueryAll: TUniQuery
    Connection = DM1.db1
    SQL.Strings = (
      'SELECT '
      '  s.name "'#1089#1090#1088#1072#1085#1072'",'
      '  v.name "'#1090#1080#1087'",'
      '  st."'#1082#1086#1076'_'#1090#1080#1087#1072'_'#1087#1088#1086#1076#1091#1082#1090#1072'",'
      '  st."'#1082#1086#1076'_'#1089#1090#1088#1072#1085#1099'",'
      '  st."'#1082#1086#1076'_'#1074#1072#1083#1102#1090#1099'",'
      '  st."'#1082#1086#1076'_'#1090#1080#1087#1072'",'
      '  st.id,'
      '  tt.name "'#1090#1080#1087' '#1090#1086#1074#1072#1088#1072'",'
      '  vl.name "'#1074#1072#1083#1102#1090#1072'"'
      'FROM'
      '  "'#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099'"."'#1089#1090#1088#1072#1085#1072'_'#1090#1080#1087'" st'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1090#1088#1072#1085#1099'" s ON (st."'#1082#1086#1076'_'#1089#1090#1088#1072#1085#1099'" = s.id)'
      '  INNER JOIN "'#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099'"."'#1074#1080#1076#1099'" v ON (st."'#1082#1086#1076'_'#1090#1080#1087#1072'" = v.id)'
      
        '  INNER JOIN "'#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099'"."'#1090#1080#1087#1099'_'#1090#1086#1074#1072#1088#1086#1074'" tt ON (st."'#1082#1086#1076'_'#1090#1080#1087#1072'_'#1087#1088 +
        #1086#1076#1091#1082#1090#1072'" = tt.id)'
      '  INNER JOIN public."'#1074#1072#1083#1102#1090#1099'" vl ON (st."'#1082#1086#1076'_'#1074#1072#1083#1102#1090#1099'" = vl.id)')
    Left = 16
    Top = 344
  end
end
