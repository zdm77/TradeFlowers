object FrameAccess: TFrameAccess
  Left = 0
  Top = 0
  Width = 897
  Height = 490
  VertScrollBar.Smooth = True
  VertScrollBar.Tracking = True
  TabOrder = 0
  object cxGroupBox2: TcxGroupBox
    Left = 208
    Top = 37
    Align = alClient
    PanelStyle.Active = True
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 0
    Height = 453
    Width = 689
    object PageAccess: TcxPageControl
      Left = 2
      Top = 2
      Width = 685
      Height = 449
      Align = alClient
      TabOrder = 0
      Properties.ActivePage = tabБухгалтерия
      Properties.CustomButtons.Buttons = <>
      Properties.Style = 8
      LookAndFeel.SkinName = 'Office2007Blue'
      ClientRectBottom = 449
      ClientRectRight = 685
      ClientRectTop = 24
      object TabDict: TcxTabSheet
        Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
        ImageIndex = 0
        object GroupAccesDict: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          PanelStyle.Active = True
          Style.Edges = [bLeft, bTop, bRight]
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 0
          Height = 25
          Width = 685
          object chkDictAll: TcxDBCheckBox
            Left = 3
            Top = 3
            Caption = #1044#1086#1089#1090#1091#1087' '#1082' '#1084#1086#1076#1091#1083#1102
            DataBinding.DataField = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
            DataBinding.DataSource = dsAccess
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
            StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 0
            Transparent = True
            Width = 121
          end
        end
        object PageDictAccess: TcxPageControl
          Left = 0
          Top = 25
          Width = 685
          Height = 400
          Align = alClient
          TabOrder = 1
          Properties.ActivePage = tabOsn
          Properties.CustomButtons.Buttons = <>
          LookAndFeel.Kind = lfOffice11
          ClientRectBottom = 396
          ClientRectLeft = 4
          ClientRectRight = 681
          ClientRectTop = 24
          object tabOsn: TcxTabSheet
            Caption = #1054#1089#1085#1086#1074#1085#1099#1077
            ImageIndex = 0
            object cxGroupBox6: TcxGroupBox
              Left = 4
              Top = 28
              Caption = #1053#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 0
              Height = 102
              Width = 114
              object cxDBCheckBox1: TcxDBCheckBox
                Left = 3
                Top = 16
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072'_'#1087#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 78
              end
              object cxDBCheckBox2: TcxDBCheckBox
                Left = 3
                Top = 36
                Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataField = #1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 1
                Transparent = True
                Width = 166
              end
              object cxDBCheckBox3: TcxDBCheckBox
                Left = 3
                Top = 56
                Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataField = #1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 2
                Transparent = True
                Width = 118
              end
              object cxDBCheckBox4: TcxDBCheckBox
                Left = 3
                Top = 76
                Caption = #1059#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataField = #1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072'_'#1091#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 3
                Transparent = True
                Width = 118
              end
            end
            object cxDBCheckBox5: TcxDBCheckBox
              Left = 3
              Top = 3
              Caption = #1044#1086#1089#1090#1091#1087' '#1082' '#1075#1088#1091#1087#1087#1077
              DataBinding.DataField = #1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'_'#1086#1089#1085#1086#1074#1085#1099#1077
              DataBinding.DataSource = dsAccess
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 1
              Transparent = True
              Width = 121
            end
            object cxGroupBox7: TcxGroupBox
              Left = 124
              Top = 28
              Caption = #1050#1083#1080#1077#1085#1090#1099
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 2
              Height = 102
              Width = 114
              object cxDBCheckBox6: TcxDBCheckBox
                Left = 3
                Top = 16
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1082#1083#1080#1077#1085#1090#1099'_'#1087#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 78
              end
              object cxDBCheckBox7: TcxDBCheckBox
                Left = 3
                Top = 36
                Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataField = #1082#1083#1080#1077#1085#1090#1099'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 1
                Transparent = True
                Width = 166
              end
              object cxDBCheckBox8: TcxDBCheckBox
                Left = 3
                Top = 56
                Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataField = #1082#1083#1080#1077#1085#1090#1099'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 2
                Transparent = True
                Width = 118
              end
              object cxDBCheckBox9: TcxDBCheckBox
                Left = 3
                Top = 76
                Caption = #1059#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataField = #1082#1083#1080#1077#1085#1090#1099'_'#1091#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 3
                Transparent = True
                Width = 118
              end
            end
            object cxGroupBox8: TcxGroupBox
              Left = 244
              Top = 28
              Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 3
              Height = 102
              Width = 114
              object cxDBCheckBox10: TcxDBCheckBox
                Left = 3
                Top = 16
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1087#1086#1089#1090#1072#1074#1097#1080#1082#1080'_'#1087#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 78
              end
              object cxDBCheckBox11: TcxDBCheckBox
                Left = 3
                Top = 36
                Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataField = #1087#1086#1089#1090#1072#1074#1097#1080#1082#1080'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 1
                Transparent = True
                Width = 166
              end
              object cxDBCheckBox12: TcxDBCheckBox
                Left = 3
                Top = 56
                Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataField = #1087#1086#1089#1090#1072#1074#1097#1080#1082#1080'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 2
                Transparent = True
                Width = 118
              end
              object cxDBCheckBox16: TcxDBCheckBox
                Left = 3
                Top = 76
                Caption = #1059#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataField = #1087#1086#1089#1090#1072#1074#1097#1080#1082#1080'_'#1091#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 3
                Transparent = True
                Width = 118
              end
            end
          end
          object tabСтуктура: TcxTabSheet
            Caption = #1057#1090#1091#1082#1090#1091#1088#1072
            ImageIndex = 1
            object cxDBCheckBox14: TcxDBCheckBox
              Left = 3
              Top = 3
              Caption = #1044#1086#1089#1090#1091#1087' '#1082' '#1075#1088#1091#1087#1087#1077
              DataBinding.DataField = #1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'_'#1089#1090#1088#1091#1082#1090#1091#1088#1072
              DataBinding.DataSource = dsAccess
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 0
              Transparent = True
              Width = 121
            end
            object cxGroupBox5: TcxGroupBox
              Left = 4
              Top = 28
              Caption = #1057#1090#1088#1072#1085#1099
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 1
              Height = 102
              Width = 114
              object cxDBCheckBox24: TcxDBCheckBox
                Left = 3
                Top = 16
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1089#1090#1088#1072#1085#1099'_'#1087#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 78
              end
              object cxDBCheckBox25: TcxDBCheckBox
                Left = 3
                Top = 36
                Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataField = #1089#1090#1088#1072#1085#1099'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 1
                Transparent = True
                Width = 166
              end
              object cxDBCheckBox26: TcxDBCheckBox
                Left = 3
                Top = 56
                Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataField = #1089#1090#1088#1072#1085#1099'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 2
                Transparent = True
                Width = 118
              end
              object cxDBCheckBox27: TcxDBCheckBox
                Left = 3
                Top = 76
                Caption = #1059#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataField = #1089#1090#1088#1072#1085#1099'_'#1091#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 3
                Transparent = True
                Width = 118
              end
            end
            object cxGroupBox9: TcxGroupBox
              Left = 124
              Top = 28
              Caption = #1058#1080#1087#1099
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 2
              Height = 102
              Width = 114
              object cxDBCheckBox28: TcxDBCheckBox
                Left = 3
                Top = 16
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1090#1080#1087#1099'_'#1087#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 78
              end
              object cxDBCheckBox29: TcxDBCheckBox
                Left = 3
                Top = 36
                Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataField = #1090#1080#1087#1099'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 1
                Transparent = True
                Width = 166
              end
              object cxDBCheckBox30: TcxDBCheckBox
                Left = 3
                Top = 56
                Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataField = #1090#1080#1087#1099'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 2
                Transparent = True
                Width = 118
              end
              object cxDBCheckBox31: TcxDBCheckBox
                Left = 3
                Top = 76
                Caption = #1059#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataField = #1090#1080#1087#1099'_'#1091#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 3
                Transparent = True
                Width = 118
              end
            end
            object cxGroupBox10: TcxGroupBox
              Left = 244
              Top = 28
              Caption = #1057#1074#1086#1081#1089#1090#1074#1072
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 3
              Height = 102
              Width = 114
              object cxDBCheckBox32: TcxDBCheckBox
                Left = 3
                Top = 16
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1089#1074#1086#1081#1089#1090#1074#1072'_'#1087#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 78
              end
              object cxDBCheckBox33: TcxDBCheckBox
                Left = 3
                Top = 36
                Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataField = #1089#1074#1086#1081#1089#1090#1074#1072'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 1
                Transparent = True
                Width = 166
              end
              object cxDBCheckBox34: TcxDBCheckBox
                Left = 3
                Top = 56
                Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataField = #1089#1074#1086#1081#1089#1090#1074#1072'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 2
                Transparent = True
                Width = 118
              end
              object cxDBCheckBox35: TcxDBCheckBox
                Left = 3
                Top = 76
                Caption = #1059#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataField = #1089#1074#1086#1081#1089#1090#1074#1072'_'#1091#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 3
                Transparent = True
                Width = 118
              end
            end
            object cxGroupBox11: TcxGroupBox
              Left = 364
              Top = 28
              Caption = #1055#1083#1072#1085#1090#1072#1094#1080#1080
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 4
              Height = 102
              Width = 114
              object cxDBCheckBox36: TcxDBCheckBox
                Left = 3
                Top = 16
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1087#1083#1072#1085#1090#1072#1094#1080#1080'_'#1087#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 78
              end
              object cxDBCheckBox37: TcxDBCheckBox
                Left = 3
                Top = 36
                Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataField = #1087#1083#1072#1085#1090#1072#1094#1080#1080'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 1
                Transparent = True
                Width = 166
              end
              object cxDBCheckBox38: TcxDBCheckBox
                Left = 3
                Top = 56
                Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataField = #1087#1083#1072#1085#1090#1072#1094#1080#1080'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 2
                Transparent = True
                Width = 118
              end
              object cxDBCheckBox39: TcxDBCheckBox
                Left = 3
                Top = 76
                Caption = #1059#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataField = #1087#1083#1072#1085#1090#1072#1094#1080#1080'_'#1091#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 3
                Transparent = True
                Width = 118
              end
            end
            object cxGroupBox12: TcxGroupBox
              Left = 7
              Top = 136
              Caption = #1057#1086#1088#1090#1072
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 5
              Height = 102
              Width = 114
              object cxDBCheckBox40: TcxDBCheckBox
                Left = 3
                Top = 16
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1089#1086#1088#1090#1072'_'#1087#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 78
              end
              object cxDBCheckBox41: TcxDBCheckBox
                Left = 3
                Top = 36
                Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataField = #1089#1086#1088#1090#1072'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 1
                Transparent = True
                Width = 166
              end
              object cxDBCheckBox42: TcxDBCheckBox
                Left = 3
                Top = 56
                Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataField = #1089#1086#1088#1090#1072'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 2
                Transparent = True
                Width = 118
              end
              object cxDBCheckBox43: TcxDBCheckBox
                Left = 3
                Top = 76
                Caption = #1059#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataField = #1089#1086#1088#1090#1072'_'#1091#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 3
                Transparent = True
                Width = 118
              end
            end
            object cxGroupBox13: TcxGroupBox
              Left = 127
              Top = 136
              Caption = #1044#1083#1080#1085#1072'-'#1042#1077#1089
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 6
              Height = 102
              Width = 114
              object cxDBCheckBox44: TcxDBCheckBox
                Left = 3
                Top = 16
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1076#1083#1080#1085#1072'_'#1074#1077#1089'_'#1087#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 78
              end
              object cxDBCheckBox45: TcxDBCheckBox
                Left = 3
                Top = 36
                Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataField = #1076#1083#1080#1085#1072'_'#1074#1077#1089'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 1
                Transparent = True
                Width = 166
              end
              object cxDBCheckBox46: TcxDBCheckBox
                Left = 3
                Top = 56
                Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataField = #1076#1083#1080#1085#1072'_'#1074#1077#1089'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 2
                Transparent = True
                Width = 118
              end
              object cxDBCheckBox47: TcxDBCheckBox
                Left = 3
                Top = 76
                Caption = #1059#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataField = #1076#1083#1080#1085#1072'_'#1074#1077#1089'_'#1091#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 3
                Transparent = True
                Width = 118
              end
            end
            object cxGroupBox14: TcxGroupBox
              Left = 247
              Top = 136
              Caption = #1059#1087#1072#1082#1086#1074#1082#1072
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 7
              Height = 102
              Width = 114
              object cxDBCheckBox48: TcxDBCheckBox
                Left = 3
                Top = 16
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1091#1087#1072#1082#1086#1074#1082#1072'_'#1087#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 78
              end
              object cxDBCheckBox49: TcxDBCheckBox
                Left = 3
                Top = 36
                Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataField = #1091#1087#1072#1082#1086#1074#1082#1072'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 1
                Transparent = True
                Width = 166
              end
              object cxDBCheckBox50: TcxDBCheckBox
                Left = 3
                Top = 56
                Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataField = #1091#1087#1072#1082#1086#1074#1082#1072'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 2
                Transparent = True
                Width = 118
              end
              object cxDBCheckBox51: TcxDBCheckBox
                Left = 3
                Top = 76
                Caption = #1059#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataField = #1091#1087#1072#1082#1086#1074#1082#1072'_'#1091#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 3
                Transparent = True
                Width = 118
              end
            end
          end
          object tabЗакупка: TcxTabSheet
            Caption = #1051#1086#1075#1080#1089#1090#1080#1082#1072
            ImageIndex = 2
            object cxDBCheckBox21: TcxDBCheckBox
              Left = 4
              Top = 3
              Caption = #1044#1086#1089#1090#1091#1087' '#1082' '#1075#1088#1091#1087#1087#1077
              DataBinding.DataField = #1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'_'#1083#1086#1075#1080#1089#1090#1080#1082#1072
              DataBinding.DataSource = dsAccess
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 0
              Transparent = True
              Width = 121
            end
            object cxGroupBox15: TcxGroupBox
              Left = 4
              Top = 28
              Caption = #1052#1072#1088#1082#1080#1088#1086#1074#1082#1080
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 1
              Height = 102
              Width = 114
              object cxDBCheckBox52: TcxDBCheckBox
                Left = 3
                Top = 16
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'_'#1087#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 78
              end
              object cxDBCheckBox53: TcxDBCheckBox
                Left = 3
                Top = 36
                Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataField = #1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 1
                Transparent = True
                Width = 166
              end
              object cxDBCheckBox54: TcxDBCheckBox
                Left = 3
                Top = 56
                Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataField = #1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 2
                Transparent = True
                Width = 118
              end
              object cxDBCheckBox55: TcxDBCheckBox
                Left = 3
                Top = 76
                Caption = #1059#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataField = #1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'_'#1091#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 3
                Transparent = True
                Width = 118
              end
            end
            object cxGroupBox16: TcxGroupBox
              Left = 124
              Top = 28
              Caption = #1040#1074#1080#1072#1083#1080#1085#1080#1080
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 2
              Height = 102
              Width = 114
              object cxDBCheckBox56: TcxDBCheckBox
                Left = 3
                Top = 16
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1072#1074#1080#1072#1083#1080#1085#1080#1080'_'#1087#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 78
              end
              object cxDBCheckBox57: TcxDBCheckBox
                Left = 3
                Top = 36
                Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataField = #1072#1074#1080#1072#1083#1080#1085#1080#1080'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 1
                Transparent = True
                Width = 166
              end
              object cxDBCheckBox58: TcxDBCheckBox
                Left = 3
                Top = 56
                Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataField = #1072#1074#1080#1072#1083#1080#1085#1080#1080'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 2
                Transparent = True
                Width = 118
              end
              object cxDBCheckBox59: TcxDBCheckBox
                Left = 3
                Top = 76
                Caption = #1059#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataField = #1072#1074#1080#1072#1083#1080#1085#1080#1080'_'#1091#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 3
                Transparent = True
                Width = 118
              end
            end
            object cxGroupBox17: TcxGroupBox
              Left = 244
              Top = 28
              Caption = #1050#1072#1088#1075#1086
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 3
              Height = 102
              Width = 114
              object cxDBCheckBox60: TcxDBCheckBox
                Left = 3
                Top = 16
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1082#1072#1088#1075#1086'_'#1087#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 78
              end
              object cxDBCheckBox61: TcxDBCheckBox
                Left = 3
                Top = 36
                Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataField = #1082#1072#1088#1075#1086'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 1
                Transparent = True
                Width = 166
              end
              object cxDBCheckBox62: TcxDBCheckBox
                Left = 3
                Top = 56
                Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataField = #1082#1072#1088#1075#1086'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 2
                Transparent = True
                Width = 118
              end
              object cxDBCheckBox63: TcxDBCheckBox
                Left = 3
                Top = 76
                Caption = #1059#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataField = #1082#1072#1088#1075#1086'_'#1091#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 3
                Transparent = True
                Width = 118
              end
            end
            object cxGroupBox18: TcxGroupBox
              Left = 364
              Top = 28
              Caption = #1058#1088#1072#1082#1080
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 4
              Height = 102
              Width = 114
              object cxDBCheckBox64: TcxDBCheckBox
                Left = 3
                Top = 16
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1090#1088#1072#1082#1080'_'#1087#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 78
              end
              object cxDBCheckBox65: TcxDBCheckBox
                Left = 3
                Top = 36
                Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataField = #1090#1088#1072#1082#1080'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 1
                Transparent = True
                Width = 166
              end
              object cxDBCheckBox66: TcxDBCheckBox
                Left = 3
                Top = 56
                Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataField = #1090#1088#1072#1082#1080'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 2
                Transparent = True
                Width = 118
              end
              object cxDBCheckBox67: TcxDBCheckBox
                Left = 3
                Top = 76
                Caption = #1059#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataField = #1090#1088#1072#1082#1080'_'#1091#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 3
                Transparent = True
                Width = 118
              end
            end
            object cxGroupBox19: TcxGroupBox
              Left = 4
              Top = 136
              Caption = #1055#1088#1080#1082#1091#1083#1080#1085#1075
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 5
              Height = 102
              Width = 114
              object cxDBCheckBox68: TcxDBCheckBox
                Left = 3
                Top = 16
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1087#1088#1080#1082#1091#1083#1080#1085#1075'_'#1087#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 78
              end
              object cxDBCheckBox69: TcxDBCheckBox
                Left = 3
                Top = 36
                Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataField = #1087#1088#1080#1082#1091#1083#1080#1085#1075'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 1
                Transparent = True
                Width = 166
              end
              object cxDBCheckBox70: TcxDBCheckBox
                Left = 3
                Top = 56
                Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataField = #1087#1088#1080#1082#1091#1083#1080#1085#1075'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 2
                Transparent = True
                Width = 118
              end
              object cxDBCheckBox71: TcxDBCheckBox
                Left = 3
                Top = 76
                Caption = #1059#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataField = #1087#1088#1080#1082#1091#1083#1080#1085#1075'_'#1091#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 3
                Transparent = True
                Width = 118
              end
            end
            object cxGroupBox20: TcxGroupBox
              Left = 124
              Top = 136
              Caption = #1060#1080#1090#1086
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 6
              Height = 102
              Width = 114
              object cxDBCheckBox72: TcxDBCheckBox
                Left = 3
                Top = 16
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1092#1080#1090#1086'_'#1087#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 78
              end
              object cxDBCheckBox73: TcxDBCheckBox
                Left = 3
                Top = 36
                Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataField = #1092#1080#1090#1086'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 1
                Transparent = True
                Width = 166
              end
              object cxDBCheckBox74: TcxDBCheckBox
                Left = 3
                Top = 56
                Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataField = #1092#1080#1090#1086'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 2
                Transparent = True
                Width = 118
              end
              object cxDBCheckBox75: TcxDBCheckBox
                Left = 3
                Top = 76
                Caption = #1059#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataField = #1092#1080#1090#1086'_'#1091#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 3
                Transparent = True
                Width = 118
              end
            end
            object cxGroupBox21: TcxGroupBox
              Left = 244
              Top = 136
              Caption = #1057#1090#1077#1085#1076#1080#1085#1075
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 7
              Height = 102
              Width = 114
              object cxDBCheckBox76: TcxDBCheckBox
                Left = 3
                Top = 16
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1089#1090#1077#1085#1076#1080#1085#1075'_'#1087#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 78
              end
              object cxDBCheckBox77: TcxDBCheckBox
                Left = 3
                Top = 36
                Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataField = #1089#1090#1077#1085#1076#1080#1085#1075'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 1
                Transparent = True
                Width = 166
              end
              object cxDBCheckBox78: TcxDBCheckBox
                Left = 3
                Top = 56
                Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataField = #1089#1090#1077#1085#1076#1080#1085#1075'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 2
                Transparent = True
                Width = 118
              end
              object cxDBCheckBox79: TcxDBCheckBox
                Left = 3
                Top = 76
                Caption = #1059#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataField = #1089#1090#1077#1085#1076#1080#1085#1075'_'#1091#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 3
                Transparent = True
                Width = 118
              end
            end
          end
          object tabОрганизация: TcxTabSheet
            Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
            ImageIndex = 3
            object cxDBCheckBox22: TcxDBCheckBox
              Left = 3
              Top = 3
              Caption = #1044#1086#1089#1090#1091#1087' '#1082' '#1075#1088#1091#1087#1087#1077
              DataBinding.DataField = #1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
              DataBinding.DataSource = dsAccess
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 0
              Transparent = True
              Width = 121
            end
            object cxGroupBox22: TcxGroupBox
              Left = 4
              Top = 28
              Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 1
              Height = 102
              Width = 114
              object cxDBCheckBox80: TcxDBCheckBox
                Left = 3
                Top = 16
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'_'#1087#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 78
              end
              object cxDBCheckBox81: TcxDBCheckBox
                Left = 3
                Top = 36
                Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataField = #1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 1
                Transparent = True
                Width = 166
              end
              object cxDBCheckBox82: TcxDBCheckBox
                Left = 3
                Top = 56
                Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataField = #1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 2
                Transparent = True
                Width = 118
              end
              object cxDBCheckBox83: TcxDBCheckBox
                Left = 3
                Top = 76
                Caption = #1059#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataField = #1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'_'#1091#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 3
                Transparent = True
                Width = 118
              end
            end
            object cxGroupBox23: TcxGroupBox
              Left = 124
              Top = 28
              Caption = #1055#1088#1072#1081#1089
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 2
              Height = 102
              Width = 114
              object cxDBCheckBox84: TcxDBCheckBox
                Left = 3
                Top = 16
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1087#1088#1072#1081#1089'_'#1087#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 78
              end
              object cxDBCheckBox85: TcxDBCheckBox
                Left = 3
                Top = 36
                Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataField = #1087#1088#1072#1081#1089'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 1
                Transparent = True
                Width = 166
              end
              object cxDBCheckBox86: TcxDBCheckBox
                Left = 3
                Top = 56
                Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataField = #1087#1088#1072#1081#1089'_'#1088#1077#1076#1072#1090#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 2
                Transparent = True
                Width = 118
              end
              object cxDBCheckBox87: TcxDBCheckBox
                Left = 3
                Top = 76
                Caption = #1059#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataField = #1087#1088#1072#1081#1089'_'#1091#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 3
                Transparent = True
                Width = 118
              end
            end
            object cxGroupBox24: TcxGroupBox
              Left = 244
              Top = 28
              Caption = #1062#1077#1093#1072
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 3
              Height = 102
              Width = 114
              object cxDBCheckBox88: TcxDBCheckBox
                Left = 3
                Top = 16
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1094#1077#1093#1072'_'#1087#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 78
              end
              object cxDBCheckBox89: TcxDBCheckBox
                Left = 3
                Top = 36
                Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataField = #1094#1077#1093#1072'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 1
                Transparent = True
                Width = 166
              end
              object cxDBCheckBox90: TcxDBCheckBox
                Left = 3
                Top = 56
                Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataField = #1094#1077#1093#1072'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 2
                Transparent = True
                Width = 118
              end
              object cxDBCheckBox91: TcxDBCheckBox
                Left = 3
                Top = 76
                Caption = #1059#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataField = #1094#1077#1093#1072'_'#1091#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 3
                Transparent = True
                Width = 118
              end
            end
          end
          object tabАдминистрирование: TcxTabSheet
            Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1080#1077
            ImageIndex = 4
            object cxDBCheckBox23: TcxDBCheckBox
              Left = 4
              Top = 3
              Caption = #1044#1086#1089#1090#1091#1087' '#1082' '#1075#1088#1091#1087#1087#1077
              DataBinding.DataField = #1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'_'#1072#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1080#1077
              DataBinding.DataSource = dsAccess
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 0
              Transparent = True
              Width = 121
            end
            object cxGroupBox25: TcxGroupBox
              Left = 4
              Top = 28
              Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 1
              Height = 102
              Width = 114
              object cxDBCheckBox92: TcxDBCheckBox
                Left = 3
                Top = 16
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'_'#1087#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 78
              end
              object cxDBCheckBox93: TcxDBCheckBox
                Left = 3
                Top = 36
                Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataField = #1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 1
                Transparent = True
                Width = 166
              end
              object cxDBCheckBox94: TcxDBCheckBox
                Left = 3
                Top = 56
                Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataField = #1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 2
                Transparent = True
                Width = 118
              end
              object cxDBCheckBox95: TcxDBCheckBox
                Left = 3
                Top = 76
                Caption = #1059#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataField = #1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'_'#1091#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 3
                Transparent = True
                Width = 118
              end
            end
            object cxGroupBox26: TcxGroupBox
              Left = 124
              Top = 28
              Caption = #1056#1086#1083#1080
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 2
              Height = 102
              Width = 114
              object cxDBCheckBox96: TcxDBCheckBox
                Left = 3
                Top = 16
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1088#1086#1083#1080'_'#1087#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 78
              end
              object cxDBCheckBox97: TcxDBCheckBox
                Left = 3
                Top = 36
                Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataField = #1088#1086#1083#1080'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 1
                Transparent = True
                Width = 166
              end
              object cxDBCheckBox98: TcxDBCheckBox
                Left = 3
                Top = 56
                Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataField = #1088#1086#1083#1080'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 2
                Transparent = True
                Width = 118
              end
              object cxDBCheckBox99: TcxDBCheckBox
                Left = 3
                Top = 76
                Caption = #1059#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataField = #1088#1086#1083#1080'_'#1091#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 3
                Transparent = True
                Width = 118
              end
            end
          end
        end
      end
      object tabБухгалтерия: TcxTabSheet
        Caption = #1041#1091#1093#1075#1072#1083#1090#1077#1088#1080#1103
        ImageIndex = 3
        object cxGroupBox27: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          PanelStyle.Active = True
          Style.Edges = [bLeft, bTop, bRight]
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 0
          Height = 25
          Width = 685
          object cxDBCheckBox100: TcxDBCheckBox
            Left = 3
            Top = 3
            Caption = #1044#1086#1089#1090#1091#1087' '#1082' '#1084#1086#1076#1091#1083#1102
            DataBinding.DataField = #1041#1091#1093#1075#1072#1083#1090#1077#1088#1080#1103
            DataBinding.DataSource = dsAccess
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
            StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 0
            Transparent = True
            Width = 121
          end
        end
        object cxPageControl1: TcxPageControl
          Left = 0
          Top = 25
          Width = 685
          Height = 400
          Align = alClient
          TabOrder = 1
          Properties.ActivePage = cxTabSheet1
          Properties.CustomButtons.Buttons = <>
          LookAndFeel.Kind = lfOffice11
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2007Blue'
          ClientRectBottom = 394
          ClientRectLeft = 3
          ClientRectRight = 679
          ClientRectTop = 26
          object cxTabSheet1: TcxTabSheet
            Caption = #1054#1089#1085#1086#1074#1085#1099#1077
            ImageIndex = 0
            object cxGroupBox28: TcxGroupBox
              Left = 4
              Top = 28
              Caption = 'AWB'
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 0
              Height = 102
              Width = 114
              object cxDBCheckBox101: TcxDBCheckBox
                Left = 3
                Top = 16
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1073#1091#1093'_awb_'#1087#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 78
              end
              object cxDBCheckBox102: TcxDBCheckBox
                Left = 3
                Top = 36
                Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataField = #1073#1091#1093'_awb_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 1
                Transparent = True
                Width = 166
              end
              object cxDBCheckBox103: TcxDBCheckBox
                Left = 3
                Top = 56
                Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataField = #1073#1091#1093'_awb_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 2
                Transparent = True
                Width = 118
              end
              object cxDBCheckBox104: TcxDBCheckBox
                Left = 3
                Top = 76
                Caption = #1059#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataField = #1073#1091#1093'_awb_'#1091#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 3
                Transparent = True
                Width = 118
              end
            end
            object cxGroupBox29: TcxGroupBox
              Left = 124
              Top = 28
              Caption = #1041#1072#1083#1072#1085#1089' '#1087#1083#1072#1085#1090#1072#1094#1080#1081
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 1
              Height = 173
              Width = 181
              object cxDBCheckBox106: TcxDBCheckBox
                Left = 3
                Top = 16
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1073#1091#1093'_'#1073#1072#1083#1072#1085#1089'_'#1087#1083#1072#1085#1090#1072#1094#1080#1081'_'#1087#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 78
              end
              object cxDBCheckBox108: TcxDBCheckBox
                Left = 3
                Top = 37
                Caption = #1060#1072#1082#1090#1091#1088#1099' '#1087#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1073#1091#1093'_'#1073#1072#1083#1072#1085#1089'_'#1087#1083#1072#1085#1090#1072#1094#1080#1081'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 1
                Transparent = True
                Width = 175
              end
              object cxDBCheckBox119: TcxDBCheckBox
                Left = 3
                Top = 58
                Caption = #1060#1072#1082#1090#1091#1088#1099' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataField = #1073#1091#1093'_'#1092#1072#1082#1090#1091#1088#1099'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 2
                Transparent = True
                Width = 175
              end
              object cxDBCheckBox120: TcxDBCheckBox
                Left = 3
                Top = 79
                Caption = #1054#1087#1083#1072#1090#1099' '#1087#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1073#1091#1093'_'#1086#1087#1083#1072#1090#1072'_'#1087#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 3
                Transparent = True
                Width = 175
              end
              object cxDBCheckBox121: TcxDBCheckBox
                Left = 3
                Top = 121
                Caption = #1054#1087#1083#1072#1090#1099' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataField = #1073#1091#1093'_'#1086#1087#1083#1072#1090#1072'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 4
                Transparent = True
                Width = 175
              end
              object cxDBCheckBox122: TcxDBCheckBox
                Left = 3
                Top = 142
                Caption = #1054#1087#1083#1072#1090#1099' '#1091#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataField = #1073#1091#1093'_'#1086#1087#1083#1072#1090#1072'_'#1091#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 5
                Transparent = True
                Width = 175
              end
              object cxDBCheckBox123: TcxDBCheckBox
                Left = 3
                Top = 100
                Caption = #1054#1087#1083#1072#1090#1099' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataField = #1073#1091#1093'_'#1086#1087#1083#1072#1090#1072'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 6
                Transparent = True
                Width = 175
              end
            end
            object cxGroupBox30: TcxGroupBox
              Left = 307
              Top = 28
              Caption = #1041#1072#1083#1072#1085#1089' '#1050#1072#1088#1075#1086
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 2
              Height = 102
              Width = 114
              object cxDBCheckBox110: TcxDBCheckBox
                Left = 3
                Top = 16
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1073#1091#1093'_'#1073#1072#1083#1072#1085#1089'_'#1082#1072#1088#1075#1086'_'#1087#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 78
              end
              object cxDBCheckBox112: TcxDBCheckBox
                Left = 3
                Top = 36
                Caption = #1050' '#1092#1072#1082#1090#1091#1088#1072#1084
                DataBinding.DataField = #1073#1091#1093'_'#1073#1072#1083#1072#1085#1089'_'#1082#1072#1088#1075#1086'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 1
                Transparent = True
                Width = 118
              end
            end
            object cxGroupBox31: TcxGroupBox
              Left = 0
              Top = 0
              Align = alTop
              PanelStyle.Active = True
              Style.Edges = [bLeft, bTop, bRight]
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 3
              Height = 25
              Width = 676
              object cxDBCheckBox105: TcxDBCheckBox
                Left = 3
                Top = 3
                Caption = #1044#1086#1089#1090#1091#1087' '#1082' '#1075#1088#1091#1087#1087#1077
                DataBinding.DataField = #1073#1091#1093'_'#1086#1089#1085#1086#1074#1085#1099#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 121
              end
            end
            object cxGroupBox37: TcxGroupBox
              Left = 427
              Top = 28
              Caption = #1055#1088#1080#1090#1077#1085#1079#1080#1080
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 4
              Height = 102
              Width = 126
              object cxDBCheckBox116: TcxDBCheckBox
                Left = 3
                Top = 16
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1073#1091#1093'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'_'#1087#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 78
              end
              object cxDBCheckBox117: TcxDBCheckBox
                Left = 3
                Top = 37
                Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataField = #1073#1091#1093'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 1
                Transparent = True
                Width = 118
              end
              object cxDBCheckBox118: TcxDBCheckBox
                Left = 3
                Top = 57
                Caption = #1059#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataField = #1073#1091#1093'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'_'#1091#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 2
                Transparent = True
                Width = 118
              end
            end
          end
        end
      end
      object TabWork: TcxTabSheet
        Caption = #1047#1072#1082#1091#1087#1082#1072' '#1080' '#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103
        ImageIndex = 1
        object cxGroupBox3: TcxGroupBox
          Left = 0
          Top = 0
          Align = alTop
          PanelStyle.Active = True
          Style.Edges = [bLeft, bTop, bRight]
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 0
          Height = 25
          Width = 685
          object chkWorkOsn: TcxDBCheckBox
            Left = 3
            Top = 3
            Caption = #1044#1086#1089#1090#1091#1087' '#1082' '#1084#1086#1076#1091#1083#1102
            DataBinding.DataField = #1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103
            DataBinding.DataSource = dsAccess
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
            StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 0
            Transparent = True
            Width = 121
          end
        end
        object cxPageControl2: TcxPageControl
          Left = 0
          Top = 25
          Width = 685
          Height = 400
          Align = alClient
          TabOrder = 1
          Properties.ActivePage = cxTabSheet2
          Properties.CustomButtons.Buttons = <>
          LookAndFeel.Kind = lfOffice11
          ClientRectBottom = 396
          ClientRectLeft = 4
          ClientRectRight = 681
          ClientRectTop = 24
          object cxTabSheet2: TcxTabSheet
            Caption = #1054#1089#1085#1086#1074#1085#1099#1077
            ImageIndex = 0
            object cxGroupBox32: TcxGroupBox
              Left = 4
              Top = 28
              Caption = #1047#1072#1082#1072#1079#1099
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 0
              Height = 102
              Width = 114
              object cxDBCheckBox13: TcxDBCheckBox
                Left = 3
                Top = 16
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1079#1072#1082#1072#1079#1099'_'#1087#1088#1086#1089#1084
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 78
              end
              object cxDBCheckBox15: TcxDBCheckBox
                Left = 3
                Top = 36
                Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataField = #1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1079#1072#1082#1072#1079#1099'_'#1076#1086#1073#1072#1074
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 1
                Transparent = True
                Width = 166
              end
              object cxDBCheckBox17: TcxDBCheckBox
                Left = 3
                Top = 56
                Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataField = #1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1079#1072#1082#1072#1079#1099'_'#1088#1077#1076#1072#1082
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 2
                Transparent = True
                Width = 118
              end
              object cxDBCheckBox18: TcxDBCheckBox
                Left = 3
                Top = 76
                Caption = #1059#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataField = #1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1079#1072#1082#1072#1079#1099'_'#1091#1076#1072#1083#1077
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 3
                Transparent = True
                Width = 118
              end
            end
            object cxGroupBox35: TcxGroupBox
              Left = 0
              Top = 0
              Align = alTop
              PanelStyle.Active = True
              Style.Edges = [bLeft, bTop, bRight]
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 1
              Height = 25
              Width = 677
              object cxDBCheckBox111: TcxDBCheckBox
                Left = 3
                Top = 3
                Caption = #1044#1086#1089#1090#1091#1087' '#1082' '#1075#1088#1091#1087#1087#1077
                DataBinding.DataField = #1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1086#1089#1085#1086#1074#1072
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 121
              end
            end
            object cxGroupBox34: TcxGroupBox
              Left = 124
              Top = 31
              Caption = #1055#1077#1076#1080#1076#1086
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 2
              Height = 102
              Width = 114
              object cxDBCheckBox107: TcxDBCheckBox
                Left = 3
                Top = 16
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1087#1077#1076#1080#1076#1086'_'#1087#1088#1086#1089#1084
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 78
              end
              object cxDBCheckBox109: TcxDBCheckBox
                Left = 3
                Top = 36
                Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
                DataBinding.DataField = #1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1087#1077#1076#1080#1076#1086'_'#1088#1077#1076#1072#1082
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 1
                Transparent = True
                Width = 118
              end
            end
          end
          object tabТаможня: TcxTabSheet
            Caption = #1058#1072#1084#1086#1078#1085#1103
            ImageIndex = 1
            object cxGroupBox33: TcxGroupBox
              Left = 0
              Top = 0
              Align = alTop
              PanelStyle.Active = True
              Style.Edges = [bLeft, bTop, bRight]
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 0
              Height = 25
              Width = 677
              object cxDBCheckBox19: TcxDBCheckBox
                Left = 3
                Top = 3
                Caption = #1044#1086#1089#1090#1091#1087' '#1082' '#1075#1088#1091#1087#1087#1077
                DataBinding.DataField = #1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1090#1072#1084#1086#1078#1085#1103
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 121
              end
            end
            object cxGroupBox36: TcxGroupBox
              Left = 4
              Top = 28
              Caption = #1055#1072#1082#1080#1085#1075
              Style.LookAndFeel.SkinName = 'Office2007Blue'
              StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
              StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
              StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
              TabOrder = 1
              Height = 102
              Width = 114
              object cxDBCheckBox20: TcxDBCheckBox
                Left = 3
                Top = 16
                Caption = #1055#1088#1086#1089#1084#1086#1090#1088
                DataBinding.DataField = #1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1090#1072#1084#1086#1078#1085#1103'_'#1087#1088#1086#1089
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 0
                Transparent = True
                Width = 78
              end
              object cxDBCheckBox113: TcxDBCheckBox
                Left = 3
                Top = 36
                Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077
                DataBinding.DataField = #1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1079#1072#1082#1072#1079#1099'_'#1076#1086#1073#1072#1074
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 1
                Transparent = True
                Width = 166
              end
              object cxDBCheckBox114: TcxDBCheckBox
                Left = 3
                Top = 56
                Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
                DataBinding.DataField = #1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1090#1072#1084#1086#1078#1085#1103'_'#1088#1077#1076#1072
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 2
                Transparent = True
                Width = 118
              end
              object cxDBCheckBox115: TcxDBCheckBox
                Left = 3
                Top = 76
                Caption = #1059#1076#1072#1083#1077#1085#1080#1077
                DataBinding.DataField = #1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1090#1072#1084#1086#1078#1085#1103'_'#1091#1076#1072#1083
                DataBinding.DataSource = dsAccess
                Style.LookAndFeel.SkinName = 'Office2007Blue'
                StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
                StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
                StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
                TabOrder = 3
                Transparent = True
                Width = 118
              end
            end
          end
        end
      end
      object TabReports: TcxTabSheet
        Caption = #1054#1090#1095#1077#1090#1099
        ImageIndex = 3
        object cxGroupBox4: TcxGroupBox
          Left = 0
          Top = 0
          Align = alClient
          PanelStyle.Active = True
          Style.Edges = [bLeft, bTop, bRight]
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 0
          Height = 425
          Width = 685
          object chkModuleReport: TcxDBCheckBox
            Left = 3
            Top = 3
            Caption = #1044#1086#1089#1090#1091#1087' '#1082' '#1084#1086#1076#1091#1083#1102
            DataBinding.DataField = #1054#1090#1095#1077#1090#1099
            DataBinding.DataSource = dsAccess
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
            StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 0
            Transparent = True
            Width = 121
          end
        end
      end
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 37
    Align = alLeft
    Caption = #1056#1086#1083#1080
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 1
    Height = 453
    Width = 200
    object GridRoles: TcxGrid
      Left = 3
      Top = 15
      Width = 194
      Height = 428
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      ExplicitLeft = 2
      ExplicitTop = 18
      ExplicitWidth = 196
      ExplicitHeight = 433
      object ViewOrg: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = dsRole
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Editing = False
        OptionsSelection.CellSelect = False
        OptionsView.NoDataToDisplayInfoText = '<'#1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'>'
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object ViewOrgDBColumn: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'name'
        end
      end
      object LevelOrg: TcxGridLevel
        GridView = ViewOrg
      end
    end
  end
  object Spliter1: TcxSplitter
    Left = 200
    Top = 37
    Width = 8
    Height = 453
    HotZoneClassName = 'TcxMediaPlayer9Style'
    Control = cxGroupBox1
  end
  object Group4: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 3
    Height = 37
    Width = 897
    object cxDBNavigator1: TcxDBNavigator
      Left = 2
      Top = 2
      Width = 39
      Height = 33
      Buttons.CustomButtons = <>
      Buttons.Images = cxmglst1
      Buttons.First.Visible = False
      Buttons.PriorPage.Visible = False
      Buttons.Prior.Visible = False
      Buttons.Next.Visible = False
      Buttons.NextPage.Visible = False
      Buttons.Last.Visible = False
      Buttons.Insert.Visible = False
      Buttons.Append.Visible = False
      Buttons.Delete.Visible = False
      Buttons.Edit.Visible = False
      Buttons.Post.Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Buttons.Post.ImageIndex = 0
      Buttons.Post.Visible = True
      Buttons.Cancel.Visible = False
      Buttons.Refresh.Visible = False
      Buttons.SaveBookmark.Visible = False
      Buttons.GotoBookmark.Visible = False
      Buttons.Filter.Visible = False
      DataSource = dsAccess
      InfoPanel.Font.Charset = DEFAULT_CHARSET
      InfoPanel.Font.Color = clDefault
      InfoPanel.Font.Height = -11
      InfoPanel.Font.Name = 'Tahoma'
      InfoPanel.Font.Style = []
      InfoPanel.ParentFont = False
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2007Blue'
      Align = alLeft
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
    end
  end
  object QueryAccess: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO '
      '  "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1076#1086#1089#1090#1091#1087'"'
      '('
      '  "'#1082#1086#1076'_'#1088#1086#1083#1080'",'
      '  "'#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'",'
      '  "'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'",'
      '  "'#1041#1091#1093#1075#1072#1083#1090#1077#1088#1080#1103'",'
      '  "'#1054#1090#1095#1077#1090#1099'",'
      '  "'#1057#1086#1086#1073#1097#1077#1085#1080#1103'_'#1082#1083#1080#1077#1085#1090#1086#1074'",'
      '  "'#1054#1087#1086#1074#1077#1097#1077#1085#1080#1103'",'
      '  "'#1053#1072#1089#1090#1088#1086#1081#1082#1080'"'
      ') '
      'VALUES ('
      '  :'#1082#1086#1076'_'#1088#1086#1083#1080','
      '  :'#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080','
      '  :'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103','
      '  :'#1041#1091#1093#1075#1072#1083#1090#1077#1088#1080#1103','
      '  :'#1054#1090#1095#1077#1090#1099','
      '  :'#1057#1086#1086#1073#1097#1077#1085#1080#1103'_'#1082#1083#1080#1077#1085#1090#1086#1074','
      '  :'#1054#1087#1086#1074#1077#1097#1077#1085#1080#1103','
      '  :'#1053#1072#1089#1090#1088#1086#1081#1082#1080
      ');')
    SQLDelete.Strings = (
      'DELETE FROM RoleAccess'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE '
      '  "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1076#1086#1089#1090#1091#1087'"  '
      'SET '
      '  "'#1082#1086#1076'_'#1088#1086#1083#1080'" = :'#1082#1086#1076'_'#1088#1086#1083#1080','
      '  "'#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'" = :'#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080','
      '  "'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'" = :'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103','
      '  "'#1041#1091#1093#1075#1072#1083#1090#1077#1088#1080#1103'" = :'#1041#1091#1093#1075#1072#1083#1090#1077#1088#1080#1103','
      '  "'#1054#1090#1095#1077#1090#1099'" = :'#1054#1090#1095#1077#1090#1099','
      '  "'#1057#1086#1086#1073#1097#1077#1085#1080#1103'_'#1082#1083#1080#1077#1085#1090#1086#1074'" = :'#1057#1086#1086#1073#1097#1077#1085#1080#1103'_'#1082#1083#1080#1077#1085#1090#1086#1074','
      '  "'#1054#1087#1086#1074#1077#1097#1077#1085#1080#1103'" = :'#1054#1087#1086#1074#1077#1097#1077#1085#1080#1103','
      '  "'#1053#1072#1089#1090#1088#1086#1081#1082#1080'" = :'#1053#1072#1089#1090#1088#1086#1081#1082#1080','
      '  "'#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'_'#1086#1089#1085#1086#1074#1085#1099#1077'" = :'#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'_'#1086#1089#1085#1086#1074#1085#1099#1077','
      '  "'#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'_'#1083#1086#1075#1080#1089#1090#1080#1082#1072'" = :'#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'_'#1083#1086#1075#1080#1089#1090#1080#1082#1072','
      '  "'#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'_'#1089#1090#1088#1091#1082#1090#1091#1088#1072'" = :'#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'_'#1089#1090#1088#1091#1082#1090#1091#1088#1072','
      '  "'#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'" = :'#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'_'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103','
      
        '  "'#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'_'#1072#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1080#1077'" = :'#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'_'#1072#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085 +
        #1080#1077','
      '  "'#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072'_'#1087#1088#1086#1089#1084#1086#1090#1088'" = :'#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072'_'#1087#1088#1086#1089#1084#1086#1090#1088','
      '  "'#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'" = :'#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077','
      '  "'#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072'_'#1091#1076#1072#1083#1077#1085#1080#1077'" = :'#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072'_'#1091#1076#1072#1083#1077#1085#1080#1077','
      '  "'#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077'" = :'#1085#1086#1084#1077#1085#1082#1083#1072#1090#1091#1088#1072'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077','
      '  "'#1082#1083#1080#1077#1085#1090#1099'_'#1087#1088#1086#1089#1084#1086#1090#1088'" = :'#1082#1083#1080#1077#1085#1090#1099'_'#1087#1088#1086#1089#1084#1086#1090#1088','
      '  "'#1082#1083#1080#1077#1085#1090#1099'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077'" = :'#1082#1083#1080#1077#1085#1090#1099'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077','
      '  "'#1082#1083#1080#1077#1085#1090#1099'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'" = :'#1082#1083#1080#1077#1085#1090#1099'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077','
      '  "'#1082#1083#1080#1077#1085#1090#1099'_'#1091#1076#1072#1083#1077#1085#1080#1077'" = :'#1082#1083#1080#1077#1085#1090#1099'_'#1091#1076#1072#1083#1077#1085#1080#1077','
      '  "'#1087#1086#1089#1090#1072#1074#1097#1080#1082#1080'_'#1087#1088#1086#1089#1084#1086#1090#1088'" = :'#1087#1086#1089#1090#1072#1074#1097#1080#1082#1080'_'#1087#1088#1086#1089#1084#1086#1090#1088','
      '  "'#1087#1086#1089#1090#1072#1074#1097#1080#1082#1080'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077'" = :'#1087#1086#1089#1090#1072#1074#1097#1080#1082#1080'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077','
      '  "'#1087#1086#1089#1090#1072#1074#1097#1080#1082#1080'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'" = :'#1087#1086#1089#1090#1072#1074#1097#1080#1082#1080'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077','
      '  "'#1087#1086#1089#1090#1072#1074#1097#1080#1082#1080'_'#1091#1076#1072#1083#1077#1085#1080#1077'" = :'#1087#1086#1089#1090#1072#1074#1097#1080#1082#1080'_'#1091#1076#1072#1083#1077#1085#1080#1077','
      '  "'#1089#1090#1088#1072#1085#1099'_'#1087#1088#1086#1089#1084#1086#1090#1088'" = :'#1089#1090#1088#1072#1085#1099'_'#1087#1088#1086#1089#1084#1086#1090#1088','
      '  "'#1090#1080#1087#1099'_'#1087#1088#1086#1089#1084#1086#1090#1088'" = :'#1090#1080#1087#1099'_'#1087#1088#1086#1089#1084#1086#1090#1088','
      '  "'#1089#1074#1086#1081#1089#1090#1074#1072'_'#1087#1088#1086#1089#1084#1086#1090#1088'" = :'#1089#1074#1086#1081#1089#1090#1074#1072'_'#1087#1088#1086#1089#1084#1086#1090#1088','
      '  "'#1087#1083#1072#1085#1090#1072#1094#1080#1080'_'#1087#1088#1086#1089#1084#1086#1090#1088'" = :'#1087#1083#1072#1085#1090#1072#1094#1080#1080'_'#1087#1088#1086#1089#1084#1086#1090#1088','
      '  "'#1089#1086#1088#1090#1072'_'#1087#1088#1086#1089#1084#1086#1090#1088'" = :'#1089#1086#1088#1090#1072'_'#1087#1088#1086#1089#1084#1086#1090#1088','
      '  "'#1076#1083#1080#1085#1072'_'#1074#1077#1089'_'#1087#1088#1086#1089#1084#1086#1090#1088'" = :'#1076#1083#1080#1085#1072'_'#1074#1077#1089'_'#1087#1088#1086#1089#1084#1086#1090#1088','
      '  "'#1091#1087#1072#1082#1086#1074#1082#1072'_'#1087#1088#1086#1089#1084#1086#1090#1088'" = :'#1091#1087#1072#1082#1086#1074#1082#1072'_'#1087#1088#1086#1089#1084#1086#1090#1088','
      '  "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'_'#1087#1088#1086#1089#1084#1086#1090#1088'" = :'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'_'#1087#1088#1086#1089#1084#1086#1090#1088','
      '  "'#1072#1074#1080#1072#1083#1080#1085#1080#1080'_'#1087#1088#1086#1089#1084#1086#1090#1088'" = :'#1072#1074#1080#1072#1083#1080#1085#1080#1080'_'#1087#1088#1086#1089#1084#1086#1090#1088','
      '  "'#1082#1072#1088#1075#1086'_'#1087#1088#1086#1089#1084#1086#1090#1088'" = :'#1082#1072#1088#1075#1086'_'#1087#1088#1086#1089#1084#1086#1090#1088','
      '  "'#1090#1088#1072#1082#1080'_'#1087#1088#1086#1089#1084#1086#1090#1088'" = :'#1090#1088#1072#1082#1080'_'#1087#1088#1086#1089#1084#1086#1090#1088','
      '  "'#1087#1088#1080#1082#1091#1083#1080#1085#1075'_'#1087#1088#1086#1089#1084#1086#1090#1088'" = :'#1087#1088#1080#1082#1091#1083#1080#1085#1075'_'#1087#1088#1086#1089#1084#1086#1090#1088','
      '  "'#1092#1080#1090#1086'_'#1087#1088#1086#1089#1084#1086#1090#1088'" = :'#1092#1080#1090#1086'_'#1087#1088#1086#1089#1084#1086#1090#1088','
      '  "'#1089#1090#1077#1085#1076#1080#1085#1075'_'#1087#1088#1086#1089#1084#1086#1090#1088'" = :'#1089#1090#1077#1085#1076#1080#1085#1075'_'#1087#1088#1086#1089#1084#1086#1090#1088','
      '  "'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'_'#1087#1088#1086#1089#1084#1086#1090#1088'" = :'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'_'#1087#1088#1086#1089#1084#1086#1090#1088','
      '  "'#1087#1088#1072#1081#1089'_'#1087#1088#1086#1089#1084#1086#1090#1088'" = :'#1087#1088#1072#1081#1089'_'#1087#1088#1086#1089#1084#1086#1090#1088','
      '  "'#1094#1077#1093#1072'_'#1087#1088#1086#1089#1084#1086#1090#1088'" = :'#1094#1077#1093#1072'_'#1087#1088#1086#1089#1084#1086#1090#1088','
      '  "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'_'#1087#1088#1086#1089#1084#1086#1090#1088'" = :'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'_'#1087#1088#1086#1089#1084#1086#1090#1088','
      '  "'#1088#1086#1083#1080'_'#1087#1088#1086#1089#1084#1086#1090#1088'" = :'#1088#1086#1083#1080'_'#1087#1088#1086#1089#1084#1086#1090#1088','
      '  "'#1089#1090#1088#1072#1085#1099'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077'" = :'#1089#1090#1088#1072#1085#1099'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077','
      '  "'#1089#1090#1088#1072#1085#1099'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'" = :'#1089#1090#1088#1072#1085#1099'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077','
      '  "'#1089#1090#1088#1072#1085#1099'_'#1091#1076#1072#1083#1077#1085#1080#1077'" = :'#1089#1090#1088#1072#1085#1099'_'#1091#1076#1072#1083#1077#1085#1080#1077','
      '  "'#1090#1080#1087#1099'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077'" = :'#1090#1080#1087#1099'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077','
      '  "'#1090#1080#1087#1099'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'" = :'#1090#1080#1087#1099'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077','
      '  "'#1090#1080#1087#1099'_'#1091#1076#1072#1083#1077#1085#1080#1077'" = :'#1090#1080#1087#1099'_'#1091#1076#1072#1083#1077#1085#1080#1077','
      '  "'#1089#1074#1086#1081#1089#1090#1074#1072'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077'" = :'#1089#1074#1086#1081#1089#1090#1074#1072'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077','
      '  "'#1089#1074#1086#1081#1089#1090#1074#1072'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'" = :'#1089#1074#1086#1081#1089#1090#1074#1072'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077','
      '  "'#1089#1074#1086#1081#1089#1090#1074#1072'_'#1091#1076#1072#1083#1077#1085#1080#1077'" = :'#1089#1074#1086#1081#1089#1090#1074#1072'_'#1091#1076#1072#1083#1077#1085#1080#1077','
      '  "'#1087#1083#1072#1085#1090#1072#1094#1080#1080'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077'" = :'#1087#1083#1072#1085#1090#1072#1094#1080#1080'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077','
      '  "'#1087#1083#1072#1085#1090#1072#1094#1080#1080'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'" = :'#1087#1083#1072#1085#1090#1072#1094#1080#1080'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077','
      '  "'#1087#1083#1072#1085#1090#1072#1094#1080#1080'_'#1091#1076#1072#1083#1077#1085#1080#1077'" = :'#1087#1083#1072#1085#1090#1072#1094#1080#1080'_'#1091#1076#1072#1083#1077#1085#1080#1077','
      '  "'#1089#1086#1088#1090#1072'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077'" = :'#1089#1086#1088#1090#1072'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077','
      '  "'#1089#1086#1088#1090#1072'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'" = :'#1089#1086#1088#1090#1072'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077','
      '  "'#1089#1086#1088#1090#1072'_'#1091#1076#1072#1083#1077#1085#1080#1077'" = :'#1089#1086#1088#1090#1072'_'#1091#1076#1072#1083#1077#1085#1080#1077','
      '  "'#1076#1083#1080#1085#1072'_'#1074#1077#1089'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077'" = :'#1076#1083#1080#1085#1072'_'#1074#1077#1089'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077','
      '  "'#1076#1083#1080#1085#1072'_'#1074#1077#1089'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'" = :'#1076#1083#1080#1085#1072'_'#1074#1077#1089'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077','
      '  "'#1076#1083#1080#1085#1072'_'#1074#1077#1089'_'#1091#1076#1072#1083#1077#1085#1080#1077'" = :'#1076#1083#1080#1085#1072'_'#1074#1077#1089'_'#1091#1076#1072#1083#1077#1085#1080#1077','
      '  "'#1091#1087#1072#1082#1086#1074#1082#1072'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077'" = :'#1091#1087#1072#1082#1086#1074#1082#1072'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077','
      '  "'#1091#1087#1072#1082#1086#1074#1082#1072'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'" = :'#1091#1087#1072#1082#1086#1074#1082#1072'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077','
      '  "'#1091#1087#1072#1082#1086#1074#1082#1072'_'#1091#1076#1072#1083#1077#1085#1080#1077'" = :'#1091#1087#1072#1082#1086#1074#1082#1072'_'#1091#1076#1072#1083#1077#1085#1080#1077','
      '  "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077'" = :'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077','
      '  "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'" = :'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077','
      '  "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'_'#1091#1076#1072#1083#1077#1085#1080#1077'" = :'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'_'#1091#1076#1072#1083#1077#1085#1080#1077','
      '  "'#1072#1074#1080#1072#1083#1080#1085#1080#1080'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077'" = :'#1072#1074#1080#1072#1083#1080#1085#1080#1080'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077','
      '  "'#1072#1074#1080#1072#1083#1080#1085#1080#1080'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'" = :'#1072#1074#1080#1072#1083#1080#1085#1080#1080'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077','
      '  "'#1072#1074#1080#1072#1083#1080#1085#1080#1080'_'#1091#1076#1072#1083#1077#1085#1080#1077'" = :'#1072#1074#1080#1072#1083#1080#1085#1080#1080'_'#1091#1076#1072#1083#1077#1085#1080#1077','
      '  "'#1082#1072#1088#1075#1086'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077'" = :'#1082#1072#1088#1075#1086'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077','
      '  "'#1082#1072#1088#1075#1086'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'" = :'#1082#1072#1088#1075#1086'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077','
      '  "'#1082#1072#1088#1075#1086'_'#1091#1076#1072#1083#1077#1085#1080#1077'" = :'#1082#1072#1088#1075#1086'_'#1091#1076#1072#1083#1077#1085#1080#1077','
      '  "'#1090#1088#1072#1082#1080'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077'" = :'#1090#1088#1072#1082#1080'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077','
      '  "'#1090#1088#1072#1082#1080'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'" = :'#1090#1088#1072#1082#1080'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077','
      '  "'#1090#1088#1072#1082#1080'_'#1091#1076#1072#1083#1077#1085#1080#1077'" = :'#1090#1088#1072#1082#1080'_'#1091#1076#1072#1083#1077#1085#1080#1077','
      '  "'#1087#1088#1080#1082#1091#1083#1080#1085#1075'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077'" = :'#1087#1088#1080#1082#1091#1083#1080#1085#1075'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077','
      '  "'#1087#1088#1080#1082#1091#1083#1080#1085#1075'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'" = :'#1087#1088#1080#1082#1091#1083#1080#1085#1075'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077','
      '  "'#1087#1088#1080#1082#1091#1083#1080#1085#1075'_'#1091#1076#1072#1083#1077#1085#1080#1077'" = :'#1087#1088#1080#1082#1091#1083#1080#1085#1075'_'#1091#1076#1072#1083#1077#1085#1080#1077','
      '  "'#1092#1080#1090#1086'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077'" = :'#1092#1080#1090#1086'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077','
      '  "'#1092#1080#1090#1086'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'" = :'#1092#1080#1090#1086'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077','
      '  "'#1092#1080#1090#1086'_'#1091#1076#1072#1083#1077#1085#1080#1077'" = :'#1092#1080#1090#1086'_'#1091#1076#1072#1083#1077#1085#1080#1077','
      '  "'#1089#1090#1077#1085#1076#1080#1085#1075'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077'" = :'#1089#1090#1077#1085#1076#1080#1085#1075'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077','
      '  "'#1089#1090#1077#1085#1076#1080#1085#1075'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'" = :'#1089#1090#1077#1085#1076#1080#1085#1075'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077','
      '  "'#1089#1090#1077#1085#1076#1080#1085#1075'_'#1091#1076#1072#1083#1077#1085#1080#1077'" = :'#1089#1090#1077#1085#1076#1080#1085#1075'_'#1091#1076#1072#1083#1077#1085#1080#1077','
      '  "'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077'" = :'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077','
      '  "'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'" = :'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077','
      '  "'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'_'#1091#1076#1072#1083#1077#1085#1080#1077'" = :'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'_'#1091#1076#1072#1083#1077#1085#1080#1077','
      '  "'#1087#1088#1072#1081#1089'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077'" = :'#1087#1088#1072#1081#1089'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077','
      '  "'#1087#1088#1072#1081#1089'_'#1088#1077#1076#1072#1090#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'" = :'#1087#1088#1072#1081#1089'_'#1088#1077#1076#1072#1090#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077','
      '  "'#1087#1088#1072#1081#1089'_'#1091#1076#1072#1083#1077#1085#1080#1077'" = :'#1087#1088#1072#1081#1089'_'#1091#1076#1072#1083#1077#1085#1080#1077','
      '  "'#1094#1077#1093#1072'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077'" = :'#1094#1077#1093#1072'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077','
      '  "'#1094#1077#1093#1072'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'" = :'#1094#1077#1093#1072'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077','
      '  "'#1094#1077#1093#1072'_'#1091#1076#1072#1083#1077#1085#1080#1077'" = :'#1094#1077#1093#1072'_'#1091#1076#1072#1083#1077#1085#1080#1077','
      '  "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077'" = :'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077','
      '  "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'" = :'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077','
      '  "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'_'#1091#1076#1072#1083#1077#1085#1080#1077'" = :'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'_'#1091#1076#1072#1083#1077#1085#1080#1077','
      '  "'#1088#1086#1083#1080'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077'" = :'#1088#1086#1083#1080'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077','
      '  "'#1088#1086#1083#1080'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'" = :'#1088#1086#1083#1080'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077','
      '  "'#1088#1086#1083#1080'_'#1091#1076#1072#1083#1077#1085#1080#1077'" = :'#1088#1086#1083#1080'_'#1091#1076#1072#1083#1077#1085#1080#1077','
      '  "'#1073#1091#1093'_'#1086#1089#1085#1086#1074#1085#1099#1077'" = :'#1073#1091#1093'_'#1086#1089#1085#1086#1074#1085#1099#1077','
      '  "'#1073#1091#1093'_awb_'#1087#1088#1086#1089#1084#1086#1090#1088'" = :'#1073#1091#1093'_awb_'#1087#1088#1086#1089#1084#1086#1090#1088','
      
        '  "'#1073#1091#1093'_'#1073#1072#1083#1072#1085#1089'_'#1087#1083#1072#1085#1090#1072#1094#1080#1081'_'#1087#1088#1086#1089#1084#1086#1090#1088'" = :'#1073#1091#1093'_'#1073#1072#1083#1072#1085#1089'_'#1087#1083#1072#1085#1090#1072#1094#1080#1081'_'#1087#1088#1086#1089#1084#1086 +
        #1090#1088','
      '  "'#1073#1091#1093'_'#1073#1072#1083#1072#1085#1089'_'#1082#1072#1088#1075#1086'_'#1087#1088#1086#1089#1084#1086#1090#1088'" = :'#1073#1091#1093'_'#1073#1072#1083#1072#1085#1089'_'#1082#1072#1088#1075#1086'_'#1087#1088#1086#1089#1084#1086#1090#1088','
      '  "'#1073#1091#1093'_awb_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077'" = :'#1073#1091#1093'_awb_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077','
      '  "'#1073#1091#1093'_awb_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'" = :'#1073#1091#1093'_awb_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077','
      '  "'#1073#1091#1093'_awb_'#1091#1076#1072#1083#1077#1085#1080#1077'" = :'#1073#1091#1093'_awb_'#1091#1076#1072#1083#1077#1085#1080#1077','
      
        '  "'#1073#1091#1093'_'#1073#1072#1083#1072#1085#1089'_'#1087#1083#1072#1085#1090#1072#1094#1080#1081'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077'" = :'#1073#1091#1093'_'#1073#1072#1083#1072#1085#1089'_'#1087#1083#1072#1085#1090#1072#1094#1080#1081'_'#1076#1086#1073#1072 +
        #1074#1083#1077#1085#1080#1077','
      
        '  "'#1073#1091#1093'_'#1073#1072#1083#1072#1085#1089'_'#1087#1083#1072#1085#1090#1072#1094#1080#1081'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085'" = :'#1073#1091#1093'_'#1073#1072#1083#1072#1085#1089'_'#1087#1083#1072#1085#1090#1072#1094#1080#1081'_'#1088#1077 +
        #1076#1072#1082#1090#1080#1088#1086#1074#1072#1085','
      
        '  "'#1073#1091#1093'_'#1073#1072#1083#1072#1085#1089'_'#1087#1083#1072#1085#1090#1072#1094#1080#1081'_'#1091#1076#1072#1083#1077#1085#1080#1077'" = :'#1073#1091#1093'_'#1073#1072#1083#1072#1085#1089'_'#1087#1083#1072#1085#1090#1072#1094#1080#1081'_'#1091#1076#1072#1083#1077#1085 +
        #1080#1077','
      '  "'#1073#1091#1093'_'#1073#1072#1083#1072#1085#1089'_'#1082#1072#1088#1075#1086'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077'" = :'#1073#1091#1093'_'#1073#1072#1083#1072#1085#1089'_'#1082#1072#1088#1075#1086'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077','
      
        '  "'#1073#1091#1093'_'#1073#1072#1083#1072#1085#1089'_'#1082#1072#1088#1075#1086'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'" = :'#1073#1091#1093'_'#1073#1072#1083#1072#1085#1089'_'#1082#1072#1088#1075#1086'_'#1088#1077#1076#1072#1082#1090#1080#1088 +
        #1086#1074#1072#1085#1080#1077','
      '  "'#1073#1091#1093'_'#1073#1072#1083#1072#1085#1089'_'#1082#1072#1088#1075#1086'_'#1091#1076#1072#1083#1077#1085#1080#1077'" = :'#1073#1091#1093'_'#1073#1072#1083#1072#1085#1089'_'#1082#1072#1088#1075#1086'_'#1091#1076#1072#1083#1077#1085#1080#1077','
      '  "'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1086#1089#1085#1086#1074#1072'" = :'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1086#1089#1085#1086#1074#1072','
      
        '  "'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1079#1072#1082#1072#1079#1099'_'#1087#1088#1086#1089#1084'" = :'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1079#1072 +
        #1082#1072#1079#1099'_'#1087#1088#1086#1089#1084','
      
        '  "'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1079#1072#1082#1072#1079#1099'_'#1076#1086#1073#1072#1074'" = :'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1079#1072 +
        #1082#1072#1079#1099'_'#1076#1086#1073#1072#1074','
      
        '  "'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1079#1072#1082#1072#1079#1099'_'#1088#1077#1076#1072#1082'" = :'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1079#1072 +
        #1082#1072#1079#1099'_'#1088#1077#1076#1072#1082','
      
        '  "'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1079#1072#1082#1072#1079#1099'_'#1091#1076#1072#1083#1077'" = :'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1079#1072 +
        #1082#1072#1079#1099'_'#1091#1076#1072#1083#1077','
      
        '  "'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1087#1077#1076#1080#1076#1086'_'#1087#1088#1086#1089#1084'" = :'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1087#1077 +
        #1076#1080#1076#1086'_'#1087#1088#1086#1089#1084','
      
        '  "'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1087#1077#1076#1080#1076#1086'_'#1076#1086#1073#1072#1074'" = :'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1087#1077 +
        #1076#1080#1076#1086'_'#1076#1086#1073#1072#1074','
      
        '  "'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1087#1077#1076#1080#1076#1086'_'#1088#1077#1076#1072#1082'" = :'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1087#1077 +
        #1076#1080#1076#1086'_'#1088#1077#1076#1072#1082','
      
        '  "'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1087#1077#1076#1080#1076#1086'_'#1091#1076#1072#1083#1077'" = :'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1087#1077 +
        #1076#1080#1076#1086'_'#1091#1076#1072#1083#1077','
      
        '  "'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1090#1072#1084#1086#1078#1085#1103'" = :'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1090#1072#1084#1086#1078#1085#1103 +
        ','
      
        '  "'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1090#1072#1084#1086#1078#1085#1103'_'#1087#1088#1086#1089'" = :'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1090#1072 +
        #1084#1086#1078#1085#1103'_'#1087#1088#1086#1089','
      
        '  "'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1090#1072#1084#1086#1078#1085#1103'_'#1076#1086#1073#1072'" = :'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1090#1072 +
        #1084#1086#1078#1085#1103'_'#1076#1086#1073#1072','
      
        '  "'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1090#1072#1084#1086#1078#1085#1103'_'#1088#1077#1076#1072'" = :'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1090#1072 +
        #1084#1086#1078#1085#1103'_'#1088#1077#1076#1072','
      
        '  "'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1090#1072#1084#1086#1078#1085#1103'_'#1091#1076#1072#1083'" = :'#1047#1072#1082#1091#1087#1082#1072'_'#1080'_'#1088#1077#1072#1083#1080#1079#1072#1094#1080#1103'_'#1090#1072 +
        #1084#1086#1078#1085#1103'_'#1091#1076#1072#1083','
      ' "'#1073#1091#1093'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'_'#1087#1088#1086#1089#1084#1086#1090#1088'"= :'#1073#1091#1093'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'_'#1087#1088#1086#1089#1084#1086#1090#1088','
      ' "'#1073#1091#1093'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'"= :'#1073#1091#1093'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077','
      '"'#1073#1091#1093'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'_'#1091#1076#1072#1083#1077#1085#1080#1077'" = :'#1073#1091#1093'_'#1087#1088#1080#1090#1077#1085#1079#1080#1080'_'#1091#1076#1072#1083#1077#1085#1080#1077','
      '"'#1073#1091#1093'_'#1092#1072#1082#1090#1091#1088#1099'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'" = :'#1073#1091#1093'_'#1092#1072#1082#1090#1091#1088#1099'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077','
      #1073#1091#1093'_'#1086#1087#1083#1072#1090#1072'_'#1087#1088#1086#1089#1084#1086#1090#1088'=:'#1073#1091#1093'_'#1086#1087#1083#1072#1090#1072'_'#1087#1088#1086#1089#1084#1086#1090#1088','
      #1073#1091#1093'_'#1086#1087#1083#1072#1090#1072'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'=:'#1073#1091#1093'_'#1086#1087#1083#1072#1090#1072'_'#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077','
      #1073#1091#1093'_'#1086#1087#1083#1072#1090#1072'_'#1091#1076#1072#1083#1077#1085#1080#1077'=:'#1073#1091#1093'_'#1086#1087#1083#1072#1090#1072'_'#1091#1076#1072#1083#1077#1085#1080#1077','
      #1073#1091#1093'_'#1086#1087#1083#1072#1090#1072'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077'=:'#1073#1091#1093'_'#1086#1087#1083#1072#1090#1072'_'#1076#1086#1073#1072#1074#1083#1077#1085#1080#1077
      ''
      ' '
      ''
      ''
      ''
      ''
      ' '
      'WHERE  "'#1082#1086#1076'_'#1088#1086#1083#1080'" = :'#1082#1086#1076'_'#1088#1086#1083#1080';')
    SQLLock.Strings = (
      'SELECT * FROM RoleAccess'
      'WITH (UPDLOCK, ROWLOCK, HOLDLOCK)'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      
        'SELECT id_role, ['#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'], ['#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080#1054#1089#1085#1086#1074#1085#1099#1077'], ['#1057#1087#1088#1072#1074#1086#1095#1085#1080 +
        #1082#1080#1040#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1041#1083#1072#1085#1096#1080#1088#1086#1074#1072#1085#1080#1077#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1041#1083#1072#1085#1096#1080#1088#1086#1074#1072#1085#1080#1077#1044#1086#1073 +
        #1072#1074#1083#1077#1085#1080#1077'], ['#1041#1083#1072#1085#1096#1080#1088#1086#1074#1072#1085#1080#1077#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1041#1083#1072#1085#1096#1080#1088#1086#1074#1072#1085#1080#1077#1059#1076#1072#1083#1077#1085#1080#1077']' +
        ', ['#1041#1083#1072#1085#1096#1080#1088#1086#1074#1072#1085#1080#1077#1059#1076#1072#1083#1077#1085#1080#1077#1042#1089#1077#1093'], ['#1042#1080#1076#1099#1052#1086#1077#1082#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1042#1080#1076#1099#1052#1086#1077#1082#1044#1086#1073#1072 +
        #1074#1083#1077#1085#1080#1077'], ['#1042#1080#1076#1099#1052#1086#1077#1082#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1042#1080#1076#1099#1052#1086#1077#1082#1059#1076#1072#1083#1077#1085#1080#1077'], ['#1055#1072#1089#1090#1077#1088#1080#1079 +
        #1072#1090#1086#1088#1099#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1055#1072#1089#1090#1077#1088#1080#1079#1072#1090#1086#1088#1099#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'], ['#1055#1072#1089#1090#1077#1088#1080#1079#1072#1090#1086#1088#1099#1056#1077#1076#1072#1082#1090#1080 +
        #1088#1086#1074#1072#1085#1080#1077'], ['#1055#1072#1089#1090#1077#1088#1080#1079#1072#1090#1086#1088#1099#1059#1076#1072#1083#1077#1085#1080#1077'], ['#1069#1092#1092#1077#1082#1090#1080#1074#1085#1086#1089#1090#1100#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1069#1092#1092 +
        #1077#1082#1090#1080#1074#1085#1086#1089#1090#1100#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'], ['#1069#1092#1092#1077#1082#1090#1080#1074#1085#1086#1089#1090#1100#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1069#1092#1092#1077#1082#1090#1080#1074#1085 +
        #1086#1089#1090#1100#1059#1076#1072#1083#1077#1085#1080#1077'], ['#1069#1092#1092#1077#1082#1090#1080#1074#1085#1086#1089#1090#1100#1042#1077#1089#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1069#1092#1092#1077#1082#1090#1080#1074#1085#1086#1089#1090#1100#1042#1077#1089#1044#1086#1073#1072 +
        #1074#1083#1077#1085#1080#1077'], ['#1069#1092#1092#1077#1082#1090#1080#1074#1085#1086#1089#1090#1100#1042#1077#1089#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1069#1092#1092#1077#1082#1090#1080#1074#1085#1086#1089#1090#1100#1042#1077#1089#1059#1076#1072#1083 +
        #1077#1085#1080#1077'], ['#1043#1088#1072#1092#1080#1082#1057#1084#1077#1085#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1043#1088#1072#1092#1080#1082#1057#1084#1077#1085#1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1043#1088#1072#1092#1080#1082#1057#1084 +
        #1077#1085#1059#1076#1072#1083#1077#1085#1080#1077'], ['#1054#1090#1095#1077#1090#1085#1086#1077#1042#1088#1077#1084#1103#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1054#1090#1095#1077#1090#1085#1086#1077#1042#1088#1077#1084#1103#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'],' +
        ' ['#1054#1090#1095#1077#1090#1085#1086#1077#1042#1088#1077#1084#1103#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1054#1090#1095#1077#1090#1085#1086#1077#1042#1088#1077#1084#1103#1059#1076#1072#1083#1077#1085#1080#1077'], ['#1044#1086#1083#1078#1085#1086 +
        #1089#1090#1080#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1044#1086#1083#1078#1085#1086#1089#1090#1080#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'], ['#1044#1086#1083#1078#1085#1086#1089#1090#1080#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ' +
        '['#1044#1086#1083#1078#1085#1086#1089#1090#1080#1059#1076#1072#1083#1077#1085#1080#1077'], ['#1057#1084#1077#1085#1099#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1057#1084#1077#1085#1099#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1055#1086 +
        #1083#1100#1079#1086#1074#1072#1090#1077#1083#1080#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'], ['#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080#1056#1077#1076#1072 +
        #1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080#1059#1076#1072#1083#1077#1085#1080#1077'], ['#1044#1086#1089#1090#1091#1087#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1044#1086#1089#1090#1091#1087#1056#1077 +
        #1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1047#1072#1076#1072#1095#1080#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1055#1083#1072#1085#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1055#1083#1072#1085#1057#1086#1079#1076#1072#1085#1080#1077'],' +
        ' ['#1055#1083#1072#1085#1055#1077#1088#1077#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1055#1083#1072#1085#1059#1076#1072#1083#1077#1085#1080#1077'], ['#1055#1083#1072#1085#1059#1076#1072#1083#1077#1085#1080#1077#1042#1089#1077#1093'], ['#1055#1086 +
        #1079#1080#1094#1080#1080#1055#1083#1072#1085#1072#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1055#1086#1079#1080#1094#1080#1080#1055#1083#1072#1085#1072#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1055#1086#1079#1080#1094#1080#1080#1055#1083#1072#1085#1072 +
        #1059#1076#1072#1083#1077#1085#1080#1077'], ['#1060#1072#1082#1090#1042#1099#1087#1086#1083#1085#1077#1085#1080#1103#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1054#1090#1095#1077#1090#1099'], ['#1053#1072#1089#1090#1088#1086#1081#1082#1080#1055 +
        #1088#1086#1089#1084#1086#1090#1088'], ['#1053#1072#1089#1090#1088#1086#1081#1082#1080#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1057#1090#1072#1090#1080#1089#1090#1080#1082#1072#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1057#1090#1072#1090 +
        #1080#1089#1090#1080#1082#1072#1054#1095#1080#1089#1090#1082#1072'], ['#1047#1072#1082#1072#1079#1099#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1047#1072#1082#1072#1079#1099#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'], ['#1047#1072#1082#1072#1079#1099#1056#1077#1076 +
        #1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1047#1072#1082#1072#1079#1099#1059#1076#1072#1083#1077#1085#1080#1077'] FROM RoleAccess'
      'WHERE'
      '  id = :P_1_id')
    Connection = DM1.db1
    SQL.Strings = (
      'SELECT '
      ' *'
      'FROM '
      '  "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1076#1086#1089#1090#1091#1087'" ;')
    MasterSource = dsRole
    MasterFields = 'id'
    DetailFields = #1082#1086#1076'_'#1088#1086#1083#1080
    Left = 300
    Top = 296
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 8
      end>
  end
  object dsAccess: TDataSource
    DataSet = QueryAccess
    Left = 632
    Top = 288
  end
  object QueryRole: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO clients'
      
        '  (ID, PID, NAME, id_is_client, id_supplier, id_competitor, adre' +
        'ss, phone, comment, id_del)'
      'VALUES'
      
        '  (:ID, :PID, :NAME, :id_is_client, :id_supplier, :id_competitor' +
        ', :adress, :phone, :comment, :id_del)')
    SQLDelete.Strings = (
      'DELETE FROM clients'
      'WHERE'
      '  ID = :Old_ID')
    SQLUpdate.Strings = (
      'UPDATE clients'
      'SET'
      
        '  ID = :ID, PID = :PID, NAME = :NAME, id_is_client = :id_is_clie' +
        'nt, id_supplier = :id_supplier, id_competitor = :id_competitor, ' +
        'adress = :adress, phone = :phone, comment = :comment, id_del = :' +
        'id_del'
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
      ' *'
      'FROM '
      '  "'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'"."'#1088#1086#1083#1080'"'
      'where  id<>1'
      'order by name')
    Left = 104
    Top = 168
  end
  object dsRole: TDataSource
    DataSet = QueryRole
    Left = 112
    Top = 248
  end
  object cxmglst1: TcxImageList
    Height = 24
    Width = 24
    FormatVersion = 1
    DesignInfo = 19661308
    ImageInfo = <
      item
        Image.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000008C3700D0C16D21FFC16E22FFBEBEBEFFD3D3D3FFE4E4E4FFF6F6
          F6FFFFFFFFFFFFFFFFFFF3F3F3FFE2E2E2FFD3D3D3FFC1C1C1FF4F4234FFC97D
          2BFFCA7D2CFFCB7F2DFFDE9C53FFC37226FF6A2300B000000000000000000000
          0000954100CEC6772AFFC57527FFC57528FFA9A9A9FFC67729FFC77829FFC879
          2AFFC97B2BFFFAFAFAFFFDFDFDFFEBEBEBFFDBDBDBFFCCCCCCFF524537FFD188
          33FFD38A34FFD48C35FFE4A459FFD89138FFC97B2CFF0000000000000000AA50
          00DDC37329FFC27125FFC27125FFC37226FFA2A2A2FFC47427FFC57528FFC676
          28FFC77829FFE8E8E8FFF1F1F1FFFDFDFDFFECECECFFDCDCDCFF56493BFFD085
          31FFD18733FFD38A34FFE3A258FFD68F37FFD48A34FF0000000000000000BC5B
          00F0C06D23FFC06E23FFC06E23FFC16F24FFB6B6B6FFC27125FFC37226FFC473
          26FFC57527FFD5D5D5FFE0E0E0FFF1F1F1FFFEFEFEFFEFEFEFFF594C3EFFCE83
          30FFCF8531FFD18733FFE2A157FFD58C36FFD18933FF0000000000000000C260
          00F0BD6A21FFBE6A21FFBE6B21FFBE6C22FFCACACAFFC06E23FFC16F24FFC270
          25FFC37226FFC2C2C2FFCFCFCFFFDFDFDFFFEEEEEEFFFEFEFEFF5A4D3FFFCC80
          2EFFCE8330FFD08531FFE1A057FFD38A34FFD08732FF0000000000000000C160
          00F0BB671FFFBB671FFFBC6820FFBC6820FFDBDBDBFFBE6B21FFBF6C22FFC06D
          23FFC16F24FFB0B0B0FFBEBEBEFFCECECEFFDDDDDDFFEDEDEDFF5D4F41FFCB7E
          2DFFCC802EFFCE8330FFE09E55FFD28833FFCF8431FF0000000000000000C160
          00F0B9641DFFB9641DFFBA651EFFBA651EFFF2F2F2FFE1E1E1FFCECECEFFBABA
          BAFFAAAAAAFF9F9F9FFFB0B0B0FFC3C3C3FFD5D5D5FFE7E7E7FF605244FFC97C
          2CFFCB7E2DFFCD812FFFE09D55FFD08632FFCE8230FF0000000000000000C260
          00F0B7601BFFB7611BFFB8611CFFB8621CFFB9631DFFBA651EFFBB661FFFBC68
          20FFBD6921FFBE6B22FFC06D23FFC17024FFC37226FFC47427FFC67729FFC879
          2AFFCA7C2CFFCB7F2DFFCD822FFFCF8431FFCD812FFF0000000000000000C261
          00F0B55D19FFB55E1AFFB65E1AFFB65F1AFFB7601BFFB8621CFFB9631DFFBA65
          1EFFBB671FFFBD6920FFBE6B22FFC06D23FFC17024FFC37226FFC57527FFC677
          29FFC87A2BFFCA7D2CFFCC802EFFCE8330FFCC7F2DFF0000000000000000C261
          00F0B35A17FFB35A18FFB35B18FFB45C19FFB55D19FFB65F1AFFB7601BFFB862
          1CFFBA641EFFBB661FFFBC6820FFBE6B22FFC06D23FFC17025FFC37326FFC575
          28FFC77829FFC97B2BFFCB7E2DFFCD812FFFCB7E2CFF0000000000000000C261
          00F0B05715FFB15716FFB15816FFB25917FFB35A18FFB45C18FFB55E1AFFB660
          1BFFB8621CFFB9641DFFBB661FFFBC6920FFBE6B22FFC06E23FFC27125FFC473
          27FFC67628FFC8792AFFCA7C2CFFCC7F2EFFCA7D2BFF0000000000000000C261
          00F0AE5313FFAF5414FFAF5514FFAF886CFFAD937FFFAE9380FFAE9480FFAF94
          80FFAE947FFFAD947FFFAC937EFFAC937EFFAB927CFFA9917AFFA88F79FFA78F
          78FFA68E77FFC77829FFC97B2BFFCB7E2DFFC97B2CFF0000000000000000C362
          00F0AC5011FFAD5112FFAD5212FFAE9C90FFE5E5E5FFE6E6E6FFE7E7E7FFE7E7
          E7FFE8E8E8FFE7E7E7FFE4E4E4FFE2E2E2FFDFDFDFFFDCDCDCFFD9D9D9FFD7D7
          D7FFCACACAFFC67628FFC8792AFFCA7C2CFFC77A2AFF0000000000000000C362
          00F0AA4D0FFFAA4E10FFAB4F10FFB19F92FFE8E8E8FFEAEAEAFFE7E7E7FFD7D7
          D7FFD7D7D7FFD6D6D6FFD6D6D6FFD5D5D5FFD4D4D4FFD2D2D2FFDCDCDCFFD7D7
          D7FFCCCCCCFFC57527FFC77829FFC97B2BFFC87929FF0000000000000000C362
          00F0A84A0DFFA84B0EFFA94C0FFFB4A195FFEDEDEDFFEEEEEEFFE8E8E8FFCACA
          CAFFCACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFDFDFDFFFDADA
          DAFFCECECEFFC47327FFC67729FFC87A2AFFC67829FF0000000000000000C363
          00F0A6470DFFA6470CFFA7490DFFB6A498FFF1F1F1FFF3F3F3FFF5F5F5FFF9F9
          F9FFF8F8F8FFF7F7F7FFF4F4F4FFEFEFEFFFEBEBEBFFE6E6E6FFE0E0E0FFDCDC
          DCFFD0D0D0FFC37226FFC57628FFC7792AFFC57628FF0000000000000000C363
          00F0A4430AFFA4440AFFA5460BFFB9A69AFFF4F4F4FFF7F7F7FFF1F1F1FFCBCB
          CBFFCBCBCBFFCBCBCBFFCBCBCBFFCCCCCCFFCCCCCCFFCBCBCBFFE4E4E4FFDDDD
          DDFFD1D1D1FFC27125FFC57527FFC77829FFC57728FF0000000000000000C363
          00F0A14008FFA24108FFA4430AFFBCA99DFFF7F7F7FFFAFAFAFFFBFBFBFFECEC
          ECFFEDEDEDFFE9E9E9FFE7E7E7FFE4E4E4FFE1E1E1FFDDDDDDFFE4E4E4FFDFDF
          DFFFD2D2D2FFC27125FFC47427FFC67729FFC57528FF0000000000000000C463
          00F09F3D06FFA03F07FFA24108FFBFACA0FFF8F8F8FFFCFCFCFFFCFCFCFFEBEB
          EBFFEBEBEBFFE9E9E9FFE6E6E6FFE3E3E3FFE1E1E1FFDDDDDDFFE5E5E5FFDFDF
          DFFFD3D3D3FFC17025FFA76221FFAA6523FFC57727FF0000000000000000C161
          00F09D3A04FF9F3C05FFA13F07FFBFACA1FFF8F8F8FFFCFCFCFFF5F5F5FFCACA
          CAFFCACACAFFCACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFE6E6E6FFDFDF
          DFFFD3D3D3FFC17024FF774618FF814D1BFFC67728FF0000000000000000552C
          006B9A3702FF9C3904FF9E3D06FFBFACA1FFF6F6F6FFF9F9F9FFFFFFFFFFFFFF
          FFFFFFFFFFFFFCFCFCFFF8F8F8FFF4F4F4FFEEEEEEFFE9E9E9FFE4E4E4FFDFDF
          DFFFD2D2D2FFC16F25FFC57527FFC8792BFFAF4F05FE00000000000000000000
          00004D27005FB15900DAB35B00DCBFA58AF5C3B7ACFBC5B9AEFBC5B9AEFBC2B6
          ABFBBFB3A7FBBBB0A5FBB8ADA2FBB4A99EFBB2A79DFBADA198FBABA097FBA59C
          91FBA49B90FBAB5200DCA54A00DC853B00B90201000300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
  object Query1: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO RoleAccess'
      
        '  (id_role, ['#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'], ['#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080#1054#1089#1085#1086#1074#1085#1099#1077'], ['#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080#1040#1076 +
        #1084#1080#1085#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1052#1072#1090#1077#1088#1080#1072#1083#1099#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1052#1072#1090#1077#1088#1080#1072#1083#1099#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'], ['#1052 +
        #1072#1090#1077#1088#1080#1072#1083#1099#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1052#1072#1090#1077#1088#1080#1072#1083#1099#1059#1076#1072#1083#1077#1085#1080#1077'], ['#1052#1086#1081#1082#1080#1055#1088#1086#1089#1084#1086#1090#1088'], [' +
        #1052#1086#1081#1082#1080#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'], ['#1052#1086#1081#1082#1080#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1052#1086#1081#1082#1080#1059#1076#1072#1083#1077#1085#1080#1077'], ['#1055#1072#1089#1090#1077 +
        #1088#1080#1079#1072#1090#1086#1088#1099#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1055#1072#1089#1090#1077#1088#1080#1079#1072#1090#1086#1088#1099#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'], ['#1055#1072#1089#1090#1077#1088#1080#1079#1072#1090#1086#1088#1099#1056#1077#1076#1072 +
        #1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1055#1072#1089#1090#1077#1088#1080#1079#1072#1090#1086#1088#1099#1059#1076#1072#1083#1077#1085#1080#1077'], ['#1042#1088#1077#1084#1103#1052#1086#1081#1082#1080'], ['#1056#1086#1083#1100#1055#1088#1086#1089#1084#1086#1090 +
        #1088'], ['#1056#1086#1083#1100#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'], ['#1056#1086#1083#1100#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1056#1086#1083#1100#1059#1076#1072#1083#1077#1085#1080#1077'], ['#1057#1084#1077 +
        #1085#1099#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1057#1084#1077#1085#1099#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'], ['#1057#1084#1077#1085#1099#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1057#1084#1077#1085#1099#1059#1076#1072 +
        #1083#1077#1085#1080#1077'], ['#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'], ['#1055#1086#1083#1100#1079 +
        #1086#1074#1072#1090#1077#1083#1080#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080#1059#1076#1072#1083#1077#1085#1080#1077'], ['#1044#1086#1089#1090#1091#1087#1055#1088#1086#1089#1084#1086#1090#1088']' +
        ', ['#1044#1086#1089#1090#1091#1087#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077#1055#1088#1072#1074'], ['#1047#1072#1076#1072#1095#1080'], ['#1055#1083#1072#1085#1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1055#1083#1072#1085#1056#1077#1076 +
        #1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1055#1083#1072#1085#1055#1077#1095#1072#1090#1100'], ['#1047#1072#1082#1072#1079#1099#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1047#1072#1082#1072#1079#1099#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077']' +
        ', ['#1047#1072#1082#1072#1079#1099#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077#1043#1088#1091#1087#1087#1099'], ['#1047#1072#1082#1072#1079#1099#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1047#1072#1082#1072#1079#1099#1059#1076#1072#1083#1077 +
        #1085#1080#1077'], ['#1054#1090#1095#1077#1090#1099'], ['#1053#1072#1089#1090#1088#1086#1081#1082#1080'])'
      'VALUES'
      
        '  (:id_role, :['#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'], :['#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080#1054#1089#1085#1086#1074#1085#1099#1077'], :['#1057#1087#1088#1072#1074#1086#1095#1085#1080 +
        #1082#1080#1040#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1080#1077'], :['#1052#1072#1090#1077#1088#1080#1072#1083#1099#1055#1088#1086#1089#1084#1086#1090#1088'], :['#1052#1072#1090#1077#1088#1080#1072#1083#1099#1044#1086#1073#1072#1074#1083#1077#1085#1080 +
        #1077'], :['#1052#1072#1090#1077#1088#1080#1072#1083#1099#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], :['#1052#1072#1090#1077#1088#1080#1072#1083#1099#1059#1076#1072#1083#1077#1085#1080#1077'], :['#1052#1086#1081#1082#1080#1055#1088#1086 +
        #1089#1084#1086#1090#1088'], :['#1052#1086#1081#1082#1080#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'], :['#1052#1086#1081#1082#1080#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], :['#1052#1086#1081#1082#1080#1059#1076#1072#1083#1077 +
        #1085#1080#1077'], :['#1055#1072#1089#1090#1077#1088#1080#1079#1072#1090#1086#1088#1099#1055#1088#1086#1089#1084#1086#1090#1088'], :['#1055#1072#1089#1090#1077#1088#1080#1079#1072#1090#1086#1088#1099#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'], :['#1055#1072 +
        #1089#1090#1077#1088#1080#1079#1072#1090#1086#1088#1099#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], :['#1055#1072#1089#1090#1077#1088#1080#1079#1072#1090#1086#1088#1099#1059#1076#1072#1083#1077#1085#1080#1077'], :['#1042#1088#1077#1084#1103#1052#1086#1081 +
        #1082#1080'], :['#1056#1086#1083#1100#1055#1088#1086#1089#1084#1086#1090#1088'], :['#1056#1086#1083#1100#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'], :['#1056#1086#1083#1100#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ' +
        ':['#1056#1086#1083#1100#1059#1076#1072#1083#1077#1085#1080#1077'], :['#1057#1084#1077#1085#1099#1055#1088#1086#1089#1084#1086#1090#1088'], :['#1057#1084#1077#1085#1099#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'], :['#1057#1084#1077#1085#1099#1056#1077 +
        #1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], :['#1057#1084#1077#1085#1099#1059#1076#1072#1083#1077#1085#1080#1077'], :['#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080#1055#1088#1086#1089#1084#1086#1090#1088'], :['#1055#1086#1083#1100 +
        #1079#1086#1074#1072#1090#1077#1083#1080#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'], :['#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], :['#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077 +
        #1083#1080#1059#1076#1072#1083#1077#1085#1080#1077'], :['#1044#1086#1089#1090#1091#1087#1055#1088#1086#1089#1084#1086#1090#1088'], :['#1044#1086#1089#1090#1091#1087#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077#1055#1088#1072#1074'], :['#1047#1072#1076#1072#1095 +
        #1080'], :['#1055#1083#1072#1085#1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077'], :['#1055#1083#1072#1085#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], :['#1055#1083#1072#1085#1055#1077#1095#1072#1090#1100'], :' +
        '['#1047#1072#1082#1072#1079#1099#1055#1088#1086#1089#1084#1086#1090#1088'], :['#1047#1072#1082#1072#1079#1099#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'], :['#1047#1072#1082#1072#1079#1099#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077#1043#1088#1091#1087#1087#1099']' +
        ', :['#1047#1072#1082#1072#1079#1099#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], :['#1047#1072#1082#1072#1079#1099#1059#1076#1072#1083#1077#1085#1080#1077'], :['#1054#1090#1095#1077#1090#1099'], :['#1053#1072#1089#1090#1088 +
        #1086#1081#1082#1080'])')
    SQLDelete.Strings = (
      'DELETE FROM RoleAccess'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE RoleAccess'
      'SET'
      
        '  ['#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'] = :['#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'], ['#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080#1054#1089#1085#1086#1074#1085#1099#1077'] = :['#1057#1087#1088#1072 +
        #1074#1086#1095#1085#1080#1082#1080#1054#1089#1085#1086#1074#1085#1099#1077'], ['#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080#1040#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1080#1077'] = :['#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080 +
        #1040#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1052#1072#1090#1077#1088#1080#1072#1083#1099#1055#1088#1086#1089#1084#1086#1090#1088'] = :['#1052#1072#1090#1077#1088#1080#1072#1083#1099#1055#1088#1086#1089#1084#1086#1090#1088'], ' +
        '['#1052#1072#1090#1077#1088#1080#1072#1083#1099#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'] = :['#1052#1072#1090#1077#1088#1080#1072#1083#1099#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'], ['#1052#1072#1090#1077#1088#1080#1072#1083#1099#1056#1077#1076#1072#1082#1090 +
        #1080#1088#1086#1074#1072#1085#1080#1077'] = :['#1052#1072#1090#1077#1088#1080#1072#1083#1099#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1052#1072#1090#1077#1088#1080#1072#1083#1099#1059#1076#1072#1083#1077#1085#1080#1077'] = :[' +
        #1052#1072#1090#1077#1088#1080#1072#1083#1099#1059#1076#1072#1083#1077#1085#1080#1077'], ['#1052#1086#1081#1082#1080#1055#1088#1086#1089#1084#1086#1090#1088'] = :['#1052#1086#1081#1082#1080#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1052#1086#1081#1082#1080#1044#1086 +
        #1073#1072#1074#1083#1077#1085#1080#1077'] = :['#1052#1086#1081#1082#1080#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'], ['#1052#1086#1081#1082#1080#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'] = :['#1052#1086#1081#1082#1080#1056 +
        #1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1052#1086#1081#1082#1080#1059#1076#1072#1083#1077#1085#1080#1077'] = :['#1052#1086#1081#1082#1080#1059#1076#1072#1083#1077#1085#1080#1077'], ['#1055#1072#1089#1090#1077#1088#1080#1079#1072#1090#1086 +
        #1088#1099#1055#1088#1086#1089#1084#1086#1090#1088'] = :['#1055#1072#1089#1090#1077#1088#1080#1079#1072#1090#1086#1088#1099#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1055#1072#1089#1090#1077#1088#1080#1079#1072#1090#1086#1088#1099#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077 +
        '] = :['#1055#1072#1089#1090#1077#1088#1080#1079#1072#1090#1086#1088#1099#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'], ['#1055#1072#1089#1090#1077#1088#1080#1079#1072#1090#1086#1088#1099#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'] = ' +
        ':['#1055#1072#1089#1090#1077#1088#1080#1079#1072#1090#1086#1088#1099#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1055#1072#1089#1090#1077#1088#1080#1079#1072#1090#1086#1088#1099#1059#1076#1072#1083#1077#1085#1080#1077'] = :['#1055#1072#1089#1090 +
        #1077#1088#1080#1079#1072#1090#1086#1088#1099#1059#1076#1072#1083#1077#1085#1080#1077'], ['#1042#1088#1077#1084#1103#1052#1086#1081#1082#1080'] = :['#1042#1088#1077#1084#1103#1052#1086#1081#1082#1080'], ['#1056#1086#1083#1100#1055#1088#1086#1089#1084#1086#1090#1088']' +
        ' = :['#1056#1086#1083#1100#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1056#1086#1083#1100#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'] = :['#1056#1086#1083#1100#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'], ['#1056#1086#1083#1100#1056 +
        #1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'] = :['#1056#1086#1083#1100#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1056#1086#1083#1100#1059#1076#1072#1083#1077#1085#1080#1077'] = :['#1056#1086#1083#1100#1059 +
        #1076#1072#1083#1077#1085#1080#1077'], ['#1057#1084#1077#1085#1099#1055#1088#1086#1089#1084#1086#1090#1088'] = :['#1057#1084#1077#1085#1099#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1057#1084#1077#1085#1099#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'] ' +
        '= :['#1057#1084#1077#1085#1099#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'], ['#1057#1084#1077#1085#1099#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'] = :['#1057#1084#1077#1085#1099#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072 +
        #1085#1080#1077'], ['#1057#1084#1077#1085#1099#1059#1076#1072#1083#1077#1085#1080#1077'] = :['#1057#1084#1077#1085#1099#1059#1076#1072#1083#1077#1085#1080#1077'], ['#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080#1055#1088#1086#1089#1084#1086#1090#1088']' +
        ' = :['#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'] = :['#1055#1086#1083#1100#1079#1086#1074 +
        #1072#1090#1077#1083#1080#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'], ['#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'] = :['#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080#1056 +
        #1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080#1059#1076#1072#1083#1077#1085#1080#1077'] = :['#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080#1059#1076#1072#1083#1077#1085#1080#1077']' +
        ', ['#1044#1086#1089#1090#1091#1087#1055#1088#1086#1089#1084#1086#1090#1088'] = :['#1044#1086#1089#1090#1091#1087#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1044#1086#1089#1090#1091#1087#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077#1055#1088#1072#1074'] =' +
        ' :['#1044#1086#1089#1090#1091#1087#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077#1055#1088#1072#1074'], ['#1047#1072#1076#1072#1095#1080'] = :['#1047#1072#1076#1072#1095#1080'], ['#1055#1083#1072#1085#1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080 +
        #1077'] = :['#1055#1083#1072#1085#1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1055#1083#1072#1085#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'] = :['#1055#1083#1072#1085#1056#1077#1076#1072#1082#1090#1080#1088#1086 +
        #1074#1072#1085#1080#1077'], ['#1055#1083#1072#1085#1055#1077#1095#1072#1090#1100'] = :['#1055#1083#1072#1085#1055#1077#1095#1072#1090#1100'], ['#1047#1072#1082#1072#1079#1099#1055#1088#1086#1089#1084#1086#1090#1088'] = :['#1047#1072#1082#1072#1079 +
        #1099#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1047#1072#1082#1072#1079#1099#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'] = :['#1047#1072#1082#1072#1079#1099#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'], ['#1047#1072#1082#1072#1079#1099#1044#1086#1073 +
        #1072#1074#1083#1077#1085#1080#1077#1043#1088#1091#1087#1087#1099'] = :['#1047#1072#1082#1072#1079#1099#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077#1043#1088#1091#1087#1087#1099'], ['#1047#1072#1082#1072#1079#1099#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080 +
        #1077'] = :['#1047#1072#1082#1072#1079#1099#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1047#1072#1082#1072#1079#1099#1059#1076#1072#1083#1077#1085#1080#1077'] = :['#1047#1072#1082#1072#1079#1099#1059#1076#1072#1083#1077#1085#1080 +
        #1077'], ['#1054#1090#1095#1077#1090#1099'] = :['#1054#1090#1095#1077#1090#1099'], ['#1053#1072#1089#1090#1088#1086#1081#1082#1080'] = :['#1053#1072#1089#1090#1088#1086#1081#1082#1080']'
      'WHERE'
      '  id = :id')
    SQLLock.Strings = (
      'UPDATE RoleAccess'
      'SET'
      '  id_role = :id_role'
      'WHERE'
      '  id = :Old_id')
    SQLRefresh.Strings = (
      
        'SELECT id_role, ['#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080'], ['#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080#1054#1089#1085#1086#1074#1085#1099#1077'], ['#1057#1087#1088#1072#1074#1086#1095#1085#1080 +
        #1082#1080#1040#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1052#1072#1090#1077#1088#1080#1072#1083#1099#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1052#1072#1090#1077#1088#1080#1072#1083#1099#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077']' +
        ', ['#1052#1072#1090#1077#1088#1080#1072#1083#1099#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1052#1072#1090#1077#1088#1080#1072#1083#1099#1059#1076#1072#1083#1077#1085#1080#1077'], ['#1052#1086#1081#1082#1080#1055#1088#1086#1089#1084#1086#1090#1088 +
        '], ['#1052#1086#1081#1082#1080#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'], ['#1052#1086#1081#1082#1080#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1052#1086#1081#1082#1080#1059#1076#1072#1083#1077#1085#1080#1077'], ['#1055 +
        #1072#1089#1090#1077#1088#1080#1079#1072#1090#1086#1088#1099#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1055#1072#1089#1090#1077#1088#1080#1079#1072#1090#1086#1088#1099#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'], ['#1055#1072#1089#1090#1077#1088#1080#1079#1072#1090#1086#1088#1099 +
        #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1055#1072#1089#1090#1077#1088#1080#1079#1072#1090#1086#1088#1099#1059#1076#1072#1083#1077#1085#1080#1077'], ['#1042#1088#1077#1084#1103#1052#1086#1081#1082#1080'], ['#1056#1086#1083#1100#1055#1088#1086 +
        #1089#1084#1086#1090#1088'], ['#1056#1086#1083#1100#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'], ['#1056#1086#1083#1100#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1056#1086#1083#1100#1059#1076#1072#1083#1077#1085#1080#1077'], ' +
        '['#1057#1084#1077#1085#1099#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1057#1084#1077#1085#1099#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'], ['#1057#1084#1077#1085#1099#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1057#1084#1077#1085 +
        #1099#1059#1076#1072#1083#1077#1085#1080#1077'], ['#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077'], ['#1055 +
        #1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080#1059#1076#1072#1083#1077#1085#1080#1077'], ['#1044#1086#1089#1090#1091#1087#1055#1088#1086#1089#1084 +
        #1086#1090#1088'], ['#1044#1086#1089#1090#1091#1087#1053#1072#1079#1085#1072#1095#1077#1085#1080#1077#1055#1088#1072#1074'], ['#1047#1072#1076#1072#1095#1080'], ['#1055#1083#1072#1085#1060#1086#1088#1084#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1055#1083#1072 +
        #1085#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1055#1083#1072#1085#1055#1077#1095#1072#1090#1100'], ['#1047#1072#1082#1072#1079#1099#1055#1088#1086#1089#1084#1086#1090#1088'], ['#1047#1072#1082#1072#1079#1099#1044#1086#1073#1072#1074#1083#1077 +
        #1085#1080#1077'], ['#1047#1072#1082#1072#1079#1099#1044#1086#1073#1072#1074#1083#1077#1085#1080#1077#1043#1088#1091#1087#1087#1099'], ['#1047#1072#1082#1072#1079#1099#1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077'], ['#1047#1072#1082#1072#1079#1099#1059 +
        #1076#1072#1083#1077#1085#1080#1077'], ['#1054#1090#1095#1077#1090#1099'], ['#1053#1072#1089#1090#1088#1086#1081#1082#1080'] FROM RoleAccess'
      'WHERE'
      '  id = :P_1_id')
    SQL.Strings = (
      'SELECT * from RoleAccess')
    MasterSource = dsRole
    MasterFields = 'id'
    DetailFields = 'id_role'
    Left = 400
    Top = 284
    ParamData = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
        Value = 3
      end>
  end
end
