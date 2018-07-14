object FNewUser: TFNewUser
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
  ClientHeight = 293
  ClientWidth = 637
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
  object Page1: TcxPageControl
    Left = 0
    Top = 0
    Width = 637
    Height = 261
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = tabОсн
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    ClientRectBottom = 261
    ClientRectRight = 637
    ClientRectTop = 24
    object tabОсн: TcxTabSheet
      Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099
      ImageIndex = 0
      object Group2: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        PanelStyle.Active = True
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 0
        Height = 237
        Width = 637
        object lblKorp: TLabel
          Left = 5
          Top = 31
          Width = 45
          Height = 13
          Caption = #1060'.'#1048'.'#1054'.:*'
        end
        object lblConfitm: TLabel
          Left = 295
          Top = 146
          Width = 47
          Height = 13
          Caption = 'lblConfitm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          ParentFont = False
        end
        object lblLogin: TLabel
          Left = 5
          Top = 7
          Width = 35
          Height = 13
          Caption = 'Login:*'
        end
        object edtRole: TcxLookupComboBox
          Left = 112
          Top = 50
          Properties.DropDownListStyle = lsFixedList
          Properties.KeyFieldNames = 'id'
          Properties.ListColumns = <
            item
              FieldName = 'uni_name'
            end
            item
              FieldName = 'name'
            end
            item
              FieldName = 'reg_name'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsRole
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 1
          Width = 265
        end
        object Label2: TcxLabel
          Left = 5
          Top = 52
          Caption = #1056#1086#1083#1100':'
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          Properties.LineOptions.Alignment = cxllaBottom
          Transparent = True
        end
        object Label1: TcxLabel
          Left = 5
          Top = 75
          Caption = #1058#1077#1083#1077#1092#1086#1085':'
          Properties.LineOptions.Alignment = cxllaBottom
          Transparent = True
        end
        object edtPhone: TcxTextEdit
          Left = 112
          Top = 73
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 3
          Width = 265
        end
        object edtEmail: TcxTextEdit
          Left = 112
          Top = 96
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 5
          OnKeyUp = edtEmailKeyUp
          Width = 265
        end
        object Label4: TcxLabel
          Left = 5
          Top = 98
          Caption = 'E-Mail:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.LineOptions.Alignment = cxllaBottom
          Transparent = True
        end
        object LabelPass: TcxLabel
          Left = 5
          Top = 121
          Caption = #1055#1072#1088#1086#1083#1100':*'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.LineOptions.Alignment = cxllaBottom
          Transparent = True
        end
        object edtPass: TcxTextEdit
          Left = 112
          Top = 119
          Properties.EchoMode = eemPassword
          Properties.PasswordChar = '*'
          Properties.OnChange = edtPassPropertiesChange
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 7
          OnEnter = edtPassEnter
          OnKeyUp = edtPassKeyUp
          Width = 177
        end
        object edtPasswdConfirm: TcxTextEdit
          Left = 112
          Top = 142
          Properties.EchoMode = eemPassword
          Properties.PasswordChar = '*'
          Properties.OnChange = edtPasswdConfirmPropertiesChange
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 9
          OnEnter = edtPasswdConfirmEnter
          Width = 177
        end
        object LabelConfPass: TcxLabel
          Left = 5
          Top = 144
          Caption = #1055#1086#1074#1090#1086#1088#1080#1090#1077' '#1087#1072#1088#1086#1083#1100':*'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clBlack
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Properties.LineOptions.Alignment = cxllaBottom
          Transparent = True
        end
        object cxlbl3: TcxLabel
          Left = 5
          Top = 165
          Caption = #1040#1076#1088#1077#1089':'
          Properties.LineOptions.Alignment = cxllaBottom
          Transparent = True
        end
        object mmoAdress: TcxMemo
          Left = 112
          Top = 165
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 12
          Height = 35
          Width = 278
        end
        object btnAdres: TcxButton
          Left = 390
          Top = 165
          Width = 26
          Height = 15
          Caption = '...'
          LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 13
          OnClick = btnAdresClick
        end
        object edtName: TcxTextEdit
          Left = 112
          Top = 27
          ParentShowHint = False
          Properties.OnChange = edtNamePropertiesChange
          ShowHint = True
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 0
          OnKeyUp = edtNameKeyUp
          Width = 265
        end
        object edtLogin: TcxTextEdit
          Left = 112
          Top = 3
          ParentShowHint = False
          Properties.OnChange = edtNamePropertiesChange
          ShowHint = True
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 14
          OnKeyUp = edtNameKeyUp
          Width = 265
        end
        object edtOrg: TcxLookupComboBox
          Left = 112
          Top = 204
          Properties.DropDownListStyle = lsFixedList
          Properties.KeyFieldNames = 'id'
          Properties.ListColumns = <
            item
              FieldName = 'name'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsOrg
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 15
          Width = 265
        end
        object lblOrg: TcxLabel
          Left = 5
          Top = 206
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
      end
    end
    object tabБезопасность: TcxTabSheet
      Caption = #1041#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1100
      ImageIndex = 1
      inline FrameTopPanel1: TFrameTopPanel
        Left = 0
        Top = 0
        Width = 637
        Height = 38
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 637
        ExplicitHeight = 38
        inherited barProduct: TdxBarManager
          DockControlHeights = (
            0
            0
            69
            0)
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
            Caption = #1056#1072#1079#1088#1077#1096#1080#1090#1100
            Hint = #1056#1072#1079#1088#1077#1096#1080#1090#1100
          end
        end
      end
      object GridStatWork: TcxGrid
        Left = 0
        Top = 38
        Width = 637
        Height = 199
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfOffice11
        object ViewStatWork: TcxGridDBTableView
          OnDblClick = ViewStatWorkDblClick
          Navigator.Buttons.CustomButtons = <>
          FilterBox.CustomizeButtonAlignment = fbaLeft
          FilterBox.Position = fpTop
          DataController.DataSource = dsAccess
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.ApplyChanges = fracImmediately
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsView.GroupByBox = False
          OptionsView.ShowColumnFilterButtons = sfbAlways
          object ColumnDate: TcxGridDBColumn
            Caption = #1044#1072#1090#1072
            DataBinding.FieldName = 'date_add'
          end
          object ViewStatWorkname_pc: TcxGridDBColumn
            Caption = #1048#1084#1103' '#1082#1086#1084#1087#1100#1102#1090#1077#1088#1072
            DataBinding.FieldName = 'name_pc'
            Width = 130
          end
          object ViewStatWorkid_hard: TcxGridDBColumn
            Caption = 'ID HDD'
            DataBinding.FieldName = 'id_hard'
            Width = 100
          end
          object ViewStatWorkmac: TcxGridDBColumn
            Caption = 'MAC-'#1072#1076#1088#1077#1089
            DataBinding.FieldName = 'mac'
            Width = 100
          end
          object ViewStatWorkaccount: TcxGridDBColumn
            Caption = #1051#1086#1075#1080#1085' '#1054#1057
            DataBinding.FieldName = 'account'
            Width = 138
          end
          object ViewStatWorkDBColumn: TcxGridDBColumn
            Caption = #1056#1072#1079#1088#1077#1096#1080#1090#1100
            DataBinding.FieldName = #1088#1072#1079#1088#1077#1096#1080#1090#1100
            Width = 81
          end
        end
        object LevelStatWork: TcxGridLevel
          GridView = ViewStatWork
        end
      end
    end
  end
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 261
    Width = 637
    Height = 32
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 261
    ExplicitWidth = 637
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
  object QueryRole: TUniQuery
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
      
        'select * from   "'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'"."'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'" where id<>1 order by' +
        ' name')
    Left = 60
    Top = 40
  end
  object dsRole: TDataSource
    DataSet = QueryRole
    Left = 60
    Top = 96
  end
  object Query1: TUniQuery
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
      
        'select * from   "'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'"."'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'" where id<>1 order by' +
        ' name')
    Left = 364
    Top = 72
  end
  object dsAccess: TDataSource
    DataSet = QueryAccess
    Left = 204
    Top = 152
  end
  object QueryAccess: TUniQuery
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
      'select * from "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1073#1077#1079#1086#1087#1072#1089#1085#1086#1089#1090#1100'"')
    Left = 204
    Top = 96
  end
  object QueryOrgUPD: TUniQuery
    Connection = DM1.db1
    SQL.Strings = (
      
        'select * from   "'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'"."'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'" where id<>1 order by' +
        ' name')
    Left = 176
    Top = 288
  end
  object dsOrg: TUniDataSource
    DataSet = QueryOrgUPD
    Left = 88
    Top = 296
  end
end
