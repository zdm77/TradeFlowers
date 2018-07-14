object FrameStatFacturPlant: TFrameStatFacturPlant
  Left = 0
  Top = 0
  Width = 882
  Height = 638
  TabOrder = 0
  object Group1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
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
    TabOrder = 0
    Height = 49
    Width = 882
    object Label1: TLabel
      Left = 8
      Top = 19
      Width = 11
      Height = 13
      Caption = #1057':'
    end
    object Label2: TLabel
      Left = 119
      Top = 19
      Width = 17
      Height = 13
      Caption = #1055#1086':'
    end
    object edtOt: TsDateEdit
      Left = 25
      Top = 15
      Width = 86
      Height = 21
      AutoSize = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      TabOrder = 0
      OnKeyDown = edtOtKeyDown
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'EDIT'
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
      OnCloseUp = edtOtCloseUp
      DefaultToday = True
    end
    object edtDo: TsDateEdit
      Left = 136
      Top = 15
      Width = 86
      Height = 21
      AutoSize = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      TabOrder = 1
      Text = '  .  .    '
      OnChange = edtDoChange
      OnKeyDown = edtDoKeyDown
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'EDIT'
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
      OnCloseUp = edtDoCloseUp
    end
    object btnExcel: TcxButton
      Left = 228
      Top = 11
      Width = 75
      Height = 30
      Caption = #1042' Excel'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Blue'
      OptionsImage.ImageIndex = 23
      OptionsImage.Images = FOsn.imgMidle
      TabOrder = 2
      OnClick = btnExcelClick
    end
  end
  object GridStatFact: TcxGrid
    Left = 0
    Top = 49
    Width = 882
    Height = 589
    Align = alClient
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object ViewUsers: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = dsStatFactur
      DataController.Summary.DefaultGroupSummaryItems = <
        item
          Format = '$ ,0.00;$ -,0.00'
          Kind = skSum
          Position = spFooter
          Column = ViewUsers_2
        end
        item
          Format = '$ ,0.00;$ -,0.00'
          Kind = skSum
          Column = ViewUsers_2
        end>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '$ ,0.00;$ -,0.00'
          Kind = skSum
          Column = ViewUsers_2
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Editing = False
      OptionsView.Footer = True
      OptionsView.HeaderAutoHeight = True
      OptionsView.ShowColumnFilterButtons = sfbAlways
      object ViewUsers_: TcxGridDBColumn
        Caption = #8470' '#1092#1072#1082#1090#1091#1088#1099
        DataBinding.FieldName = #1085#1086#1084#1077#1088'_'#1092#1072#1082#1090#1091#1088#1099
      end
      object ViewUsers_1: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = #1076#1072#1090#1072'_'#1092#1072#1082#1090#1091#1088#1099
      end
      object ViewUsers_2: TcxGridDBColumn
        Caption = #1057#1091#1084#1084#1072
        DataBinding.FieldName = #1089#1091#1084#1084#1072'_'#1092#1072#1082#1090#1091#1088#1099
        PropertiesClassName = 'TcxCalcEditProperties'
        Properties.DisplayFormat = '$ ,0.00;$ -,0.00'
        Width = 127
      end
      object ViewUsersname: TcxGridDBColumn
        Caption = #1052#1072#1088#1080#1082#1088#1086#1074#1082#1072
        DataBinding.FieldName = 'name'
        Width = 255
      end
      object ViewUsersname_1: TcxGridDBColumn
        Caption = #1055#1083#1072#1085#1090#1072#1094#1080#1103
        DataBinding.FieldName = 'name_1'
        Visible = False
        GroupIndex = 0
        Width = 255
      end
    end
    object LevelOrg: TcxGridLevel
      GridView = ViewUsers
    end
  end
  object QueryStatFactur: TUniQuery
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
      'SELECT sad."'#1085#1086#1084#1077#1088'_'#1092#1072#1082#1090#1091#1088#1099'",'
      '        sad."'#1076#1072#1090#1072'_'#1092#1072#1082#1090#1091#1088#1099'",'
      '        sad."'#1089#1091#1084#1084#1072'_'#1092#1072#1082#1090#1091#1088#1099'",'
      '        m.name,'
      '        pl.name'
      ' FROM "'#1073#1091#1093'".sub_awb_detail sad'
      
        '      INNER JOIN "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pl ON (sad."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094 +
        #1080#1080'" = pl.id)'
      '      inner join "'#1073#1091#1093'".sub_awb sa on (sa.id = sad."'#1082#1086#1076'_sub_awb")'
      
        '      inner join "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"."'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'" m on (m.id = sa."'#1082#1086#1076'_' +
        #1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'")'
      ' where sad."'#1089#1091#1084#1084#1072'_'#1092#1072#1082#1090#1091#1088#1099'" <> 0'
      ' order by pl.name, sad."'#1076#1072#1090#1072'_'#1092#1072#1082#1090#1091#1088#1099'"')
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    Left = 480
    Top = 208
  end
  object dsStatFactur: TDataSource
    DataSet = QueryStatFactur
    Left = 480
    Top = 272
  end
end
