object FLength: TFLength
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1044#1083#1080#1085#1072
  ClientHeight = 422
  ClientWidth = 636
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
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
    Height = 33
    Width = 636
    object edtValue: TAdvEdit
      Left = 57
      Top = 5
      Width = 80
      Height = 21
      EmptyText = ' '#1089#1084'.'
      EmptyTextFocused = True
      EmptyTextStyle = []
      Suffix = ' '#1089#1084'.'
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
      Text = ''
      Visible = True
      OnKeyDown = edtValueKeyDown
      Version = '3.3.2.0'
    end
    object lblValue: TcxLabel
      Left = 3
      Top = 6
      Caption = #1047#1085#1072#1095#1077#1085#1080#1077':'
      ParentColor = False
      Style.BorderColor = clInactiveCaption
      Style.Color = clSilver
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      Properties.ShadowedColor = clBtnText
      Transparent = True
    end
  end
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 390
    Width = 636
    Height = 32
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 390
    ExplicitWidth = 636
    inherited bardxbrmngr1: TdxBarManager
      DockControlHeights = (
        0
        0
        0
        34)
      inherited dxbrBarManager1Bar: TdxBar
        ItemLinks = <
          item
            Visible = True
            ItemName = 'btnSave'
          end>
      end
      inherited btnSave: TdxBarLargeButton
        OnClick = FrameSave1btnSaveClick
      end
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 33
    Align = alClient
    Caption = #1057#1086#1088#1090#1072
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
    Height = 357
    Width = 636
    inline FrameTopPanel3: TFrameTopPanel
      Left = 2
      Top = 18
      Width = 632
      Height = 35
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 5
      ExplicitWidth = 632
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
          OnClick = FrameTopPanel3btnAddClick
        end
        inherited btnEdit: TdxBarLargeButton
          Enabled = False
        end
        inherited btnDel: TdxBarLargeButton
          Enabled = False
        end
      end
    end
    object GridType: TcxGrid
      Left = 2
      Top = 53
      Width = 632
      Height = 302
      Align = alClient
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object ViewType: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsSortLength
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
  object dsSortLength: TDataSource
    DataSet = QuerySortLength
    Left = 168
    Top = 169
  end
  object QuerySortLength: TUniQuery
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
    Left = 171
    Top = 217
  end
end
