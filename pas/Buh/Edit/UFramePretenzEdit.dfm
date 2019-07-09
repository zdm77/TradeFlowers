object FramePretenzEdit: TFramePretenzEdit
  Left = 0
  Top = 0
  Width = 1100
  Height = 607
  TabOrder = 0
  object Page1: TcxPageControl
    Left = 0
    Top = 28
    Width = 1100
    Height = 579
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = TabОписание
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Blue'
    ExplicitTop = 30
    ClientRectBottom = 579
    ClientRectRight = 1100
    ClientRectTop = 24
    object TabОписание: TcxTabSheet
      Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1089#1074#1077#1076#1077#1085#1080#1103
      ImageIndex = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Group2: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        PanelStyle.Active = True
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 0
        Height = 555
        Width = 1100
        object Label4: TLabel
          Left = 14
          Top = 482
          Width = 91
          Height = 13
          Caption = #1057#1091#1084#1084#1072' '#1087#1088#1077#1090#1077#1085#1079#1080#1080':'
          Visible = False
        end
        object GroupФото: TcxGroupBox
          Left = 2
          Top = 2
          Align = alTop
          Caption = #1060#1086#1090#1086
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 0
          ExplicitWidth = 1087
          Height = 48
          Width = 1096
          object lblКоробка: TLabel
            Left = 5
            Top = 20
            Width = 89
            Height = 13
            Caption = #1050#1072#1078#1076#1072#1103' '#1082#1086#1088#1086#1073#1082#1072':'
          end
          object lblЭтикетка: TLabel
            Left = 157
            Top = 20
            Width = 94
            Height = 13
            Caption = #1050#1072#1078#1076#1072#1103' '#1101#1090#1080#1082#1077#1090#1082#1072':'
          end
          object lblБончес: TLabel
            Left = 311
            Top = 20
            Width = 47
            Height = 13
            Caption = 'Bonches :'
          end
          object edtphoto1: TAdvEdit
            Left = 100
            Top = 16
            Width = 53
            Height = 21
            DefaultHandling = True
            EditType = etFloat
            EmptyTextStyle = []
            ExcelStyleDecimalSeparator = True
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
            Text = '0'
            Visible = True
            Version = '3.4.7.0'
          end
          object edtphoto2: TAdvEdit
            Left = 252
            Top = 16
            Width = 53
            Height = 21
            DefaultHandling = True
            EditType = etFloat
            EmptyTextStyle = []
            ExcelStyleDecimalSeparator = True
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
            TabOrder = 1
            Text = '0'
            Visible = True
            Version = '3.4.7.0'
          end
          object edtphoto3: TAdvEdit
            Left = 364
            Top = 16
            Width = 53
            Height = 21
            DefaultHandling = True
            EditType = etFloat
            EmptyTextStyle = []
            ExcelStyleDecimalSeparator = True
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
            TabOrder = 2
            Text = '0'
            Visible = True
            Version = '3.4.7.0'
          end
        end
        object GroupОписание: TcxGroupBox
          Left = 2
          Top = 50
          Align = alClient
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 1
          ExplicitWidth = 1087
          ExplicitHeight = 495
          Height = 503
          Width = 1096
          object lblDRus: TLabel
            Left = 3
            Top = 19
            Width = 94
            Height = 13
            Caption = #1053#1072' '#1088#1091#1089#1089#1082#1086#1084' '#1103#1079#1099#1082#1077':'
          end
          object lblDEsp: TLabel
            Left = 3
            Top = 128
            Width = 106
            Height = 13
            Caption = #1053#1072' '#1080#1089#1087#1072#1085#1089#1082#1086#1084' '#1103#1079#1099#1082#1077':'
          end
          object lblDSum: TLabel
            Left = 8
            Top = 229
            Width = 101
            Height = 13
            Caption = #1054#1076#1086#1073#1088#1077#1085#1085#1086#1081' '#1089#1091#1084#1084#1099':'
          end
          object mmoПритензияРус: TMemo
            Left = 3
            Top = 38
            Width = 991
            Height = 76
            ScrollBars = ssBoth
            TabOrder = 0
          end
          object mmoПритензияИсп: TMemo
            Left = 3
            Top = 147
            Width = 991
            Height = 76
            ScrollBars = ssBoth
            TabOrder = 1
          end
          object mmoОдобреннаяСумма: TMemo
            Left = 4
            Top = 248
            Width = 990
            Height = 76
            ScrollBars = ssBoth
            TabOrder = 2
          end
          object chkExePrit: TCheckBox
            Left = 3
            Top = 330
            Width = 224
            Height = 17
            Caption = #1054#1082#1086#1085#1095#1072#1090#1077#1083#1100#1085#1086#1077' '#1080#1089#1087#1086#1083#1085#1077#1085#1080#1077' '#1087#1088#1077#1090#1077#1085#1079#1080#1080
            TabOrder = 3
          end
        end
      end
    end
    object TabСостав: TcxTabSheet
      Caption = #1057#1086#1089#1090#1072#1074
      ImageIndex = 1
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object cxGroupBox1: TcxGroupBox
        Left = 319
        Top = 0
        Align = alClient
        PanelStyle.Active = True
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 0
        ExplicitWidth = 772
        ExplicitHeight = 547
        Height = 555
        Width = 781
        inline FrameTopPanel1: TFrameTopPanel
          Left = 2
          Top = 2
          Width = 777
          Height = 38
          Align = alTop
          TabOrder = 0
          ExplicitLeft = 2
          ExplicitTop = 2
          ExplicitWidth = 768
          ExplicitHeight = 38
          inherited barProduct: TdxBarManager
            PixelsPerInch = 96
            inherited dxbrBardxbrmngr1Bar1: TdxBar
              ItemLinks = <
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
              OnClick = btnDelClick
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
        object GridUsers: TcxGrid
          Left = 2
          Top = 40
          Width = 777
          Height = 513
          Align = alClient
          TabOrder = 1
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          ExplicitWidth = 769
          ExplicitHeight = 509
          object ViewUsers: TcxGridDBTableView
            OnDblClick = ViewUsersDblClick
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsSostav
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
              end
              item
                Format = '$ ,0.00;$ -,0.00'
                Kind = skSum
                Column = ColumnСумма
              end
              item
                Format = '$ ,0.00;$ -,0.00'
                Kind = skSum
                Column = ColumnИтог
              end
              item
                Format = '$ ,0.00;$ -,0.00'
                Kind = skSum
                Column = ColumnТранспорт
              end
              item
                Kind = skCount
                Column = ColumnName
              end
              item
                Format = '0'
                Kind = skSum
                Column = ColumnСтеблей
              end
              item
                Format = '0'
                Kind = skSum
                Column = ViewUsershalf_box
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnsQuickCustomization = True
            OptionsData.Editing = False
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            object ColumnName: TcxGridDBColumn
              Caption = #1057#1086#1088#1090' '#1080' '#1076#1083#1080#1085#1072
              DataBinding.FieldName = 'name'
              Width = 149
            end
            object ColumnСтеблей: TcxGridDBColumn
              Caption = #1057#1090#1077#1073#1083#1077#1081
              DataBinding.FieldName = #1089#1090#1077#1073#1083#1077#1081
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.Alignment.Horz = taCenter
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              Width = 89
            end
            object ViewUsershalf_box: TcxGridDBColumn
              Caption = 'Half Box'
              DataBinding.FieldName = 'half_box'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.Alignment.Horz = taCenter
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              Width = 105
            end
            object ColumnЦена: TcxGridDBColumn
              Caption = #1062#1077#1085#1072
              DataBinding.FieldName = #1094#1077#1085#1072
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
              HeaderAlignmentHorz = taCenter
            end
            object ColumnСумма: TcxGridDBColumn
              Caption = #1057#1091#1084#1084#1072
              DataBinding.FieldName = 'summa'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
              HeaderAlignmentHorz = taCenter
              Width = 77
            end
            object ColumnТранспорт: TcxGridDBColumn
              Caption = #1058#1088#1072#1085#1089#1087#1086#1088#1090
              DataBinding.FieldName = #1089#1090#1086#1080#1084#1086#1089#1090#1100'_'#1090#1088#1072#1085#1089#1087#1086#1088#1090#1072
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
              HeaderAlignmentHorz = taCenter
              Width = 150
            end
            object ColumnИтог: TcxGridDBColumn
              Caption = #1048#1090#1086#1075
              DataBinding.FieldName = 'total'
              PropertiesClassName = 'TcxCalcEditProperties'
              Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
              HeaderAlignmentHorz = taCenter
              Width = 95
            end
          end
          object LevelOrg: TcxGridLevel
            GridView = ViewUsers
          end
        end
      end
      object cxSplitter1: TcxSplitter
        Left = 311
        Top = 0
        Width = 8
        Height = 555
        HotZoneClassName = 'TcxMediaPlayer9Style'
        Control = Group4
        ExplicitHeight = 551
      end
      object Group4: TcxGroupBox
        Left = 0
        Top = 0
        Align = alLeft
        PanelStyle.Active = True
        TabOrder = 2
        ExplicitHeight = 547
        Height = 555
        Width = 311
        inline FrameProduct1: TFrameProduct
          Left = 2
          Top = 2
          Width = 307
          Height = 551
          Align = alClient
          TabOrder = 0
          ExplicitLeft = 2
          ExplicitTop = 2
          ExplicitWidth = 307
          ExplicitHeight = 543
          inherited FrameTopPanel1: TFrameTopPanel
            Top = 28
            Width = 307
            Height = 0
            ExplicitTop = 28
            ExplicitWidth = 307
            ExplicitHeight = 0
            inherited barProduct: TdxBarManager
              PixelsPerInch = 96
              inherited dxbrBardxbrmngr1Bar1: TdxBar
                Visible = False
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
          inherited lstTreeProducts: TcxDBTreeList
            Top = 28
            Width = 307
            Height = 523
            LookAndFeel.SkinName = ''
            OnDblClick = FrameProduct1lstTreeProductsDblClick
            ExplicitTop = 28
            ExplicitWidth = 307
            ExplicitHeight = 519
          end
          inherited FrameSearch1: TFrameSearch
            Top = 0
            Width = 307
            ExplicitTop = 0
            ExplicitWidth = 307
            inherited Group1: TcxGroupBox
              ExplicitWidth = 307
              Width = 307
              inherited LabelName: TcxLabel
                Style.IsFontAssigned = True
              end
            end
          end
          inherited chkDel: TcxCheckBox
            Top = 6
            Visible = False
            ExplicitTop = 6
            ExplicitWidth = 121
          end
          inherited Style1: TcxStyleRepository
            PixelsPerInch = 96
          end
        end
      end
    end
  end
  object GroupOsn: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 1
    Height = 28
    Width = 1100
    object lblДата: TLabel
      Left = 3
      Top = 7
      Width = 30
      Height = 13
      Caption = #1044#1072#1090#1072':'
    end
    object Label3: TLabel
      Left = 138
      Top = 7
      Width = 13
      Height = 13
      Caption = #8470
    end
    object lblОдобреннаяСумма: TLabel
      Left = 490
      Top = 7
      Width = 99
      Height = 13
      Caption = #1054#1076#1086#1073#1088#1077#1085#1085#1072#1103' '#1089#1091#1084#1084#1072':'
    end
    object lblСуммаПретензии: TLabel
      Left = 280
      Top = 7
      Width = 91
      Height = 13
      Caption = #1057#1091#1084#1084#1072' '#1087#1088#1077#1090#1077#1085#1079#1080#1080':'
    end
    object edtNum: TEdit
      Left = 153
      Top = 3
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edtSumGoodPrit: TAdvEdit
      Left = 624
      Top = 3
      Width = 87
      Height = 21
      DefaultHandling = True
      EditType = etFloat
      EmptyTextStyle = []
      ExcelStyleDecimalSeparator = True
      Precision = 2
      Prefix = '$ '
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
      TabOrder = 3
      Text = '0,00'
      Visible = True
      Version = '3.4.7.0'
    end
    object edtManager: TcxLookupComboBox
      Left = 781
      Top = 3
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsManager
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
      TabOrder = 4
      Width = 221
    end
    object lblМенеджер: TcxLabel
      Left = 717
      Top = 5
      Caption = #1052#1077#1085#1077#1076#1078#1077#1088':'
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
    object edtСуммаПретензии: TAdvEdit
      Left = 393
      Top = 3
      Width = 91
      Height = 21
      DefaultHandling = True
      EditType = etFloat
      EmptyTextStyle = []
      ExcelStyleDecimalSeparator = True
      Precision = 2
      Prefix = '$ '
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
      Enabled = False
      TabOrder = 2
      Text = '0,00'
      Visible = True
      Version = '3.4.7.0'
    end
    object edtDatePrit: TDateTimePicker
      Left = 35
      Top = 3
      Width = 97
      Height = 21
      Date = 41535.000000000000000000
      Time = 0.395268159722036200
      TabOrder = 0
      OnCloseUp = edtDatePritCloseUp
    end
  end
  object QuerySostav: TUniQuery
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
      'SELECT s.name || '#39' '#39' || sv_zn.name || '#39' '#1089#1084'.'#39' AS name,'
      '       prod.reg_name,'
      '       prod."'#1094#1077#1085#1072'" AS "'#1094#1077#1085#1072'_'#1090#1086#1074#1072#1088#1072'",'
      '       prod.uni_name,'
      
        '       s.uni_name || '#39' '#39' || sv_zn.uni_name || '#39' cm.'#39' AS name_uni' +
        ','
      
        '       s.reg_name || '#39' '#39' || sv_zn.reg_name || '#39' cm.'#39' AS name_reg' +
        ','
      '       pret.id,'
      '       pret."'#1082#1086#1076'_sub_awb_detail",'
      '       pret."'#1082#1086#1076'_'#1090#1086#1074#1072#1088#1072'",'
      '       pret."'#1089#1090#1077#1073#1083#1077#1081'",'
      '       pret.half_box,'
      '       pret."'#1094#1077#1085#1072'",'
      '       pret."'#1089#1090#1086#1080#1084#1086#1089#1090#1100'_'#1090#1088#1072#1085#1089#1087#1086#1088#1090#1072'",'
      '       pret."'#1094#1077#1085#1072'" * pret."'#1089#1090#1077#1073#1083#1077#1081'" as summa,'
      
        '       pret."'#1094#1077#1085#1072'" * pret."'#1089#1090#1077#1073#1083#1077#1081'" + pret."'#1089#1090#1086#1080#1084#1086#1089#1090#1100'_'#1090#1088#1072#1085#1089#1087#1086#1088#1090#1072 +
        '" as total'
      'FROM "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1088#1086#1076#1091#1082#1094#1080#1103'" prod '
      ''
      
        '     INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090#1072'" s ON (prod."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'" = s.i' +
        'd)'
      
        '     INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1088#1086#1076#1091#1082#1090'_'#1089#1074#1086#1081#1089#1090#1074#1086'" p_sv ON (prod.id ' +
        '='
      '      p_sv."'#1082#1086#1076'_'#1090#1086#1074#1072#1088#1072'")'
      '     INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1074#1086#1081#1089#1090#1074#1072'_'#1079#1085#1072#1095#1077#1085#1080#1103'" sv_zn ON ('
      '     p_sv."'#1082#1086#1076'_'#1079#1085#1072#1095#1077#1085#1080#1103'_'#1089#1074#1086#1081#1089#1090#1074#1072'" = sv_zn.id)'
      
        '     INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1090#1080#1087#1099'_'#1089#1074#1086#1081#1089#1090#1074#1072'" t_sv ON (sv_zn."'#1082#1086#1076'_' +
        #1089#1074#1086#1081#1089#1090#1074#1072'" ='
      '      t_sv.id)'
      
        '     INNER JOIN "'#1073#1091#1093'"."'#1089#1086#1089#1090#1072#1074'_'#1087#1088#1077#1090#1077#1085#1079#1080#1080'" pret ON (prod.id = pret' +
        '."'#1082#1086#1076'_'#1090#1086#1074#1072#1088#1072'")'
      'WHERE upper(t_sv.uni_name) = '#39'LENGTH'#39
      'and pret."'#1082#1086#1076'_sub_awb_detail"=:id')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 448
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
    object QuerySostavname: TWideMemoField
      FieldName = 'name'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object QuerySostavreg_name: TWideStringField
      FieldName = 'reg_name'
      Size = 255
    end
    object QuerySostavцена_товара: TFloatField
      FieldName = #1094#1077#1085#1072'_'#1090#1086#1074#1072#1088#1072
    end
    object QuerySostavuni_name: TWideStringField
      FieldName = 'uni_name'
      Size = 255
    end
    object QuerySostavname_uni: TWideMemoField
      FieldName = 'name_uni'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object QuerySostavname_reg: TWideMemoField
      FieldName = 'name_reg'
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object QuerySostavid: TIntegerField
      FieldName = 'id'
      ReadOnly = True
    end
    object QuerySostavкод_sub_awb_detail: TIntegerField
      FieldName = #1082#1086#1076'_sub_awb_detail'
      ReadOnly = True
    end
    object QuerySostavкод_товара: TIntegerField
      FieldName = #1082#1086#1076'_'#1090#1086#1074#1072#1088#1072
      ReadOnly = True
    end
    object QuerySostavстеблей: TIntegerField
      FieldName = #1089#1090#1077#1073#1083#1077#1081
      ReadOnly = True
    end
    object QuerySostavhalf_box: TIntegerField
      FieldName = 'half_box'
      ReadOnly = True
    end
    object QuerySostavцена: TFloatField
      FieldName = #1094#1077#1085#1072
      ReadOnly = True
      DisplayFormat = '$ 0.00'
    end
    object QuerySostavстоимость_транспорта: TFloatField
      FieldName = #1089#1090#1086#1080#1084#1086#1089#1090#1100'_'#1090#1088#1072#1085#1089#1087#1086#1088#1090#1072
      ReadOnly = True
      DisplayFormat = '$ 0.00'
    end
    object QuerySostavsumma: TFloatField
      FieldName = 'summa'
      ReadOnly = True
      DisplayFormat = '$ 0.00'
    end
    object QuerySostavtotal: TFloatField
      FieldName = 'total'
      ReadOnly = True
      DisplayFormat = '$ 0.00'
    end
  end
  object dsSostav: TDataSource
    DataSet = QuerySostav
    Left = 536
    Top = 432
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
    Left = 168
    Top = 400
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 49
      end>
  end
  object QueryManager: TUniQuery
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
      'SELECT * from "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 344
    Top = 488
  end
  object dsManager: TDataSource
    DataSet = QueryManager
    Left = 432
    Top = 512
  end
end
