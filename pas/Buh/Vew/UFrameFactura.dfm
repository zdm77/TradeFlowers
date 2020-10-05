object FrameFactura: TFrameFactura
  Left = 0
  Top = 0
  Width = 910
  Height = 470
  TabOrder = 0
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 910
    Height = 33
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 910
    ExplicitHeight = 33
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
            BeginGroup = True
            Visible = True
            ItemName = 'btnRazdel'
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
          end>
      end
      inherited btnAdd: TdxBarLargeButton
        Visible = ivNever
        OnClick = btnAddClick
      end
      inherited btnEdit: TdxBarLargeButton
        OnClick = btnEditClick
      end
      inherited btnDel: TdxBarLargeButton
        Visible = ivNever
        OnClick = btnDelClick
      end
      inherited btnRefresh: TdxBarLargeButton
        OnClick = btnRefreshClick
      end
      inherited btnPrint: TdxBarLargeButton
        Visible = ivAlways
        DropDownMenu = FrameTopPanel1.pmФактура
      end
      inherited btnRazdel: TdxBarLargeButton
        Visible = ivAlways
        OnClick = FrameTopPanel1btnRazdelClick
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
  object GridFactura: TcxGrid
    Left = 0
    Top = 70
    Width = 910
    Height = 400
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object ViewFactura: TcxGridDBBandedTableView
      OnDblClick = ViewFacturaDblClick
      Navigator.Buttons.CustomButtons = <>
      OnCustomDrawCell = ViewFacturaCustomDrawCell
      DataController.DataSource = dsFactura
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsCustomize.BandsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = #1060#1072#1082#1090#1091#1088#1072
        end
        item
          Caption = #1047#1072#1082#1091#1087#1082#1072
        end>
      object ColumnКодСтатус: TcxGridDBBandedColumn
        DataBinding.FieldName = #1082#1086#1076'_'#1089#1090#1072#1090#1091#1089#1072
        Visible = False
        Width = 84
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object ColumnNum: TcxGridDBBandedColumn
        Caption = #1053#1086#1084#1077#1088
        DataBinding.FieldName = #1085#1086#1084#1077#1088
        Width = 78
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object ColumnДатаЗакуп: TcxGridDBBandedColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = #1076#1072#1090#1072'_'#1079#1072#1082#1091#1087#1082#1080
        Width = 79
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object ColumnМаркировка: TcxGridDBBandedColumn
        Caption = #1052#1072#1088#1082#1080#1088#1086#1074#1082#1072
        DataBinding.FieldName = 'm_uni_name'
        Width = 139
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object ColumnFBPЗакуп: TcxGridDBBandedColumn
        Caption = 'FB'
        DataBinding.FieldName = 'fb_zakup'
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object ColumnСтеблейЗакуп: TcxGridDBBandedColumn
        Caption = #1057#1090#1077#1073#1083#1077#1081
        DataBinding.FieldName = 'st_zakup'
        Width = 59
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object ColumnИтогЗакуп: TcxGridDBBandedColumn
        Caption = #1048#1090#1086#1075' $'
        DataBinding.FieldName = 'itog_zakup'
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object ColumnFB: TcxGridDBBandedColumn
        Caption = 'FB'
        DataBinding.FieldName = 'fb_fact'
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object ColumnСтеблей: TcxGridDBBandedColumn
        Caption = #1057#1090#1077#1073#1083#1077#1081
        DataBinding.FieldName = 'st_fact'
        Width = 63
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object ColumnИтог: TcxGridDBBandedColumn
        Caption = #1048#1090#1086#1075' $'
        DataBinding.FieldName = 'itog_fact'
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object ColumnПлнатация: TcxGridDBBandedColumn
        Caption = #1055#1083#1072#1085#1090#1072#1094#1080#1103
        DataBinding.FieldName = 'p_reg_name'
        Width = 127
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object ColumnСтатус: TcxGridDBBandedColumn
        Caption = #1057#1090#1072#1090#1091#1089
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
    end
    object LevelOrg: TcxGridLevel
      GridView = ViewFactura
    end
  end
  object Group1: TcxGroupBox
    Left = 0
    Top = 33
    Align = alTop
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 2
    Height = 37
    Width = 910
    object edtOt: TDateTimePicker
      Left = 32
      Top = 10
      Width = 186
      Height = 21
      Date = 44109.000000000000000000
      Time = 0.510530624997045400
      TabOrder = 0
      OnChange = edtOtChange
    end
    object edtDateDo: TDateTimePicker
      Left = 224
      Top = 6
      Width = 186
      Height = 21
      Date = 44109.000000000000000000
      Time = 0.510530624997045400
      TabOrder = 1
    end
  end
  object QueryFactura: TUniQuery
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
      '  sum(fd.fb) AS fb_fact,'
      '  sum(fd."'#1089#1090#1077#1073#1083#1077#1081'") AS st_fact,'
      '  sum(fd."'#1089#1090#1077#1073#1083#1077#1081'" * fd."'#1094#1077#1085#1072'") AS itog_fact,'
      '  sum(zd.fb) AS fb_zakup,'
      '  sum(zd."'#1089#1090#1077#1073#1083#1077#1081'") AS st_zakup,'
      '  sum(zd."'#1089#1090#1077#1073#1083#1077#1081'" * zd."'#1094#1077#1085#1072'") AS itog_zakup,'
      '  f.id,'
      '  f."'#1085#1086#1084#1077#1088'",'
      '  f."'#1076#1072#1090#1072'_'#1092#1072#1082#1090#1091#1088#1099'",'
      '  f."'#1082#1086#1076'_'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103'",'
      '  f."'#1082#1086#1076'_'#1089#1090#1072#1090#1091#1089#1072'",'
      '  f."'#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072'",'
      '  f."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'",'
      '  f."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'",'
      '  m.uni_name AS m_uni_name,'
      '  p.uni_name AS p_uni_name,'
      '  p.name AS p_name,'
      '  p.reg_name AS p_reg_name,'
      '  m.name AS m_name,'
      '  m.reg_name AS m_reg_name,'
      '  z."'#1076#1072#1090#1072'_'#1079#1072#1082#1091#1087#1082#1080'",'
      '  t.name AS t_name,'
      '  t.uni_name AS t_uni_name,'
      '  t.reg_name AS t_reg_name,'
      '  t1.name t1_name,'
      '  t1.uni_name t1_uni_name,'
      '  t1.reg_name t1_reg_name'
      'FROM'
      '  "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1092#1072#1082#1090#1091#1088#1072'_'#1076#1077#1090#1072#1083#1100'" fd'
      
        '  INNER JOIN "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1092#1072#1082#1090#1091#1088#1099'" f ON (f.id = fd."'#1082#1086#1076'_'#1092#1072#1082#1090#1091#1088#1099'"' +
        ')'
      
        '  INNER JOIN "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1091#1087#1082#1080'_'#1076#1077#1090#1072#1083#1100'" zd ON (fd."'#1082#1086#1076'_'#1076#1077#1090#1072#1083#1080#1079 +
        '_'#1079#1072#1082#1091#1087#1082#1080'" = zd.id)'
      
        '  INNER JOIN "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1091#1087#1082#1080'" z ON (z.id = zd."'#1082#1086#1076'_'#1079#1072#1082#1091#1087#1082#1080'"' +
        ')'
      
        '  INNER JOIN "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"."'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'" m ON (m.id = f."'#1082#1086#1076'_'#1084#1072#1088#1082#1080 +
        #1088#1086#1074#1082#1080'")'
      
        '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" p ON (p.id = fd."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072 +
        #1094#1080#1080'")'
      
        '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1088#1086#1076#1091#1082#1094#1080#1103'" pr ON (zd."'#1082#1086#1076'_'#1090#1086#1074#1072#1088#1072'" = pr' +
        '.id)'
      '  AND (fd."'#1082#1086#1076'_'#1090#1086#1074#1072#1088#1072'" = pr.id)'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1090#1080#1087#1099'" t ON (pr."'#1082#1086#1076'_'#1090#1080#1087#1072'" = t.id)'
      
        '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1088#1086#1076#1091#1082#1094#1080#1103'" pr1 ON (zd."'#1082#1086#1076'_'#1090#1086#1074#1072#1088#1072'" = p' +
        'r1.id)'
      '  AND (fd."'#1082#1086#1076'_'#1090#1086#1074#1072#1088#1072'" = pr1.id)'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1090#1080#1087#1099'" t1 ON (pr1."'#1082#1086#1076'_'#1090#1080#1087#1072'" = t1.id)'
      'GROUP BY'
      '  f.id,'
      '  f."'#1085#1086#1084#1077#1088'",'
      '  f."'#1076#1072#1090#1072'_'#1092#1072#1082#1090#1091#1088#1099'",'
      '  f."'#1082#1086#1076'_'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103'",'
      '  f."'#1082#1086#1076'_'#1089#1090#1072#1090#1091#1089#1072'",'
      '  f."'#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072'",'
      '  f."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'",'
      '  f."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'",'
      '  m.uni_name,'
      '  p.uni_name,'
      '  p.name,'
      '  p.reg_name,'
      '  m.name,'
      '  m.reg_name,'
      '  z."'#1076#1072#1090#1072'_'#1079#1072#1082#1091#1087#1082#1080'",'
      '  t.name,'
      '  t.uni_name,'
      '  t.reg_name,'
      '  t1.name,'
      '  t1.uni_name,'
      '  t1.reg_name')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    BeforeFetch = QueryFacturaBeforeFetch
    AfterFetch = QueryFacturaAfterFetch
    Left = 480
    Top = 208
  end
  object dsFactura: TDataSource
    DataSet = QueryFactura
    Left = 480
    Top = 272
  end
  object Query1: TUniQuery
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
      '  sum(fd.fb) AS fb_fact,'
      '  sum(fd."'#1089#1090#1077#1073#1083#1077#1081'") AS st_fact,'
      '  sum(fd."'#1089#1090#1077#1073#1083#1077#1081'" * fd."'#1094#1077#1085#1072'") AS itog_fact,'
      '  sum(zd.fb) AS fb_zakup,'
      '  sum(zd."'#1089#1090#1077#1073#1083#1077#1081'") AS st_zakup,'
      '  sum(zd."'#1089#1090#1077#1073#1083#1077#1081'" * zd."'#1094#1077#1085#1072'") AS itog_zakup,'
      '  f.id,'
      '  f."'#1085#1086#1084#1077#1088'",'
      '  f."'#1076#1072#1090#1072'_'#1092#1072#1082#1090#1091#1088#1099'",'
      '  f."'#1082#1086#1076'_'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103'",'
      '  f."'#1082#1086#1076'_'#1089#1090#1072#1090#1091#1089#1072'",'
      '  f."'#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072'",'
      '  f."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'",'
      '  f."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'",'
      '  m.uni_name AS m_uni_name,'
      '  p.uni_name AS p_uni_name,'
      '  p.name AS p_name,'
      '  p.reg_name AS p_reg_name,'
      '  m.name AS m_name,'
      '  m.reg_name AS m_reg_name,'
      '  z."'#1076#1072#1090#1072'_'#1079#1072#1082#1091#1087#1082#1080'",'
      '  t.name AS t_name,'
      '  t.uni_name AS t_uni_name,'
      '  t.reg_name AS t_reg_name,'
      '  t1.name t1_name,'
      '  t1.uni_name t1_uni_name,'
      '  t1.reg_name t1_reg_name'
      'FROM'
      '  "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1092#1072#1082#1090#1091#1088#1072'_'#1076#1077#1090#1072#1083#1100'" fd'
      
        '  INNER JOIN "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1092#1072#1082#1090#1091#1088#1099'" f ON (f.id = fd."'#1082#1086#1076'_'#1092#1072#1082#1090#1091#1088#1099'"' +
        ')'
      
        '  INNER JOIN "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1091#1087#1082#1080'_'#1076#1077#1090#1072#1083#1100'" zd ON (fd."'#1082#1086#1076'_'#1076#1077#1090#1072#1083#1080#1079 +
        '_'#1079#1072#1082#1091#1087#1082#1080'" = zd.id)'
      
        '  INNER JOIN "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1091#1087#1082#1080'" z ON (z.id = zd."'#1082#1086#1076'_'#1079#1072#1082#1091#1087#1082#1080'"' +
        ')'
      
        '  INNER JOIN "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"."'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'" m ON (m.id = f."'#1082#1086#1076'_'#1084#1072#1088#1082#1080 +
        #1088#1086#1074#1082#1080'")'
      
        '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" p ON (p.id = fd."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072 +
        #1094#1080#1080'")'
      
        '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1088#1086#1076#1091#1082#1094#1080#1103'" pr ON (zd."'#1082#1086#1076'_'#1090#1086#1074#1072#1088#1072'" = pr' +
        '.id)'
      '  AND (fd."'#1082#1086#1076'_'#1090#1086#1074#1072#1088#1072'" = pr.id)'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1090#1080#1087#1099'" t ON (pr."'#1082#1086#1076'_'#1090#1080#1087#1072'" = t.id)'
      
        '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1088#1086#1076#1091#1082#1094#1080#1103'" pr1 ON (zd."'#1082#1086#1076'_'#1090#1086#1074#1072#1088#1072'" = p' +
        'r1.id)'
      '  AND (fd."'#1082#1086#1076'_'#1090#1086#1074#1072#1088#1072'" = pr1.id)'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1090#1080#1087#1099'" t1 ON (pr1."'#1082#1086#1076'_'#1090#1080#1087#1072'" = t1.id)'
      'GROUP BY'
      '  f.id,'
      '  f."'#1085#1086#1084#1077#1088'",'
      '  f."'#1076#1072#1090#1072'_'#1092#1072#1082#1090#1091#1088#1099'",'
      '  f."'#1082#1086#1076'_'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103'",'
      '  f."'#1082#1086#1076'_'#1089#1090#1072#1090#1091#1089#1072'",'
      '  f."'#1076#1072#1090#1072'_'#1074#1099#1083#1077#1090#1072'",'
      '  f."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'",'
      '  f."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'",'
      '  m.uni_name,'
      '  p.uni_name,'
      '  p.name,'
      '  p.reg_name,'
      '  m.name,'
      '  m.reg_name,'
      '  z."'#1076#1072#1090#1072'_'#1079#1072#1082#1091#1087#1082#1080'",'
      '  t.name,'
      '  t.uni_name,'
      '  t.reg_name,'
      '  t1.name,'
      '  t1.uni_name,'
      '  t1.reg_name')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    BeforeFetch = QueryFacturaBeforeFetch
    AfterFetch = QueryFacturaAfterFetch
    Left = 224
    Top = 224
  end
end
