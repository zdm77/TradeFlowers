object FNewSort: TFNewSort
  Left = 0
  Top = 0
  Caption = #1057#1086#1088#1090
  ClientHeight = 404
  ClientWidth = 499
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 368
    Width = 499
    Height = 36
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 368
    ExplicitWidth = 499
    ExplicitHeight = 36
    inherited bardxbrmngr1: TdxBarManager
      DockControlHeights = (
        0
        0
        0
        34)
      inherited btnSave: TdxBarLargeButton
        Visible = ivNever
        OnClick = FrameSave1btnSaveClick
      end
      inherited btnNext: TdxBarLargeButton
        Visible = ivAlways
        LargeImageIndex = 25
        OnClick = btnNextClick
        GlyphLayout = glRight
      end
      inherited btnPrior: TdxBarLargeButton
        LargeImageIndex = 26
        OnClick = btnPriorClick
      end
    end
  end
  object Page1: TcxPageControl
    Left = 0
    Top = 0
    Width = 499
    Height = 368
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = TabCountry
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = ''
    OnChange = Page1Change
    ClientRectBottom = 368
    ClientRectRight = 499
    ClientRectTop = 24
    object Tabab1: TcxTabSheet
      Caption = #1054#1089#1085#1086#1074#1085#1099#1077
      ImageIndex = 0
      object GroupOsn: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 0
        Height = 344
        Width = 499
        object mmoDescr: TcxMemo
          Left = 120
          Top = 111
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 1
          Height = 35
          Width = 269
        end
        object lblDescr: TcxLabel
          Left = 3
          Top = 111
          Caption = #1054#1087#1080#1089#1072#1085#1080#1077':'
          Properties.LineOptions.Alignment = cxllaBottom
          Transparent = True
        end
        object edtQuantity: TsCalcEdit
          Left = 120
          Top = 149
          Width = 115
          Height = 21
          AutoSize = False
          TabOrder = 2
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
          DisplayFormat = '### ### ##0;-### ### ##0;0'
          Value = 25.000000000000000000
        end
        object lblCount: TcxLabel
          Left = 3
          Top = 151
          Caption = #1057#1090#1077#1073#1083#1077#1081' '#1074' '#1091#1087#1072#1082#1086#1074#1082#1077':'
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          Transparent = True
        end
        object edtType: TcxLookupComboBox
          Left = 120
          Top = 15
          Properties.DropDownListStyle = lsFixedList
          Properties.KeyFieldNames = 'id'
          Properties.ListColumns = <
            item
              FieldName = 'name'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = dsType
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
          TabOrder = 4
          Width = 269
        end
        object LabelType: TcxLabel
          Left = 3
          Top = 17
          Caption = #1058#1080#1087':'
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
        inline FrameUniName1: TFrameUniName
          Left = 2
          Top = 40
          Width = 500
          Height = 72
          TabOrder = 6
          ExplicitLeft = 2
          ExplicitTop = 40
          ExplicitWidth = 500
          ExplicitHeight = 72
          inherited Group1: TcxGroupBox
            ExplicitWidth = 500
            ExplicitHeight = 72
            Height = 72
            Width = 500
            inherited lblName: TcxLabel
              Left = 1
              Top = 25
              ExplicitLeft = 1
              ExplicitTop = 25
            end
            inherited lblUniName: TcxLabel
              Left = 1
              Top = 1
              ExplicitLeft = 1
              ExplicitTop = 1
            end
            inherited edtUniName: TcxTextEdit
              Left = 118
              Top = 0
              Properties.OnEditValueChanged = FrameUniName1edtUniNamePropertiesEditValueChanged
              OnKeyUp = FrameUniName1edtUniNameKeyUp
              ExplicitLeft = 118
              ExplicitTop = 0
              ExplicitWidth = 269
              Width = 269
            end
            inherited edtRegName: TcxTextEdit
              Left = 118
              Properties.OnEditValueChanged = FrameUniName1edtRegNamePropertiesEditValueChanged
              OnKeyUp = FrameUniName1edtRegNameKeyUp
              ExplicitLeft = 118
              ExplicitWidth = 269
              Width = 269
            end
            inherited lblRegName: TcxLabel
              Left = 1
              ExplicitLeft = 1
            end
            inherited edtName: TcxTextEdit
              Left = 118
              Top = 23
              Properties.OnEditValueChanged = FrameUniName1edtNamePropertiesEditValueChanged
              OnKeyUp = FrameUniName1edtNameKeyUp
              ExplicitLeft = 118
              ExplicitTop = 23
              ExplicitWidth = 269
              Width = 269
            end
            inherited chkUseName: TCheckBox
              Visible = False
            end
            inherited btnTranslit: TcxButton
              Left = 389
              Top = 0
              LookAndFeel.NativeStyle = False
              ExplicitLeft = 389
              ExplicitTop = 0
            end
          end
        end
        object GroupImage: TcxGroupBox
          Left = 2
          Top = 185
          Align = alBottom
          Caption = #1048#1079#1086#1073#1088#1072#1078#1077#1085#1080#1077
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 7
          Height = 157
          Width = 495
          object btnOpen: TcxButton
            Left = 4
            Top = 16
            Width = 28
            Height = 28
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Office2007Blue'
            OptionsImage.Glyph.Data = {
              36090000424D3609000000000000360000002800000018000000180000000100
              2000000000000009000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000856150FF83604FFF835F4FFF835F4FFF825F4FFF825F4FFF825E
              4EFF825E4EFF815E4EFF815F4EFF805D4DFF7F5E4DFF7F5C4CFF007200FF0071
              00FF006F00FF006D00FFA28C81FF000000000000000000000000000000000000
              0000000000007F5C4BFFEFDECEFFEFDECEFFEFDECEFFEFDECEFFEFDECEFFEFDE
              CEFFEFDECEFFEFDECDFFEFDDCDFFEFDDCCFFEFDDCBFFEFDCC9FF007500FF40D9
              73FF3ED771FF24BD43FFF1DCC8FF000000000000000000000000000000000000
              000000000000815C4AFFFCF6EBFFFBF5EAFFDFC7B8FFDFC7B9FFDFC7B8FFDFC6
              B8FFDFC5B7FFDFC4B4FFDFC3B4FFDFC3B1FFDFC0AEFFDFC0ABFF007900FF44DD
              77FF42DB75FF26BF44FFF0DCC9FF000000000000000000000000000000000000
              000000000000825C4BFFFBF5ECFFFCF6ECFFDBC0B3FFDBC0B3FFDBC0B3FFDBBF
              B2FFDABEB0FFDABDAEFFDABCABFF007F00FF007F00FF007E00FF007D00FF47E0
              7AFF45DE78FF28C147FF007400FF007100FF006E00FF00000000000000000000
              000000000000845D4AFFFCF6EEFFFCF7EEFFDBC2B7FFDBC3B8FFDBC2B7FFDBC2
              B5FFDBC0B4FFDBBFB1FFDBBDAEFF008300FF4FE882FF4EE781FF4DE680FF4BE4
              7EFF48E17BFF45DE78FF42DB75FF3FD872FF23BC42FF00000000000000000000
              000000000000875E4BFFFCF7F0FFFCF8F0FFDBC4BBFFDBC4BCFFDBC4BBFFDBC3
              BAFFDBC2B7FFDBBFB4FFDBBEB1FF008700FF54ED87FF53EC86FF51EA84FF4EE7
              81FF4BE47EFF48E17BFF45DE78FF41DA74FF25BE43FF00000000000000000000
              000000000000875F4CFFFCF8F2FFFDF9F2FFDBC6C0FFDBC6C1FFDBC6BFFFDBC5
              BCFFDBC2BAFFDBC1B6FFDBC0B3FF008B00FF86F7A5FF86F6A4FF84F4A3FF51EA
              84FF4EE781FF4AE37DFF7CEC9BFF7AEA98FF3FD872FF00000000000000000000
              00000000000089604DFFFDF9F4FFFDFAF5FFDBC8C2FFDBC9C4FFDBC8C2FFDBC6
              BEFFDBC4BBFFDBC2B9FFDBC1B5FFE6D1C8FFE6D0C6FFE6CFC4FF008900FF54ED
              87FF50E983FF2EC74CFFF2E1D3FF000000000000000000000000000000000000
              0000000000008A634EFFFDFAF6FFFDFBF7FFDBC7C4FFDBC8C5FFDBC7C3FFDBC6
              C0FFDBC5BDFFDBC2B9FFDBC1B6FFDBBFB3FFDBBDAFFFDBBCACFF008B00FF56EF
              89FF51EA84FF2EC74DFFF2E1D4FF000000000000000000000000000000000000
              0000000000008C644FFFFDFBF8FFFEFCF9FFDCC7C2FFDCC8C3FFDCC7C2FFDCC6
              C0FFDBC4BDFFDBC3BAFFDBC0B7FFDBBFB2FFDBBEB0FFDBBBACFF008D00FF85F5
              A4FF82F2A1FF4DE680FFF2E1D3FF000000000000000000000000000000000000
              0000000000008F6450FFFEFCFAFFFEFDFBFFDCC7C1FFDCC7C1FFDCC7C0FFDCC6
              BFFFDCC4BCFFDCC3BAFFDBC1B6FFDBBEB3FFDBBDAFFFDBBCACFFE6CFC3FFE6CC
              BFFFFDF9F3FFFEF9F3FFF2E2D5FF000000000000000000000000000000000000
              000000000000906552FFFEFDFCFFFEFEFDFFDCC5BFFFDCC6BFFFDCC5BFFFDCC4
              BEFFDCC3BBFFDCC2B8FFDCC1B6FFDBBFB2FFDBBDB0FFDBBBACFFDBBAA8FFDBB8
              A4FFFCF7EFFFFDF7EFFFECD5C4FF000000000000000000000000000000000000
              000000000000926652FFFEFFFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
              FEFFFEFEFDFFFEFDFCFFFEFCFAFFFEFCF8FFFDFBF7FFFDFAF5FFFDF9F3FFFCF8
              F1FFFCF7EFFFFCF7EEFFEDD5C3FF000000000000000000000000000000000000
              000000000000936753FFFFFFFFFFFFFFFFFFE2D2D1FFE2D3D2FFE2D2D0FFE2D1
              CEFFE1CFCAFFE1CDC8FFE1CBC3FFE1CAC0FFE0C7BCFFE0C5B8FFE0C4B4FFE0C2
              AFFFFCF7F0FFFCF7EFFFEDD5C5FF000000000000000000000000000000000000
              000000000000956A54FFFFFFFFFFFFFFFFFFDDCBC9FFDDCCCBFFDDCAC9FFDDC9
              C6FFDDC7C2FFDCC5BEFFDCC2BAFFDCC0B5FFDBBEB1FFDBBBADFFDBBAA9FFDCB8
              A4FFFCF9F0FFFCF8F0FFEBD3C2FF000000000000000000000000000000000000
              000000000000966B54FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFEFEFEFFFEFDFCFFFEFCFAFFFFFDF9FFFFFFFCFFFDFCF7FFF5F0
              EAFFECE5DEFFE5DCD6FFB18F7FFF000000000000000000000000000000000000
              000000000000986C55FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFEFEFEFFFEFDFCFFFEFCFAFFFFFFFEFFA48373FFC8B3A5FFC5A8
              8EFFC19C78FFB88F65FF986B5834000000000000000000000000000000000000
              0000000000009A6B56FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFEFEFEFFFEFDFCFFFEFCFAFFFFFEFBFFA78675FFF5E2C3FFEECE
              9BFFCBA06BFF9767572000000000000000000000000000000000000000000000
              0000000000009A6B56FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFEFEFEFFFEFDFCFFFEFDFBFFFEFCF9FFFFFEFAFFA58069FFEECE98FFCCA0
              6AFF9A6C5C210000000000000000000000000000000000000000000000000000
              000000000000996C55FFFEFFFDFFFEFEFEFFFEFEFEFFFFFFFFFFFEFEFEFFFEFE
              FDFFFEFDFCFFFEFDFBFFFEFCFAFFFDFBF8FFFFFDF9FFA37C5EFFBF9465FF9B71
              6312000000000000000000000000000000000000000000000000000000000000
              000000000000966B56FFFEFEFBFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFD
              FCFFFEFDFBFFFEFCF9FFFDFBF8FFFDFBF7FFFFFFFBFF986F56FF936B5D130000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000009B715DFF9B6F5BFF9A6F5AFF996E5AFF996F5BFF986D59FF976C
              58FF956B59FF946A57FF936956FF916855FF906856F97F5F3F08000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            TabOrder = 0
            OnClick = btnOpenClick
          end
          object btnDel: TcxButton
            Left = 38
            Top = 16
            Width = 28
            Height = 28
            LookAndFeel.SkinName = 'Office2007Blue'
            OptionsImage.Glyph.Data = {
              36090000424D3609000000000000360000002800000018000000180000000100
              2000000000000009000000000000000000000000000000000000000000000000
              D00B000CB8A70000D40C0000000000000000000000000000FF010000A62B0000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000012
              C0FD1C49E4FF0C28B6FF4D4DB5FF8A6859FFB5A097FF030DAEFF092BB6FF010A
              AAFFB4A09AFF815E4EFF815F4EFF805D4DFF7F5E4DFF7F5C4CFF7E5D4CFF7D5B
              4BFF7C5A4AFF7B5B4AFF7B5B4BFF000000000000000000000000000000000011
              C3F82D6AFFFF265BFFFF1639B0FF2930BCFF0311B7FF194FFFFF144CFFFF0D3C
              E6FF060AA4FFF0E0D1FFEFDDCDFFEFDDCCFFEFDDCBFFEFDCC9FFEEDAC7FFEED9
              C4FFEED8C1FFEDD7BEFFEBCDB0FF000000000000000000000000000000000014
              D0D83778FFFF2B60FFFF295EFFFF183CB4FF2257FFFF1D53FFFF194FFFFF134A
              FFFF1C1EABFFE3CABCFFDFC3B4FFDFC3B1FFDFC0AEFFDFC0ABFFDEBFA9FFDEBB
              A5FFF9EFDEFFFAEEDCFFEACDB2FF000000000000000000000000000000000000
              FF01000FC5EA3E80FDFF2F64FFFF2A5FFFFF265BFFFF2158FFFF1644F1FF6967
              C6FFDCC1B4FFDABDAEFFDABCABFFDABAAAFFDAB8A6FFDAB7A3FFDAB6A0FFD9B4
              9DFFFAF1E3FFF9F0E0FFEBCFB6FF000000000000000000000000000000000000
              0000000000006968BAFF3871FBFF2F64FFFF2A5FFFFF1D46D2FF3E43C4FFDBC2
              B5FFDBC0B4FFDBBFB1FFDBBDAEFFDABBACFFDABAA9FFDAB8A6FFDAB6A2FFDAB5
              9FFFFBF3E6FFFAF2E6FFEDD0BBFF000000000000000000000000000000000000
              0000000000000A1CC7FF3B70FFFF3468FFFF346FFFFF2A5FFFFF102EB3FFCAC2
              D9FFDBC2B7FFDBBFB4FFDBBEB1FFDBBDAEFFDBBCABFFDAB9A7FFDAB8A4FFDAB6
              A0FFFBF3E7FFFCF4E7FFECD2BEFF000000000000000000000000000000000000
              00000000FF022F5CF1FF3D71FFFF3160F9FF0115C4FF3573FFFF2456FBFF0214
              BBFFE5D4CEFFDBC1B6FFDBC0B3FFDBBDB0FFDBBCACFFDBBBA9FFDAB8A6FFDAB7
              A2FFFBF4E9FFFBF4E8FFECD3C0FF000000000000000000000000000000000000
              00000021ED905086FFFF3F70FEFF1629CEFFE9DDD9FF041AC7FF2E6BFFFF1A41
              C9FF3138C0FFDBC3BAFFDBC1B5FFDBBEB1FFDBBCAEFFDBBBABFFDBB9A7FFDAB7
              A3FFFBF5EAFFFBF5EBFFECD4C1FF000000000000000000000000000000000000
              0000002AFE673468F3FF1F47EBFFFBFAF9FFDBC7C4FFE7DCDEFF0A28D1FF2764
              FFFF0419C4FFE7D6D0FFDBC1B6FFDBBFB3FFDBBDAFFFDBBCACFFDBB9A8FFDBB8
              A4FFFBF5ECFFFBF6ECFFECD4C2FF000000000000000000000000000000000000
              000000000000BAA397FF95A4F5FFFEFCF9FFDCC7C2FFDCC8C3FFD8CFDDFFB2AF
              DAFFE2D0CAFFDBC3BAFFDBC0B7FFDBBFB2FFDBBEB0FFDBBBACFFDBB9A8FFDBB8
              A5FFFCF6EDFFFBF6EDFFECD4C1FF000000000000000000000000000000000000
              0000000000008F6450FFFEFCFAFFFEFDFBFFDCC7C1FFDCC7C1FFDCC7C0FFDCC6
              BFFFDCC4BCFFDCC3BAFFDBC1B6FFDBBEB3FFDBBDAFFFDBBCACFFDBBAA9FFDBB7
              A4FFFCF6EEFFFDF7EEFFECD5C3FF000000000000000000000000000000000000
              000000000000906552FFFEFDFCFFFEFEFDFFDCC5BFFFDCC6BFFFDCC5BFFFDCC4
              BEFFDCC3BBFFDCC2B8FFDCC1B6FFDBBFB2FFDBBDB0FFDBBBACFFDBBAA8FFDBB8
              A4FFFCF7EFFFFDF7EFFFECD5C4FF000000000000000000000000000000000000
              000000000000926652FFFEFFFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
              FEFFFEFEFDFFFEFDFCFFFEFCFAFFFEFCF8FFFDFBF7FFFDFAF5FFFDF9F3FFFCF8
              F1FFFCF7EFFFFCF7EEFFEDD5C3FF000000000000000000000000000000000000
              000000000000936753FFFFFFFFFFFFFFFFFFE2D2D1FFE2D3D2FFE2D2D0FFE2D1
              CEFFE1CFCAFFE1CDC8FFE1CBC3FFE1CAC0FFE0C7BCFFE0C5B8FFE0C4B4FFE0C2
              AFFFFCF7F0FFFCF7EFFFEDD5C5FF000000000000000000000000000000000000
              000000000000956A54FFFFFFFFFFFFFFFFFFDDCBC9FFDDCCCBFFDDCAC9FFDDC9
              C6FFDDC7C2FFDCC5BEFFDCC2BAFFDCC0B5FFDBBEB1FFDBBBADFFDBBAA9FFDCB8
              A4FFFCF9F0FFFCF8F0FFEBD3C2FF000000000000000000000000000000000000
              000000000000966B54FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFEFEFEFFFEFDFCFFFEFCFAFFFFFDF9FFFFFFFCFFFDFCF7FFF5F0
              EAFFECE5DEFFE5DCD6FFB18F7FFF000000000000000000000000000000000000
              000000000000986C55FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFEFEFEFFFEFDFCFFFEFCFAFFFFFFFEFFA48373FFC8B3A5FFC5A8
              8EFFC19C78FFB88F65FF986B5834000000000000000000000000000000000000
              0000000000009A6B56FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFEFEFEFFFEFDFCFFFEFCFAFFFFFEFBFFA78675FFF5E2C3FFEECE
              9BFFCBA06BFF9767572000000000000000000000000000000000000000000000
              0000000000009A6B56FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFEFEFEFFFEFDFCFFFEFDFBFFFEFCF9FFFFFEFAFFA58069FFEECE98FFCCA0
              6AFF9A6C5C210000000000000000000000000000000000000000000000000000
              000000000000996C55FFFEFFFDFFFEFEFEFFFEFEFEFFFFFFFFFFFEFEFEFFFEFE
              FDFFFEFDFCFFFEFDFBFFFEFCFAFFFDFBF8FFFFFDF9FFA37C5EFFBF9465FF9B71
              6312000000000000000000000000000000000000000000000000000000000000
              000000000000966B56FFFEFEFBFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFD
              FCFFFEFDFBFFFEFCF9FFFDFBF8FFFDFBF7FFFFFFFBFF986F56FF936B5D130000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000009B715DFF9B6F5BFF9A6F5AFF996E5AFF996F5BFF986D59FF976C
              58FF956B59FF946A57FF936956FF916855FF906856F97F5F3F08000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            TabOrder = 1
            OnClick = btnDelClick
          end
          object img1: TcxDBImage
            Left = 72
            Top = 16
            Cursor = crHandPoint
            Properties.GraphicClassName = 'TJPEGImage'
            TabOrder = 2
            Height = 130
            Width = 157
          end
        end
      end
    end
    object TabCountry: TcxTabSheet
      Caption = #1057#1090#1088#1072#1085#1099
      ImageIndex = 2
      object GroupCountry: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Caption = #1057#1090#1088#1072#1085#1099
        Style.Edges = []
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 0
        Height = 344
        Width = 499
        inline FrameTopPanel3: TFrameTopPanel
          Left = 2
          Top = 18
          Width = 495
          Height = 35
          Align = alTop
          TabOrder = 0
          ExplicitLeft = 2
          ExplicitTop = 5
          ExplicitWidth = 495
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
                  ItemName = 'btnSel'
                end
                item
                  Visible = True
                  ItemName = 'btnAdd'
                end
                item
                  Visible = True
                  ItemName = 'btnDel'
                end
                item
                  BeginGroup = True
                  Visible = True
                  ItemName = 'btnRefresh'
                end>
            end
            inherited btnAdd: TdxBarLargeButton
              OnClick = btnAddClick
            end
            inherited btnEdit: TdxBarLargeButton
              Enabled = False
            end
            inherited btnDel: TdxBarLargeButton
              OnClick = FrameTopPanel3btnDelClick
            end
          end
        end
        object GridCountry: TcxGrid
          Left = 2
          Top = 53
          Width = 495
          Height = 289
          Align = alClient
          TabOrder = 1
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          object ViewType: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsCountrySort
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
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Editing = False
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            object ColumnUniName: TcxGridDBColumn
              Caption = #1052#1077#1078#1076#1091#1085#1072#1088#1086#1076#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              DataBinding.FieldName = 'uni_name'
              Width = 174
            end
            object ColumnName: TcxGridDBColumn
              Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              DataBinding.FieldName = 'name'
              Width = 159
            end
            object ColumnRegName: TcxGridDBColumn
              Caption = #1056#1077#1075#1080#1086#1085#1072#1083#1100#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              DataBinding.FieldName = 'reg_name'
              Width = 116
            end
          end
          object LevelOrg: TcxGridLevel
            GridView = ViewType
          end
        end
      end
    end
    object TabPlant: TcxTabSheet
      Caption = #1055#1083#1072#1085#1090#1072#1094#1080#1080
      ImageIndex = 2
      object GroupPlant: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Caption = #1055#1083#1072#1085#1090#1072#1094#1080#1080
        Style.Edges = []
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 0
        Height = 344
        Width = 499
        inline FrameTopPanel1: TFrameTopPanel
          Left = 2
          Top = 18
          Width = 495
          Height = 35
          Align = alTop
          TabOrder = 0
          ExplicitLeft = 2
          ExplicitTop = 5
          ExplicitWidth = 495
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
                  ItemName = 'btnSel'
                end
                item
                  Visible = True
                  ItemName = 'btnAdd'
                end
                item
                  Visible = True
                  ItemName = 'btnDel'
                end
                item
                  BeginGroup = True
                  Visible = True
                  ItemName = 'btnRefresh'
                end>
            end
            inherited btnAdd: TdxBarLargeButton
              OnClick = FrameTopPanel1btnAddClick
            end
            inherited btnEdit: TdxBarLargeButton
              Enabled = False
            end
            inherited btnDel: TdxBarLargeButton
              OnClick = FrameTopPanel1btnDelClick
            end
          end
        end
        object cxGrid1: TcxGrid
          Left = 2
          Top = 53
          Width = 495
          Height = 289
          Align = alClient
          TabOrder = 1
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          ExplicitWidth = 487
          ExplicitHeight = 285
          object cxGridDBTableView1: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsPlantSort
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
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Editing = False
            OptionsView.GroupByBox = False
            OptionsView.HeaderAutoHeight = True
            object ColumnUniNameT: TcxGridDBColumn
              Caption = #1052#1077#1078#1076#1091#1085#1072#1088#1086#1076#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              DataBinding.FieldName = 'uni_name'
              Width = 137
            end
            object ColumnNameT: TcxGridDBColumn
              Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              DataBinding.FieldName = 'name'
              Width = 157
            end
            object ColumnRegNameT: TcxGridDBColumn
              Caption = #1056#1077#1075#1080#1086#1085#1072#1083#1100#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              DataBinding.FieldName = 'reg_name'
              Width = 178
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
      end
    end
  end
  object QueryUpd: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO products'
      
        '  (id, pid, id_group, name, date_upd, date_reg, price, quantity,' +
        ' pict)'
      'VALUES'
      
        '  (:id, :pid, :id_group, :name, :date_upd, :date_reg, :price, :q' +
        'uantity, :pict)')
    SQLDelete.Strings = (
      'DELETE FROM products'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE products'
      'SET'
      
        '  id = :id, pid = :pid, id_group = :id_group, name = :name, date' +
        '_upd = :date_upd, date_reg = :date_reg, price = :price, quantity' +
        ' = :quantity, pict = :pict'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM products'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT id, pid, id_group, name, date_upd, date_reg, price, quant' +
        'ity, pict FROM products'
      'WHERE'
      '  id = :id')
    Connection = DM1.db1
    Transaction = Transact1
    UpdateTransaction = Transact1
    SQL.Strings = (
      'select p.id,'
      '       p.pid,'
      '       p.name'
      'from products p'
      'inner join `product_category` cp on (cp.id_category=p.id)')
    Options.AutoPrepare = True
    Left = 398
    Top = 208
  end
  object dlgOpen1: TOpenDialog
    Left = 176
    Top = 108
  end
  object QueryCountrySort: TUniQuery
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
      'select * from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1090#1088#1072#1085#1099'"')
    Left = 343
    Top = 153
  end
  object dsCountrySort: TDataSource
    DataSet = QueryCountrySort
    Left = 24
    Top = 113
  end
  object QueryTypeEdit: TUniQuery
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
      'select * from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1090#1080#1087#1099'" order by id')
    Left = 103
    Top = 121
  end
  object dsType: TDataSource
    DataSet = QueryTypeEdit
    Left = 256
    Top = 157
  end
  object Transact1: TUniTransaction
    DefaultConnection = DM1.db1
    Left = 456
    Top = 208
  end
  object QueryPlantSort: TUniQuery
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
      'select * from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1090#1088#1072#1085#1099'"')
    Left = 39
    Top = 301
  end
  object dsPlantSort: TDataSource
    DataSet = QueryPlantSort
    Left = 112
    Top = 301
  end
  object dsLength: TDataSource
    DataSet = QueryLength
    Left = 336
    Top = 317
  end
  object QueryLength: TUniQuery
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
      'select * from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1090#1088#1072#1085#1099'"')
    Left = 279
    Top = 317
  end
  object AdvTaskDialog1: TAdvTaskDialog
    CommonButtons = []
    DefaultButton = 0
    DefaultRadioButton = 200
    Options = []
    Version = '1.8.4.0'
    Left = 120
    Top = 192
  end
end
