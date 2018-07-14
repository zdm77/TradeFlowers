object FSelectTypeAuc: TFSelectTypeAuc
  Left = 0
  Top = 0
  Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103' '#1090#1086#1074#1072#1088#1072
  ClientHeight = 558
  ClientWidth = 642
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  inline FrameTypeAuc1: TFrameTypeAuc
    Left = 0
    Top = 25
    Width = 642
    Height = 533
    Align = alClient
    TabOrder = 0
    ExplicitTop = 25
    ExplicitWidth = 642
    ExplicitHeight = 533
    inherited cxGroupBox1: TcxGroupBox
      ExplicitWidth = 642
      ExplicitHeight = 533
      Height = 533
      Width = 642
      inherited FrameTopPanel1: TFrameTopPanel
        Width = 638
        ExplicitWidth = 638
        inherited barProduct: TdxBarManager
          DockControlHeights = (
            0
            0
            69
            0)
          inherited btnSel: TdxBarLargeButton
            Visible = ivAlways
            OnClick = btnSelClick
          end
        end
      end
      inherited GridStatWork: TcxGrid
        Width = 638
        Height = 448
        ExplicitTop = 83
        ExplicitWidth = 638
        ExplicitHeight = 448
      end
      inherited cxGroupBox2: TcxGroupBox
        Visible = True
        ExplicitWidth = 638
        Width = 638
        inherited edtTypeSrez: TcxComboBox
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            #1057#1088#1077#1079#1082#1072
            #1043#1086#1088#1096#1077#1095#1082#1072)
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = ''
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = ''
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = ''
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = ''
          Text = #1057#1088#1077#1079#1082#1072
        end
      end
    end
  end
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    PanelStyle.Active = True
    TabOrder = 1
    Height = 25
    Width = 642
    object Label1: TLabel
      Left = 16
      Top = 5
      Width = 42
      Height = 16
      Caption = 'Label1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 16
      Font.Name = 'Tahoma'
      Font.Pitch = fpVariable
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
  end
end
