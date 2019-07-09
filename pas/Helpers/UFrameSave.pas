unit UFrameSave;

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
  dxSkinsCore,

  dxSkinsdxBarPainter,
  dxBar,
  cxClasses,

  dxSkinDevExpressStyle,

   dxSkinsDefaultPainters, dxSkinOffice2007Blue;

type
  TFrameSave = class(TFrame)
    bardxbrmngr1: TdxBarManager;
    dxbrBarManager1Bar: TdxBar;
    btnSave: TdxBarLargeButton;
    btnNext: TdxBarLargeButton;
    btnPrior: TdxBarLargeButton;
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    id_save: Boolean;
    procedure SetLang;
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  UPasswd;

procedure TFrameSave.btnSaveClick(Sender: TObject);
begin
  id_save := True;
end;

procedure TFrameSave.SetLang;
var
  a: array [0 .. 255] of Char;
  StrTblOfs: Integer;
begin
  case FPasswd.Lang of
    0:
      StrTblOfs := 0;
    1:
      StrTblOfs := 1000;
    2:
      StrTblOfs := 2000;
  end;
  { сохранить }
  if LoadString(hInstance, StrTblOfs + 29, @a, sizeof(a)) <> 0 then
    btnSave.Caption := StrPas(a);
  { далее }
  if LoadString(hInstance, StrTblOfs + 30, @a, sizeof(a)) <> 0 then
    btnNext.Caption := StrPas(a);
  { назад }
  if LoadString(hInstance, StrTblOfs + 31, @a, sizeof(a)) <> 0 then
    btnPrior.Caption := StrPas(a);
end;

end.
