object FSelectClient: TFSelectClient
  Left = 0
  Top = 0
  Caption = #1042#1099#1073#1086#1088' '#1082#1083#1080#1077#1085#1090#1072
  ClientHeight = 477
  ClientWidth = 633
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
  inline FrameClient1: TFrameClient
    Left = 0
    Top = 0
    Width = 633
    Height = 477
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 633
    ExplicitHeight = 477
    inherited FrameTopPanel1: TFrameTopPanel
      Width = 633
      ExplicitWidth = 633
      inherited barProduct: TdxBarManager
        DockControlHeights = (
          0
          0
          69
          0)
        inherited btnSel: TdxBarLargeButton
          Visible = ivAlways
          OnClick = FrameTopPanel1btnSelClick
        end
      end
    end
    inherited GridStatWork: TcxGrid
      Width = 633
      Height = 416
      ExplicitWidth = 633
      ExplicitHeight = 416
    end
    inherited Group1: TcxGroupBox
      ExplicitWidth = 633
      Width = 633
      inherited edtOrg: TcxLookupComboBox
        Style.LookAndFeel.SkinName = ''
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.SkinName = ''
      end
      inherited chkDel: TcxCheckBox
        ExplicitHeight = 21
      end
    end
    inherited Style1: TcxStyleRepository
      PixelsPerInch = 96
    end
    inherited Report1: TfrxReport
      Datasets = <>
      Variables = <>
      Style = <>
    end
  end
end
