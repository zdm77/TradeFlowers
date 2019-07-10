unit UFWareHouse;
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
  UFrameWarehouse,
  Data.DB,
  MemDS,
  DBAccess,
  Uni;
type
  TFWareHouse = class(TForm)
    FrameWarehouse1 : TFrameWarehouse;
    Query1 : TUniQuery;
    procedure FormClose(Sender : TObject; var Action : TCloseAction);
  private
    { Private declarations }
  public
    procedure Access;
    { Public declarations }
  end;

var
  FWareHouse : TFWareHouse;
implementation
{$R *.dfm}

uses
  UPasswd;
procedure TFWareHouse.Access;
begin
  if (FPasswd.ID_ROLE <> 1) then
  begin
    with Query1 do
    begin
      { ������ }
      Close;
      sql.Text := 'select * from "������������"."������"  where ���_����=' +
    IntToStr(FPasswd.ID_ROLE);
      Open;
      FrameWarehouse1.FrameTopPanel1.btnAdd.Enabled :=
                                                      FieldByName('����_����������').AsBoolean;
      FrameWarehouse1.FrameTopPanel1.btnEdit.Enabled :=
                                                       FieldByName('����_��������������').AsBoolean;
      FrameWarehouse1.FrameTopPanel1.btnDel.Enabled :=
                                                      FieldByName('����_��������').AsBoolean;
    end;
  end;
end;
procedure TFWareHouse.FormClose(Sender : TObject; var Action : TCloseAction);
begin
  Action := cafree;
  FWareHouse := nil;
end;
end.
