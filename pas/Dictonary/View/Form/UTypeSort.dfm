object fTypeSort: TfTypeSort
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = #1055#1088#1086#1076#1091#1082#1090
  ClientHeight = 174
  ClientWidth = 352
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
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
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
    TabOrder = 0
    ExplicitLeft = 7
    ExplicitWidth = 441
    ExplicitHeight = 204
    Height = 174
    Width = 352
    object edtType: TcxLookupComboBox
      Left = 108
      Top = 3
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsType
      Properties.OnCloseUp = edtTypePropertiesCloseUp
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
      Width = 213
    end
    object lblDetail: TcxLabel
      Left = 7
      Top = 5
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
    object btnSel: TcxButton
      Left = 246
      Top = 140
      Width = 75
      Height = 25
      Caption = #1042#1099#1073#1088#1072#1090#1100
      Enabled = False
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 2
      OnClick = btnSelClick
    end
    object btnCancel: TcxButton
      Left = 3
      Top = 140
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 3
      OnClick = btnCancelClick
    end
    object cxLabel1: TcxLabel
      Left = 7
      Top = 32
      Caption = #1057#1086#1088#1090':'
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
    object edtSort: TcxLookupComboBox
      Left = 108
      Top = 30
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'uni_name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsSort
      Properties.OnCloseUp = edtSortPropertiesCloseUp
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
      TabOrder = 5
      Width = 213
    end
    object edtSortView: TcxTextEdit
      Left = 108
      Top = 57
      Properties.OnChange = edtSortViewPropertiesChange
      TabOrder = 6
      Width = 213
    end
    object btnAdd: TcxButton
      Left = 319
      Top = 57
      Width = 26
      Height = 21
      Caption = '+'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 7
      OnClick = btnAddClick
    end
    object edtRusName: TcxTextEdit
      Left = 108
      Top = 86
      Properties.OnChange = edtSortViewPropertiesChange
      TabOrder = 8
      Width = 213
    end
    object edtRegName: TcxTextEdit
      Left = 108
      Top = 113
      Properties.OnChange = edtSortViewPropertiesChange
      TabOrder = 9
      Width = 213
    end
  end
  object lblUniName: TcxLabel
    Left = 7
    Top = 59
    Caption = #1052#1077#1078#1076#1091#1085#1072#1088#1086#1076#1085#1099#1081':'
    Transparent = True
  end
  object lblName: TcxLabel
    Left = 7
    Top = 86
    Caption = #1056#1091#1089#1089#1082#1080#1081':'
    Transparent = True
  end
  object lblRegName: TcxLabel
    Left = 7
    Top = 113
    Caption = #1056#1077#1075#1080#1086#1085#1072#1083#1100#1085#1099#1081':'
    Transparent = True
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
      'select * from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1090#1080#1087#1099'"')
    Left = 35
    Top = 185
  end
  object dsType: TDataSource
    DataSet = QueryType
    Left = 108
    Top = 193
  end
  object dsSort: TDataSource
    DataSet = QuerySort
    Left = 364
    Top = 209
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
      'select * from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090#1072'"')
    Left = 291
    Top = 201
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
      'select * from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1090#1080#1087#1099'"')
    Left = 43
    Top = 193
  end
end
