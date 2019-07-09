object FPriceDetail: TFPriceDetail
  Left = 0
  Top = 0
  Caption = #1055#1088#1072#1081#1089
  ClientHeight = 530
  ClientWidth = 913
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
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  inline FramePriceDetail1: TFramePriceDetail
    Left = 0
    Top = 0
    Width = 913
    Height = 530
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 913
    ExplicitHeight = 530
    inherited FrameTopPanel1: TFrameTopPanel
      Width = 913
      ExplicitWidth = 913
      inherited barProduct: TdxBarManager
        DockControlHeights = (
          0
          0
          69
          0)
      end
    end
    inherited GridPedidoALL: TcxGrid
      Width = 913
      Height = 466
      ExplicitWidth = 913
      ExplicitHeight = 466
    end
    inherited cxGroupBox1: TcxGroupBox
      Style.LookAndFeel.SkinName = 'Office2007Blue'
      StyleDisabled.LookAndFeel.SkinName = 'Office2007Blue'
      StyleFocused.LookAndFeel.SkinName = 'Office2007Blue'
      StyleHot.LookAndFeel.SkinName = 'Office2007Blue'
      ExplicitWidth = 913
      Width = 913
      inherited edtCountry: TcxLookupComboBox
        Properties.OnCloseUp = nil
        Style.LookAndFeel.SkinName = ''
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.SkinName = ''
      end
      inherited edtType: TcxLookupComboBox
        Properties.OnCloseUp = nil
        Style.LookAndFeel.SkinName = ''
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.SkinName = ''
      end
      inherited edtPlant: TcxLookupComboBox
        Properties.OnCloseUp = nil
        Style.LookAndFeel.SkinName = ''
        StyleDisabled.LookAndFeel.SkinName = ''
        StyleFocused.LookAndFeel.SkinName = ''
        StyleHot.LookAndFeel.SkinName = ''
        OnMouseDown = FramePriceDetail1edtPlantMouseDown
      end
    end
  end
end
