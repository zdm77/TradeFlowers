object FNewOrderFromChat: TFNewOrderFromChat
  Left = 0
  Top = 0
  Caption = 'FNewOrderFromChat'
  ClientHeight = 609
  ClientWidth = 1026
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 32
    Top = 120
    Width = 913
    Height = 481
    TabOrder = 0
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = ''
    object Table1: TcxGridTableView
      OnDblClick = Table1DblClick
      Navigator.Buttons.CustomButtons = <>
      Navigator.InfoPanel.Visible = True
      Navigator.Visible = True
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsData.Inserting = False
      OptionsSelection.InvertSelect = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.CellMultiSelect = True
      OptionsView.ShowEditButtons = gsebAlways
      OptionsView.ShowColumnFilterButtons = sfbAlways
      object columnCheck: TcxGridColumn
        PropertiesClassName = 'TcxCheckBoxProperties'
        Visible = False
      end
      object columnID: TcxGridColumn
        Options.Editing = False
      end
      object columnCountry: TcxGridColumn
        Caption = 'Country'
        Options.Editing = False
        Width = 102
      end
      object columnType: TcxGridColumn
        Caption = 'Type'
        Options.Editing = False
        Width = 128
      end
      object columnPlant: TcxGridColumn
        Caption = 'Plant'
        Options.Editing = False
        Width = 158
      end
      object columnSort: TcxGridColumn
        Caption = 'Sort'
        Options.Editing = False
        Width = 86
      end
      object columnName: TcxGridColumn
        Caption = 'Name'
        Options.Editing = False
        Width = 255
      end
      object columnCount: TcxGridColumn
        Caption = 'Count'
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = Table1
    end
  end
  object btn1: TButton
    Left = 656
    Top = 576
    Width = 75
    Height = 25
    Caption = 'btn1'
    TabOrder = 1
  end
  object GroupOsn: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1089#1074#1077#1076#1077#1085#1080#1103
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 2
    Height = 97
    Width = 1026
    object edtKargo: TcxButtonEdit
      Left = 207
      Top = 67
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
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
      Width = 224
    end
    object lblKargo: TcxLabel
      Left = 209
      Top = 52
      Caption = #1050#1072#1088#1075#1086'*'
      Transparent = True
    end
    object edtMarking: TcxButtonEdit
      Left = 4
      Top = 67
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.ReadOnly = True
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
      TabOrder = 3
      Width = 197
    end
    object lblMarking: TcxLabel
      Left = 3
      Top = 52
      Caption = #1052#1072#1088#1082#1080#1088#1086#1074#1082#1072'*'
      Transparent = True
    end
    object edtNum: TcxTextEdit
      Left = 3
      Top = 32
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 0
      Width = 86
    end
    object lblNumber: TcxLabel
      Left = 3
      Top = 14
      Caption = #8470'*'
      Transparent = True
    end
    object edtДатаВылета: TAdvDateTimePicker
      Left = 95
      Top = 32
      Width = 105
      Height = 21
      Date = 0.475810185185185200
      Format = ''
      Time = 0.475810185185185200
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = dkDate
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 1
      BorderStyle = bsSingle
      Ctl3D = True
      DateTime = 0.475810185185185200
      Version = '1.2.0.6'
      LabelCaption = #1044#1072#1090#1072' '#1074#1099#1083#1077#1090#1072
      LabelPosition = lpTopLeft
      LabelTransparent = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
    end
    object edtДатаЗаказа: TAdvDateTimePicker
      Left = 209
      Top = 32
      Width = 105
      Height = 21
      Date = 41137.475810185180000000
      Format = ''
      Time = 41137.475810185180000000
      DoubleBuffered = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Kind = dkDate
      ParentDoubleBuffered = False
      ParentFont = False
      TabOrder = 2
      BorderStyle = bsSingle
      Ctl3D = True
      DateTime = 41137.475810185180000000
      Version = '1.2.0.6'
      LabelCaption = #1044#1072#1090#1072' '#1079#1072#1082#1072#1079#1072
      LabelPosition = lpTopLeft
      LabelTransparent = True
      LabelFont.Charset = DEFAULT_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
    end
    object lblFito: TcxLabel
      Left = 320
      Top = 14
      Caption = #1060#1080#1090#1086
      Transparent = True
    end
    object edtFito: TcxLookupComboBox
      Left = 320
      Top = 31
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListOptions.ShowHeader = False
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
      TabOrder = 9
      Width = 109
    end
  end
end
