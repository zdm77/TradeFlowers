object Tamog_Packing: TTamog_Packing
  Left = 0
  Top = 0
  Width = 777
  Height = 446
  TabOrder = 0
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 777
    Height = 38
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 777
    ExplicitHeight = 38
    inherited barProduct: TdxBarManager
      PixelsPerInch = 96
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
      inherited btnRest: TdxBarLargeButton
        OnClick = btnRestClick
      end
      inherited btnRefresh: TdxBarLargeButton
        OnClick = btnRefreshClick
      end
    end
    inherited pmПедидо: TdxBarPopupMenu
      PixelsPerInch = 96
    end
    inherited pmЗаказ: TdxBarPopupMenu
      PixelsPerInch = 96
    end
    inherited pmФактура: TdxBarPopupMenu
      PixelsPerInch = 96
    end
    inherited pmClients: TdxBarPopupMenu
      PixelsPerInch = 96
    end
  end
  object GroupOsn: TcxGroupBox
    Left = 0
    Top = 38
    Align = alTop
    Caption = #1060#1080#1083#1100#1090#1088
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 1
    Height = 51
    Width = 777
    object cxLabel1: TcxLabel
      Left = 3
      Top = 19
      Caption = 'C:'
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 127
      Top = 19
      Caption = #1055#1086':'
      Transparent = True
    end
    object edtOt: TDateTimePicker
      Left = 24
      Top = 17
      Width = 97
      Height = 21
      Date = 41535.000000000000000000
      Time = 0.395268159722036200
      ShowCheckbox = True
      Checked = False
      TabOrder = 2
      OnCloseUp = edtOtCloseUp
      OnKeyDown = edtOtKeyDown
    end
    object edtDo: TDateTimePicker
      Left = 154
      Top = 17
      Width = 97
      Height = 21
      Date = 41535.000000000000000000
      Time = 0.395268159722036200
      ShowCheckbox = True
      Checked = False
      TabOrder = 3
      OnCloseUp = edtDoCloseUp
      OnKeyDown = edtDoKeyDown
    end
  end
  object GridUsers: TcxGrid
    Left = 0
    Top = 89
    Width = 777
    Height = 357
    Align = alClient
    TabOrder = 2
    LookAndFeel.Kind = lfOffice11
    object ViewUsers: TcxGridDBTableView
      OnDblClick = ViewUsersDblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsPacking
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
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object ViewUsers_: TcxGridDBColumn
        Caption = #1043#1086#1089'. '#1085#1086#1084#1077#1088
        DataBinding.FieldName = #1075#1086#1089'_'#1085#1086#1084#1077#1088
        Width = 105
      end
      object ViewUsers_1: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1079#1072#1075#1088#1091#1079#1082#1080
        DataBinding.FieldName = #1076#1072#1090#1072'_'#1079#1072#1075#1088#1091#1079#1082#1080
        Width = 98
      end
      object ViewUsers_2: TcxGridDBColumn
        Caption = #1060#1048#1054' '#1074#1086#1076#1080#1090#1077#1083#1103
        DataBinding.FieldName = #1092#1080#1086'_'#1074#1086#1076#1080#1090#1077#1083#1103
        Width = 201
      end
      object ViewUsers_3: TcxGridDBColumn
        Caption = #1058#1077#1083#1077#1092#1086#1085' '#1074#1086#1076#1080#1090#1077#1083#1103
        DataBinding.FieldName = #1090#1077#1083#1077#1092#1086#1085'_'#1074#1086#1076#1080#1090#1077#1083#1103
        Width = 166
      end
    end
    object LevelOrg: TcxGridLevel
      GridView = ViewUsers
    end
  end
  object QueryPacking: TUniQuery
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
      'select * from "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1090#1072#1084#1086#1078#1085#1103'_'#1087#1072#1082#1080#1085#1075'_'#1072#1074#1090#1086'"')
    Left = 480
    Top = 208
  end
  object dsPacking: TDataSource
    DataSet = QueryPacking
    Left = 480
    Top = 272
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
      
        'select * from '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'.'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080' where '#1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'=:i' +
        'd order by name')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 336
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 49
      end>
  end
end
