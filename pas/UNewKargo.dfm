object FNewKargo: TFNewKargo
  Left = 0
  Top = 0
  Caption = #1050#1072#1088#1075#1086
  ClientHeight = 268
  ClientWidth = 610
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
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 236
    Width = 610
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 236
    ExplicitWidth = 610
    inherited bardxbrmngr1: TdxBarManager
      DockControlHeights = (
        0
        0
        0
        34)
      inherited btnSave: TdxBarLargeButton
        Enabled = False
        OnClick = FrameSave1btnSaveClick
      end
    end
  end
  object Page1: TcxPageControl
    Left = 0
    Top = 0
    Width = 610
    Height = 236
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = TabAlarm
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Blue'
    ClientRectBottom = 236
    ClientRectRight = 610
    ClientRectTop = 24
    object TabOsn: TcxTabSheet
      Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1089#1074#1077#1076#1077#1085#1080#1103
      ImageIndex = 0
      ExplicitLeft = 3
      ExplicitTop = 26
      ExplicitWidth = 601
      ExplicitHeight = 204
      object lblName: TcxLabel
        Left = 1
        Top = 5
        Caption = #1053#1072#1084#1077#1085#1086#1074#1072#1085#1080#1077':*'
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
      object edtName: TcxTextEdit
        Left = 163
        Top = 3
        Properties.OnEditValueChanged = edtNamePropertiesEditValueChanged
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 0
        OnKeyUp = edtNameKeyUp
        Width = 310
      end
      object edtUrName: TcxTextEdit
        Left = 163
        Top = 26
        Properties.OnEditValueChanged = edtUrNamePropertiesEditValueChanged
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 2
        OnKeyUp = edtUrNameKeyUp
        Width = 310
      end
      object lblUrName: TcxLabel
        Left = 1
        Top = 28
        Caption = #1070#1088#1080#1076#1080#1095#1077#1089#1082#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':*'
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
      object lblAdrReg: TcxLabel
        Left = 1
        Top = 49
        Caption = #1040#1076#1088#1077#1089' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080':'
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
      object lblAdrOffice: TcxLabel
        Left = 1
        Top = 86
        Caption = #1040#1076#1088#1077#1089' '#1086#1092#1080#1089#1072':'
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
      object lblAdrSklad: TcxLabel
        Left = 1
        Top = 123
        Caption = #1040#1076#1088#1077#1089' '#1089#1082#1083#1072#1076#1072':'
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
      object mmoAdrReg: TcxMemo
        Left = 163
        Top = 49
        Style.LookAndFeel.Kind = lfOffice11
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 5
        Height = 35
        Width = 310
      end
      object mmoAdrOffice: TcxMemo
        Left = 163
        Top = 86
        Style.LookAndFeel.Kind = lfOffice11
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 7
        Height = 35
        Width = 310
      end
      object mmoAdrSklad: TcxMemo
        Left = 163
        Top = 123
        Style.LookAndFeel.Kind = lfOffice11
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 9
        Height = 35
        Width = 310
      end
      object lblRemark: TcxLabel
        Left = 1
        Top = 160
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077':'
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
      object mmoRemark: TcxMemo
        Left = 163
        Top = 160
        Style.LookAndFeel.Kind = lfOffice11
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 11
        Height = 35
        Width = 310
      end
      object btnAdres: TcxButton
        Left = 479
        Top = 53
        Width = 26
        Height = 15
        Caption = '...'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 12
        OnClick = btnAdresClick
      end
      object btn1: TcxButton
        Left = 479
        Top = 92
        Width = 26
        Height = 15
        Caption = '...'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 13
        OnClick = btn1Click
      end
      object btn2: TcxButton
        Left = 479
        Top = 127
        Width = 26
        Height = 15
        Caption = '...'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 14
        OnClick = btn2Click
      end
    end
    object TabKontakt: TcxTabSheet
      Caption = #1050#1086#1085#1090#1072#1082#1090#1099
      ImageIndex = 2
      ExplicitLeft = 3
      ExplicitTop = 26
      ExplicitWidth = 601
      ExplicitHeight = 204
      inline FrameTopPanelContact: TFrameTopPanel
        Left = 0
        Top = 0
        Width = 610
        Height = 34
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 601
        ExplicitHeight = 34
        inherited barProduct: TdxBarManager
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
            OnClick = FrameTopPanel2btnAddClick
          end
          inherited btnEdit: TdxBarLargeButton
            OnClick = FrameTopPanelContactbtnEditClick
          end
          inherited btnDel: TdxBarLargeButton
            OnClick = FrameTopPanelContactbtnDelClick
          end
        end
      end
      object GridContact: TcxGrid
        Left = 0
        Top = 34
        Width = 610
        Height = 178
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        ExplicitWidth = 601
        ExplicitHeight = 170
        object cxGridDBTableView1: TcxGridDBTableView
          OnDblClick = cxGridDBTableView1DblClick
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
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
    object TabBank: TcxTabSheet
      Caption = #1041#1072#1085#1082#1086#1074#1089#1082#1080#1077' '#1088#1077#1082#1074#1080#1079#1080#1090#1099
      ImageIndex = 2
      ExplicitLeft = 3
      ExplicitTop = 26
      ExplicitWidth = 601
      ExplicitHeight = 204
      inline FrameTopPanelBank: TFrameTopPanel
        Left = 0
        Top = 0
        Width = 610
        Height = 34
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 601
        ExplicitHeight = 34
        inherited barProduct: TdxBarManager
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
            OnClick = FrameTopPanelBankbtnAddClick
          end
          inherited btnEdit: TdxBarLargeButton
            OnClick = FrameTopPanelBankbtnEditClick
          end
          inherited btnDel: TdxBarLargeButton
            OnClick = FrameTopPanelBankbtnDelClick
          end
        end
      end
      object GridAcc: TcxGrid
        Left = 0
        Top = 34
        Width = 610
        Height = 178
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        ExplicitWidth = 601
        ExplicitHeight = 170
        object GridAccount: TcxGridDBTableView
          OnDblClick = GridAccountDblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsAccount
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object ColumnBank: TcxGridDBColumn
            Caption = #1041#1072#1085#1082
            DataBinding.FieldName = 'name'
            Width = 265
          end
          object ColumnAccount: TcxGridDBColumn
            Caption = #1057#1095#1077#1090
            DataBinding.FieldName = #1089#1095#1077#1090
            Width = 244
          end
        end
        object GridLevelGrid1Level1: TcxGridLevel
          GridView = GridAccount
        end
      end
    end
    object TabTarif: TcxTabSheet
      Caption = #1058#1072#1088#1080#1092#1099' '#1080' '#1089#1073#1086#1088#1099
      ImageIndex = 3
      ExplicitLeft = 3
      ExplicitTop = 26
      ExplicitWidth = 601
      ExplicitHeight = 204
      inline FrameTopPanelTarif: TFrameTopPanel
        Left = 0
        Top = 0
        Width = 610
        Height = 34
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 601
        ExplicitHeight = 34
        inherited barProduct: TdxBarManager
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
            OnClick = btnAddClick
          end
          inherited btnEdit: TdxBarLargeButton
            OnClick = FrameTopPanelTarifbtnEditClick
          end
          inherited btnDel: TdxBarLargeButton
            OnClick = btnDelClick
          end
        end
      end
      object GridTarif: TcxGrid
        Left = 0
        Top = 34
        Width = 610
        Height = 178
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        ExplicitWidth = 601
        ExplicitHeight = 170
        object cxGridDBTableView2: TcxGridDBTableView
          OnDblClick = cxGridDBTableView2DblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsTarif
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object ColumnAirLine: TcxGridDBColumn
            Caption = #1040#1074#1080#1072#1083#1080#1085#1080#1103
            DataBinding.FieldName = 'name'
            Width = 182
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = cxGridDBTableView2
        end
      end
    end
    object TabTarifMarking: TcxTabSheet
      Caption = #1053#1072#1094#1077#1085#1082#1080' '#1085#1072' '#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080
      ImageIndex = 5
      ExplicitLeft = 3
      ExplicitTop = 26
      ExplicitWidth = 601
      ExplicitHeight = 204
      inline FrameTopPanelPriceMark: TFrameTopPanel
        Left = 0
        Top = 0
        Width = 610
        Height = 32
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 601
        ExplicitHeight = 32
        inherited barProduct: TdxBarManager
          DockControlHeights = (
            0
            0
            69
            0)
          inherited btnAdd: TdxBarLargeButton
            Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100
            Hint = #1047#1072#1087#1086#1083#1085#1080#1090#1100
            OnClick = FrameTopPanelPriceMarkbtnAddClick
          end
          inherited btnEdit: TdxBarLargeButton
            OnClick = FrameTopPanelPriceMarkbtnEditClick
          end
          inherited btnDel: TdxBarLargeButton
            Visible = ivNever
          end
          inherited btnRefresh: TdxBarLargeButton
            OnClick = FrameTopPanelPriceMarkbtnRefreshClick
          end
        end
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 32
        Width = 610
        Height = 180
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        ExplicitWidth = 601
        ExplicitHeight = 172
        object cxGridDBTableView3: TcxGridDBTableView
          OnDblClick = cxGridDBTableView3DblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dsPriceMark
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Editing = False
          OptionsSelection.CellSelect = False
          OptionsView.GroupByBox = False
          object ColumnMarking: TcxGridDBColumn
            Caption = #1052#1072#1088#1082#1080#1088#1086#1074#1082#1072
            DataBinding.FieldName = 'name'
            Width = 205
          end
          object GridAccountDBColumn: TcxGridDBColumn
            Caption = #1058#1072#1088#1080#1092
            DataBinding.FieldName = #1090#1072#1088#1080#1092
            Width = 95
          end
        end
        object cxGridLevel3: TcxGridLevel
          GridView = cxGridDBTableView3
        end
      end
    end
    object TabAlarm: TcxTabSheet
      Caption = #1054#1087#1086#1074#1077#1097#1077#1085#1080#1103
      ImageIndex = 4
      ExplicitLeft = 3
      ExplicitTop = 26
      ExplicitWidth = 601
      ExplicitHeight = 204
      object lblMaxDayDolg: TcxLabel
        Left = 0
        Top = 3
        Caption = #1052#1072#1082#1089'. '#1089#1088#1086#1082' '#1079#1072#1076#1086#1083#1078#1077#1085#1085#1086#1089#1090#1080':'
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
      object lblDay1: TcxLabel
        Left = 225
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
      object lblAlarmDay: TcxLabel
        Left = 0
        Top = 26
        Caption = #1053#1072#1095#1072#1090#1100' '#1086#1087#1086#1074#1077#1097#1072#1090#1100' '#1079#1072':'
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
      object lblDay2: TcxLabel
        Left = 225
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
      object chkUse: TcxCheckBox
        Left = 0
        Top = 95
        Caption = #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1086#1087#1086#1074#1077#1097#1077#1085#1080#1103
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 4
        Transparent = True
        Visible = False
        Width = 169
      end
      object edtMaxSrokDolg: TcxSpinEdit
        Left = 166
        Top = 1
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 5
        Value = 14
        Width = 57
      end
      object edtDayAlarm: TcxSpinEdit
        Left = 166
        Top = 24
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 6
        Value = 14
        Width = 57
      end
      object edtMaxDolg: TAdvEdit
        Left = 166
        Top = 49
        Width = 108
        Height = 21
        EditType = etMoney
        EmptyTextStyle = []
        Precision = 2
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
        TabOrder = 7
        Text = '5'#160'000,00'
        Visible = True
        Version = '3.3.2.0'
      end
      object edtSumAlarm: TAdvEdit
        Left = 166
        Top = 72
        Width = 108
        Height = 21
        EditType = etMoney
        EmptyTextStyle = []
        Precision = 2
        Prefix = '$ '
        LabelPosition = lpLeftCenter
        LabelMargin = 77
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
        TabOrder = 8
        Text = '5'#160'000,00'
        Visible = True
        Version = '3.3.2.0'
      end
      object lblMaxDolg: TcxLabel
        Left = 0
        Top = 51
        Caption = #1052#1072#1082#1089'. '#1089#1091#1084#1084#1072' '#1079#1072#1076#1086#1083#1078#1077#1085#1085#1086#1089#1090#1080':'
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
      object lblSumAlarm: TcxLabel
        Left = 0
        Top = 74
        Caption = #1053#1072#1095#1072#1090#1100' '#1086#1087#1086#1074#1077#1097#1072#1090#1100' '#1087#1086#1089#1083#1077':'
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
    Left = 224
    Top = 160
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
    Left = 64
    Top = 100
  end
  object dsContact: TDataSource
    DataSet = QueryContact
    Left = 64
    Top = 156
  end
  object dsAccount: TDataSource
    DataSet = QueryAccount
    Left = 152
    Top = 160
  end
  object QueryAccount: TUniQuery
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
      '  a.id,'
      '  a."'#1082#1086#1076'_'#1073#1072#1085#1082#1072'",'
      '  a."'#1082#1086#1076'_'#1082#1072#1088#1075#1086'",'
      '  a."'#1089#1095#1077#1090'",'
      '  a."'#1086#1089#1085#1086#1074#1085#1086#1081'",'
      '  b.name,'
      '  b.swift,'
      '  b."'#1072#1076#1088#1077#1089'"'
      'FROM'
      '  "'#1082#1072#1088#1075#1086'"."'#1089#1095#1077#1090#1072'_'#1080#1085#1086#1089#1090#1088'" a'
      '  INNER JOIN public."'#1073#1072#1085#1082#1080'_'#1079#1072#1088#1091#1073#1077#1078'" b ON (a."'#1082#1086#1076'_'#1073#1072#1085#1082#1072'" = b.id)'
      'where '#1082#1086#1076'_'#1082#1072#1088#1075#1086'=:id_kargo')
    Left = 300
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id_kargo'
        Value = nil
      end>
  end
  object QueryTarif: TUniQuery
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
      '  a.name,'
      '  t.id,'
      '  t."'#1082#1086#1076'_'#1082#1072#1088#1075#1086'",'
      '  t."'#1082#1086#1076'_'#1072#1074#1080#1072#1083#1080#1085#1080#1080'",'
      '  t."'#1086#1073#1097#1072#1103'_'#1089#1090#1086#1080#1084#1086#1089#1090#1100'",'
      '  t."'#1092#1080#1090#1086'",'
      '  t.awb,'
      '  t."'#1076#1086#1087'_'#1089#1073#1086#1088#1099'",'
      '  t."'#1090#1077#1088#1084#1086#1076#1072#1090#1095#1080#1082'"'
      'FROM'
      '  "'#1072#1074#1080#1072#1083#1080#1085#1080#1080'"."'#1072#1074#1080#1072#1083#1080#1085#1080#1080'" a'
      '  INNER JOIN "'#1082#1072#1088#1075#1086'"."'#1090#1072#1088#1080#1092#1099'" t ON (a.id = t."'#1082#1086#1076'_'#1072#1074#1080#1072#1083#1080#1085#1080#1080'")')
    Left = 364
    Top = 104
  end
  object dsTarif: TDataSource
    DataSet = QueryTarif
    Left = 464
    Top = 116
  end
  object QueryPriceMark: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO "'#1087#1088#1080#1082#1091#1083#1080#1085#1075'"."'#1085#1072#1094#1077#1085#1082#1080'"'
      
        '  (id, "'#1082#1086#1076'_'#1087#1088#1080#1082#1091#1083#1080#1085#1075#1072'", "'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'", "'#1090#1072#1088#1080#1092'", "'#1086#1092#1086#1088#1084#1083#1077#1085#1080#1077'"' +
        ')'
      'VALUES'
      
        '  (:id, :"'#1082#1086#1076'_'#1087#1088#1080#1082#1091#1083#1080#1085#1075#1072'", :"'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'", :"'#1090#1072#1088#1080#1092'", :"'#1086#1092#1086#1088#1084#1083 +
        #1077#1085#1080#1077'")')
    SQLDelete.Strings = (
      'DELETE FROM "'#1087#1088#1080#1082#1091#1083#1080#1085#1075'"."'#1085#1072#1094#1077#1085#1082#1080'"'
      'WHERE'
      '  id = :Old_id')
    SQLUpdate.Strings = (
      'UPDATE "'#1087#1088#1080#1082#1091#1083#1080#1085#1075'"."'#1085#1072#1094#1077#1085#1082#1080'"'
      'SET'
      
        '  id = :id, "'#1082#1086#1076'_'#1087#1088#1080#1082#1091#1083#1080#1085#1075#1072'" = :"'#1082#1086#1076'_'#1087#1088#1080#1082#1091#1083#1080#1085#1075#1072'", "'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082 +
        #1080'" = :"'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'", "'#1090#1072#1088#1080#1092'" = :"'#1090#1072#1088#1080#1092'", "'#1086#1092#1086#1088#1084#1083#1077#1085#1080#1077'" = :"'#1086#1092#1086 +
        #1088#1084#1083#1077#1085#1080#1077'"'
      'WHERE'
      '  id = :Old_id')
    SQLLock.Strings = (
      'SELECT * FROM "'#1087#1088#1080#1082#1091#1083#1080#1085#1075'"."'#1085#1072#1094#1077#1085#1082#1080'"'
      'WHERE'
      '  id = :Old_id'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      
        'SELECT id, "'#1082#1086#1076'_'#1087#1088#1080#1082#1091#1083#1080#1085#1075#1072'", "'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'", "'#1090#1072#1088#1080#1092'", "'#1086#1092#1086#1088#1084#1083#1077 +
        #1085#1080#1077'" FROM "'#1087#1088#1080#1082#1091#1083#1080#1085#1075'"."'#1085#1072#1094#1077#1085#1082#1080'"'
      'WHERE'
      '  id = :id')
    Connection = DM1.db1
    SQL.Strings = (
      'SELECT '
      '  n.id,'
      '  n."'#1082#1086#1076'_'#1082#1072#1088#1075#1086'",'
      '  n."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'",'
      '  n."'#1090#1072#1088#1080#1092'",'
      '  m.name,'
      '  m.uni_name,'
      '  m.reg_name'
      'FROM'
      '  "'#1082#1072#1088#1075#1086'"."'#1085#1072#1094#1077#1085#1082#1080'" n'
      
        '  INNER JOIN "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"."'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'" m ON (n."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'" ' +
        '= m.id)'
      '  where n."'#1082#1086#1076'_'#1082#1072#1088#1075#1086'"=:id'
      '  ORDER BY'
      '  name,'
      '  uni_name,'
      '  reg_name')
    Left = 200
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        Value = nil
      end>
  end
  object dsPriceMark: TDataSource
    DataSet = QueryPriceMark
    Left = 68
    Top = 140
  end
end
