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
    ClientRectBottom = 573
    ClientRectLeft = 3
    ClientRectRight = 1094
    ClientRectTop = 26
    object TabОписание: TcxTabSheet
      Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1089#1074#1077#1076#1077#1085#1080#1103
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
        Height = 547
        Width = 1091
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
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 0
          Height = 48
          Width = 1087
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
            Version = '3.3.2.0'
          end
          object edtphoto2: TAdvEdit
            Left = 252
            Top = 16
            Width = 53
            Height = 21
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
            Version = '3.3.2.0'
          end
          object edtphoto3: TAdvEdit
            Left = 364
            Top = 16
            Width = 53
            Height = 21
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
            Version = '3.3.2.0'
          end
        end
        object GroupОписание: TcxGroupBox
          Left = 2
          Top = 50
          Align = alClient
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 1
          Height = 495
          Width = 1087
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
      object cxGroupBox1: TcxGroupBox
        Left = 319
        Top = 0
        Align = alClient
        PanelStyle.Active = True
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 0
        Height = 547
        Width = 772
        inline FrameTopPanel1: TFrameTopPanel
          Left = 2
          Top = 2
          Width = 768
          Height = 38
          Align = alTop
          TabOrder = 0
          ExplicitLeft = 2
          ExplicitTop = 2
          ExplicitWidth = 768
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
        end
        object GridUsers: TcxGrid
          Left = 2
          Top = 40
          Width = 768
          Height = 505
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
        Height = 547
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
        Height = 547
        Width = 311
        inline FrameProduct1: TFrameProduct
          Left = 2
          Top = 2
          Width = 307
          Height = 543
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
              DockControlHeights = (
                0
                0
                0
                0)
              inherited dxbrBardxbrmngr1Bar1: TdxBar
                Visible = False
              end
            end
          end
          inherited lstTreeProducts: TcxDBTreeList
            Top = 28
            Width = 307
            Height = 515
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
          end
          inherited il1: TImageList
            Bitmap = {
              494C0101020005009C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
              0000000000003600000028000000400000001000000001002000000000000010
              00000000000000000000000000000000000000000000FCFCFC04D0CFCE39CCCB
              CA3ECDCBCA3ECDCBCA3ECDCBCA3ECDCBCA3ECDCBCA3ECDCBCA3ECDCBCA3ECBCA
              C93ECAC9C83ECECDCC39FCFCFC04000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000DDD6D255C7AA98FFC6A9
              97FFC6A998FFC6A997FFC6A997FFC5A996FFC5A895FFC4A794FFC3A693FFC3A6
              92FFC2A590FF7E6C61DAF6F5F50D000000000000000000000000000000007DC5
              E0882A9FC8DA77C7E38CC4E7F23DFCFEFE030000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000E0D8D455F2E5D9FFD9CF
              C4FFD9CEC4FFD8CEC4FFD8CDC2FFD7CDC1FFD7CBC0FFF0E3D6FFEFE2D5FFEEE1
              D2FFEAD9C8FF88776BDAF6F5F50D0000000000000000000000000000000042B7
              DAD417B5DEFF19D5FFFF13C8F4FF20B2DDE969C4E29CB7E2F04CF7FCFD080000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000E4DCD855F6EDE4FFDFD9
              D2FFDFD9D2FFDED9D2FFDED8D1FFDDD7CFFFDCD6CEFFF5EEE4FFF5EDE2FFF4EB
              E0FFEDDFCFFF89776BDAF6F6F50D000000000000000000000000E6F4F91C3FCC
              E8FE28BBDFFF30DBFFFF2AD9FFFF24D7FFFF1DD6FFFF18CEF9FF1DB3DFF35DBB
              DEABA9D9EB5CF0F9FC1100000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000E9E1DD55F7F0E8FFCAC6
              C0FFC9C5BFFFC8C4BFFFC7C3BEFFC6C2BCFFC5C0BAFFC3BEB7FFC2BCB5FFC0BA
              B2FFDDCFC2FF89776CDAF7F6F60D000000000000000000000000A5D7E8686CF0
              FEFF3BC2E0FF46E2FFFF40E0FFFF39DEFFFF32DCFFFF2BD9FFFF28D7FFFF2AD5
              FFFF2AD0FCFF25B5E2F956B4D6BBEFF8FB130000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000E9E2DE55F8F2EBFFCBC8
              C4FFCBC8C4FFCAC7C3FFE9E5E0FFC8C4C0FFC7C3BDFFC5C1BBFFC4BFB8FFC3BD
              B5FFDED1C4FF89776DDAF7F6F60D00000000000000000000000074C7DFB684F8
              FFFF4FC8E1FF5CEAFFFF56E8FFFF4FE5FFFF47E3FFFF3FE0FFFF38DDFFFF37DB
              FFFF39D8FFFF3AD5FEFF61DAF2FFC6E6F1450000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000EAE3DF55FAF4EFFFE4E2
              DEFFE4E1DEFFE4E1DDFFE3E0DCFFE2DEDAFFE1DDD8FFE0DBD5FFEFEAE3FFDDD7
              D0FFE7DACEFF8A786EDAF7F6F60D0000000000000000F5FBFD0F73D3E4F89AFE
              FFFF60CDE2FF72F1FFFF6CEFFFFF64ECFFFF5CEAFFFF54E7FFFF4BE4FFFF47E1
              FFFF48DFFFFF48D7F7FF8EECFAFFC8E6F1470000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000EAE4E055FBF6F2FFE6E4
              E2FFE5E4E2FFE5E3E1FFE4E2E0FFE3E1DEFFE2DFDBFFE1DDD8FFF0EBE5FFDED9
              D2FFE8DBD0FF8A796FDAF7F6F60D0000000000000000BBE0ED5BB0FBFCFFAAFF
              FFFF6ED0E3FF87F9FFFF81F6FFFF79F3FFFF71F1FFFF68EEFFFF5FEBFFFF58E8
              FFFF57E6FFFF72E4F6FFA0F4FBFFCCE9F2470000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000EBE4E155FCF8F6FFD1D1
              D0FFD1D0D0FFEEEDECFFCFCDCCFFCDCBCAFFEBE9E5FFCAC7C4FFC9C5C0FFC7C3
              BDFFE0D4CAFF8B796FDAF7F6F60D000000000000000089C9E0AFC2FFFFFFB9FF
              FFFF7AD2E4FF9BFEFFFF94FCFFFF8CF9FFFF83F6FFFF7BF4FFFF72F1FFFF69EE
              FFFF66EAFCFFA2F4F9FFADF7FBFFD2EBF3440000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000EBE5E155FDFAF9FFD3D3
              D3FFD3D3D3FFD2D2D2FFD0D0D0FFCFCECDFFCDCCCAFFCCC9C6FFCAC7C3FFC8C4
              BFFFE1D5CBFF8B7A70DAF7F6F60D00000000F6FAFC0E9AD3E4F7D1FFFFFFC5FF
              FFFF81D2E6FFAAFFFFFFA2FDFFFF9AFBFFFF91F8FFFF88F5FFFF80F2FFFF77F0
              FFFF7DEAF7FFC1FFFFFFB8F8FAFFD5ECF3440000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000ECE5E255FDFBFAFFE9E9
              E9FFE9E9E9FFE9E9E9FFE8E8E8FFF6F5F5FFE6E4E2FFE4E2DEFFE3DFDBFFE1DD
              D8FFE9DED3FF8B7970DAF6F6F60D00000000EDF7FA1CA4D4E685A2D6E7A080C6
              DFBB73C7DFF4A6F2F7FF9FF2F8FF9FF6FBFF9CF7FDFF95F6FFFF8CF3FFFF84F0
              FEFFABF2F8FFCAFFFFFFC1F8FAFFD8EDF3440000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000ECE6E255FDFBF9FFEAEA
              EAFFE9E9E9FFE9E9E9FFE9E9E9FFF6F6F5FFE6E4E3FFDBD6D2FFCFC5BFFFCFC3
              BCFFCEBCB1FF948780A9FCFCFC04000000000000000000000000000000000000
              00008ACFE7C7DEFFFFFFD6FDFEFFCCF9FBFFC3F5F9FFBAF3F9FFB4F2F9FFAAEF
              F8FFD3FDFEFFD4FFFFFFCAF7FAFFDBEEF4420000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000EDE6E355FDFBF9FFD6D6
              D6FFF1F1F1FFD4D4D4FFD4D4D4FFD2D2D1FFDFDEDCFFD3C2B9FFE8D8C3FFDDBB
              8CFF9F8B7AB5F6F6F50E00000000000000000000000000000000000000000000
              00007FCCE6C8D2F2F8FFDCF7FBFFE6FDFEFFECFFFFFFEAFFFFFFE7FFFFFFDFFF
              FFFFDFFFFFFFDEFFFFFFD2F6F9FFDBEDF4410000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000ECE5E155FDFAF9FFD7D7
              D7FFD6D6D6FFD6D6D6FFD4D4D4FFD3D2D1FFE0DEDCFFD5C4B9FFEDCC99FFA490
              7FB0F8F7F60C0000000000000000000000000000000000000000000000000000
              0000EAF7FC21DEF2F937D7F0F743D3EDF64EB9E0EF59B3DEEE6590CDE4CAEBFF
              FFFFE9FFFFFFE9FFFFFFD1EFF5FFE0EFF5370000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000ECE4E155FBF9F6FFFDFC
              FCFFFDFDFCFFFDFCFBFFFCFBFAFFFCFAF7FFFBF8F5FFD1BDAEFFA59382ABF9F9
              F80A000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000B7DEED679FCE
              E2ED9ECDE1EF9ECCDFF176B7D4E6FCFEFE050000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000F4EFED38E0D1CAAADFD1
              CBAAE0D2CBAAE0D3CCAADFD2CBAADDD0C9AADBCCC3AACEC2BB7EFBFBFB070000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000424D3E000000000000003E000000
              2800000040000000100000000100010000000000800000000000000000000000
              000000000000000000000000FFFFFF008001FFFF000000008001E0FF00000000
              8001E01F000000008001C003000000008001C000000000008001C00000000000
              8001800000000000800180000000000080018000000000008001000000000000
              80010000000000008001F000000000008003F000000000008007F00000000000
              800FFFC000000000801FFFFF0000000000000000000000000000000000000000
              000000000000}
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
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
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
      Version = '3.3.2.0'
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
      Version = '3.3.2.0'
    end
    object edtDatePrit: TDateTimePicker
      Left = 35
      Top = 3
      Width = 97
      Height = 21
      Date = 41535.395268159720000000
      Time = 41535.395268159720000000
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
