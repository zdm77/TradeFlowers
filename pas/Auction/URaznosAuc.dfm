object fRaznosAuc: TfRaznosAuc
  Left = 0
  Top = 0
  Caption = #1056#1072#1079#1085#1086#1089#1082#1072
  ClientHeight = 556
  ClientWidth = 937
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
  inline FrameRaznosAuc1: TFrameRaznosAuc
    Left = 0
    Top = 0
    Width = 937
    Height = 556
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -160
    ExplicitTop = -64
    ExplicitWidth = 937
    ExplicitHeight = 556
    inherited cxGroupBox1: TcxGroupBox
      ExplicitWidth = 937
      Width = 937
    end
    inherited cxGroupBox2: TcxGroupBox
      ExplicitHeight = 519
      Height = 519
      inherited FrameTopPanel1: TFrameTopPanel
        inherited barProduct: TdxBarManager
          DockControlHeights = (
            0
            0
            91
            0)
        end
      end
      inherited GridStatWork: TcxGrid
        Height = 459
        ExplicitLeft = 2
        ExplicitTop = 33
        ExplicitWidth = 253
        ExplicitHeight = 548
      end
    end
    inherited cxSplitter1: TcxSplitter
      Height = 519
      ExplicitLeft = 257
    end
    inherited cxGroupBox3: TcxGroupBox
      ExplicitLeft = 265
      ExplicitWidth = 672
      ExplicitHeight = 519
      Height = 519
      Width = 509
      inherited cxGroupBox4: TcxGroupBox
        ExplicitWidth = 668
        Width = 505
        inherited FrameTopPanel2: TFrameTopPanel
          Width = 499
          ExplicitWidth = 501
          inherited barProduct: TdxBarManager
            DockControlHeights = (
              0
              0
              104
              0)
          end
        end
        inherited cxGrid1: TcxGrid
          Width = 499
          ExplicitWidth = 662
        end
      end
      inherited cxSplitter2: TcxSplitter
        Width = 505
        ExplicitWidth = 828
      end
      inherited cxGroupBox5: TcxGroupBox
        ExplicitWidth = 668
        ExplicitHeight = 196
        Height = 196
        Width = 505
        inherited FrameTopPanel3: TFrameTopPanel
          Width = 499
          ExplicitWidth = 501
          inherited barProduct: TdxBarManager
            DockControlHeights = (
              0
              0
              69
              0)
          end
        end
        inherited cxGrid2: TcxGrid
          Width = 499
          Height = 136
        end
      end
    end
  end
end
