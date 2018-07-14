object FLogin: TFLogin
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103
  ClientHeight = 168
  ClientWidth = 246
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 0
    Height = 134
    Width = 246
    object edtLogin: TcxTextEdit
      Left = 62
      Top = 19
      ParentShowHint = False
      Properties.OnChange = edtLoginPropertiesChange
      ShowHint = True
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 0
      OnKeyDown = edtLoginKeyDown
      Width = 177
    end
    object edtPass: TcxTextEdit
      Left = 62
      Top = 46
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = '*'
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 1
      Text = '1'
      OnKeyDown = edtPassKeyDown
      Width = 177
    end
    object LabelPass: TcxLabel
      Left = 5
      Top = 48
      Caption = #1055#1072#1088#1086#1083#1100':*'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object edtSotr: TcxTextEdit
      Left = 3
      Top = 98
      Properties.EchoMode = eemPassword
      Properties.PasswordChar = '*'
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 3
      Text = '1'
      OnKeyDown = edtSotrKeyDown
      Width = 177
    end
    object cxLabel1: TcxLabel
      Left = 3
      Top = 83
      Caption = #1050#1086#1076' '#1076#1083#1103' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074':'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 5
      Top = 21
      Caption = 'Login:*'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clBlack
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.LineOptions.Alignment = cxllaBottom
      Transparent = True
    end
  end
  object dxbrmngr1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = FOsn.imgMidle
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 296
    Top = 168
    DockControlHeights = (
      0
      0
      0
      34)
    object Bardxbrmngr1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsBottom
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsBottom
      FloatLeft = 374
      FloatTop = 8
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnCancel'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'chk1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnOk'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btnCancel: TdxBarLargeButton
      Caption = #1042#1099#1093#1086#1076
      Category = 0
      Hint = #1042#1099#1093#1086#1076
      Visible = ivAlways
      LargeImageIndex = 16
      OnClick = btnCancelClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object btnOk: TdxBarLargeButton
      Align = iaRight
      Caption = #1042#1093#1086#1076
      Category = 0
      Hint = #1042#1093#1086#1076
      Visible = ivAlways
      LargeImageIndex = 1
      OnClick = btnOkClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object chk1: TcxBarEditItem
      Category = 0
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
    end
  end
  object Query1: TUniQuery
    Connection = DM1.db1
    SQL.Strings = (
      'select * from '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'.'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080)
    Left = 184
    Top = 80
  end
end
