object FNewMarking: TFNewMarking
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1052#1072#1088#1082#1080#1088#1086#1074#1082#1072
  ClientHeight = 348
  ClientWidth = 461
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
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 316
    Width = 461
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 316
    ExplicitWidth = 461
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
  object Page1: TcxPageControl
    Left = 0
    Top = 0
    Width = 461
    Height = 316
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = TabConnect
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Blue'
    ExplicitWidth = 455
    ExplicitHeight = 330
    ClientRectBottom = 316
    ClientRectRight = 461
    ClientRectTop = 24
    object TabOsn: TcxTabSheet
      Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1089#1074#1077#1076#1077#1085#1080#1103
      ImageIndex = 0
      ExplicitLeft = 3
      ExplicitTop = 26
      ExplicitWidth = 452
      ExplicitHeight = 284
      object Group1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        PanelStyle.Active = True
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 0
        ExplicitWidth = 452
        ExplicitHeight = 284
        Height = 292
        Width = 461
        inline FrameUniName1: TFrameUniName
          Left = 2
          Top = 2
          Width = 457
          Height = 91
          Align = alTop
          TabOrder = 0
          ExplicitLeft = 2
          ExplicitTop = 2
          ExplicitWidth = 448
          ExplicitHeight = 91
          inherited Group1: TcxGroupBox
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            ExplicitWidth = 448
            ExplicitHeight = 91
            Height = 91
            Width = 457
            inherited lblName: TcxLabel
              Top = 39
              ExplicitTop = 39
            end
            inherited lblUniName: TcxLabel
              Top = 17
              ExplicitTop = 17
            end
            inherited edtUniName: TcxTextEdit
              Top = 15
              Properties.OnEditValueChanged = FrameUniName1edtUniNamePropertiesEditValueChanged
              OnKeyUp = FrameUniName1edtUniNameKeyUp
              ExplicitTop = 15
            end
            inherited edtRegName: TcxTextEdit
              Top = 59
              Properties.OnEditValueChanged = FrameUniName1edtRegNamePropertiesEditValueChanged
              OnKeyUp = FrameUniName1edtRegNameKeyUp
              ExplicitTop = 59
            end
            inherited lblRegName: TcxLabel
              Top = 61
              ExplicitTop = 61
            end
            inherited edtName: TcxTextEdit
              Top = 37
              Properties.OnEditValueChanged = FrameUniName1edtNamePropertiesEditValueChanged
              OnKeyUp = FrameUniName1edtNameKeyUp
              ExplicitTop = 37
            end
            inherited chkUseName: TCheckBox
              Top = 84
              ExplicitTop = 84
            end
            inherited btnTranslit: TcxButton
              Top = 15
              ExplicitTop = 15
            end
            inherited chkUniq: TCheckBox
              Top = 86
              ExplicitTop = 86
            end
          end
        end
        object Group2: TcxGroupBox
          Left = 2
          Top = 93
          Align = alClient
          Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1089#1074#1077#1076#1077#1085#1080#1103
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 1
          ExplicitWidth = 448
          ExplicitHeight = 189
          Height = 197
          Width = 457
          object label6: TcxLabel
            Left = 3
            Top = 64
            Caption = #1040#1076#1088#1077#1089':'
            Transparent = True
          end
          object edtPhone1: TcxTextEdit
            Left = 100
            Top = 105
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
            StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 1
            Width = 265
          end
          object cxLabel5: TcxLabel
            Left = 3
            Top = 107
            Caption = #1058#1077#1083#1077#1092#1086#1085':'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = ''
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = ''
            Properties.LineOptions.Alignment = cxllaBottom
            Transparent = True
          end
          object edtFax: TcxTextEdit
            Left = 100
            Top = 128
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
            StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 3
            Width = 265
          end
          object lblFax: TcxLabel
            Left = 3
            Top = 130
            Caption = #1060#1072#1082#1089':'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = ''
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = ''
            Properties.LineOptions.Alignment = cxllaBottom
            Transparent = True
          end
          object chkAddrClient: TcxCheckBox
            Left = 3
            Top = 39
            Caption = #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1086#1089#1085#1086#1074#1085#1086#1075#1086' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
            StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 5
            Transparent = True
            OnClick = chkAddrClientClick
            Width = 400
          end
          object cxLabel1: TcxLabel
            Left = 3
            Top = 18
            Caption = #1054#1089#1085#1086#1074#1085#1086#1081' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090':'
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
          object edtClient: TcxLookupComboBox
            Left = 128
            Top = 16
            Properties.KeyFieldNames = 'id'
            Properties.ListColumns = <
              item
                FieldName = 'name'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = dsClient
            Properties.OnEditValueChanged = edtClientPropertiesEditValueChanged
            Style.LookAndFeel.Kind = lfOffice11
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            StyleDisabled.LookAndFeel.Kind = lfOffice11
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            StyleFocused.LookAndFeel.Kind = lfOffice11
            StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
            StyleHot.LookAndFeel.Kind = lfOffice11
            StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 7
            OnKeyUp = edtClientKeyUp
            Width = 237
          end
          object btnClientDetail: TcxButton
            Left = 371
            Top = 16
            Width = 57
            Height = 21
            Caption = #1055#1077#1088#1077#1081#1090#1080
            LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 8
            OnClick = btnClientDetailClick
          end
          object mmoAddress: TMemo
            Left = 100
            Top = 64
            Width = 265
            Height = 38
            TabOrder = 9
          end
          object edtСкайп: TcxTextEdit
            Left = 100
            Top = 155
            Style.LookAndFeel.SkinName = 'Office2007Blue'
            StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
            StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
            StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
            TabOrder = 10
            Width = 265
          end
          object cxLabel6: TcxLabel
            Left = 3
            Top = 157
            Caption = #1057#1082#1072#1081#1087':'
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clBlack
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.HotTrack = False
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = ''
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = ''
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = ''
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = ''
            Properties.LineOptions.Alignment = cxllaBottom
            Transparent = True
          end
        end
      end
    end
    object TabConnect: TcxTabSheet
      Caption = #1055#1088#1080#1074#1103#1079#1082#1072
      ImageIndex = 2
      ExplicitLeft = 3
      ExplicitTop = 26
      ExplicitWidth = 452
      ExplicitHeight = 284
      object cxLabel2: TcxLabel
        Left = 3
        Top = 5
        Caption = #1050#1072#1088#1075#1086':'
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
      object edtKargo: TcxLookupComboBox
        Left = 120
        Top = 3
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'name'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsKargo
        Properties.OnEditValueChanged = edtKargoPropertiesEditValueChanged
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
        TabOrder = 1
        OnKeyUp = edtKargoKeyUp
        Width = 260
      end
      object edtTrack: TcxLookupComboBox
        Left = 120
        Top = 27
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'name'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsTrack
        Properties.OnEditValueChanged = edtTrackPropertiesEditValueChanged
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
        TabOrder = 2
        OnKeyUp = edtTrackKeyUp
        Width = 260
      end
      object cxLabel3: TcxLabel
        Left = 3
        Top = 29
        Caption = #1058#1088#1072#1082':'
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
      object edtPreecooling: TcxLookupComboBox
        Left = 120
        Top = 50
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'name'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsPricooling
        Properties.OnEditValueChanged = edtPreecoolingPropertiesEditValueChanged
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
        OnKeyUp = edtPreecoolingKeyUp
        Width = 260
      end
      object cxLabel4: TcxLabel
        Left = 3
        Top = 52
        Caption = #1055#1088#1080#1082#1091#1083#1080#1085#1075':'
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
      object lbl1: TcxLabel
        Left = 3
        Top = 77
        Caption = #1060#1080#1090#1086':'
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
      object edtFITO: TcxLookupComboBox
        Left = 120
        Top = 75
        Properties.KeyFieldNames = 'id'
        Properties.ListColumns = <
          item
            FieldName = 'name'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsFITO
        Properties.OnEditValueChanged = edtTrackPropertiesEditValueChanged
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
        TabOrder = 7
        OnKeyUp = edtTrackKeyUp
        Width = 260
      end
    end
    object TabLockPlant: TcxTabSheet
      Caption = #1055#1083#1072#1085#1090#1072#1094#1080#1080
      ImageIndex = 1
      ExplicitTop = 0
      ExplicitWidth = 446
      ExplicitHeight = 298
      inline FrameTopPanelLock: TFrameTopPanel
        Left = 0
        Top = 0
        Width = 461
        Height = 32
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 452
        ExplicitHeight = 32
        inherited barProduct: TdxBarManager
          DockControlHeights = (
            0
            0
            104
            0)
          inherited btnAdd: TdxBarLargeButton
            OnClick = btnAddClick
          end
          inherited btnEdit: TdxBarLargeButton
            OnClick = btnEditClick
          end
          inherited btnDel: TdxBarLargeButton
            Visible = ivNever
          end
        end
      end
      object PageLock: TcxPageControl
        Left = 0
        Top = 32
        Width = 461
        Height = 260
        Align = alClient
        TabOrder = 1
        Properties.ActivePage = TabGood
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Blue'
        ExplicitWidth = 446
        ExplicitHeight = 266
        ClientRectBottom = 260
        ClientRectRight = 461
        ClientRectTop = 24
        object TabLock: TcxTabSheet
          Caption = #1047#1072#1087#1088#1077#1097#1077#1085#1085#1099#1077
          ImageIndex = 0
          ExplicitTop = 0
          ExplicitWidth = 437
          ExplicitHeight = 234
          object GridUsers: TcxGrid
            Left = 0
            Top = 0
            Width = 443
            Height = 220
            Align = alClient
            TabOrder = 0
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = False
            ExplicitWidth = 437
            ExplicitHeight = 234
            object ViewUsers: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsLockMark
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
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.HeaderAutoHeight = True
              object ColumnUniName: TcxGridDBColumn
                Caption = #1052#1077#1078#1076#1091#1085#1072#1088#1086#1076#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                DataBinding.FieldName = 'uni_name'
                Width = 153
              end
              object ColumnName: TcxGridDBColumn
                Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                DataBinding.FieldName = 'name'
                Width = 123
              end
              object ColumnRegName: TcxGridDBColumn
                Caption = #1056#1077#1075#1080#1086#1085#1072#1083#1100#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                DataBinding.FieldName = 'reg_name'
                Width = 154
              end
            end
            object LevelOrg: TcxGridLevel
              GridView = ViewUsers
            end
          end
        end
        object TabGood: TcxTabSheet
          Caption = #1046#1077#1083#1072#1077#1084#1099#1077
          ImageIndex = 1
          ExplicitTop = 0
          ExplicitWidth = 437
          ExplicitHeight = 234
          object cxGrid1: TcxGrid
            Left = 0
            Top = 0
            Width = 443
            Height = 220
            Align = alClient
            TabOrder = 0
            LookAndFeel.Kind = lfOffice11
            LookAndFeel.NativeStyle = False
            ExplicitWidth = 437
            ExplicitHeight = 234
            object cxGridDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = dsGoodMark
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
              OptionsView.Footer = True
              OptionsView.GroupByBox = False
              OptionsView.HeaderAutoHeight = True
              object ColumnUni1: TcxGridDBColumn
                Caption = #1052#1077#1078#1076#1091#1085#1072#1088#1086#1076#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                DataBinding.FieldName = 'uni_name'
                Width = 153
              end
              object ColumnName1: TcxGridDBColumn
                Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                DataBinding.FieldName = 'name'
                Width = 123
              end
              object ColumnReg1: TcxGridDBColumn
                Caption = #1056#1077#1075#1080#1086#1085#1072#1083#1100#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                DataBinding.FieldName = 'reg_name'
                Width = 154
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
        end
      end
    end
    object TabContact: TcxTabSheet
      Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1077' '#1082#1086#1085#1090#1072#1082#1090#1099
      ImageIndex = 3
      ExplicitLeft = 3
      ExplicitTop = 26
      ExplicitWidth = 452
      ExplicitHeight = 284
      inline FrameTopPanel1: TFrameTopPanel
        Left = 0
        Top = 0
        Width = 461
        Height = 38
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 452
        ExplicitHeight = 38
        inherited barProduct: TdxBarManager
          DockControlHeights = (
            0
            0
            104
            0)
          inherited btnAdd: TdxBarLargeButton
            OnClick = FrameTopPanel1btnAddClick
          end
          inherited btnEdit: TdxBarLargeButton
            OnClick = FrameTopPanel1btnEditClick
          end
          inherited btnDel: TdxBarLargeButton
            OnClick = FrameTopPanel1btnDelClick
          end
        end
      end
      object GridContact: TcxGrid
        Left = 0
        Top = 38
        Width = 461
        Height = 254
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        ExplicitWidth = 446
        ExplicitHeight = 260
        object cxGridDBTableView2: TcxGridDBTableView
          OnDblClick = cxGridDBTableView2DblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsContact
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object ColumnFIO: TcxGridDBColumn
            Caption = #1060'.'#1048'.'#1054'.'
            DataBinding.FieldName = 'name'
            Width = 229
          end
          object ColumnPost: TcxGridDBColumn
            Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
            DataBinding.FieldName = #1090#1080#1087
            Width = 159
          end
          object ColumnPhone: TcxGridDBColumn
            Caption = #1058#1077#1083#1077#1092#1086#1085
            DataBinding.FieldName = #1090#1077#1083#1077#1092#1086#1085'1'
            Width = 121
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
  end
  object QueryPricooling: TUniQuery
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
      'FROM'
      ' "'#1087#1088#1080#1082#1091#1083#1080#1085#1075'"."'#1072#1075#1077#1085#1089#1090#1074#1072'" order by name')
    Left = 72
    Top = 212
  end
  object dsPricooling: TDataSource
    DataSet = QueryPricooling
    Left = 64
    Top = 276
  end
  object QueryClient: TUniQuery
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
      'FROM'
      '  '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099'.'#1082#1083#1080#1077#1085#1090#1099' '
      'where '#1089#1082#1088#1099#1090'=0 and '#1074'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1072#1093'=TRUE'
      'order by name')
    Left = 152
    Top = 212
  end
  object dsClient: TDataSource
    DataSet = QueryClient
    Left = 144
    Top = 276
  end
  object QueryKargo: TUniQuery
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
      'FROM'
      '  "'#1082#1072#1088#1075#1086'"."'#1072#1075#1077#1085#1089#1090#1074#1072'"  order by name')
    Left = 232
    Top = 212
  end
  object dsKargo: TDataSource
    DataSet = QueryKargo
    Left = 224
    Top = 276
  end
  object QueryTrack: TUniQuery
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
      '  *'
      'FROM'
      '  "'#1090#1088#1072#1082#1080'"."'#1090#1088#1072#1082#1080'" order by name')
    Left = 344
    Top = 212
  end
  object dsTrack: TDataSource
    DataSet = QueryTrack
    Left = 304
    Top = 268
  end
  object Query1: TUniQuery
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
      '  *'
      'FROM'
      '  "'#1090#1088#1072#1082#1080'"."'#1090#1088#1072#1082#1080'" order by name')
    Left = 272
    Top = 164
  end
  object QueryLockMark: TUniQuery
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
      '  pl.name,'
      '  pl.uni_name,'
      '  pl.reg_name,'
      '  pzp.id,'
      '  pzp."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'",'
      '  pzp."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'"'
      'FROM'
      '  "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pl'
      
        '  INNER JOIN "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"."'#1087#1086#1089#1090#1086#1103#1085#1085#1099#1081'_'#1079#1072#1087#1088#1077#1090'_'#1087#1083#1072#1085#1090#1072#1094#1080#1081'" pzp ON (' +
        'pl.id = pzp."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'")'
      'where pzp."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'" = :id')
    AfterFetch = QueryLockMarkAfterFetch
    Left = 348
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
  end
  object dsLockMark: TDataSource
    DataSet = QueryLockMark
    Left = 80
    Top = 144
  end
  object QueryGoodMark: TUniQuery
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
      'SELECT pl.name,'
      '       pl.uni_name,'
      '       pl.reg_name,'
      '       pzp.id,'
      '       pzp."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'",'
      '       pzp."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'"'
      'FROM "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pl'
      
        '     INNER JOIN "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"."'#1087#1086#1089#1090#1086#1103#1085#1085#1099#1077'_'#1078#1077#1083#1072#1077#1084#1099#1077'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'" pzp' +
        ' ON (pl.id ='
      '      pzp."'#1082#1086#1076'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'")'
      'where pzp."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'" = :id')
    AfterFetch = QueryLockMarkAfterFetch
    Left = 256
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
  end
  object dsGoodMark: TDataSource
    DataSet = QueryGoodMark
    Left = 136
    Top = 176
  end
  object QueryFITO: TUniQuery
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
      'FROM'
      '"'#1076#1086#1082#1091#1084#1077#1085#1090#1099'"."'#1092#1080#1090#1086'"')
    Left = 176
    Top = 132
  end
  object dsFITO: TDataSource
    DataSet = QueryFITO
    Left = 32
    Top = 236
  end
  object dsContact: TDataSource
    DataSet = QueryContact
    Left = 24
    Top = 84
  end
  object QueryContact: TUniQuery
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
      'select * from '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'.'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080)
    Left = 384
    Top = 176
  end
end
