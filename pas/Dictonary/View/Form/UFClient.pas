unit UFClient;

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
  UFrameClient,
  Data.DB,
  MemDS,
  DBAccess,
  Uni;

type
  TFClient = class(TForm)
    FrameClient1: TFrameClient;
    Query1: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure Access;
    { Public declarations }
  end;

var
  FClient: TFClient;

implementation

{$R *.dfm}

uses
  UPasswd;

procedure TFClient.Access;
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
      if FrameClient1.s_id_type = '1' then
      begin
        FrameClient1.FrameTopPanel1.btnAdd.Enabled :=
          FieldByName('клиенты_добавление').AsBoolean;
        FrameClient1.FrameTopPanel1.btnEdit.Enabled :=
          FieldByName('клиенты_редактирование').AsBoolean;
        FrameClient1.FrameTopPanel1.btnDel.Enabled :=
          FieldByName('клиенты_удаление').AsBoolean;
      end
      else
      begin
        FrameClient1.FrameTopPanel1.btnAdd.Enabled :=
          FieldByName('поставщики_добавление').AsBoolean;
        FrameClient1.FrameTopPanel1.btnEdit.Enabled :=
          FieldByName('поставщики_редактирование').AsBoolean;
        FrameClient1.FrameTopPanel1.btnDel.Enabled :=
          FieldByName('поставщики_удаление').AsBoolean;
      end;
    end;
  end;
end;

procedure TFClient.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FClient := nil;
end;

end.
