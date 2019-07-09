object FSelectBankRus: TFSelectBankRus
  Left = 0
  Top = 0
  Caption = #1041#1072#1085#1082
  ClientHeight = 387
  ClientWidth = 630
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
  inline FrameBank1: TFrameBank
    Left = 0
    Top = 0
    Width = 630
    Height = 387
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 630
    ExplicitHeight = 387
    inherited GridStatWork: TcxGrid
      Width = 630
      Height = 355
      ExplicitWidth = 630
      ExplicitHeight = 355
    end
    inherited FrameTopPanel1: TFrameTopPanel
      Width = 630
      ExplicitWidth = 630
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
  end
end
