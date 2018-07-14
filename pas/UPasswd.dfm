object FPasswd: TFPasswd
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
  ClientHeight = 223
  ClientWidth = 348
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Group1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
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
    Height = 189
    Width = 348
    object lblUser: TcxLabel
      Left = 5
      Top = 39
      Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100':'
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
    object edtName: TcxLookupComboBox
      Left = 121
      Top = 37
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end
        item
          FieldName = 'login'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsUsers
      Properties.OnChange = edtNamePropertiesChange
      Properties.OnCloseUp = edtNamePropertiesCloseUp
      Properties.OnEditValueChanged = edtNamePropertiesEditValueChanged
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
      TabOrder = 4
      Width = 221
    end
    object lblPasswd: TcxLabel
      Left = 5
      Top = 62
      Caption = #1055#1072#1088#1086#1083#1100':'
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      Transparent = True
    end
    object lblOrg: TcxLabel
      Left = 5
      Top = 16
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103':'
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
    object edtOrg: TcxLookupComboBox
      Left = 121
      Top = 14
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsOrg
      Properties.OnCloseUp = edtOrgPropertiesCloseUp
      Properties.OnEditValueChanged = edtOrgPropertiesEditValueChanged
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
      TabOrder = 2
      Width = 221
    end
    object lblLang: TcxLabel
      Left = 5
      Top = 85
      Caption = #1071#1079#1099#1082' '#1080#1085#1090#1077#1088#1092#1077#1081#1089#1072':'
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      Transparent = True
    end
    object edtLang: TcxComboBox
      Left = 121
      Top = 83
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        #1056#1091#1089#1089#1082#1080#1081
        'English'
        'Espa'#241'ol'
        '')
      Properties.OnEditValueChanged = edtLangPropertiesEditValueChanged
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
      TabOrder = 7
      Text = #1056#1091#1089#1089#1082#1080#1081
      Width = 221
    end
    object lbl1: TcxLabel
      Left = 5
      Top = 110
      Caption = #1071#1079#1099#1082' '#1076#1072#1085#1085#1099#1093
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      Transparent = True
    end
    object edtLangData: TcxComboBox
      Left = 121
      Top = 108
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        #1056#1091#1089#1089#1082#1080#1081
        'English'
        'Espa'#241'ol')
      Properties.OnEditValueChanged = edtLangPropertiesEditValueChanged
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
      TabOrder = 9
      Text = #1056#1091#1089#1089#1082#1080#1081
      Width = 221
    end
    object chkSync: TCheckBox
      Left = 102
      Top = 325
      Width = 335
      Height = 17
      Caption = #1057#1080#1085#1093#1088#1086#1085#1080#1079#1080#1088#1086#1074#1072#1090#1100' '#1083#1086#1082#1072#1083#1100#1085#1091#1102' '#1073#1072#1079#1091' '#1076#1072#1085#1085#1099#1093
      TabOrder = 10
    end
    object edt1: TEdit
      Left = 72
      Top = 215
      Width = 121
      Height = 21
      TabOrder = 11
      Text = 'edt1'
      Visible = False
    end
    object edtPasswd: TcxTextEdit
      Left = 121
      Top = 60
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = '*'
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
      Text = '1977'
      OnKeyDown = edtPasswdKeyDown
      OnKeyUp = edtPasswdKeyUp
      Width = 221
    end
    object cxLabel1: TcxLabel
      Left = 7
      Top = 157
      Caption = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093':'
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      Transparent = True
    end
    object edtDB: TcxComboBox
      Left = 121
      Top = 155
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'MAIN'
        'TEST'
        'LOCAL')
      Properties.OnChange = edtDBPropertiesChange
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
      TabOrder = 13
      Text = 'MAIN'
      Width = 221
    end
    object chkAdmin: TcxCheckBox
      Left = 5
      Top = 130
      Caption = #1057#1091#1087#1077#1088#1072#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088
      TabOrder = 14
      OnClick = chkAdminClick
      Width = 218
    end
  end
  object dxbrmngr1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = FOsn.imgMidle
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 248
    Top = 64
    DockControlHeights = (
      0
      0
      0
      34)
    object Bardxbrmngr1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsBottom
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsBottom
      FloatLeft = 374
      FloatTop = 8
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnCancel'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'chk1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnOk'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btnCancel: TdxBarLargeButton
      Caption = #1042#1099#1093#1086#1076
      Category = 0
      Hint = #1042#1099#1093#1086#1076
      Visible = ivAlways
      LargeImageIndex = 16
      OnClick = btnCancelClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object btnOk: TdxBarLargeButton
      Align = iaRight
      Caption = #1042#1093#1086#1076
      Category = 0
      Enabled = False
      Hint = #1042#1093#1086#1076
      Visible = ivAlways
      LargeImageIndex = 1
      OnClick = btnOkClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object chk1: TcxBarEditItem
      Category = 0
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
    end
  end
  object QueryUsers: TUniQuery
    Connection = DM1.db1
    SQL.Strings = (
      'select * from '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'.'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080)
    AfterScroll = QueryUsersAfterScroll
    Left = 176
    Top = 232
  end
  object dsUsers: TUniDataSource
    DataSet = QueryUsers
    Left = 96
    Top = 80
  end
  object dsOrg: TUniDataSource
    DataSet = QueryOrg
    Left = 8
    Top = 32
  end
  object QueryOrg: TUniQuery
    Connection = DM1.db1
    SQL.Strings = (
      'select * from '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'.'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080' where id<>1')
    Left = 284
    Top = 234
  end
  object cxlclzr1: TcxLocalizer
    Left = 56
    Top = 72
  end
  object Query1: TUniQuery
    Connection = DM1.db1
    SQL.Strings = (
      'select * from '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'.'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080)
    Left = 184
    Top = 80
  end
  object QueryProduct: TUniQuery
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
      'where '#1089#1082#1088#1099#1090'=0'
      'order by id')
    Left = 87
    Top = 341
  end
  object dset1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 264
    Top = 328
  end
  object dsPr1: TDataSource
    DataSet = dset1
    Left = 192
    Top = 329
  end
end
