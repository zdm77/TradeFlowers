object FNewSubPacking: TFNewSubPacking
  Left = 0
  Top = 0
  Caption = #1055#1086#1076#1087#1072#1082#1080#1085#1075
  ClientHeight = 419
  ClientWidth = 848
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
    TabOrder = 0
    Height = 49
    Width = 848
    object lbl3: TLabel
      Left = 456
      Top = 19
      Width = 39
      Height = 13
      Caption = #1050#1086#1083'-'#1074#1086':'
    end
    object Label1: TLabel
      Left = 600
      Top = 19
      Width = 60
      Height = 13
      Caption = #1042#1077#1089' '#1087#1072#1083#1077#1090#1072':'
    end
    object lbl4: TLabel
      Left = 3
      Top = 19
      Width = 22
      Height = 13
      Caption = #1058#1080#1087':'
    end
    object lbl1: TcxLabel
      Left = 219
      Top = 17
      Caption = #1058#1072#1088#1072':'
      Transparent = True
    end
    object edtTara: TAdvEdit
      Left = 257
      Top = 15
      Width = 189
      Height = 21
      HelpType = htKeyword
      EmptyText = #1055#1072#1083#1077#1090
      EmptyTextStyle = []
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
      TabOrder = 0
      Text = #1055#1072#1083#1077#1090
      Visible = True
      Version = '3.3.2.0'
    end
    object edtCount: TsCalcEdit
      Left = 501
      Top = 15
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
      Value = 1.000000000000000000
    end
    object edtVes: TsCalcEdit
      Left = 661
      Top = 15
      Width = 92
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
      Value = 15.000000000000000000
    end
    object edtType: TcxLookupComboBox
      Left = 31
      Top = 15
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsUp
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 4
      Width = 182
    end
  end
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 49
    Width = 848
    Height = 38
    Align = alTop
    TabOrder = 1
    ExplicitTop = 49
    ExplicitWidth = 848
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
  object GridAvtoPacking: TcxGrid
    Left = 0
    Top = 87
    Width = 848
    Height = 332
    Align = alClient
    TabOrder = 2
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object GridAvtoPackingDBTableView1: TcxGridDBTableView
      OnDblClick = GridAvtoPackingDBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsSubPacking
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          Column = GridAvtoPackingDBTableView1Column1
        end
        item
          Kind = skSum
          Column = GridAvtoPackingDBTableView1DBColumn
        end
        item
          Kind = skSum
          Column = ColumnИтог
        end
        item
          Kind = skSum
          Column = ColumnВес
        end
        item
          Kind = skSum
          Column = ColumnВесУпаковки
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      object GridAvtoPackingDBTableView1_: TcxGridDBColumn
        Caption = #1053#1086#1084#1077#1088' '#1082#1086#1088#1086#1073#1082#1080
        DataBinding.FieldName = #1085#1086#1084#1077#1088'_'#1082#1086#1088#1086#1073#1082#1080
        Width = 110
      end
      object GridAvtoPackingDBTableView1Column1: TcxGridDBColumn
        Caption = #1055#1086#1079#1080#1094#1080#1081
        DataBinding.FieldName = #1087#1086#1079#1080#1094#1080#1081
      end
      object GridAvtoPackingDBTableView1DBColumn: TcxGridDBColumn
        Caption = #1057#1090#1077#1073#1083#1077#1081
        DataBinding.FieldName = #1089#1090#1077#1073#1083#1077#1081
        Width = 101
      end
      object ColumnИтог: TcxGridDBColumn
        Caption = #1048#1090#1086#1075
        DataBinding.FieldName = #1080#1090#1086#1075
        PropertiesClassName = 'TcxCurrencyEditProperties'
        OnGetDisplayText = ColumnИтогGetDisplayText
        Width = 122
      end
      object ColumnВес: TcxGridDBColumn
        Caption = #1042#1077#1089
        DataBinding.FieldName = #1074#1077#1089
        Width = 82
      end
      object ColumnУпаковка: TcxGridDBColumn
        Caption = #1059#1087#1072#1082#1086#1074#1082#1072
        DataBinding.FieldName = #1091#1087#1072#1082#1086#1074#1082#1072
        Width = 179
      end
      object ColumnВесУпаковки: TcxGridDBColumn
        Caption = #1042#1077#1089' '#1091#1087#1072#1082#1086#1074#1082#1080
        DataBinding.FieldName = #1074#1077#1089'_'#1091#1087#1072#1082#1086#1074#1082#1080
        Width = 118
      end
    end
    object GridAvtoPackingLevel1: TcxGridLevel
      GridView = GridAvtoPackingDBTableView1
    end
  end
  object dsSubPacking: TDataSource
    DataSet = QuerySubPacking
    Left = 112
    Top = 193
  end
  object QuerySubPacking: TUniQuery
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
      '  pd."'#1085#1086#1084#1077#1088'_'#1082#1086#1088#1086#1073#1082#1080'", '
      ' sum(pd."'#1082#1086#1083'_'#1074#1086'_'#1089#1090#1077#1073#1083#1077#1081'") '#1089#1090#1077#1073#1083#1077#1081','
      '  sum(pd."'#1094#1077#1085#1072'"*pd."'#1082#1086#1083'_'#1074#1086'_'#1089#1090#1077#1073#1083#1077#1081'") '#1080#1090#1086#1075','
      'count(pd.id) '#1087#1086#1079#1080#1094#1080#1081
      'FROM'
      '  "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1090#1072#1084#1086#1078#1085#1103'_'#1087#1072#1082#1080#1085#1075'_'#1076#1077#1090#1072#1083#1100'" pd'
      '  '
      'group by pd."'#1085#1086#1084#1077#1088'_'#1082#1086#1088#1086#1073#1082#1080'"')
    Left = 239
    Top = 221
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
  object QueryUp: TUniQuery
    Connection = DM1.db1
    SQL.Strings = (
      'select * from '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'.'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080)
    Left = 208
    Top = 144
  end
  object dsUp: TUniDataSource
    DataSet = QueryUp
    Left = 288
    Top = 144
  end
end
