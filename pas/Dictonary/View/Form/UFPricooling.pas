unit UFPricooling;

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
  Data.DB,
  MemDS,
  DBAccess,
  Uni,
  UFramePricooling;

type
  TFPricooling = class(TForm)
    FrameProcooling1: TFrameProcooling;
    Query1: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure Access;
    { Public declarations }
  end;

var
  FPricooling: TFPricooling;

implementation

{$R *.dfm}

uses
  UPasswd;

procedure TFPricooling.Access;
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
      FrameProcooling1.FrameTopPanel1.btnAdd.Enabled :=
        FieldByName('прикулинг_добавление').AsBoolean;
      FrameProcooling1.FrameTopPanel1.btnEdit.Enabled :=
        FieldByName('прикулинг_редактирование').AsBoolean;
      FrameProcooling1.FrameTopPanel1.btnDel.Enabled :=
        FieldByName('прикулинг_удаление').AsBoolean;
    end;
  end;
end;

procedure TFPricooling.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FPricooling := nil;
end;

end.
