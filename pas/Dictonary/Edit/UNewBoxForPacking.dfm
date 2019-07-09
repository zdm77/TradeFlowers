object FNewBoxForPacking: TFNewBoxForPacking
  Left = 0
  Top = 0
  Caption = #1050#1086#1088#1086#1073#1082#1072' '#1076#1083#1103' '#1087#1086#1076'-'#1087#1072#1082#1080#1085#1075#1072' ->'
  ClientHeight = 488
  ClientWidth = 1084
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupOsn: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1089#1074#1077#1076#1077#1085#1080#1103
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 0
    Height = 57
    Width = 1084
    object Label1: TLabel
      Left = 306
      Top = 25
      Width = 66
      Height = 13
      Caption = #1042#1077#1089' '#1082#1086#1088#1086#1073#1082#1080':'
    end
    object lbl2: TcxLabel
      Left = 472
      Top = 23
      Caption = #8470':'
      Transparent = True
    end
    object edtNumberBox: TEdit
      Left = 497
      Top = 21
      Width = 121
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object cxLabel1: TcxLabel
      Left = 3
      Top = 22
      Caption = #1058#1080#1087' '#1082#1086#1088#1086#1073#1082#1080':'
      Transparent = True
    end
    object edtBox: TcxLookupComboBox
      Left = 78
      Top = 21
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          FieldName = 'name'
        end
        item
          Caption = #1042#1077#1089
          FieldName = #1074#1077#1089
        end>
      Properties.ListOptions.SyncMode = True
      Properties.ListSource = dsBox
      Properties.OnEditValueChanged = edtBoxPropertiesEditValueChanged
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
      TabOrder = 3
      Width = 188
    end
    object btnBoxAdd: TcxButton
      Left = 267
      Top = 21
      Width = 32
      Height = 21
      Caption = '+'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = ''
      OptionsImage.ImageIndex = 13
      OptionsImage.Images = FOsn.imgSmall
      TabOrder = 4
      OnClick = btnBoxAddClick
    end
    object edtWeight: TAdvEdit
      Left = 378
      Top = 21
      Width = 88
      Height = 21
      EditType = etFloat
      EmptyTextStyle = []
      Precision = 3
      Suffix = ' '#1082#1075'.'
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
      TabOrder = 5
      Text = '0,000'
      Visible = True
      Version = '3.3.2.0'
    end
  end
  object GroupProduct: TcxGroupBox
    Left = 0
    Top = 57
    Align = alLeft
    Caption = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 1
    Height = 431
    Width = 401
    inline FrameProduct1: TFrameProduct
      Left = 3
      Top = 15
      Width = 395
      Height = 406
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = -2
      ExplicitWidth = 397
      ExplicitHeight = 431
      inherited FrameTopPanel1: TFrameTopPanel
        Top = 28
        Width = 395
        Height = 0
        Visible = False
        ExplicitTop = 28
        ExplicitWidth = 397
        ExplicitHeight = 0
        inherited barProduct: TdxBarManager
          DockControlHeights = (
            0
            0
            34
            0)
          inherited btnAdd: TdxBarLargeButton
            Visible = ivNever
          end
          inherited btnEdit: TdxBarLargeButton
            Visible = ivNever
          end
          inherited btnDel: TdxBarLargeButton
            Visible = ivNever
          end
        end
      end
      inherited lstTreeProducts: TcxDBTreeList
        Top = 28
        Width = 395
        Height = 378
        LookAndFeel.SkinName = ''
        OnDblClick = FrameProduct1lstTreeProductsDblClick
        ExplicitTop = 28
        ExplicitWidth = 397
        ExplicitHeight = 383
      end
      inherited FrameSearch1: TFrameSearch
        Top = 0
        Width = 395
        ExplicitTop = 0
        ExplicitWidth = 397
        inherited Group1: TcxGroupBox
          ExplicitWidth = 397
          Width = 395
          inherited LabelName: TcxLabel
            Style.IsFontAssigned = True
          end
          inherited edtName: TcxTextEdit
            ExplicitWidth = 237
            Width = 237
          end
        end
      end
      inherited chkDel: TcxCheckBox
        Left = 286
        Top = 3
        ExplicitLeft = 286
        ExplicitTop = 3
        ExplicitHeight = 21
      end
      inherited QueryProduct: TUniQuery
        Left = 71
        Top = 81
      end
      inherited il1: TImageList
        Bitmap = {
          494C010102000500600010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  object cxGroupBox1: TcxGroupBox
    Left = 409
    Top = 57
    Align = alClient
    Caption = #1044#1077#1090#1072#1083#1080#1079#1072#1094#1080#1103
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 2
    Height = 431
    Width = 675
    inline FrameTopPanel2: TFrameTopPanel
      Left = 3
      Top = 15
      Width = 669
      Height = 32
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = -2
      ExplicitWidth = 671
      ExplicitHeight = 32
      inherited barProduct: TdxBarManager
        Top = 16
        DockControlHeights = (
          0
          0
          69
          0)
        inherited btnAdd: TdxBarLargeButton
          Visible = ivNever
        end
        inherited btnEdit: TdxBarLargeButton
          OnClick = btnEditClick
        end
        inherited btnDel: TdxBarLargeButton
          OnClick = btnDelClick
        end
        inherited btnRefresh: TdxBarLargeButton
          Visible = ivNever
        end
      end
    end
    object GridOrder: TcxGrid
      Left = 3
      Top = 47
      Width = 669
      Height = 374
      Align = alClient
      TabOrder = 1
      LookAndFeel.Kind = lfOffice11
      ExplicitLeft = 2
      ExplicitTop = 50
      ExplicitWidth = 671
      ExplicitHeight = 379
      object ViewOrder: TcxGridDBTableView
        OnDblClick = ViewOrderDblClick
        Navigator.Buttons.CustomButtons = <>
        FilterBox.Visible = fvNever
        DataController.DataSource = dsDetail
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
            Column = ViewOrdername
          end
          item
            Kind = skSum
            Column = ViewOrder__
          end
          item
            Kind = skSum
            Column = ColumnСумма
          end
          item
            Kind = skSum
            Column = ColumnВес
          end>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        object ViewOrdername: TcxGridDBColumn
          Caption = #1058#1086#1074#1072#1088
          DataBinding.FieldName = 'name'
          Width = 236
        end
        object ViewOrderColumn1: TcxGridDBColumn
          Caption = #1050#1086#1076
          DataBinding.FieldName = 'code'
          Width = 105
        end
        object ViewOrder__: TcxGridDBColumn
          Caption = #1057#1090#1077#1073#1083#1077#1081
          DataBinding.FieldName = #1082#1086#1083'_'#1074#1086'_'#1089#1090#1077#1073#1083#1077#1081
          HeaderAlignmentHorz = taCenter
          Width = 80
        end
        object ColumnЦена: TcxGridDBColumn
          Caption = #1062#1077#1085#1072
          DataBinding.FieldName = #1094#1077#1085#1072
          HeaderAlignmentHorz = taCenter
          Width = 65
        end
        object ColumnСумма: TcxGridDBColumn
          Caption = #1057#1091#1084#1084#1072
          DataBinding.FieldName = #1089#1091#1084#1084#1072
          HeaderAlignmentHorz = taCenter
          Width = 98
        end
        object ColumnВес: TcxGridDBColumn
          Caption = #1042#1077#1089
          DataBinding.FieldName = #1080#1090#1086#1075'_'#1074#1077#1089
        end
      end
      object GridLevelOrder: TcxGridLevel
        GridView = ViewOrder
      end
    end
  end
  object cxspltr1: TcxSplitter
    Left = 401
    Top = 57
    Width = 8
    Height = 431
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = GroupProduct
  end
  object dsDetail: TDataSource
    DataSet = QueryDetail
    Left = 416
    Top = 233
  end
  object QueryDetail: TUniQuery
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
      'SELECT '
      '  p.name,'
      '  pd.id,'
      '  pd."'#1082#1086#1076'_'#1087#1086#1076#1087#1072#1082#1080#1085#1075'",'
      '  pd."'#1082#1086#1076'_'#1090#1086#1074#1072#1088#1072'",'
      '  pd."'#1082#1086#1083'_'#1074#1086'_'#1089#1090#1077#1073#1083#1077#1081'",'
      '  pd."'#1094#1077#1085#1072'"'
      'FROM'
      '  "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1090#1072#1084#1086#1078#1085#1103'_'#1087#1072#1082#1080#1085#1075'_'#1076#1077#1090#1072#1083#1100'" pd'
      
        '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1088#1086#1076#1091#1082#1094#1080#1103'" p ON (pd."'#1082#1086#1076'_'#1090#1086#1074#1072#1088#1072'" = p.i' +
        'd)')
    Left = 503
    Top = 281
  end
  object QuerySel: TUniQuery
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
      'SELECT '
      '  zd.id,'
      '  zd."'#1082#1086#1076'_'#1079#1072#1082#1091#1087#1082#1080'",'
      '  zd."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'",'
      '  zd."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'",'
      '  zd."'#1082#1086#1076'_'#1090#1086#1074#1072#1088#1072'",'
      '  zd."'#1094#1077#1085#1072'",'
      '  zd.fb,'
      '  zd."'#1076#1083#1080#1085#1072'",'
      '  zd."'#1089#1090#1077#1073#1083#1077#1081'",'
      '  pt.name pt_name,'
      '  pt.uni_name pt_uni_name,'
      '  pt.reg_name pt_reg_name,'
      '  st.name st_name,'
      '  st.uni_name st_uni_name,'
      '  st.reg_name st_reg_name'
      'FROM'
      '  "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1079#1072#1082#1091#1087#1082#1080'_'#1076#1077#1090#1072#1083#1100'" zd'
      
        '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pt ON (zd."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" =' +
        ' pt.id)'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090#1072'" st ON (zd."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'" = st.id)'
      'where zd.'#1082#1086#1076'_'#1079#1072#1082#1091#1087#1082#1080'=:id'
      'order by zd.id')
    Left = 471
    Top = 209
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
  end
  object dsBox: TUniDataSource
    DataSet = QueryBox
    Left = 160
    Top = 168
  end
  object QueryBox: TUniQuery
    Connection = DM1.db1
    SQL.Strings = (
      'select * from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1090#1080#1087'_'#1091#1087#1072#1082#1086#1074#1082#1080'"')
    Left = 216
    Top = 168
  end
end
