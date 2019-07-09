object FramePlantSort: TFramePlantSort
  Left = 0
  Top = 0
  Width = 717
  Height = 476
  TabOrder = 0
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 717
    Height = 35
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 717
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
            Visible = True
            ItemName = 'btnRest'
          end
          item
            Visible = True
            ItemName = 'btnRefresh'
          end>
      end
      inherited btnEdit: TdxBarLargeButton
        Visible = ivNever
        OnClick = btnEditClick
      end
      inherited btnDel: TdxBarLargeButton
        OnClick = btnDelClick
      end
      inherited btnRest: TdxBarLargeButton
        Visible = ivAlways
        OnClick = btnRestClick
      end
      inherited btnRefresh: TdxBarLargeButton
        OnClick = btnRefreshClick
      end
    end
  end
  object GroupSelCountry: TcxGroupBox
    Left = 0
    Top = 35
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
    Height = 33
    Width = 717
    object edtType: TcxLookupComboBox
      Left = 35
      Top = 6
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsType
      Properties.OnEditValueChanged = edtTypePropertiesEditValueChanged
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
      TabOrder = 0
      Width = 221
    end
    object lblDetail: TcxLabel
      Left = 3
      Top = 8
      Caption = #1058#1080#1087':'
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
    object chkDel: TcxCheckBox
      Left = 262
      Top = 6
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1089#1082#1088#1099#1090#1099#1077
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 2
      Transparent = True
      OnClick = chkDelClick
      Width = 130
    end
  end
  object GroupSort: TcxGroupBox
    Left = 0
    Top = 68
    Align = alClient
    Caption = #1057#1086#1088#1090#1072
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 2
    Height = 408
    Width = 717
    object GridUsers: TcxGrid
      Left = 2
      Top = 18
      Width = 713
      Height = 388
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      object ViewUsers: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsSort
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
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object ColumnUniName: TcxGridDBColumn
          Caption = #1052#1077#1078#1076#1091#1085#1072#1088#1086#1076#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'uni_name'
          Width = 241
        end
        object ColumnName: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'name'
          Width = 188
        end
        object ColumnRegName: TcxGridDBColumn
          Caption = #1056#1077#1075#1080#1086#1085#1072#1083#1100#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'reg_name'
          Width = 228
        end
        object ColumnDel: TcxGridDBColumn
          DataBinding.FieldName = #1089#1082#1088#1099#1090
          Visible = False
        end
      end
      object LevelOrg: TcxGridLevel
        GridView = ViewUsers
      end
    end
  end
  object QuerySort: TUniQuery
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
      '  sp.id id_sp,'
      '  sp."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'",'
      '  sp."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'",'
      '  sp."'#1082#1086#1076'_'#1090#1086#1074#1072#1088#1072'",'
      '  s.id id_sort,'
      '  s.name,'
      '  s.uni_name ,'
      '  s.reg_name ,'
      '  s."'#1089#1090#1077#1073#1083#1077#1081'",'
      '  s."'#1082#1086#1076'_'#1090#1080#1087#1072'",'
      '  s."'#1082#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081'"'
      'FROM'
      '  "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090'_'#1087#1083#1072#1085#1090#1072#1094#1080#1103'" sp'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090#1072'" s ON (sp."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'" = s.id)')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1090#1080#1087#1072
    Left = 339
    Top = 221
  end
  object dsSort: TDataSource
    DataSet = QuerySort
    Left = 252
    Top = 249
  end
  object QueryType: TUniQuery
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
      'SELECT t.* FROM "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1090#1080#1087#1099'" t')
    Left = 135
    Top = 153
  end
  object dsType: TDataSource
    DataSet = QueryType
    Left = 56
    Top = 149
  end
  object Style1: TcxStyleRepository
    Left = 184
    Top = 168
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInactiveBorder
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle2: TcxStyle
    end
  end
end
