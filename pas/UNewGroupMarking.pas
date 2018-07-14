unit UNewGroupMarking;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  dxSkinsCore,

  cxGroupBox,
  UFrameSave,
  Menus,
  Data.DB,
  MemDS,
  DBAccess,
  Uni,
  cxMaskEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  Vcl.StdCtrls,
  cxButtons,
  cxMemo,
  cxTextEdit,
  cxLabel,
  UFrameUniName;

type
  TFNewGroupMarking = class(TForm)
    FrameSave1: TFrameSave;
    FrameUniName1: TFrameUniName;
    procedure FormShow(Sender: TObject);
    procedure FrameSave1btnSaveClick(Sender: TObject);
    procedure FrameUniName1edtNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrameUniName1edtUniNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrameUniName1edtUniNamePropertiesEditValueChanged
      (Sender: TObject);
    procedure FrameUniName1edtNamePropertiesEditValueChanged(Sender: TObject);
    procedure FrameUniName1edtRegNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrameUniName1edtRegNamePropertiesEditValueChanged
      (Sender: TObject);
  private
    { Private declarations }
  public
    s_id_marking: Integer;
    procedure EnableSave;
    { Public declarations }
  end;

var
  FNewGroupMarking: TFNewGroupMarking;

implementation

{$R *.dfm}

procedure TFNewGroupMarking.EnableSave;
begin
  with FrameUniName1 do
  begin
    if (edtUniName.Text <> '') and (edtRegName.Text <> '') and
      (edtName.Text <> '') then
      FrameSave1.btnSave.Enabled := true
    else
      FrameSave1.btnSave.Enabled := false;
  end;
end;

procedure TFNewGroupMarking.FormShow(Sender: TObject);
begin
  with FrameUniName1 do
  begin
    SetLang;
    edtUniName.SetFocus;
  end;
  EnableSave;
end;

procedure TFNewGroupMarking.FrameSave1btnSaveClick(Sender: TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  Close;
end;

procedure TFNewGroupMarking.FrameUniName1edtNameKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFNewGroupMarking.FrameUniName1edtNamePropertiesEditValueChanged
  (Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewGroupMarking.FrameUniName1edtRegNameKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFNewGroupMarking.FrameUniName1edtRegNamePropertiesEditValueChanged
  (Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewGroupMarking.FrameUniName1edtUniNameKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFNewGroupMarking.FrameUniName1edtUniNamePropertiesEditValueChanged
  (Sender: TObject);
begin
  EnableSave;
end;

end.
