object FNewPricooling: TFNewPricooling
  Left = 0
  Top = 0
  Caption = #1055#1088#1080#1082#1091#1083#1080#1085#1075
  ClientHeight = 260
  ClientWidth = 473
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
    Top = 228
    Width = 473
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 228
    ExplicitWidth = 473
    inherited bardxbrmngr1: TdxBarManager
      PixelsPerInch = 96
      inherited btnSave: TdxBarLargeButton
        OnClick = FrameSave1btnSaveClick
      end
    end
  end
  object Page1: TcxPageControl
    Left = 0
    Top = 0
    Width = 473
    Height = 228
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = TabOsn
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2007Blue'
    ClientRectBottom = 228
    ClientRectRight = 473
    ClientRectTop = 24
    object TabOsn: TcxTabSheet
      Caption = #1054#1089#1085#1086#1074#1085#1099#1077
      ImageIndex = 0
      object lblDoc: TLabel
        Left = 7
        Top = 56
        Width = 106
        Height = 13
        Caption = #1054#1092#1086#1088#1084#1083#1077#1085#1080#1077' '#1076#1086#1082'-'#1086#1074':'
      end
      object lblSum: TLabel
        Left = 7
        Top = 32
        Width = 36
        Height = 13
        Caption = #1058#1072#1088#1080#1092':'
      end
      object lblName: TcxLabel
        Left = 7
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
        Left = 119
        Top = 3
        Properties.OnEditValueChanged = edtNamePropertiesEditValueChanged
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 1
        OnKeyUp = edtNameKeyUp
        Width = 310
      end
      object mmoAdrReg: TcxMemo
        Left = 119
        Top = 79
        Style.LookAndFeel.Kind = lfOffice11
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 2
        Height = 35
        Width = 278
      end
      object lblAdrReg: TcxLabel
        Left = 7
        Top = 79
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
      object btnAdres: TcxButton
        Left = 403
        Top = 79
        Width = 26
        Height = 15
        Caption = '...'
        LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 4
        OnClick = btnAdresClick
      end
      object btn1: TcxButton
        Left = 403
        Top = 116
        Width = 26
        Height = 15
        Caption = '...'
        LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 5
        OnClick = btn1Click
      end
      object mmoAdrFact: TcxMemo
        Left = 119
        Top = 116
        Style.LookAndFeel.Kind = lfOffice11
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 6
        Height = 35
        Width = 278
      end
      object lblAdrFact: TcxLabel
        Left = 7
        Top = 116
        Caption = #1060#1072#1082#1090#1080#1095#1077#1089#1082#1080#1081' '#1072#1076#1088#1077#1089':'
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
        Left = 119
        Top = 157
        Style.LookAndFeel.Kind = lfOffice11
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.Kind = lfOffice11
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.Kind = lfOffice11
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.Kind = lfOffice11
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 8
        Height = 35
        Width = 310
      end
      object lblRemark: TcxLabel
        Left = 7
        Top = 157
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
      object edtSum: TsCalcEdit
        Left = 119
        Top = 28
        Width = 94
        Height = 21
        AutoSize = False
        TabOrder = 10
        SkinData.SkinSection = 'EDIT'
        DisplayFormat = '$### ### ##0.00;-$### ### ##0.00;0'
      end
      object edtDoc: TsCalcEdit
        Left = 119
        Top = 52
        Width = 94
        Height = 21
        AutoSize = False
        TabOrder = 11
        SkinData.SkinSection = 'EDIT'
        DisplayFormat = '$### ### ##0.00;-$### ### ##0.00;0'
      end
    end
    object TabPriceMark: TcxTabSheet
      Caption = #1053#1072#1094#1077#1085#1082#1080' '#1085#1072' '#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080
      ImageIndex = 1
      inline FrameTopPanelPriceMark: TFrameTopPanel
        Left = 0
        Top = 0
        Width = 473
        Height = 32
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 473
        ExplicitHeight = 32
        inherited barProduct: TdxBarManager
          PixelsPerInch = 96
          DockControlHeights = (
            0
            0
            104
            0)
          inherited btnAdd: TdxBarLargeButton
            Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100
            Hint = #1047#1072#1087#1086#1083#1085#1080#1090#1100
            OnClick = btnAddClick
          end
          inherited btnEdit: TdxBarLargeButton
            OnClick = btnEditClick
          end
          inherited btnDel: TdxBarLargeButton
            Visible = ivNever
          end
          inherited btnRefresh: TdxBarLargeButton
            OnClick = btnRefreshClick
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
        Top = 32
        Width = 473
        Height = 172
        Align = alClient
        TabOrder = 1
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        ExplicitWidth = 465
        ExplicitHeight = 168
        object GridAccount: TcxGridDBTableView
          OnDblClick = GridAccountDblClick
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
          object GridAccountDBColumn1: TcxGridDBColumn
            Caption = #1054#1092#1086#1088#1084#1083#1077#1085#1080#1077
            DataBinding.FieldName = #1086#1092#1086#1088#1084#1083#1077#1085#1080#1077
            Width = 105
          end
        end
        object GridLevelGrid1Level1: TcxGridLevel
          GridView = GridAccount
        end
      end
    end
    object TabAlarm: TcxTabSheet
      Caption = #1054#1087#1086#1074#1077#1097#1077#1085#1080#1103
      ImageIndex = 2
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
      object edtMaxSrokDolg: TcxSpinEdit
        Left = 166
        Top = 1
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        Style.Shadow = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 1
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
        TabOrder = 2
        Value = 14
        Width = 57
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
      object chkUse: TcxCheckBox
        Left = 0
        Top = 95
        Caption = #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1090#1100' '#1086#1087#1086#1074#1077#1097#1077#1085#1080#1103
        Style.LookAndFeel.SkinName = 'Office2007Blue'
        StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
        StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
        StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
        TabOrder = 6
        Transparent = True
        Visible = False
      end
      object edtMaxDolg: TsCalcEdit
        Left = 166
        Top = 49
        Width = 94
        Height = 21
        AutoSize = False
        TabOrder = 7
        SkinData.SkinSection = 'EDIT'
        DisplayFormat = '$### ### ##0.00;-$### ### ##0.00;0'
        Value = 5000.000000000000000000
      end
      object edtSumAlarm: TsCalcEdit
        Left = 166
        Top = 72
        Width = 94
        Height = 21
        AutoSize = False
        TabOrder = 8
        SkinData.SkinSection = 'EDIT'
        DisplayFormat = '$### ### ##0.00;-$### ### ##0.00;0'
        Value = 5000.000000000000000000
      end
    end
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
      '  "'#1087#1088#1080#1082#1091#1083#1080#1085#1075'"."'#1085#1072#1094#1077#1085#1082#1080'".id,'
      '  "'#1087#1088#1080#1082#1091#1083#1080#1085#1075'"."'#1085#1072#1094#1077#1085#1082#1080'"."'#1082#1086#1076'_'#1087#1088#1080#1082#1091#1083#1080#1085#1075#1072'",'
      '  "'#1087#1088#1080#1082#1091#1083#1080#1085#1075'"."'#1085#1072#1094#1077#1085#1082#1080'"."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'",'
      '  "'#1087#1088#1080#1082#1091#1083#1080#1085#1075'"."'#1085#1072#1094#1077#1085#1082#1080'"."'#1090#1072#1088#1080#1092'",'
      '  "'#1087#1088#1080#1082#1091#1083#1080#1085#1075'"."'#1085#1072#1094#1077#1085#1082#1080'"."'#1086#1092#1086#1088#1084#1083#1077#1085#1080#1077'",'
      '  "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"."'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'".name,'
      '  "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"."'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'".uni_name,'
      '  "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"."'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'".reg_name'
      'FROM'
      '  "'#1087#1088#1080#1082#1091#1083#1080#1085#1075'"."'#1085#1072#1094#1077#1085#1082#1080'"'
      
        '  INNER JOIN "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"."'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'" ON ("'#1087#1088#1080#1082#1091#1083#1080#1085#1075'"."'#1085#1072#1094#1077#1085#1082#1080'"' +
        '."'#1082#1086#1076'_'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'" = "'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'"."'#1084#1072#1088#1082#1080#1088#1086#1074#1082#1080'".id) where "'#1087#1088#1080#1082#1091#1083#1080 +
        #1085#1075'"."'#1085#1072#1094#1077#1085#1082#1080'"."'#1082#1086#1076'_'#1087#1088#1080#1082#1091#1083#1080#1085#1075#1072'"=:id'
      'order by name, uni_name, reg_name')
    Left = 144
    Top = 136
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
      'select * from '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080'.'#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080)
    Left = 312
    Top = 64
  end
  object Query2: TUniQuery
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
    Left = 376
    Top = 88
  end
end
