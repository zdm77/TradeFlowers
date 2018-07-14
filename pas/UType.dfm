object FType: TFType
  Left = 0
  Top = 0
  Caption = #1058#1080#1087#1099
  ClientHeight = 484
  ClientWidth = 655
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 452
    Width = 655
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 452
    ExplicitWidth = 655
    inherited bardxbrmngr1: TdxBarManager
      DockControlHeights = (
        0
        0
        0
        34)
      inherited btnSave: TdxBarLargeButton
        Enabled = False
        OnClick = FrameSave1btnSaveClick
      end
    end
  end
  object GroupCountry: TcxGroupBox
    Left = 0
    Top = 105
    Align = alClient
    Caption = #1057#1090#1088#1072#1085#1099
    Style.Edges = []
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 1
    Height = 347
    Width = 655
    object GridUsers: TcxGrid
      Left = 1
      Top = 48
      Width = 653
      Height = 291
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      object ViewUsers: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsCountry
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '$ #,0.00'
            Kind = skSum
          end
          item
            Format = '#0 '#1096#1090'.'
            Kind = skSum
          end
          item
            Format = '#0 '#1096#1090'.'
            Kind = skSum
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object ColumnUniName: TcxGridDBColumn
          Caption = #1052#1077#1078#1076#1091#1085#1072#1088#1086#1076#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'uni_name'
          Width = 202
        end
        object ColumnName: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'name'
          Width = 224
        end
        object ColumnRegName: TcxGridDBColumn
          Caption = #1056#1077#1075#1080#1086#1085#1072#1083#1100#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'reg_name'
          Width = 178
        end
      end
      object LevelOrg: TcxGridLevel
        GridView = ViewUsers
      end
    end
    inline FrameTopPanel1: TFrameTopPanel
      Left = 1
      Top = 13
      Width = 653
      Height = 35
      Align = alTop
      TabOrder = 1
      ExplicitLeft = 1
      ExplicitTop = 13
      ExplicitWidth = 653
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
              Visible = True
              ItemName = 'btnAdd'
            end
            item
              Visible = True
              ItemName = 'btnDel'
            end
            item
              BeginGroup = True
              Visible = True
              ItemName = 'btnRefresh'
            end>
        end
        inherited btnAdd: TdxBarLargeButton
          Enabled = False
          OnClick = btnAddClick
        end
        inherited btnEdit: TdxBarLargeButton
          Enabled = False
        end
        inherited btnDel: TdxBarLargeButton
          Enabled = False
          OnClick = btnDelClick
        end
        inherited btnRefresh: TdxBarLargeButton
          OnClick = btnRefreshClick
        end
      end
    end
  end
  inline FrameUniName1: TFrameUniName
    Left = 0
    Top = 0
    Width = 655
    Height = 105
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 655
    ExplicitHeight = 105
    inherited Group1: TcxGroupBox
      ExplicitWidth = 655
      ExplicitHeight = 105
      Height = 105
      Width = 655
      inherited edtUniName: TcxTextEdit
        Properties.OnChange = edtUniNamePropertiesChange
      end
      inherited edtRegName: TcxTextEdit
        Properties.OnChange = FrameUniName1edtRegNamePropertiesChange
      end
      inherited edtName: TcxTextEdit
        Properties.OnChange = FrameUniName1edtNamePropertiesChange
      end
      inherited chkUseName: TCheckBox
        Left = 435
        Top = 5
        Visible = False
        ExplicitLeft = 435
        ExplicitTop = 5
      end
    end
  end
  object edtCode: TEdit
    Left = 100
    Top = 74
    Width = 265
    Height = 21
    TabOrder = 3
  end
  object lblRegName: TcxLabel
    Left = 3
    Top = 73
    Caption = #1050#1086#1076':'
    Transparent = True
  end
  object QueryCountry: TUniQuery
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
      'select * from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1090#1088#1072#1085#1099'"')
    Left = 111
    Top = 129
  end
  object dsCountry: TDataSource
    DataSet = QueryCountry
    Left = 112
    Top = 193
  end
end
