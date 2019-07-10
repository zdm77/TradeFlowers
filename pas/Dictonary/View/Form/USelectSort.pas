unit USelectSort;
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
  UFrameSort,
  DBAccess;
type
  TFSelectSort = class(TForm)
    FrameSort1 : TFrameSort;
    procedure FormShow(Sender : TObject);
    procedure FrameSort1ViewUsersDblClick(Sender : TObject);
    procedure FrameTopPanel1btnSelClick(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSelectSort : TFSelectSort;
implementation
{$R *.dfm}

uses
  UPasswd;
procedure TFSelectSort.FormShow(Sender : TObject);
begin
  case FPasswd.Lang of
    0 : Caption := 'Выбор сорта';
    1 : Caption := 'Selection of varieties';
    2 : Caption := 'Elección de la variedades';
  end;
  with FrameSort1 do
  begin
    FrameTopPanel1.SetLang;
    SetLang;
    if QueryCountry.Active = false then
    begin
      ShowCountry();
      ShowSort();
    end;
  end;
  if FrameSort1.QuerySort.RecordCount > 0 then
    FrameSort1.FrameTopPanel1.btnSel.Enabled := true
  else
    FrameSort1.FrameTopPanel1.btnSel.Enabled := false;
end;
procedure TFSelectSort.FrameSort1ViewUsersDblClick(Sender : TObject);
begin
  if FrameSort1.QuerySort.RecordCount > 0 then
    FrameTopPanel1btnSelClick(Sender);
end;
procedure TFSelectSort.FrameTopPanel1btnSelClick(Sender : TObject);
begin
  FrameSort1.FrameTopPanel1.id_select := true;
  close;
end;
end.
