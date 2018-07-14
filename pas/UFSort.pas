unit UFSort;

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
  Data.DB,
  MemDS,
  DBAccess,
  Uni;

type
  TFSort = class(TForm)
    FrameSort1: TFrameSort;
    Query1: TUniQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure Access;
    { Public declarations }
  end;

var
  FSort: TFSort;

implementation

{$R *.dfm}

uses
  UPasswd;

procedure TFSort.Access;
begin
  if (FPasswd.ID_ROLE <> 1) then
  begin
    with Query1 do
    begin
      { доступ }
      Close;
      sql.Text := 'select * from "пользователи"."доступ"  where код_роли=' +
        IntToStr(FPasswd.ID_ROLE);
      Open;
      FrameSort1.FrameTopPanel1.btnAdd.Enabled :=
        FieldByName('сорта_добавление').AsBoolean;
      FrameSort1.FrameTopPanel1.btnEdit.Enabled :=
        FieldByName('сорта_редактирование').AsBoolean;
      FrameSort1.FrameTopPanel1.btnDel.Enabled := FieldByName('сорта_удаление')
        .AsBoolean;
    end;
  end;
end;

procedure TFSort.FormCreate(Sender: TObject);
begin
  case FPasswd.Lang of
    1:
      begin
        Caption := 'Grades';
      end;
    2:
      begin
        Caption := 'Variedades';
      end;
  end;
end;

procedure TFSort.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FSort := nil;
end;

end.
