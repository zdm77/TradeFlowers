object FrameSave: TFrameSave
  Left = 0
  Top = 0
  Width = 455
  Height = 32
  TabOrder = 0
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
    Left = 168
    Top = 8
    DockControlHeights = (
      0
      0
      0
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
          ItemName = 'btnPrior'
        end
        item
          Visible = True
          ItemName = 'btnNext'
        end
        item
          Visible = True
          ItemName = 'btnSave'
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
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Visible = ivAlways
      LargeImageIndex = 13
      OnClick = btnSaveClick
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object btnNext: TdxBarLargeButton
      Caption = #1044#1072#1083#1077#1077
      Category = 0
      Hint = #1044#1072#1083#1077#1077
      Visible = ivNever
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
    object btnPrior: TdxBarLargeButton
      Caption = #1053#1072#1079#1072#1076
      Category = 0
      Hint = #1053#1072#1079#1072#1076
      Visible = ivNever
      AutoGrayScale = False
      GlyphLayout = glLeft
    end
  end
end
