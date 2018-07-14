object FNewOrgName: TFNewOrgName
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 130
  ClientWidth = 424
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
    Top = 98
    Width = 424
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 98
    ExplicitWidth = 424
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
  object Group1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alClient
    PanelStyle.Active = True
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2007Blue'
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
    TabOrder = 1
    Height = 98
    Width = 424
    object lblOrg: TLabel
      Left = 3
      Top = 7
      Width = 70
      Height = 13
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103':'
    end
    object edtOrg: TcxLookupComboBox
      Left = 102
      Top = 3
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'id'
      Properties.ListColumns = <
        item
          FieldName = 'name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsOrg
      Properties.OnEditValueChanged = edtOrgPropertiesEditValueChanged
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      TabOrder = 0
      Width = 265
    end
    inline FrameUniName1: TFrameUniName
      Left = 2
      Top = 24
      Width = 420
      Height = 72
      Align = alBottom
      TabOrder = 1
      ExplicitLeft = 2
      ExplicitTop = 24
      ExplicitWidth = 420
      ExplicitHeight = 72
      inherited Group1: TcxGroupBox
        ExplicitWidth = 420
        ExplicitHeight = 72
        Height = 72
        Width = 420
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
          Visible = False
        end
        inherited btnTranslit: TcxButton
          LookAndFeel.NativeStyle = False
        end
      end
    end
  end
  object QueryOrg: TUniQuery
    Connection = DM1.db1
    SQL.Strings = (
      'select * from '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'.'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
      'where id<>1')
    Left = 168
    Top = 40
  end
  object dsOrg: TUniDataSource
    DataSet = QueryOrg
    Left = 120
    Top = 64
  end
end
