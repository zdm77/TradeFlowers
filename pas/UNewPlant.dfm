object FNewPlant: TFNewPlant
  Left = 0
  Top = 0
  Caption = #1055#1083#1072#1085#1090#1072#1094#1080#1103
  ClientHeight = 482
  ClientWidth = 673
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 673
    Height = 450
    Align = alClient
    TabOrder = 0
    Properties.ActivePage = TabSort
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Blue'
    ClientRectBottom = 450
    ClientRectRight = 673
    ClientRectTop = 24
    object TabOsn: TcxTabSheet
      Caption = #1054#1089#1085#1086#1074#1085#1099#1077
      ImageIndex = 0
      ExplicitLeft = 3
      ExplicitTop = 26
      ExplicitWidth = 664
      ExplicitHeight = 418
      object Group1: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        PanelStyle.Active = True
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 0
        ExplicitWidth = 664
        ExplicitHeight = 418
        Height = 426
        Width = 673
        object mmoRemark: TcxMemo
          Left = 103
          Top = 93
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 0
          Height = 30
          Width = 265
        end
        object lblDescr: TcxLabel
          Left = 6
          Top = 94
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077':'
          Properties.LineOptions.Alignment = cxllaBottom
          Transparent = True
        end
        inline FrameUniName1: TFrameUniName
          Left = 3
          Top = 3
          Width = 417
          Height = 66
          TabOrder = 6
          ExplicitLeft = 3
          ExplicitTop = 3
          ExplicitHeight = 66
          inherited Group1: TcxGroupBox
            ExplicitHeight = 66
            Height = 66
            inherited edtUniName: TcxTextEdit
              Properties.OnEditValueChanged = FrameUniName1edtUniNamePropertiesEditValueChanged
              OnKeyUp = FrameUniName1edtUniNameKeyUp
            end
            inherited edtRegName: TcxTextEdit
              Properties.OnEditValueChanged = FrameUniName1edtRegNamePropertiesEditValueChanged
              OnKeyUp = FrameUniName1edtRegNameKeyUp
            end
            inherited edtName: TcxTextEdit
              Properties.OnEditValueChanged = FrameUniName1edtNamePropertiesEditValueChanged
              OnKeyUp = FrameUniName1edtNameKeyUp
            end
            inherited chkUseName: TCheckBox
              Top = 76
              Visible = False
              ExplicitTop = 76
            end
            inherited btnTranslit: TcxButton
              LookAndFeel.NativeStyle = False
              OnClick = FrameUniName1btnTranslitClick
            end
          end
        end
        object edtBrand: TcxTextEdit
          Left = 103
          Top = 72
          Properties.OnEditValueChanged = edtBrandPropertiesEditValueChanged
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 7
          OnKeyUp = edtBrandKeyUp
          Width = 265
        end
        object lblBrand: TcxLabel
          Left = 6
          Top = 74
          Caption = #1041#1088#1101#1085#1076':'
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          Transparent = True
        end
        object mmoAdres: TcxMemo
          Left = 103
          Top = 124
          Properties.ReadOnly = True
          Style.LookAndFeel.Kind = lfOffice11
          Style.LookAndFeel.SkinName = ''
          Style.TextColor = clBlack
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.SkinName = ''
          TabOrder = 1
          Height = 39
          Width = 265
        end
        object btnAdrReg: TcxButton
          Left = 371
          Top = 124
          Width = 26
          Height = 21
          Caption = '...'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 9
          OnClick = btnAdrRegClick
        end
        object label6: TcxLabel
          Left = 6
          Top = 124
          Caption = #1040#1076#1088#1077#1089':'
          Transparent = True
        end
        object cxLabel5: TcxLabel
          Left = 6
          Top = 190
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
        object edtPhone1: TcxTextEdit
          Left = 103
          Top = 188
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 3
          Width = 106
        end
        object lblFax: TcxLabel
          Left = 223
          Top = 190
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
        object edtFax: TcxTextEdit
          Left = 262
          Top = 188
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 4
          Width = 106
        end
        object lblEmail: TcxLabel
          Left = 6
          Top = 167
          Caption = 'E-Mail:'
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
        object edtEmail: TcxTextEdit
          Left = 103
          Top = 165
          Style.LookAndFeel.SkinName = 'Office2007Blue'
          StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
          StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
          StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
          TabOrder = 2
          Width = 265
        end
      end
    end
    object TabType: TcxTabSheet
      Caption = #1058#1080#1087#1099
      ImageIndex = 5
      TabVisible = False
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object GroupType: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Caption = #1058#1080#1087#1099
        Style.Edges = []
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 0
        ExplicitWidth = 664
        ExplicitHeight = 418
        Height = 426
        Width = 673
        object GridType: TcxGrid
          Left = 2
          Top = 50
          Width = 669
          Height = 374
          Align = alClient
          TabOrder = 0
          LookAndFeel.Kind = lfOffice11
          ExplicitWidth = 660
          ExplicitHeight = 366
          object ViewType: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = dsType
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
              Width = 202
            end
            object ColumnName: TcxGridDBColumn
              Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              DataBinding.FieldName = 'name'
              Width = 224
            end
            object ColumnRegName: TcxGridDBColumn
              Caption = #1056#1077#1075#1080#1086#1085#1072#1083#1100#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              DataBinding.FieldName = 'reg_name'
              Width = 178
            end
          end
          object LevelOrg: TcxGridLevel
            GridView = ViewType
          end
        end
        inline FrameTopPanel3: TFrameTopPanel
          Left = 2
          Top = 18
          Width = 669
          Height = 32
          Align = alTop
          TabOrder = 1
          ExplicitLeft = 2
          ExplicitTop = 18
          ExplicitWidth = 660
          ExplicitHeight = 32
          inherited barProduct: TdxBarManager
            PixelsPerInch = 96
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
              Enabled = False
              OnClick = FrameTopPanel3btnAddClick
            end
            inherited btnEdit: TdxBarLargeButton
              Enabled = False
            end
            inherited btnRefresh: TdxBarLargeButton
              OnClick = FrameTopPanel3btnRefreshClick
            end
          end
          inherited pmПедидо: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmЗаказ: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmФактура: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmClients: TdxBarPopupMenu
            PixelsPerInch = 96
          end
        end
      end
    end
    object TabSort: TcxTabSheet
      Caption = #1057#1086#1088#1090#1072
      ImageIndex = 4
      ExplicitLeft = 3
      ExplicitTop = 26
      ExplicitWidth = 664
      ExplicitHeight = 418
      inline FramePlantSort1: TFramePlantSort
        Left = 0
        Top = 0
        Width = 673
        Height = 426
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 664
        ExplicitHeight = 418
        inherited FrameTopPanel1: TFrameTopPanel
          Width = 673
          ExplicitWidth = 664
          inherited barProduct: TdxBarManager
            PixelsPerInch = 96
            inherited btnAdd: TdxBarLargeButton
              OnClick = FrameTopPanel1btnAddClick
            end
          end
          inherited pmПедидо: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmЗаказ: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmФактура: TdxBarPopupMenu
            PixelsPerInch = 96
          end
          inherited pmClients: TdxBarPopupMenu
            PixelsPerInch = 96
          end
        end
        inherited GroupSelCountry: TcxGroupBox
          ExplicitWidth = 664
          Width = 673
          inherited edtType: TcxLookupComboBox
            Properties.OnEditValueChanged = FramePlantSort1edtTypePropertiesEditValueChanged
          end
          inherited chkDel: TcxCheckBox
            ExplicitWidth = 121
          end
        end
        inherited GroupSort: TcxGroupBox
          ExplicitWidth = 664
          ExplicitHeight = 350
          Height = 358
          Width = 673
          inherited GridUsers: TcxGrid
            Width = 669
            Height = 338
            ExplicitLeft = 3
            ExplicitTop = 15
            ExplicitWidth = 658
            ExplicitHeight = 325
          end
        end
        inherited Style1: TcxStyleRepository
          PixelsPerInch = 96
        end
      end
    end
    object TabContact: TcxTabSheet
      Caption = 'Contacts'
      ImageIndex = 1
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      inline FrameTopPanel1: TFrameTopPanel
        Left = 0
        Top = 0
        Width = 673
        Height = 34
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 664
        ExplicitHeight = 34
        inherited barProduct: TdxBarManager
          PixelsPerInch = 96
          DockControlHeights = (
            0
            0
            32
            0)
          inherited dxbrBardxbrmngr1Bar1: TdxBar
            ItemLinks = <
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
              end>
          end
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
        inherited pmПедидо: TdxBarPopupMenu
          PixelsPerInch = 96
        end
        inherited pmЗаказ: TdxBarPopupMenu
          PixelsPerInch = 96
        end
        inherited pmФактура: TdxBarPopupMenu
          PixelsPerInch = 96
        end
        inherited pmClients: TdxBarPopupMenu
          PixelsPerInch = 96
        end
      end
      object GridTarif: TcxGrid
        Left = 0
        Top = 34
        Width = 673
        Height = 392
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        ExplicitWidth = 664
        ExplicitHeight = 384
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
            DataBinding.FieldName = 'Name'
            Width = 254
          end
          object ColumnPhone: TcxGridDBColumn
            DataBinding.FieldName = #1090#1077#1083#1077#1092#1086#1085'1'
            Width = 164
          end
          object ColumnPhoneMobile: TcxGridDBColumn
            DataBinding.FieldName = #1090#1077#1083#1077#1092#1086#1085'2'
            Width = 189
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
    object TabAccounts: TcxTabSheet
      Caption = 'Bank details'
      ImageIndex = 2
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      inline FrameTopPanel2: TFrameTopPanel
        Left = 0
        Top = 0
        Width = 673
        Height = 34
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 664
        ExplicitHeight = 34
        inherited barProduct: TdxBarManager
          PixelsPerInch = 96
          DockControlHeights = (
            0
            0
            32
            0)
          inherited dxbrBardxbrmngr1Bar1: TdxBar
            ItemLinks = <
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
              end>
          end
        end
        inherited pmПедидо: TdxBarPopupMenu
          PixelsPerInch = 96
        end
        inherited pmЗаказ: TdxBarPopupMenu
          PixelsPerInch = 96
        end
        inherited pmФактура: TdxBarPopupMenu
          PixelsPerInch = 96
        end
        inherited pmClients: TdxBarPopupMenu
          PixelsPerInch = 96
        end
      end
      object GridAcc: TcxGrid
        Left = 0
        Top = 34
        Width = 673
        Height = 392
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        ExplicitWidth = 664
        ExplicitHeight = 384
        object GridAccount: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object ColumnBank: TcxGridDBColumn
            Caption = 'Bank'
            DataBinding.FieldName = 'name'
            Width = 312
          end
          object ColumnAccount: TcxGridDBColumn
            Caption = 'Account'
            DataBinding.FieldName = 'account'
            Width = 295
          end
        end
        object GridLevelGrid1Level1: TcxGridLevel
          GridView = GridAccount
        end
      end
    end
    object TabAlarm: TcxTabSheet
      Caption = 'Settings and Annunciator'
      ImageIndex = 3
      ExplicitLeft = 3
      ExplicitTop = 26
      ExplicitWidth = 664
      ExplicitHeight = 418
      object lbl2: TcxLabel
        Left = 0
        Top = 26
        Caption = #1053#1072#1095#1072#1090#1100' '#1086#1087#1086#1074#1077#1097#1072#1090#1100' '#1076#1086':'
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
      object edtDayAlarm: TcxCalcEdit
        Left = 197
        Top = 24
        EditValue = 14.000000000000000000
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 1
        Width = 67
      end
      object edtSrokDolg: TcxCalcEdit
        Left = 197
        Top = 1
        EditValue = 14.000000000000000000
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 2
        Width = 67
      end
      object lbl1: TcxLabel
        Left = 0
        Top = 3
        Caption = #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1099#1081' '#1089#1088#1086#1082' '#1079#1072#1076#1086#1083#1078#1077#1085#1085#1086#1089#1090#1080':'
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
      object edtSumDolg: TcxCalcEdit
        Left = 197
        Top = 47
        EditValue = 5000.000000000000000000
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 4
        Width = 67
      end
      object lbl3: TcxLabel
        Left = 0
        Top = 49
        Caption = #1052#1072#1082#1089#1080#1084#1072#1083#1100#1085#1072#1103' '#1089#1091#1084#1084#1072' '#1079#1072#1076#1086#1083#1078#1077#1085#1085#1086#1089#1090#1080':'
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
      object Label28: TcxLabel
        Left = 270
        Top = 49
        Caption = '$'
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
      object lbl6: TcxLabel
        Left = 270
        Top = 26
        Caption = #1076#1085#1077#1081
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
      object lbl5: TcxLabel
        Left = 270
        Top = 3
        Caption = #1076#1085#1077#1081
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
      object lbl4: TcxLabel
        Left = 0
        Top = 72
        Caption = #1053#1072#1095#1072#1090#1100' '#1086#1087#1086#1074#1077#1097#1072#1090#1100' '#1076#1086':'
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
      object edtSumAlarm: TcxCalcEdit
        Left = 197
        Top = 70
        EditValue = 5000.000000000000000000
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 10
        Width = 67
      end
      object Label3: TcxLabel
        Left = 270
        Top = 72
        Caption = '$'
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
      object chkUse: TcxCheckBox
        Left = 0
        Top = 95
        Caption = #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1086#1087#1086#1074#1077#1097#1077#1085#1080#1103
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 12
        Transparent = True
      end
    end
  end
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 450
    Width = 673
    Height = 32
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 450
    ExplicitWidth = 673
    inherited bardxbrmngr1: TdxBarManager
      PixelsPerInch = 96
      inherited btnSave: TdxBarLargeButton
        OnClick = FrameSave1btnSaveClick
      end
    end
  end
  object QueryType: TUniQuery
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
    Left = 151
    Top = 293
  end
  object dsType: TDataSource
    DataSet = QueryType
    Left = 220
    Top = 281
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
      'select * from "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1089#1090#1088#1072#1085#1099'"')
    Left = 423
    Top = 237
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
      'select * from  "'#1087#1088#1086#1076#1091#1082#1094#1080#1103'"."'#1082#1086#1085#1090#1072#1082#1090#1099'_'#1087#1083#1072#1085#1090#1072#1094#1080#1080'"')
    Left = 64
    Top = 288
  end
  object dsContact: TDataSource
    DataSet = QueryContact
    Left = 56
    Top = 116
  end
end
