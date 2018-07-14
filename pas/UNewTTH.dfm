object FNewTTH: TFNewTTH
  Left = 0
  Top = 0
  Caption = #1057#1074#1086#1081#1089#1090#1074#1072
  ClientHeight = 542
  ClientWidth = 725
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
    Top = 510
    Width = 725
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 510
    ExplicitWidth = 725
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
  inline FrameUniName1: TFrameUniName
    Left = 0
    Top = 0
    Width = 725
    Height = 95
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 725
    ExplicitHeight = 95
    inherited Group1: TcxGroupBox
      ExplicitWidth = 725
      ExplicitHeight = 95
      Height = 95
      Width = 725
      inherited edtUniName: TcxTextEdit
        Properties.OnEditValueChanged = FrameUniName1edtUniNamePropertiesEditValueChanged
        OnKeyUp = FrameUniName1edtUniNameKeyUp
      end
      inherited edtRegName: TcxTextEdit
        Properties.OnEditValueChanged = FrameUniName1edtRegNamePropertiesEditValueChanged
        OnKeyUp = FrameUniName1edtRegNameKeyUp
      end
      inherited edtName: TcxTextEdit
        Properties.OnEditValueChanged = FrameUniName1edtNamePropertiesEditValueChanged
        OnKeyUp = FrameUniName1edtNameKeyUp
      end
      inherited chkUniq: TCheckBox
        Visible = True
      end
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 95
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
    TabOrder = 2
    Height = 415
    Width = 725
    inline FrameTopPanel3: TFrameTopPanel
      Left = 2
      Top = 18
      Width = 721
      Height = 35
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 5
      ExplicitWidth = 721
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
              ItemName = 'btnEdit'
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
          OnClick = btnAddClick
        end
        inherited btnEdit: TdxBarLargeButton
          Enabled = False
          OnClick = btnEditClick
        end
        inherited btnDel: TdxBarLargeButton
          Enabled = False
        end
      end
    end
    object GridType: TcxGrid
      Left = 2
      Top = 53
      Width = 721
      Height = 360
      Align = alClient
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object ViewType: TcxGridDBTableView
        OnDblClick = ViewTypeDblClick
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsTTHAdd
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
        GridView = ViewType
      end
    end
  end
  object QueryTTHAdd: TUniQuery
    SQLDelete.Strings = (
      'DELETE FROM clients'
      'WHERE'
      '  ID = :Old_ID')
    SQLLock.Strings = (
      'SELECT * FROM clients'
      'WHERE'
      '  ID = :Old_ID'
      'FOR UPDATE')
    Connection = DM1.db1
    SQL.Strings = (
      'select * from '#1087#1088#1086#1076#1091#1082#1094#1080#1103'.'#1090#1080#1087#1099'_'#1089#1074#1086#1081#1089#1090#1074#1072' order by id')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1090#1080#1087#1072
    Left = 559
    Top = 185
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 1
      end>
  end
  object dsTTHAdd: TDataSource
    DataSet = QueryTTHAdd
    Left = 536
    Top = 273
  end
end
