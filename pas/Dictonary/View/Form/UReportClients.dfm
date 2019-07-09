object FReportClients: TFReportClients
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1054#1090#1095#1077#1090' - '#1050#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099
  ClientHeight = 92
  ClientWidth = 225
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
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 60
    Width = 225
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 60
    ExplicitWidth = 225
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
        Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
        Hint = #1042#1099#1087#1086#1083#1085#1080#1090#1100
        LargeImageIndex = 12
        OnClick = FrameSave1btnSaveClick
      end
    end
  end
  object Group1: TcxGroupBox
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
    TabOrder = 1
    Height = 60
    Width = 225
    object chkStat: TcxCheckBox
      Left = 3
      Top = 30
      Caption = #1057#1090#1072#1090#1091#1089':'
      TabOrder = 0
      Transparent = True
      OnClick = chkStatClick
      Width = 65
    end
    object edtStat: TcxLookupComboBox
      Left = 79
      Top = 30
      Enabled = False
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsStat
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
      Width = 138
    end
    object edtOrder: TcxComboBox
      Left = 81
      Top = 3
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        #1042' '#1087#1086#1088#1103#1076#1082#1077' '#1074#1074#1086#1076#1072
        #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        #1057#1090#1072#1090#1091#1089)
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      Text = #1042' '#1087#1086#1088#1103#1076#1082#1077' '#1074#1074#1086#1076#1072
      Width = 138
    end
    object cxLabel1: TcxLabel
      Left = 3
      Top = 5
      Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072': '
      Transparent = True
    end
  end
  object QueryStat: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1088#1086#1083#1080'"'
      '  (id, name, uni_name, reg_name)'
      'VALUES'
      '  (:id, :name, :uni_name, :reg_name)')
    SQLDelete.Strings = (
      'DELETE FROM "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1088#1086#1083#1080'"'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1088#1086#1083#1080'"'
      'SET'
      
        '  id = :id, name = :name, uni_name = :uni_name, reg_name = :reg_' +
        'name'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1088#1086#1083#1080'"'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT id, name, uni_name, reg_name FROM "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1088#1086#1083#1080'"'
      'WHERE'
      '  id = :id')
    Connection = DM1.db1
    SQL.Strings = (
      'SELECT '
      ' * from "'#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099'"."'#1089#1090#1072#1090#1091#1089#1099'"')
    Left = 64
    Top = 48
  end
  object dsStat: TDataSource
    DataSet = QueryStat
    Left = 64
    Top = 112
  end
end
