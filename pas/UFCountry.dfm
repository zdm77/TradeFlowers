object FCountry: TFCountry
  Left = 0
  Top = 0
  Caption = #1057#1090#1088#1072#1085#1099
  ClientHeight = 402
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  inline FrameCountry1: TFrameCountry
    Left = 0
    Top = 0
    Width = 645
    Height = 402
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 645
    ExplicitHeight = 402
    inherited GridUsers: TcxGrid
      Width = 645
      Height = 367
      ExplicitWidth = 645
      ExplicitHeight = 367
    end
    inherited FrameTopPanel1: TFrameTopPanel
      Width = 645
      ExplicitWidth = 645
      inherited barProduct: TdxBarManager
        DockControlHeights = (
          0
          0
          34
          0)
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
              ItemName = 'btnEdit'
            end
            item
              BeginGroup = True
              Visible = True
              ItemName = 'btnRefresh'
            end>
        end
        inherited btnSel: TdxBarLargeButton
          OnClick = FrameTopPanel1btnSelClick
        end
      end
    end
  end
end
