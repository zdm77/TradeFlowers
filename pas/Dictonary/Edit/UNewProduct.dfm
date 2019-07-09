object FNewProduct: TFNewProduct
  Left = 0
  Top = 0
  VertScrollBar.ButtonSize = 2
  VertScrollBar.Visible = False
  Caption = #1050#1072#1088#1090#1086#1095#1082#1072' '#1090#1086#1074#1072#1088#1072
  ClientHeight = 242
  ClientWidth = 493
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupOsn: TcxGroupBox
    Left = 0
    Top = 63
    Align = alBottom
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
    Height = 147
    Width = 493
    object btnName: TcxButton
      Left = 3
      Top = 16
      Width = 94
      Height = 28
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 0
      OnClick = btnNameClick
    end
    object lblUniName: TcxLabel
      Left = 6
      Top = 45
      Caption = #1052#1077#1078#1076#1091#1085#1072#1088#1086#1076#1085#1099#1081':'
      Transparent = True
    end
    object edtUniName: TcxTextEdit
      Left = 103
      Top = 43
      Properties.OnChange = edtUniNamePropertiesChange
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 2
      OnKeyUp = edtUniNameKeyUp
      Width = 385
    end
    object edtName: TcxTextEdit
      Left = 103
      Top = 65
      Properties.OnChange = edtNamePropertiesChange
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 3
      OnKeyUp = edtNameKeyUp
      Width = 385
    end
    object lblName: TcxLabel
      Left = 6
      Top = 67
      Caption = #1056#1091#1089#1089#1082#1080#1081':'
      Transparent = True
    end
    object edtRegName: TcxTextEdit
      Left = 103
      Top = 87
      Properties.OnChange = edtRegNamePropertiesChange
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 5
      OnKeyUp = edtRegNameKeyUp
      Width = 385
    end
    object lblRegName: TcxLabel
      Left = 6
      Top = 89
      Caption = #1056#1077#1075#1080#1086#1085#1072#1083#1100#1085#1099#1081':'
      Transparent = True
    end
    object edtPrice: TsCalcEdit
      Left = 103
      Top = 113
      Width = 106
      Height = 21
      AutoSize = False
      TabOrder = 7
      OnKeyDown = edtPriceKeyDown
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
    end
    object lblPrice: TcxLabel
      Left = 6
      Top = 112
      Caption = #1062#1077#1085#1072':'
      Transparent = True
    end
  end
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 210
    Width = 493
    Height = 32
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 210
    ExplicitWidth = 493
    inherited bardxbrmngr1: TdxBarManager
      DockControlHeights = (
        0
        0
        0
        34)
      inherited btnSave: TdxBarLargeButton
        OnClick = FrameSave1btnSaveClick
      end
    end
  end
  object GroupTTH: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = #1057#1074#1086#1081#1089#1090#1074#1072
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 2
    Height = 63
    Width = 493
  end
  object dsTTH: TDataSource
    DataSet = QueryTTH
    Left = 320
    Top = 185
  end
  object QueryTTH: TUniQuery
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
    Left = 231
    Top = 165
  end
  object QueryName: TUniQuery
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
    Left = 383
    Top = 141
  end
end
