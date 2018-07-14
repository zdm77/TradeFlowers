object FrameOplataPlant: TFrameOplataPlant
  Left = 0
  Top = 0
  Width = 1016
  Height = 444
  TabOrder = 0
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 1016
    Height = 38
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1016
    ExplicitHeight = 38
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
          end
          item
            Visible = True
            ItemName = 'btnExport'
          end
          item
            Visible = True
            ItemName = 'btnAWB'
          end
          item
            BeginGroup = True
            Visible = True
            ItemName = 'btnArch'
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
      inherited btnArch: TcxBarEditItem
        Visible = ivAlways
        Properties.OnEditValueChanged = FrameTopPanel1btnArchPropertiesEditValueChanged
      end
    end
  end
  object GridUsers: TcxGrid
    Left = 0
    Top = 38
    Width = 1016
    Height = 406
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object ViewStatWork: TcxGridDBTableView
      OnDblClick = ViewStatWorkDblClick
      Navigator.Buttons.CustomButtons = <>
      FilterBox.Visible = fvNever
      DataController.DataSource = dsOplataPlant
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$ ,0.00;$ -,0.00'
          Kind = skSum
          Column = ViewStatWork_3
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.ApplyChanges = fracImmediately
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Editing = False
      OptionsSelection.CellSelect = False
      OptionsView.Footer = True
      object ViewStatWorkname: TcxGridDBColumn
        Caption = #1055#1083#1072#1085#1090#1072#1094#1080#1103
        DataBinding.FieldName = 'name'
        Width = 200
      end
      object ViewStatWork_: TcxGridDBColumn
        Caption = #8470' '#1087'/'#1087
        DataBinding.FieldName = #1085#1086#1084#1077#1088'_'#1087#1087
      end
      object ViewStatWork_2: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1086#1087#1083#1072#1090#1099
        DataBinding.FieldName = #1076#1072#1090#1072'_'#1087#1087
        Width = 113
      end
      object ViewStatWork_3: TcxGridDBColumn
        Caption = #1057#1091#1084#1084#1072
        DataBinding.FieldName = #1089#1091#1084#1084#1072'_'#1087#1087
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
        Width = 114
      end
    end
    object LevelStatWork: TcxGridLevel
      GridView = ViewStatWork
    end
  end
  object QueryOplataPlant: TUniQuery
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
      'SELECT pl.name,'
      '       pl.brand,'
      '       pl.uni_name,'
      '       pl.reg_name,'
      '       opl.id,'
      '       opl."'#1085#1086#1084#1077#1088'_'#1087#1087'",'
      '       opl."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'",'
      '       opl."'#1076#1072#1090#1072'_'#1087#1087'",'
      '       opl."'#1089#1091#1084#1084#1072'_'#1087#1087'"'
      'FROM "'#1073#1091#1093'"."'#1073#1091#1093'_'#1086#1087#1083#1072#1090#1072'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" opl'
      
        '     INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pl ON (opl."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080 +
        #1080'" = pl.id) '
      'order by '#1076#1072#1090#1072'_'#1087#1087' DESC')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 480
    Top = 214
  end
  object dsOplataPlant: TDataSource
    DataSet = QueryOplataPlant
    Left = 480
    Top = 272
  end
  object QueryOplataPlant1: TUniQuery
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
