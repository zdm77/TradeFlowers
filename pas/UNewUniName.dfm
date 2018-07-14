object FNewUniName: TFNewUniName
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 128
  ClientWidth = 420
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inline FrameSave1: TFrameSave
    Left = 0
    Top = 96
    Width = 420
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 96
    ExplicitWidth = 420
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
    Width = 420
    Height = 96
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 420
    ExplicitHeight = 96
    inherited Group1: TcxGroupBox
      ExplicitWidth = 420
      ExplicitHeight = 96
      Height = 96
      Width = 420
      inherited edtUniName: TcxTextEdit
        Properties.OnChange = FrameUniName1edtUniNamePropertiesChange
        OnKeyDown = FrameUniName1edtUniNameKeyDown
        OnKeyUp = FrameUniName1edtUniNameKeyUp
      end
      inherited edtRegName: TcxTextEdit
        Properties.OnChange = FrameUniName1edtRegNamePropertiesChange
        OnKeyDown = FrameUniName1edtRegNameKeyDown
        OnKeyUp = FrameUniName1edtRegNameKeyUp
      end
      inherited edtName: TcxTextEdit
        Top = 24
        Properties.OnChange = FrameUniName1edtNamePropertiesChange
        OnKeyDown = FrameUniName1edtNameKeyDown
        OnKeyUp = FrameUniName1edtNameKeyUp
        ExplicitTop = 24
      end
      inherited chkUseName: TCheckBox
        OnClick = FrameUniName1chkUseNameClick
      end
      inherited btnTranslit: TcxButton
        Left = 371
        ExplicitLeft = 371
      end
    end
  end
end
