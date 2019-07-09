object FPlant: TFPlant
  Left = 0
  Top = 0
  Caption = #1055#1083#1072#1085#1090#1072#1094#1080#1080
  ClientHeight = 453
  ClientWidth = 703
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inline FramePlant1: TFramePlant
    Left = 0
    Top = 0
    Width = 703
    Height = 453
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 703
    ExplicitHeight = 453
    inherited FrameTopPanel1: TFrameTopPanel
      Width = 703
      ExplicitWidth = 703
      inherited barProduct: TdxBarManager
        DockControlHeights = (
          0
          0
          34
          0)
      end
    end
    inherited GroupCountry: TcxGroupBox
      ExplicitHeight = 418
      Height = 418
      inherited cxGrid1: TcxGrid
        Height = 393
        ExplicitHeight = 393
      end
    end
    inherited cxspltr1: TcxSplitter
      Height = 418
      ExplicitHeight = 418
    end
    inherited GroupPlant: TcxGroupBox
      ExplicitWidth = 490
      ExplicitHeight = 418
      Height = 418
      Width = 490
      inherited GridUsers: TcxGrid
        Width = 484
        Height = 366
        ExplicitWidth = 484
        ExplicitHeight = 366
      end
      inherited FrameSearch1: TFrameSearch
        Width = 484
        ExplicitWidth = 484
        inherited Group1: TcxGroupBox
          ExplicitWidth = 484
          Width = 484
          inherited LabelName: TcxLabel
            Style.IsFontAssigned = True
          end
        end
      end
    end
  end
  object Query1: TUniQuery
    Connection = DM1.db1
    SQL.Strings = (
      'select * from '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103'.'#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080)
    Left = 184
    Top = 80
  end
end
