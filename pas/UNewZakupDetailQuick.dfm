object FNewZakupDetailQuick: TFNewZakupDetailQuick
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1047#1072#1082#1091#1087#1082#1072
  ClientHeight = 421
  ClientWidth = 514
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object edtSort: TcxLookupComboBox
    Left = 56
    Top = 89
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        FieldName = 'uni_name'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = dsSort
    Properties.OnCloseUp = edtSortPropertiesCloseUp
    Style.LookAndFeel.Kind = lfOffice11
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.Kind = lfOffice11
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.Kind = lfOffice11
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.Kind = lfOffice11
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 2
    Width = 273
  end
  object edtType: TcxLookupComboBox
    Left = 56
    Top = 35
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        FieldName = 'uni_name'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = dsType
    Properties.OnCloseUp = edtTypePropertiesCloseUp
    Style.LookAndFeel.Kind = lfOffice11
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.Kind = lfOffice11
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.Kind = lfOffice11
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.Kind = lfOffice11
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 0
    Width = 273
  end
  object edtPlant: TcxLookupComboBox
    Left = 56
    Top = 62
    Properties.GridMode = True
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        FieldName = 'brand'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = dsPlant
    Properties.OnCloseUp = edtPlantPropertiesCloseUp
    Style.LookAndFeel.Kind = lfOffice11
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.Kind = lfOffice11
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.Kind = lfOffice11
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.Kind = lfOffice11
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 1
    Width = 273
  end
  object edtProduct: TcxLookupComboBox
    Left = 56
    Top = 116
    Properties.KeyFieldNames = 'id'
    Properties.ListColumns = <
      item
        FieldName = 'uni_name'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListOptions.SyncMode = True
    Properties.ListSource = dsProduct
    Properties.Revertable = True
    Style.LookAndFeel.Kind = lfOffice11
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.Kind = lfOffice11
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.Kind = lfOffice11
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.Kind = lfOffice11
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 3
    Width = 273
  end
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 389
    Width = 514
    Height = 32
    Align = alBottom
    TabOrder = 4
    ExplicitTop = 389
    ExplicitWidth = 514
    inherited bardxbrmngr1: TdxBarManager
      DockControlHeights = (
        0
        0
        0
        34)
      inherited dxbrBarManager1Bar: TdxBar
        ItemLinks = <
          item
            Visible = True
            ItemName = 'btnSave'
          end
          item
            Visible = True
            ItemName = 'btnNext'
          end
          item
            Visible = True
            ItemName = 'btnPrior'
          end>
      end
      inherited btnSave: TdxBarLargeButton
        Align = iaLeft
      end
      inherited btnPrior: TdxBarLargeButton
        Align = iaRight
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1087#1088#1086#1076#1086#1083#1078#1080#1090#1100
        Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1087#1088#1086#1076#1086#1083#1078#1080#1090#1100
        Visible = ivAlways
        LargeImageIndex = 13
        OnClick = btnPriorClick
      end
    end
  end
  object lblSum: TcxLabel
    Left = 15
    Top = 149
    Caption = #1044#1083#1080#1085#1072':'
    Properties.LineOptions.Alignment = cxllaBottom
    Transparent = True
  end
  object edtLength: TAdvEdit
    Left = 61
    Top = 145
    Width = 128
    Height = 21
    EmptyTextStyle = []
    LabelPosition = lpLeftCenter
    LabelTransparent = True
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
    Signed = True
    TabOrder = 6
    Text = '60'
    Visible = True
    Version = '3.3.2.0'
  end
  object lblPrice: TcxLabel
    Left = 15
    Top = 174
    Caption = #1062#1077#1085#1072':'
    Properties.LineOptions.Alignment = cxllaBottom
    Transparent = True
  end
  object edtPrice: TAdvEdit
    Left = 61
    Top = 172
    Width = 128
    Height = 21
    EmptyTextStyle = []
    Prefix = '$ '
    LabelPosition = lpLeftCenter
    LabelTransparent = True
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
    Signed = True
    TabOrder = 8
    Text = '0.5'
    Visible = True
    Version = '3.3.2.0'
  end
  object lblCount: TcxLabel
    Left = 8
    Top = 213
    Caption = #1057#1090#1077#1073#1083#1077#1081' '#1074' HB:'
    Properties.LineOptions.Alignment = cxllaBottom
    Transparent = True
  end
  object edtCount: TsCalcEdit
    Left = 90
    Top = 212
    Width = 92
    Height = 21
    AutoSize = False
    TabOrder = 10
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
    DecimalPlaces = 0
    DisplayFormat = '### ### ##0;-### ### ##0.00;0'
    Value = 100.000000000000000000
  end
  object QueryPlant: TUniQuery
    Connection = DM1.db1
    SQL.Strings = (
      'select * from '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'.'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080' where id<>1')
    Left = 504
    Top = 152
  end
  object dsPlant: TUniDataSource
    DataSet = QueryPlant
    Left = 480
    Top = 96
  end
  object QueryCountry: TUniQuery
    Connection = DM1.db1
    SQL.Strings = (
      'select * from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1090#1088#1072#1085#1099'" order by '#1087#1088#1080#1086#1088#1080#1090#1077#1090)
    Left = 440
    Top = 16
  end
  object dsCountry: TUniDataSource
    DataSet = QueryCountry
    Left = 368
  end
  object dsSort: TUniDataSource
    DataSet = QuerySort
    Left = 376
    Top = 272
  end
  object QuerySort: TUniQuery
    Connection = DM1.db1
    SQL.Strings = (
      'select * from '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'.'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080' where id<>1')
    Left = 296
    Top = 288
  end
  object QueryType: TUniQuery
    Connection = DM1.db1
    SQL.Strings = (
      'select * from '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'.'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080' where id<>1')
    Left = 304
    Top = 160
  end
  object dsType: TUniDataSource
    DataSet = QueryType
    Left = 392
    Top = 176
  end
  object QueryProduct: TUniQuery
    Connection = DM1.db1
    SQL.Strings = (
      'select * from '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'.'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080' where id<>1')
    Left = 232
    Top = 240
  end
  object dsProduct: TUniDataSource
    DataSet = QueryProduct
    Left = 296
    Top = 224
  end
end
