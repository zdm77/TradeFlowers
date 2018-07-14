object FPackingCorrection: TFPackingCorrection
  Left = 0
  Top = 0
  Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1072' '#1087#1072#1082#1080#1085#1075#1072
  ClientHeight = 461
  ClientWidth = 1044
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
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 1044
    Height = 38
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1044
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
            ItemName = 'btnRazdel'
          end
          item
            BeginGroup = True
            Visible = True
            ItemName = 'btnEdit'
          end
          item
            BeginGroup = True
            Visible = True
            ItemName = 'btnRefresh'
          end
          item
            BeginGroup = True
            Visible = True
            ItemName = 'btnPrint'
          end>
      end
      inherited btnEdit: TdxBarLargeButton
        Caption = #1050#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1072#1090#1100
        OnClick = btnEditClick
      end
      inherited btnSel: TdxBarLargeButton
        Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1100
        Hint = #1048#1089#1087#1086#1083#1085#1080#1090#1100
        Visible = ivAlways
        LargeImageIndex = 13
        OnClick = FrameTopPanel1btnSelClick
      end
      inherited btnRazdel: TdxBarLargeButton
        Caption = #1054#1090#1082#1072#1090#1080#1090#1100
        Hint = #1054#1090#1082#1072#1090#1080#1090#1100
        Visible = ivAlways
        LargeImageIndex = 21
        OnClick = btnRazdelClick
      end
    end
  end
  object GridAvtoPacking: TcxGrid
    Left = 0
    Top = 38
    Width = 1044
    Height = 291
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object ViewPacking: TcxGridDBBandedTableView
      OnDblClick = ViewPackingDblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsPackingCorrection
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '0 '#1096#1090'.'
          Kind = skSum
          Position = spFooter
          Column = ViewPackingDBBandedColumn3
        end
        item
          Kind = skSum
          Position = spFooter
          Column = ViewPackingDBBandedColumn2
        end
        item
          Kind = skSum
          Position = spFooter
          Column = ColumnИтог
        end
        item
          Format = '0.00 '#1082#1075'.'
          Kind = skSum
          Position = spFooter
          Column = ViewPackingDBBandedColumn4
        end
        item
          Format = '0.00 '#1082#1075'.'
          Kind = skSum
          Position = spFooter
          Column = ViewPacking__
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0 '#1096#1090'.'
          Kind = skSum
          Column = ViewPackingDBBandedColumn3
        end
        item
          Kind = skSum
          Column = ViewPackingDBBandedColumn2
        end
        item
          Kind = skSum
          Column = ColumnИтог
        end
        item
          Format = '0.00 '#1082#1075'.'
          Kind = skSum
          Column = ViewPackingDBBandedColumn4
        end
        item
          Format = '0.00 '#1082#1075'.'
          Kind = skSum
          Column = ViewPacking__
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      Bands = <
        item
          FixedKind = fkLeft
          Width = 375
        end
        item
          Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
          Width = 295
        end
        item
          Caption = #1042#1077#1089
          Width = 218
        end>
      object ViewPackingcode: TcxGridDBBandedColumn
        DataBinding.FieldName = 'code'
        Width = 101
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object ViewPackingDBBandedColumn: TcxGridDBBandedColumn
        DataBinding.FieldName = #1090#1080#1087
        Width = 121
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object ViewPackingDBBandedColumn1: TcxGridDBBandedColumn
        DataBinding.FieldName = #1076#1083#1080#1085#1072
        Width = 61
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object ViewPackingDBBandedColumn2: TcxGridDBBandedColumn
        Caption = #1057#1091#1084#1084#1072
        DataBinding.FieldName = #1080#1090#1086#1075
        Width = 99
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object ViewPackingDBBandedColumn3: TcxGridDBBandedColumn
        DataBinding.FieldName = #1089#1090#1077#1073#1083#1077#1081
        Width = 92
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object ViewPackingDBBandedColumn4: TcxGridDBBandedColumn
        Caption = #1042#1077#1089
        DataBinding.FieldName = #1074#1077#1089
        Width = 67
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object ViewPackingDBBandedColumn5: TcxGridDBBandedColumn
        Caption = #1050#1086#1088#1088#1077#1082#1090'.'
        DataBinding.FieldName = #1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1072
        Width = 77
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object ColumnИтог: TcxGridDBBandedColumn
        Caption = #1048#1090#1086#1075
        DataBinding.FieldName = #1080#1090#1086#1075'_'#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080
        Width = 79
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object ViewPacking_2: TcxGridDBBandedColumn
        Caption = #1050#1086#1088#1088#1077#1082#1090'.'
        DataBinding.FieldName = #1074#1077#1089'_'#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1072
        Width = 66
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object ViewPacking__: TcxGridDBBandedColumn
        Caption = #1048#1090#1086#1075
        DataBinding.FieldName = #1074#1077#1089'_'#1080#1090#1086#1075'_'#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object ColumnТип: TcxGridDBBandedColumn
        Caption = #1043#1088#1091#1087#1087#1072
        DataBinding.FieldName = #1075#1088#1091#1087#1087#1072
        Visible = False
        GroupIndex = 0
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object Column1Стебель: TcxGridDBBandedColumn
        Caption = '1 '#1057#1090#1077#1073#1083#1100
        DataBinding.FieldName = #1094#1077#1085#1072'_'#1089#1090#1077#1073#1083#1103
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
    end
    object GridAvtoPackingLevel1: TcxGridLevel
      GridView = ViewPacking
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 329
    Align = alBottom
    Caption = #1048#1090#1086#1075' '#1087#1072#1082#1080#1085#1075#1072
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 2
    Height = 132
    Width = 1044
    object cxGrid1: TcxGrid
      Left = 3
      Top = 15
      Width = 1038
      Height = 107
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      ExplicitLeft = 2
      ExplicitTop = 18
      ExplicitWidth = 1040
      ExplicitHeight = 112
      object cxGridDBBandedTableView1: TcxGridDBBandedTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsGroup
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = '0 '#1096#1090'.'
            Kind = skSum
            Position = spFooter
          end
          item
            Kind = skSum
            Position = spFooter
          end
          item
            Kind = skSum
            Position = spFooter
          end
          item
            Format = '0.00 '#1082#1075'.'
            Kind = skSum
            Position = spFooter
          end
          item
            Format = '0.00 '#1082#1075'.'
            Kind = skSum
            Position = spFooter
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '0 '#1096#1090'.'
            Kind = skSum
          end
          item
            Kind = skSum
          end
          item
            Kind = skSum
          end
          item
            Format = '0.00 '#1082#1075'.'
            Kind = skSum
          end
          item
            Format = '0.00 '#1082#1075'.'
            Kind = skSum
          end
          item
            Kind = skSum
            Column = cxGridDBBandedTableView1DBBandedColumn1
          end
          item
            Kind = skSum
            Column = cxGridDBBandedTableView1_
          end
          item
            Kind = skSum
            Column = cxGridDBBandedTableView1__
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooters = gfVisibleWhenExpanded
        Bands = <
          item
          end>
        object cxGridDBBandedTableView1code: TcxGridDBBandedColumn
          DataBinding.FieldName = 'code'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object cxGridDBBandedTableView1DBBandedColumn: TcxGridDBBandedColumn
          DataBinding.FieldName = #1090#1080#1087
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object cxGridDBBandedTableView1DBBandedColumn1: TcxGridDBBandedColumn
          DataBinding.FieldName = #1089#1090#1077#1073#1083#1077#1081
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object cxGridDBBandedTableView1_: TcxGridDBBandedColumn
          DataBinding.FieldName = #1080#1090#1086#1075'_'#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080
          Width = 107
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object cxGridDBBandedTableView1__: TcxGridDBBandedColumn
          DataBinding.FieldName = #1074#1077#1089'_'#1080#1090#1086#1075'_'#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080
          Width = 120
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
      end
      object cxGridLevel1: TcxGridLevel
        GridView = cxGridDBBandedTableView1
      end
    end
  end
  object QueryPackingCorrection: TUniQuery
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
      'SELECT t.code,'
      '       t.name AS "'#1090#1080#1087'",'
      '       tpd."'#1076#1083#1080#1085#1072'",'
      '       tpd."'#1082#1086#1076'_'#1087#1086#1076#1087#1072#1082#1080#1085#1075'",'
      '       sum(tpd."'#1094#1077#1085#1072'" * tpd."'#1082#1086#1083'_'#1074#1086'_'#1089#1090#1077#1073#1083#1077#1081'") as '#1080#1090#1086#1075','
      '       sum(tpd."'#1082#1086#1083'_'#1074#1086'_'#1089#1090#1077#1073#1083#1077#1081'") as '#1089#1090#1077#1073#1083#1077#1081','
      '       sum(tpd."'#1074#1077#1089'" * tpd."'#1082#1086#1083'_'#1074#1086'_'#1089#1090#1077#1073#1083#1077#1081'") as '#1074#1077#1089','
      '       COALESCE(tpd."'#1079#1085#1072#1082'_'#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080'", '#39#39') || '#39#39' ||'
      '        tpd."'#1079#1085#1072#1095#1077#1085#1080#1077'_'#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080'" as '#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1072','
      '       sum(tpd."'#1094#1077#1085#1072'_'#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1072'" * tpd."'#1082#1086#1083'_'#1074#1086'_'#1089#1090#1077#1073#1083#1077#1081'") as'
      '        '#1080#1090#1086#1075'_'#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080','
      '       COALESCE(tpd."'#1074#1077#1089'_'#1079#1085#1072#1082'_'#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080'", '#39#39') || '#39#39' ||'
      '        tpd."'#1074#1077#1089'_'#1079#1085#1072#1095#1077#1085#1080#1077'_'#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080'" as '#1074#1077#1089'_'#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1072','
      '       sum(tpd."'#1074#1077#1089'_'#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1072'" * tpd."'#1082#1086#1083'_'#1074#1086'_'#1089#1090#1077#1073#1083#1077#1081'") as'
      '        '#1074#1077#1089'_'#1080#1090#1086#1075'_'#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080','
      '        tp."'#1090#1080#1087'" as '#1075#1088#1091#1087#1087#1072
      'FROM "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1088#1086#1076#1091#1082#1090'_'#1089#1074#1086#1081#1089#1090#1074#1086'" ps'
      
        '     INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1088#1086#1076#1091#1082#1094#1080#1103'" p ON (ps."'#1082#1086#1076'_'#1090#1086#1074#1072#1088#1072'" = ' +
        'p.id)'
      '     INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1090#1080#1087#1099'" t ON (p."'#1082#1086#1076'_'#1090#1080#1087#1072'" = t.id)'
      
        '     INNER JOIN "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1090#1072#1084#1086#1078#1085#1103'_'#1087#1072#1082#1080#1085#1075'_'#1076#1077#1090#1072#1083#1100'" tpd ON (p.id' +
        ' ='
      '      tpd."'#1082#1086#1076'_'#1090#1086#1074#1072#1088#1072'")'
      
        '      inner join "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1090#1072#1084#1086#1078#1085#1103'_'#1087#1086#1076#1087#1072#1082#1080#1085#1075'" tp on tp.id=tpd' +
        '."'#1082#1086#1076'_'#1087#1086#1076#1087#1072#1082#1080#1085#1075'"'
      'where tp."'#1082#1086#1076'_'#1087#1072#1082#1080#1085#1075#1072'"=11'
      'GROUP BY t.code,'
      '         t.name,'
      '         tpd."'#1076#1083#1080#1085#1072'",'
      '         tpd."'#1082#1086#1076'_'#1087#1086#1076#1087#1072#1082#1080#1085#1075'",'
      '         COALESCE(tpd."'#1079#1085#1072#1082'_'#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080'", '#39#39') || '#39#39' ||'
      '          tpd."'#1079#1085#1072#1095#1077#1085#1080#1077'_'#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080'",'
      '         COALESCE(tpd."'#1074#1077#1089'_'#1079#1085#1072#1082'_'#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080'", '#39#39') || '#39#39' ||'
      '          tpd."'#1074#1077#1089'_'#1079#1085#1072#1095#1077#1085#1080#1077'_'#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080'",'
      '          tp."'#1090#1080#1087'"')
    Left = 239
    Top = 221
  end
  object dsPackingCorrection: TDataSource
    DataSet = QueryPackingCorrection
    Left = 120
    Top = 193
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
      'select * from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"'
      'order by id')
    Left = 319
    Top = 213
  end
  object Query2: TUniQuery
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
      'order by id')
    Left = 423
    Top = 229
  end
  object QueryGroup: TUniQuery
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
      'SELECT t.code,'
      '       t.name AS "'#1090#1080#1087'",'
      '       sum(tpd."'#1082#1086#1083'_'#1074#1086'_'#1089#1090#1077#1073#1083#1077#1081'") as '#1089#1090#1077#1073#1083#1077#1081','
      '       sum(tpd."'#1094#1077#1085#1072'_'#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1072'" * tpd."'#1082#1086#1083'_'#1074#1086'_'#1089#1090#1077#1073#1083#1077#1081'") as'
      '        '#1080#1090#1086#1075'_'#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080','
      '       sum(tpd."'#1074#1077#1089'_'#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1072'" * tpd."'#1082#1086#1083'_'#1074#1086'_'#1089#1090#1077#1073#1083#1077#1081'") as'
      '        '#1074#1077#1089'_'#1080#1090#1086#1075'_'#1082#1086#1088#1088#1077#1082#1090#1080#1088#1086#1074#1082#1080
      'FROM "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1088#1086#1076#1091#1082#1094#1080#1103'" p'
      '     INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1090#1080#1087#1099'" t ON (p."'#1082#1086#1076'_'#1090#1080#1087#1072'" = t.id)'
      
        '     INNER JOIN "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1090#1072#1084#1086#1078#1085#1103'_'#1087#1072#1082#1080#1085#1075'_'#1076#1077#1090#1072#1083#1100'" tpd ON (p.id' +
        ' ='
      '      tpd."'#1082#1086#1076'_'#1090#1086#1074#1072#1088#1072'")'
      '     inner join "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1090#1072#1084#1086#1078#1085#1103'_'#1087#1086#1076#1087#1072#1082#1080#1085#1075'" tp on tp.id ='
      '      tpd."'#1082#1086#1076'_'#1087#1086#1076#1087#1072#1082#1080#1085#1075'"'
      'where tp."'#1082#1086#1076'_'#1087#1072#1082#1080#1085#1075#1072'" = 14'
      'GROUP BY t.code,'
      '         t.name')
    Left = 423
    Top = 133
  end
  object dsGroup: TDataSource
    DataSet = QueryGroup
    Left = 304
    Top = 105
  end
end
