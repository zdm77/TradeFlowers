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
    Top = 72
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
    Left = 48
    Top = 24
    Width = 75
    Height = 25
    Caption = 'btn1'
    TabOrder = 1
  end
end
