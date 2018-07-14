object FImport: TFImport
  Left = 0
  Top = 0
  Caption = #1048#1084#1087#1086#1088#1090' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1081
  ClientHeight = 589
  ClientWidth = 933
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GridOrder: TStringGrid
    Left = 0
    Top = 34
    Width = 933
    Height = 521
    Align = alClient
    ColCount = 4
    DrawingStyle = gdsGradient
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goEditing]
    TabOrder = 0
    OnKeyUp = GridOrderKeyUp
    ColWidths = (
      178
      207
      208
      64)
  end
  object bardxbrmngr1: TdxBarManager
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
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    Style = bmsOffice11
    UseSystemFont = True
    Left = 88
    Top = 87
    DockControlHeights = (
      0
      0
      34
      34)
    object dxbrBarManager1Bar: TdxBar
      AllowClose = False
      AllowQuickCustomizing = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsBottom
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsBottom
      FloatLeft = 616
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnSave'
        end
        item
          Visible = True
          ItemName = 'btnImport2'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object bardxbrmngr1Bar1: TdxBar
      AllowClose = False
      AllowQuickCustomizing = False
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 636
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btnPast'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btnDel'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btnSave: TdxBarLargeButton
      Align = iaRight
      Caption = #1048#1084#1087#1086#1088#1090
      Category = 0
      Hint = #1048#1084#1087#1086#1088#1090
      Visible = ivAlways
      LargeImageIndex = 13
      OnClick = btnSaveClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object btnSaveClose: TdxBarLargeButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1079#1072#1082#1088#1099#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080' '#1079#1072#1082#1088#1099#1090#1100
      Visible = ivNever
      LargeImageIndex = 24
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object btnPast: TdxBarLargeButton
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1042#1089#1090#1072#1074#1080#1090#1100
      Visible = ivAlways
      LargeImageIndex = 30
      OnClick = btnPastClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object btnDel: TdxBarLargeButton
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      Category = 0
      Hint = #1054#1095#1080#1089#1090#1080#1090#1100
      Visible = ivAlways
      LargeImageIndex = 5
      OnClick = btnDelClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object btnImport2: TdxBarLargeButton
      Caption = #1048#1084#1087#1086#1088#1090' '#1080#1079' '#1054#1047#1059
      Category = 0
      Hint = #1048#1084#1087#1086#1088#1090' '#1080#1079' '#1054#1047#1059
      Visible = ivNever
      OnClick = btnImport2Click
      GlyphLayout = glLeft
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
end
