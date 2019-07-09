unit UFOrg;

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
  UFrameOrg,
  Data.DB,
  MemDS,
  DBAccess,
  Uni;

type
  TFOrg = class(TForm)
    FrameOrg1: TFrameOrg;
    Query1: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure Access;
    { Public declarations }
  end;

var
  FOrg: TFOrg;

implementation

{$R *.dfm}

uses
  UPasswd;

procedure TFOrg.Access;
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
      FrameOrg1.FrameTopPanel1.btnAdd.Enabled :=
        FieldByName('�����������_����������').AsBoolean;
      FrameOrg1.FrameTopPanel1.btnEdit.Enabled :=
        FieldByName('�����������_��������������').AsBoolean;
      FrameOrg1.FrameTopPanel1.btnDel.Enabled :=
        FieldByName('�����������_��������').AsBoolean;
    end;
  end;
end;

procedure TFOrg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FOrg := nil;
end;

end.
