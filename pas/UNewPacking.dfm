object FNewPacking: TFNewPacking
  Left = 0
  Top = 0
  Caption = #1055#1072#1082#1080#1085#1075
  ClientHeight = 455
  ClientWidth = 929
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
    Top = 65
    Width = 929
    Height = 38
    Align = alTop
    TabOrder = 0
    ExplicitTop = 65
    ExplicitWidth = 929
    ExplicitHeight = 38
    inherited barProduct: TdxBarManager
      Left = 344
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
      inherited btnFilter: TdxBarLargeButton
        Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1072
        Hint = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1072
        Visible = ivAlways
        LargeImageIndex = 18
        OnClick = btnFilterClick
        AutoGrayScale = False
      end
    end
  end
  object GroupOsn: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1089#1074#1077#1076#1077#1076#1077#1085#1080#1103
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 1
    Height = 65
    Width = 929
    object edtPostav: TcxButtonEdit
      Left = 205
      Top = 29
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edtPostavPropertiesButtonClick
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
      TabOrder = 1
      Width = 227
    end
    object lblMarking: TcxLabel
      Left = 205
      Top = 14
      Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082'*'
      Transparent = True
    end
    object edtNum: TcxTextEdit
      Left = 3
      Top = 29
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 0
      Width = 86
    end
    object lblNumber: TcxLabel
      Left = 3
      Top = 14
      Caption = #8470' '#1087#1072#1082#1080#1085#1075#1072'*'
      Transparent = True
    end
    object cxLabel1: TcxLabel
      Left = 95
      Top = 14
      Caption = #1044#1072#1090#1072' '#1087#1072#1082#1080#1085#1075#1072'*'
      Transparent = True
    end
    object lbl1: TcxLabel
      Left = 438
      Top = 14
      Caption = #1050#1083#1080#1077#1085#1090'*'
      Transparent = True
    end
    object edtClient: TcxButtonEdit
      Left = 438
      Top = 28
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edtClientPropertiesButtonClick
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
      TabOrder = 6
      Width = 283
    end
    object edtВалюта: TComboBox
      Left = 727
      Top = 28
      Width = 49
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 7
      Text = '$'
      Items.Strings = (
        '$'
        #8364
        #1088'.')
    end
    object cxLabel2: TcxLabel
      Left = 727
      Top = 14
      Caption = #1042#1072#1083#1102#1090#1072'*'
      Transparent = True
    end
    object edtOt: TDateTimePicker
      Left = 95
      Top = 28
      Width = 97
      Height = 21
      Date = 41535.395268159720000000
      Time = 41535.395268159720000000
      ShowCheckbox = True
      Checked = False
      TabOrder = 9
    end
  end
  object GridAvtoPacking: TcxGrid
    Left = 0
    Top = 103
    Width = 929
    Height = 352
    Align = alClient
    TabOrder = 2
    LookAndFeel.Kind = lfOffice11
    ExplicitTop = 97
    ExplicitHeight = 358
    object GridAvtoPackingDBTableView1: TcxGridDBTableView
      OnDblClick = GridAvtoPackingDBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsPacking
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object GridAvtoPackingDBTableView1DBColumn: TcxGridDBColumn
        Caption = #1058#1080#1087
        DataBinding.FieldName = #1091#1087#1072#1082#1086#1074#1082#1072
        Width = 209
      end
      object GridAvtoPackingDBTableView1DBColumn1: TcxGridDBColumn
        Caption = #1058#1072#1088#1072
        DataBinding.FieldName = #1090#1072#1088#1072
        Width = 150
      end
    end
    object GridAvtoPackingLevel1: TcxGridLevel
      GridView = GridAvtoPackingDBTableView1
    end
  end
  object dsPacking: TDataSource
    DataSet = QueryPacking
    Left = 112
    Top = 193
  end
  object QueryPacking: TUniQuery
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
      'select * from "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1090#1072#1084#1086#1078#1085#1103'_'#1087#1086#1076#1087#1072#1082#1080#1085#1075'"')
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
end
