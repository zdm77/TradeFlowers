unit UNewUniName;
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
  UFrameSave,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  dxSkinsCore,
  
  cxTextEdit,
  cxLabel,
  cxGroupBox,
  UFrameUniName,
  Vcl.StdCtrls;
type
  TFNewUniName = class(TForm)
    FrameSave1 : TFrameSave;
    FrameUniName1 : TFrameUniName;
    procedure FormCreate(Sender : TObject);
    procedure FormKeyDown(Sender : TObject; var Key : Word; Shift : TShiftState);
    procedure FormShow(Sender : TObject);
    procedure FrameSave1btnSaveClick(Sender : TObject);
    procedure FrameUniName1chkUseNameClick(Sender : TObject);
    procedure FrameUniName1edtNameKeyDown(Sender : TObject; var Key : Word;
                                             Shift : TShiftState);
    procedure FrameUniName1edtNameKeyUp(Sender : TObject; var Key : Word;
                                           Shift : TShiftState);
    procedure FrameUniName1edtRegNameKeyUp(Sender : TObject; var Key : Word;
                                              Shift : TShiftState);
    procedure FrameUniName1edtUniNameKeyUp(Sender : TObject; var Key : Word;
                                              Shift : TShiftState);
    procedure FrameUniName1edtUniNamePropertiesChange(Sender : TObject);
    procedure FrameUniName1edtNamePropertiesChange(Sender : TObject);
    procedure FrameUniName1edtRegNameKeyDown(Sender : TObject; var Key : Word;
                                                Shift : TShiftState);
    procedure FrameUniName1edtRegNamePropertiesChange(Sender : TObject);
    procedure FrameUniName1edtUniNameKeyDown(Sender : TObject; var Key : Word;
                                                Shift : TShiftState);
  private
    { Private declarations }
  public
    s_focus : SmallInt;
    id_check : Boolean;
    { Public declarations }
  end;

var
  FNewUniName : TFNewUniName;
implementation
{$R *.dfm}

uses
  UPasswd;
procedure TFNewUniName.FormCreate(Sender : TObject);
var
  a : array [0..255] of Char;
  StrTblOfs : Integer;
begin
  if FrameUniName1.EnableSave then
    FrameSave1.btnSave.Enabled := True
  else
    FrameSave1.btnSave.Enabled := false;
  // case FPasswd.Lang of
  // 0:
  // StrTblOfs := 0;
  // 1:
  // StrTblOfs := 1000;
  // 2:
  // StrTblOfs := 2000;
  // end;
  // { Загружаем и устанавливаем заголовок кнопки "Yes" в соответствии с языком }
  // with FrameUniName1 do
  // begin
  // if LoadString(hInstance, StrTblOfs + 27, @a, sizeof(a)) <> 0 then
  // lblName.Caption := StrPas(a);
  // if LoadString(hInstance, StrTblOfs + 28, @a, sizeof(a)) <> 0 then
  // lblUniName.Caption := StrPas(a);
  // end;
  // FrameSave1.SetLang;
end;
procedure TFNewUniName.FormKeyDown(Sender : TObject; var Key : Word;
                                      Shift : TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;
procedure TFNewUniName.FormShow(Sender : TObject);
begin
  FrameSave1.SetLang;
  case s_focus of
    0 : FrameUniName1.edtUniName.SetFocus;
    1 : FrameUniName1.edtName.SetFocus;
    2 : FrameUniName1.edtRegName.SetFocus;
  end;
end;
procedure TFNewUniName.FrameSave1btnSaveClick(Sender : TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  Close;
end;
procedure TFNewUniName.FrameUniName1chkUseNameClick(Sender : TObject);
begin
  id_check := FrameUniName1.chkUseName.Checked;
end;
procedure TFNewUniName.FrameUniName1edtNameKeyDown(Sender : TObject;
                                                      var Key : Word; Shift : TShiftState);
begin
  FrameUniName1.edtNameKeyDown(Sender, Key, Shift);
end;
procedure TFNewUniName.FrameUniName1edtNameKeyUp(Sender : TObject; var Key : Word;
                                                    Shift : TShiftState);
begin
  if FrameUniName1.EnableSave = True then
    FrameSave1.btnSave.Enabled := True
  else
    FrameSave1.btnSave.Enabled := false;
end;
procedure TFNewUniName.FrameUniName1edtNamePropertiesChange(Sender : TObject);
begin
  if FrameUniName1.EnableSave = True then
    FrameSave1.btnSave.Enabled := True
  else
    FrameSave1.btnSave.Enabled := false;
end;
procedure TFNewUniName.FrameUniName1edtRegNameKeyDown(Sender : TObject;
                                                         var Key : Word; Shift : TShiftState);
begin
  if (Key = VK_RETURN) and (FrameSave1.btnSave.Enabled = True) then
    FrameSave1btnSaveClick(Sender);
end;
procedure TFNewUniName.FrameUniName1edtRegNameKeyUp(Sender : TObject;
                                                       var Key : Word; Shift : TShiftState);
begin
  if FrameUniName1.EnableSave = True then
    FrameSave1.btnSave.Enabled := True
  else
    FrameSave1.btnSave.Enabled := false;
end;
procedure TFNewUniName.FrameUniName1edtRegNamePropertiesChange(Sender : TObject);
begin
  if FrameUniName1.EnableSave = True then
    FrameSave1.btnSave.Enabled := True
  else
    FrameSave1.btnSave.Enabled := false;
end;
procedure TFNewUniName.FrameUniName1edtUniNameKeyDown(Sender : TObject;
                                                         var Key : Word; Shift : TShiftState);
begin
  FrameUniName1.edtUniNameKeyDown(Sender, Key, Shift);
end;
procedure TFNewUniName.FrameUniName1edtUniNameKeyUp(Sender : TObject;
                                                       var Key : Word; Shift : TShiftState);
begin
  if FrameUniName1.EnableSave = True then
    FrameSave1.btnSave.Enabled := True
  else
    FrameSave1.btnSave.Enabled := false;
end;
procedure TFNewUniName.FrameUniName1edtUniNamePropertiesChange(Sender : TObject);
begin
  if FrameUniName1.EnableSave = True then
    FrameSave1.btnSave.Enabled := True
  else
    FrameSave1.btnSave.Enabled := false;
end;
end.
