unit UFAirLines;
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
  UFrameAirLine;
type
  TFAirLines = class(TForm)
    FrameAirLine1 : TFrameAirLine;
    Query1 : TUniQuery;
    procedure FormClose(Sender : TObject; var Action : TCloseAction);
  private
    { Private declarations }
  public
    procedure Access;
    { Public declarations }
  end;

var
  FAirLines : TFAirLines;
implementation
{$R *.dfm}

uses
  UPasswd;
procedure TFAirLines.Access;
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
      FrameAirLine1.FrameTopPanel1.btnAdd.Enabled :=
                                                    FieldByName('авиалинии_добавление').AsBoolean;
      FrameAirLine1.FrameTopPanel1.btnEdit.Enabled :=
                                                     FieldByName('авиалинии_редактирование').AsBoolean;
      FrameAirLine1.FrameTopPanel1.btnDel.Enabled :=
                                                    FieldByName('авиалинии_удаление').AsBoolean;
    end;
  end;
end;
procedure TFAirLines.FormClose(Sender : TObject; var Action : TCloseAction);
begin
  Action := caFree;
  FAirLines := nil;
end;
end.
