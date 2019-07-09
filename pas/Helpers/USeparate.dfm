object FSeparate: TFSeparate
  Left = 0
  Top = 0
  Caption = #1056#1072#1079#1076#1077#1083#1077#1085#1080#1077' '#1092#1072#1082#1090#1091#1088#1099
  ClientHeight = 452
  ClientWidth = 802
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
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
    TabOrder = 0
    Height = 27
    Width = 802
    object edtNum: TcxTextEdit
      Left = 103
      Top = 3
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 0
      Width = 134
    end
    object lblNumber: TcxLabel
      Left = 3
      Top = 5
      Caption = #8470' '#1085#1086#1074#1086#1081' '#1092#1072#1082#1090#1091#1088#1099
      Transparent = True
    end
  end
  object stat1: TdxStatusBar
    Left = 0
    Top = 400
    Width = 802
    Height = 20
    Panels = <>
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Blue'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 420
    Width = 802
    Height = 32
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 420
    ExplicitWidth = 802
    inherited bardxbrmngr1: TdxBarManager
      DockControlHeights = (
        0
        0
        0
        34)
    end
  end
  object Group3: TcxGroupBox
    Left = 381
    Top = 27
    Align = alLeft
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 3
    Height = 373
    Width = 32
    object btnAddAll: TcxButton
      Left = 2
      Top = 128
      Width = 28
      Height = 25
      Caption = '->>'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 0
    end
    object btnAdd: TcxButton
      Left = 2
      Top = 155
      Width = 28
      Height = 25
      Caption = '->'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 1
    end
    object btnDelAll: TcxButton
      Left = 2
      Top = 242
      Width = 28
      Height = 25
      Caption = '<<-'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 2
    end
    object btnDel: TcxButton
      Left = 2
      Top = 215
      Width = 28
      Height = 25
      Caption = '<-'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 3
    end
  end
  object GroupSource: TcxGroupBox
    Left = 0
    Top = 27
    Align = alLeft
    PanelStyle.Active = True
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 4
    Height = 373
    Width = 381
    object GridDest: TcxGrid
      Left = 2
      Top = 2
      Width = 377
      Height = 369
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      object ViewDest: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        DataController.DataSource = dsSource
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        object ColumnPlant: TcxGridDBColumn
          DataBinding.FieldName = 'name'
          Width = 77
        end
        object ColumnSort: TcxGridDBColumn
          DataBinding.FieldName = 'name_1'
          Width = 47
        end
        object ViewDestfb: TcxGridDBColumn
          Caption = 'FB'
          DataBinding.FieldName = 'fb'
          HeaderAlignmentHorz = taCenter
          Width = 52
        end
        object ColumnДлина: TcxGridDBColumn
          DataBinding.FieldName = #1076#1083#1080#1085#1072
          HeaderAlignmentHorz = taCenter
          Width = 53
        end
        object ColumnСтеблей: TcxGridDBColumn
          DataBinding.FieldName = #1089#1090#1077#1073#1083#1077#1081
          HeaderAlignmentHorz = taCenter
          Width = 55
        end
        object ColumnЦена: TcxGridDBColumn
          DataBinding.FieldName = #1094#1077#1085#1072
          HeaderAlignmentHorz = taCenter
          Width = 52
        end
      end
      object LevelStatWork: TcxGridLevel
        GridView = ViewDest
      end
    end
  end
  object GroupDest: TcxGroupBox
    Left = 413
    Top = 27
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
    TabOrder = 5
    Height = 373
    Width = 389
  end
  object QuerySource: TUniQuery
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
      '  fd."'#1082#1086#1076'_'#1092#1072#1082#1090#1091#1088#1099'",'
      '  fd.id,'
      '  fd."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'",'
      '  fd."'#1082#1086#1076'_'#1090#1086#1074#1072#1088#1072'",'
      '  fd."'#1094#1077#1085#1072'",'
      '  fd.fb,'
      '  fd."'#1089#1090#1077#1073#1083#1077#1081'",'
      '  fd."'#1076#1083#1080#1085#1072'",'
      '  fd."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'",'
      '  pt.uni_name,'
      '  pt.reg_name,'
      '  pt.name,'
      '  s.name,'
      '  s.uni_name,'
      '  s.reg_name,'
      '  p.name,'
      '  p.uni_name,'
      '  p.reg_name'
      'FROM'
      '  "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1092#1072#1082#1090#1091#1088#1072'_'#1076#1077#1090#1072#1083#1100'" fd'
      
        '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pt ON (fd."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" =' +
        ' pt.id)'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090#1072'" s ON (fd."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'" = s.id)'
      
        '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1088#1086#1076#1091#1082#1094#1080#1103'" p ON (fd."'#1082#1086#1076'_'#1090#1086#1074#1072#1088#1072'" = p.i' +
        'd)')
    Left = 160
    Top = 152
  end
  object dsSource: TDataSource
    DataSet = QuerySource
    Left = 160
    Top = 216
  end
  object QueryDist: TUniQuery
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
      'select * from  '#1087#1088#1086#1076#1091#1082#1094#1080#1103'.'#1087#1083#1072#1085#1090#1072#1094#1080#1080)
    Left = 568
    Top = 176
  end
  object dsDist: TDataSource
    DataSet = QueryDist
    Left = 668
    Top = 180
  end
end
