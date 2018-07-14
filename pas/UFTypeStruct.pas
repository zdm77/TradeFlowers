unit UFTypeStruct;

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
  UFrameType,
  Data.DB,
  MemDS,
  DBAccess,
  Uni;

type
  TFTypeStruct = class(TForm)
    FrameType1: TFrameType;
    Query1: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure Access;
    { Public declarations }
  end;

var
  FTypeStruct: TFTypeStruct;

implementation

{$R *.dfm}

uses
  UPasswd;

procedure TFTypeStruct.Access;
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
      FrameType1.FrameTopPanel1.btnAdd.Enabled := FieldByName('типы_добавление')
        .AsBoolean;
      FrameType1.FrameTopPanel1.btnEdit.Enabled :=
        FieldByName('типы_редактирование').AsBoolean;
      FrameType1.FrameTopPanel1.btnDel.Enabled := FieldByName('типы_удаление')
        .AsBoolean;
    end;
  end;
end;

procedure TFTypeStruct.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FTypeStruct := nil;
end;

end.
