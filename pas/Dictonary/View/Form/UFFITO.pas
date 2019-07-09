unit UFFITO;

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
  UFrameFito;

type
  TFFITO = class(TForm)
    FrameFITO1: TFrameFITO;
    Query1: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure Access;
    { Public declarations }
  end;

var
  FFITO: TFFITO;

implementation

{$R *.dfm}

uses
  UPasswd;

procedure TFFITO.Access;
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
      FrameFITO1.FrameTopPanel1.btnAdd.Enabled := FieldByName('����_����������')
        .AsBoolean;
      FrameFITO1.FrameTopPanel1.btnEdit.Enabled :=
        FieldByName('����_��������������').AsBoolean;
      FrameFITO1.FrameTopPanel1.btnDel.Enabled := FieldByName('����_��������')
        .AsBoolean;
    end;
  end;
end;

procedure TFFITO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FFITO := nil;
end;

end.
