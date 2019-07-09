object FNewGroupMarking: TFNewGroupMarking
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1052#1072#1088#1082#1080#1088#1086#1074#1082#1072' ('#1056#1086#1076#1080#1090#1077#1083#1100')'
  ClientHeight = 103
  ClientWidth = 419
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
    Top = 71
    Width = 419
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 71
    ExplicitWidth = 419
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
  inline FrameUniName1: TFrameUniName
    Left = 0
    Top = 0
    Width = 419
    Height = 71
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 419
    ExplicitHeight = 71
    inherited Group1: TcxGroupBox
      ExplicitWidth = 419
      ExplicitHeight = 71
      Height = 71
      Width = 419
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
      inherited btnTranslit: TcxButton
        LookAndFeel.NativeStyle = False
      end
    end
  end
end
