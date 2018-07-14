object FEditPritenz: TFEditPritenz
  Left = 0
  Top = 0
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1087#1088#1077#1090#1077#1085#1079#1080#1080
  ClientHeight = 618
  ClientWidth = 1084
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
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 586
    Width = 1084
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 586
    ExplicitWidth = 1084
    inherited bardxbrmngr1: TdxBarManager
      DockControlHeights = (
        0
        0
        0
        34)
      inherited btnSave: TdxBarLargeButton
        OnClick = FrameSave1btnSaveClick
      end
      inherited btnPrior: TdxBarLargeButton
        Caption = #1054#1090#1095#1077#1090
        Hint = #1054#1090#1095#1077#1090
        Visible = ivAlways
        LargeImageIndex = 22
        OnClick = btnPriorClick
      end
    end
  end
  inline FramePretenzEdit1: TFramePretenzEdit
    Left = 0
    Top = 0
    Width = 1084
    Height = 586
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 1084
    ExplicitHeight = 586
    inherited Page1: TcxPageControl
      Width = 1084
      Height = 558
      ExplicitTop = 28
      ExplicitWidth = 1084
      ExplicitHeight = 558
      ClientRectBottom = 552
      ClientRectRight = 1078
      inherited TabОписание: TcxTabSheet
        ExplicitWidth = 1075
        ExplicitHeight = 526
        inherited Group2: TcxGroupBox
          ExplicitWidth = 1075
          ExplicitHeight = 526
          Height = 526
          Width = 1075
          inherited GroupФото: TcxGroupBox
            ExplicitWidth = 1071
            Width = 1071
          end
          inherited GroupОписание: TcxGroupBox
            ExplicitWidth = 1071
            ExplicitHeight = 474
            Height = 474
            Width = 1071
          end
        end
      end
      inherited TabСостав: TcxTabSheet
        inherited cxGroupBox1: TcxGroupBox
          inherited FrameTopPanel1: TFrameTopPanel
            inherited barProduct: TdxBarManager
              DockControlHeights = (
                0
                0
                34
                0)
            end
          end
          inherited GridUsers: TcxGrid
            ExplicitWidth = 752
            ExplicitHeight = 484
            inherited ViewUsers: TcxGridDBTableView
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
                  Column = FramePretenzEdit1.ColumnСумма
                end
                item
                  Format = '$ ,0.00;$ -,0.00'
                  Kind = skSum
                  Column = FramePretenzEdit1.ColumnИтог
                end
                item
                  Format = '$ ,0.00;$ -,0.00'
                  Kind = skSum
                end
                item
                  Kind = skCount
                  Column = FramePretenzEdit1.ColumnName
                end
                item
                  Format = '0'
                  Kind = skSum
                end
                item
                  Format = '0'
                  Kind = skSum
                  Column = FramePretenzEdit1.ViewUsershalf_box
                end>
            end
          end
        end
        inherited cxSplitter1: TcxSplitter
          ExplicitHeight = 526
        end
        inherited Group4: TcxGroupBox
          inherited FrameProduct1: TFrameProduct
            inherited FrameTopPanel1: TFrameTopPanel
              inherited barProduct: TdxBarManager
                DockControlHeights = (
                  0
                  0
                  0
                  0)
              end
            end
            inherited lstTreeProducts: TcxDBTreeList
              LookAndFeel.SkinName = ''
              ExplicitHeight = 494
            end
            inherited FrameSearch1: TFrameSearch
              inherited Group1: TcxGroupBox
                inherited LabelName: TcxLabel
                  Style.IsFontAssigned = True
                end
              end
            end
            inherited il1: TImageList
              Bitmap = {
                494C010102000500C40010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
    inherited GroupOsn: TcxGroupBox
      ExplicitWidth = 1084
      Width = 1084
    end
    inherited QuerySostav: TUniQuery
      inherited QuerySostavid: TIntegerField
        AutoGenerateValue = arAutoInc
      end
    end
  end
  object Report1: TfrxReport
    Version = '4.15.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = #1055#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41548.707437754600000000
    ReportOptions.LastChange = 41556.597028043980000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 392
    Top = 216
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <
      item
        Name = 'Title'
        Color = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Group header'
        Color = 16053492
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Data'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      item
        Name = 'Group footer'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
      end
      item
        Name = 'Header line'
        Color = clNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftBottom]
        Frame.Width = 2.000000000000000000
      end>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Align = baWidth
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1088#1077#1090#1077#1085#1079#1080#1103)
          ParentFont = False
          Style = 'Title'
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 106.488250000000000000
        Top = 68.031540000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Align = baLeft
          Top = 83.811070000000000000
          Width = 191.385900000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Variedad y cm')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Align = baLeft
          Left = 191.385900000000000000
          Top = 83.811070000000000000
          Width = 66.661410000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Tallos')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baLeft
          Left = 258.047310000000000000
          Top = 83.811070000000000000
          Width = 66.661410000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Half Box')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baLeft
          Left = 324.708720000000000000
          Top = 83.811070000000000000
          Width = 75.590551180000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Precios')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baLeft
          Left = 400.299271180000000000
          Top = 83.811070000000000000
          Width = 93.118120000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Align = baLeft
          Left = 493.417391180000000000
          Top = 83.811070000000000000
          Width = 127.133890000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Costo de transporte')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Align = baWidth
          Left = 620.551281180000000000
          Top = 83.811070000000000000
          Width = 97.559418820000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object MemoNum: TfrxMemoView
          Align = baLeft
          Left = 99.449290000000000000
          Top = 7.559055120000000000
          Width = 349.228346460000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object MemoPlant: TfrxMemoView
          Align = baWidth
          Left = 530.788336460000000000
          Top = 6.795300000000000000
          Width = 187.322363540000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Align = baLeft
          Top = 7.559055120000000000
          Width = 99.449290000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #8470':')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Align = baLeft
          Top = 26.456692910000000000
          Width = 99.449290000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fecha de vuelo:')
          ParentFont = False
        end
        object MemoDateFly: TfrxMemoView
          Align = baLeft
          Left = 99.449290000000000000
          Top = 26.456692910000000000
          Width = 349.228346460000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Align = baLeft
          Top = 45.354330710000000000
          Width = 99.449290000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Marcacion:')
          ParentFont = False
        end
        object MemoMarking: TfrxMemoView
          Align = baLeft
          Left = 99.449290000000000000
          Top = 45.354330710000000000
          Width = 349.228346460000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          Align = baLeft
          Left = 448.677636460000000000
          Top = 6.968460000000000000
          Width = 82.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Finca:')
          ParentFont = False
        end
        object MemoNUMAwb: TfrxMemoView
          Align = baWidth
          Left = 530.788336460000000000
          Top = 26.456692910000000000
          Width = 187.322363540000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          Align = baLeft
          Left = 448.677636460000000000
          Top = 26.456692910000000000
          Width = 82.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Guia:')
          ParentFont = False
        end
        object MemoNUMFact: TfrxMemoView
          Align = baWidth
          Left = 530.788336460000000000
          Top = 45.354330710000000000
          Width = 187.322363540000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          Align = baLeft
          Left = 448.677636460000000000
          Top = 45.354330710000000000
          Width = 82.110700000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            #8470' factura:')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897637800000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo9: TfrxMemoView
          Align = baLeft
          Width = 191.385900000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'name'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."name"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baLeft
          Left = 191.385900000000000000
          Width = 66.661410000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = #1089#1090#1077#1073#1083#1077#1081
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."'#1089#1090#1077#1073#1083#1077#1081'"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Align = baLeft
          Left = 258.047310000000000000
          Width = 66.661410000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'half_box'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."half_box"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Align = baLeft
          Left = 400.299271180000000000
          Width = 93.118120000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'summa'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."summa"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Align = baLeft
          Left = 493.417391180000000000
          Width = 127.133890000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = #1089#1090#1086#1080#1084#1086#1089#1090#1100'_'#1090#1088#1072#1085#1089#1087#1086#1088#1090#1072
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."'#1089#1090#1086#1080#1084#1086#1089#1090#1100'_'#1090#1088#1072#1085#1089#1087#1086#1088#1090#1072'"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Align = baWidth
          Left = 620.551281180000000000
          Width = 97.559418820000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = 'total'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."total"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Align = baLeft
          Left = 324.708720000000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataField = #1094#1077#1085#1072
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."'#1094#1077#1085#1072'"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 28.543290000000000000
        Top = 755.906000000000000000
        Width = 718.110700000000000000
        object MemoLBLDate: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 2.000000000000000000
          Top = 4.094000000000000000
          Width = 114.488250000000000000
          Height = 18.913385830000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Fecha de reklamo:')
          ParentFont = False
        end
        object MemoDate: TfrxMemoView
          Left = 116.488250000000000000
          Top = 4.094000000000000000
          Width = 237.622450000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '')
          ParentFont = False
        end
        object MemoLBLManager: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 355.000000000000000000
          Top = 4.094000000000000000
          Width = 141.488250000000000000
          Height = 18.913385830000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Ha creado el manager:')
          ParentFont = False
        end
        object MemoManager: TfrxMemoView
          Left = 496.488250000000000000
          Top = 4.094000000000000000
          Width = 263.622450000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 420.991947800000000000
        Top = 275.905690000000000000
        Width = 718.110700000000000000
        object Memo22: TfrxMemoView
          Align = baLeft
          Top = 0.094310000000000000
          Width = 191.385900000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            'Total:')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          Align = baLeft
          Left = 191.385900000000000000
          Top = 0.094310000000000000
          Width = 66.661410000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."'#1089#1090#1077#1073#1083#1077#1081'">)]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Align = baLeft
          Left = 258.047310000000000000
          Top = 0.094310000000000000
          Width = 66.661410000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Align = baLeft
          Left = 400.299271180000000000
          Top = 0.094310000000000000
          Width = 93.118120000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '$ [SUM(<frxDBDataset1."summa">)]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Align = baLeft
          Left = 493.417391180000000000
          Top = 0.094310000000000000
          Width = 127.133890000000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '$ [SUM(<frxDBDataset1."'#1089#1090#1086#1080#1084#1086#1089#1090#1100'_'#1090#1088#1072#1085#1089#1087#1086#1088#1090#1072'">)]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Align = baWidth
          Left = 620.551281180000000000
          Top = 0.094310000000000000
          Width = 97.559418820000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '$ [SUM(<frxDBDataset1."total">)]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Align = baLeft
          Left = 324.708720000000000000
          Top = 0.094310000000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          ShowHint = False
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object MemoLblRus: TfrxMemoView
          Left = 1.000000000000000000
          Top = 142.094310000000000000
          Width = 267.488250000000000000
          Height = 18.913385830000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'La descripci'#243'n de la pretensi'#243'n en ruso: ')
          ParentFont = False
        end
        object MemoLblEsp: TfrxMemoView
          ShiftMode = smWhenOverlapped
          Left = 1.000000000000000000
          Top = 160.771475350000000000
          Width = 267.488250000000000000
          Height = 18.913385830000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'La descripci'#243'n de la pretensi'#243'n en espa'#241'ol:')
          ParentFont = False
        end
        object MemoRUS: TfrxMemoView
          Left = 268.488250000000000000
          Top = 142.094310000000000000
          Width = 450.622450000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object MemoESP: TfrxMemoView
          Left = 268.488250000000000000
          Top = 160.771475350000000000
          Width = 450.622450000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          Align = baLeft
          Top = 49.094310000000000000
          Width = 191.244094490000000000
          Height = 18.913385830000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Fotos')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Align = baLeft
          Top = 68.094310000000000000
          Width = 191.244094490000000000
          Height = 18.913385830000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1057'aja:')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          Align = baLeft
          Top = 87.094310000000000000
          Width = 191.244094490000000000
          Height = 18.913385830000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Etiquetas:')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Align = baLeft
          Top = 106.094310000000000000
          Width = 191.244094490000000000
          Height = 18.913385830000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Variedad:')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Align = baLeft
          Left = 191.244094490000000000
          Top = 49.094310000000000000
          Width = 88.818897640000000000
          Height = 18.913385830000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Cuanto fotos')
          ParentFont = False
        end
        object MemoPhoto1: TfrxMemoView
          Align = baLeft
          Left = 191.244094490000000000
          Top = 68.094310000000000000
          Width = 88.818897640000000000
          Height = 18.913385830000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object MemoPhoto2: TfrxMemoView
          Align = baLeft
          Left = 191.244094490000000000
          Top = 87.094310000000000000
          Width = 88.818897640000000000
          Height = 18.913385830000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object MemoPhoto3: TfrxMemoView
          Align = baLeft
          Left = 191.244094490000000000
          Top = 106.094310000000000000
          Width = 88.818897640000000000
          Height = 18.913385830000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'name=name'
      'reg_name=reg_name'
      #1094#1077#1085#1072'_'#1090#1086#1074#1072#1088#1072'='#1094#1077#1085#1072'_'#1090#1086#1074#1072#1088#1072
      'uni_name=uni_name'
      'name_uni=name_uni'
      'name_reg=name_reg'
      'id=id'
      #1082#1086#1076'_sub_awb_detail='#1082#1086#1076'_sub_awb_detail'
      #1082#1086#1076'_'#1090#1086#1074#1072#1088#1072'='#1082#1086#1076'_'#1090#1086#1074#1072#1088#1072
      #1089#1090#1077#1073#1083#1077#1081'='#1089#1090#1077#1073#1083#1077#1081
      'half_box=half_box'
      #1094#1077#1085#1072'='#1094#1077#1085#1072
      #1089#1090#1086#1080#1084#1086#1089#1090#1100'_'#1090#1088#1072#1085#1089#1087#1086#1088#1090#1072'='#1089#1090#1086#1080#1084#1086#1089#1090#1100'_'#1090#1088#1072#1085#1089#1087#1086#1088#1090#1072
      'summa=summa'
      'total=total')
    DataSource = FramePretenzEdit1.dsSostav
    BCDToCurrency = False
    Left = 488
    Top = 208
  end
  object frxlsxprt1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 832
    Top = 296
  end
end
