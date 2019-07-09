unit UFBox;

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
  UFrameBox,
  Data.DB,
  MemDS,
  DBAccess,
  Uni;

type
  TFBox = class(TForm)
    FrameBox1: TFrameBox;
    Query1: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure Access;
    { Public declarations }
  end;

var
  FBox: TFBox;

implementation

{$R *.dfm}

uses
  UPasswd;

procedure TFBox.Access;
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
      FrameBox1.FrameTopPanel1.btnAdd.Enabled :=
        FieldByName('упаковка_добавление').AsBoolean;
      FrameBox1.FrameTopPanel1.btnEdit.Enabled :=
        FieldByName('упаковка_редактирование').AsBoolean;
      FrameBox1.FrameTopPanel1.btnDel.Enabled :=
        FieldByName('упаковка_удаление').AsBoolean;
    end;
  end;
end;

procedure TFBox.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FBox := nil;
end;

end.
