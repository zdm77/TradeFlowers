object FNewAvtoForPacking: TFNewAvtoForPacking
  Left = 0
  Top = 0
  Caption = #1055#1072#1082#1080#1085#1075
  ClientHeight = 436
  ClientWidth = 700
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
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 73
    Width = 700
    Height = 38
    Align = alTop
    TabOrder = 0
    ExplicitTop = 73
    ExplicitWidth = 700
    ExplicitHeight = 38
    inherited barProduct: TdxBarManager
      DockControlHeights = (
        0
        0
        34
        0)
      inherited dxbrBardxbrmngr1Bar1: TdxBar
        ItemLinks = <
          item
            Visible = True
            ItemName = 'btnSel'
          end
          item
            BeginGroup = True
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
          end>
      end
      inherited btnAdd: TdxBarLargeButton
        OnClick = btnAddClick
      end
      inherited btnEdit: TdxBarLargeButton
        OnClick = btnEditClick
      end
      inherited btnDel: TdxBarLargeButton
        OnClick = btnDelClick
      end
      inherited btnRefresh: TdxBarLargeButton
        OnClick = btnRefreshClick
      end
      inherited btnSel: TdxBarLargeButton
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        Visible = ivAlways
        LargeImageIndex = 13
        OnClick = FrameTopPanel1btnSelClick
      end
    end
  end
  object GroupOsn: TcxGroupBox
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
    TabOrder = 1
    Height = 73
    Width = 700
    object edtOt: TsDateEdit
      Left = 139
      Top = 39
      Width = 81
      Height = 21
      AutoSize = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
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
      DefaultToday = True
    end
    object cxLabel1: TcxLabel
      Left = 139
      Top = 19
      Caption = #1044#1072#1090#1072' '#1079#1072#1075#1088#1091#1079#1082#1080':'
      Transparent = True
    end
    object lbl1: TcxLabel
      Left = 227
      Top = 19
      Caption = #1060#1048#1054' '#1074#1086#1076#1080#1090#1077#1083#1103':'
      Transparent = True
    end
    object edtFIO: TEdit
      Left = 227
      Top = 39
      Width = 232
      Height = 21
      TabOrder = 2
    end
    object edtPhone: TEdit
      Left = 465
      Top = 39
      Width = 162
      Height = 21
      TabOrder = 3
    end
    object cxLabel3: TcxLabel
      Left = 465
      Top = 19
      Caption = #1058#1077#1083#1077#1092#1086#1085':'
      Transparent = True
    end
    object edtNumAvto: TEdit
      Left = 8
      Top = 39
      Width = 125
      Height = 21
      TabOrder = 0
    end
    object cxLabel2: TcxLabel
      Left = 8
      Top = 19
      Caption = #1043#1086#1089'. '#1085#1086#1084#1077#1088' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1103':'
      Transparent = True
    end
  end
  object GridAvtoPacking: TcxGrid
    Left = 0
    Top = 111
    Width = 700
    Height = 325
    Align = alClient
    TabOrder = 2
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object GridAvtoPackingDBTableView1: TcxGridDBTableView
      OnDblClick = GridAvtoPackingDBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsAvtoPacking
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellAutoHeight = True
      object GridAvtoPackingDBTableView1_2: TcxGridDBColumn
        Caption = #1053#1086#1084#1077#1088' '#1087#1072#1082#1080#1085#1075#1072
        DataBinding.FieldName = #1085#1086#1084#1077#1088'_'#1087#1072#1082#1080#1085#1075#1072
        Width = 101
      end
      object GridAvtoPackingDBTableView1_3: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1087#1072#1082#1080#1085#1075#1072
        DataBinding.FieldName = #1076#1072#1090#1072'_'#1087#1072#1082#1080#1085#1075#1072
        Width = 90
      end
      object GridAvtoPackingDBTableView1DBColumn: TcxGridDBColumn
        Caption = #1050#1083#1080#1077#1085#1090
        DataBinding.FieldName = #1082#1083#1080#1077#1085#1090
        Width = 174
      end
      object GridAvtoPackingDBTableView1DBColumn1: TcxGridDBColumn
        Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082
        DataBinding.FieldName = #1087#1086#1089#1090#1072#1074#1097#1080#1082
        Width = 185
      end
    end
    object GridAvtoPackingLevel1: TcxGridLevel
      GridView = GridAvtoPackingDBTableView1
    end
  end
  object QueryAvtoPacking: TUniQuery
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
      '  c.name '#1082#1083#1080#1077#1085#1090','
      '  p.name '#1087#1086#1089#1090#1072#1074#1097#1080#1082','
      '  pk.id,'
      '  pk."'#1082#1086#1076'_'#1090#1072#1084#1086#1078#1085#1103'_'#1072#1074#1090#1086'",'
      '  pk."'#1082#1086#1076'_'#1082#1083#1080#1077#1085#1090#1072'",'
      '  pk."'#1082#1086#1076'_'#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072'",'
      '  pk."'#1085#1086#1084#1077#1088'_'#1087#1072#1082#1080#1085#1075#1072'",'
      '  pk."'#1076#1072#1090#1072'_'#1087#1072#1082#1080#1085#1075#1072'"'
      'FROM'
      '  "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1090#1072#1084#1086#1078#1085#1103'_'#1087#1072#1082#1080#1085#1075'" pk'
      
        '  INNER JOIN "'#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099'"."'#1082#1083#1080#1077#1085#1090#1099'" c ON (pk."'#1082#1086#1076'_'#1082#1083#1080#1077#1085#1090#1072'" = c.' +
        'id)'
      ' '
      
        '  INNER JOIN "'#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099'"."'#1082#1083#1080#1077#1085#1090#1099'" p ON (pk."'#1082#1086#1076'_'#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072'" =' +
        ' p.id)')
    Left = 239
    Top = 221
  end
  object dsAvtoPacking: TDataSource
    DataSet = QueryAvtoPacking
    Left = 112
    Top = 193
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
      'select * from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"'
      'order by id')
    Left = 319
    Top = 213
  end
end
