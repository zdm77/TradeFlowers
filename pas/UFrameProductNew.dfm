﻿object FrameProductNew: TFrameProductNew
  Left = 0
  Top = 0
  Width = 982
  Height = 599
  TabOrder = 0
  object chkDel: TcxCheckBox
    Left = 239
    Top = 35
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1089#1082#1088#1099#1090#1099#1077
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 0
    Transparent = True
    Width = 130
  end
  inline FrameTopPanel1: TFrameTopPanel
    Left = 0
    Top = 0
    Width = 982
    Height = 32
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 982
    ExplicitHeight = 32
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
            ItemName = 'btnLoadPrice'
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
            ItemName = 'btnRefresh'
          end
          item
            Visible = True
            ItemName = 'btnExport'
          end>
      end
      inherited btnRest: TdxBarLargeButton
        Caption = #1048#1084#1087#1086#1088#1090
        Enabled = True
        Hint = #1048#1084#1087#1086#1088#1090
        Visible = ivAlways
        LargeImageIndex = 28
      end
      inherited btnRazdel: TdxBarLargeButton
        Caption = #1042' Excel'
        Hint = #1042' Excel'
        Visible = ivAlways
        LargeImageIndex = 23
      end
      inherited btnЗакупка: TdxBarButton
        Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1087#1088#1072#1081#1089
        Hint = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1087#1088#1072#1081#1089
        LargeImageIndex = 28
      end
      inherited btnExport: TdxBarLargeButton
        Visible = ivAlways
      end
      inherited btnLoadPrice: TdxBarLargeButton
        Visible = ivNever
        OnClick = btnLoadPriceClick
      end
    end
  end
  inline FrameSearch1: TFrameSearch
    Left = 0
    Top = 32
    Width = 982
    Height = 28
    Align = alTop
    TabOrder = 2
    ExplicitTop = 32
    ExplicitWidth = 982
    inherited Group1: TcxGroupBox
      ExplicitWidth = 982
      Width = 982
      inherited LabelName: TcxLabel
        Style.IsFontAssigned = True
        Visible = False
      end
      inherited edtName: TcxTextEdit
        Left = 43
        Visible = False
        ExplicitLeft = 43
        ExplicitWidth = 190
        Width = 190
      end
    end
  end
  object GridProduct: TcxGrid
    Left = 0
    Top = 60
    Width = 982
    Height = 539
    Align = alClient
    TabOrder = 3
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object ViewProduct: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      FilterBox.CustomizeButtonAlignment = fbaLeft
      FilterBox.Position = fpTop
      FilterBox.Visible = fvAlways
      DataController.DataSource = dsProduct
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.Active = True
      DataController.Filter.SupportedLike = False
      DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsBehavior.FocusCellOnTab = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ShowColumnFilterButtons = sfbAlways
      object ColumnType: TcxGridDBColumn
        DataBinding.FieldName = #1058#1080#1087
        Visible = False
        GroupIndex = 0
      end
      object ColumnCountry: TcxGridDBColumn
        DataBinding.FieldName = #1057#1090#1088#1072#1085#1072
        Visible = False
        GroupIndex = 1
      end
      object ColumnSort: TcxGridDBColumn
        DataBinding.FieldName = #1057#1086#1088#1090
        Visible = False
        GroupIndex = 2
        Width = 115
      end
      object ColumnPlant: TcxGridDBColumn
        Caption = #1055#1083#1072#1085#1090#1072#1094#1080#1103'/'#1055#1086#1089#1090#1072#1074#1097#1080#1082
        DataBinding.FieldName = #1055#1083#1072#1085#1090#1072#1094#1080#1103
        Width = 180
      end
      object ColumnDlina: TcxGridDBColumn
        Caption = #1044#1083#1080#1085#1072
        DataBinding.FieldName = #1076#1083#1080#1085#1072
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        Width = 66
      end
      object ColumnPrice: TcxGridDBColumn
        Caption = #1062#1077#1085#1072
        DataBinding.FieldName = #1094#1077#1085#1072
        Width = 93
      end
      object ColumnDate: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1079#1072#1082#1091#1087#1082#1080
        DataBinding.FieldName = #1076#1072#1090#1072'_'#1087#1088#1072#1081#1089#1072
        Width = 107
      end
    end
    object GridProductLevel1: TcxGridLevel
      GridView = ViewProduct
    end
  end
  object chkGroup: TcxCheckBox
    Left = 152
    Top = 33
    Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1075#1088#1091#1087#1087#1080#1088#1086#1074#1082#1091
    TabOrder = 4
    Transparent = True
    OnClick = chkGroupClick
    Width = 145
  end
  object chkLast: TcxCheckBox
    Left = 3
    Top = 33
    Caption = #1055#1086#1089#1083#1077#1076#1085#1080#1077' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103
    State = cbsChecked
    TabOrder = 5
    Transparent = True
    OnClick = chkLastClick
    Width = 152
  end
  object QueryProduct: TUniQuery
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
      'SELECT'
      '  p."'#1076#1072#1090#1072'_'#1087#1088#1072#1081#1089#1072'",'
      '  p."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'",'
      '  pd."'#1094#1077#1085#1072'",'
      '  pd."'#1076#1083#1080#1085#1072'",'
      '  pd."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'",'
      '  pl.uni_name '#1055#1083#1072#1085#1090#1072#1094#1080#1103','
      '  st.uni_name '#1057#1090#1088#1072#1085#1072','
      '  t.uni_name '#1058#1080#1087','
      '  s.uni_name '#1057#1086#1088#1090','
      '  pd."'#1082#1086#1076'_'#1087#1088#1072#1081#1089#1072'",'
      '  pl."'#1082#1086#1076'_'#1089#1090#1088#1072#1085#1099'",'
      '  s."'#1082#1086#1076'_'#1090#1080#1087#1072'",'
      '  pd.id'
      'FROM'
      '  "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1087#1088#1072#1081#1089'" p'
      
        '  INNER JOIN "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1087#1088#1072#1081#1089'_'#1076#1077#1090#1072#1083#1100'" pd ON (p.id = pd."'#1082#1086#1076'_'#1087#1088 +
        #1072#1081#1089#1072'")'
      
        '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pl ON (p."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" = ' +
        'pl.id)'
      
        '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1090#1088#1072#1085#1099'" st ON (pl."'#1082#1086#1076'_'#1089#1090#1088#1072#1085#1099'" = st.id' +
        ')'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1090#1080#1087#1099'" t ON (p."'#1082#1086#1076'_'#1090#1080#1087#1072'" = t.id)'
      '  INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1086#1088#1090#1072'" s ON (pd."'#1082#1086#1076'_'#1089#1086#1088#1090#1072'" = s.id)'
      '  where 1=1'
      ' and (p."'#1076#1072#1090#1072'_'#1087#1088#1072#1081#1089#1072'", pd.'#1082#1086#1076'_'#1089#1086#1088#1090#1072', '#1076#1083#1080#1085#1072') in ('
      '         select max('#1076#1072#1090#1072'_'#1087#1088#1072#1081#1089#1072'),'
      '         '#1082#1086#1076'_'#1089#1086#1088#1090#1072','
      '         '#1076#1083#1080#1085#1072
      '         from "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1087#1088#1072#1081#1089'_'#1076#1077#1090#1072#1083#1100'" pd1'
      
        '         inner join "'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1087#1088#1072#1081#1089'" p1 on (p1.id=pd1."'#1082#1086#1076'_'#1087#1088 +
        #1072#1081#1089#1072'")'
      '         group by '#1082#1086#1076'_'#1089#1086#1088#1090#1072', '#1076#1083#1080#1085#1072
      ' )')
    MasterSource = dsTree
    Left = 489
    Top = 300
  end
  object dsProduct: TDataSource
    DataSet = QueryProduct
    Left = 491
    Top = 345
  end
  object il1: TImageList
    Left = 331
    Top = 467
    Bitmap = {
      494C010102000500BC0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  object Style1: TcxStyleRepository
    Left = 272
    Top = 376
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInactiveBorder
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TextColor = clWhite
    end
    object cxStyle2: TcxStyle
    end
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
    Left = 391
    Top = 345
  end
  object dsTree: TDataSource
    DataSet = QueryTree
    Left = 166
    Top = 396
  end
  object QueryTree: TUniQuery
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
      
        'select * from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1088#1086#1076#1091#1082#1094#1080#1103'1" order by id, pid, uni_nam' +
        'e')
    Left = 149
    Top = 467
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
    Left = 455
    Top = 417
  end
end
