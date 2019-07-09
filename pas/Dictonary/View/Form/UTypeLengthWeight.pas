unit UTypeLengthWeight;

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
  UFrameTypeLengthWeight,
  Data.DB,
  MemDS,
  DBAccess,
  Uni;

type
  TFTypeLengthWeight = class(TForm)
    FrameTypeLengthWeight1: TFrameTypeLengthWeight;
    Query1: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure Access;
    { Public declarations }
  end;

var
  FTypeLengthWeight: TFTypeLengthWeight;

implementation

{$R *.dfm}

uses
  UPasswd;

procedure TFTypeLengthWeight.Access;
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
      FrameTypeLengthWeight1.FrameTopPanel1.btnAdd.Enabled :=
        FieldByName('длина_вес_добавление').AsBoolean;
      FrameTypeLengthWeight1.FrameTopPanel1.btnEdit.Enabled :=
        FieldByName('длина_вес_редактирование').AsBoolean;
      FrameTypeLengthWeight1.FrameTopPanel1.btnDel.Enabled :=
        FieldByName('длина_вес_удаление').AsBoolean;
    end;
  end;
end;

procedure TFTypeLengthWeight.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FTypeLengthWeight := nil;
end;

end.
