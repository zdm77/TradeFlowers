object FSelectInBank: TFSelectInBank
  Left = 0
  Top = 0
  Caption = #1042#1099#1073#1086#1088' '#1073#1072#1085#1082#1072
  ClientHeight = 420
  ClientWidth = 599
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
  inline FrameBankInter1: TFrameBankInter
    Left = 0
    Top = 0
    Width = 599
    Height = 420
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 599
    ExplicitHeight = 420
    inherited FrameTopPanel1: TFrameTopPanel
      Width = 599
      ExplicitWidth = 599
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
      Width = 599
      Height = 388
      ExplicitWidth = 599
      ExplicitHeight = 388
      inherited ViewStatWork: TcxGridDBTableView
        OnDblClick = FrameBankInter1ViewStatWorkDblClick
      end
    end
  end
end
