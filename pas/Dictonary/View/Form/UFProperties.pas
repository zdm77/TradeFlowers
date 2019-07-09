unit UFProperties;

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
  UFrameProperties,
  Data.DB,
  MemDS,
  DBAccess,
  Uni;

type
  TFProperties = class(TForm)
    FrameProperties1: TFrameProperties;
    Query1: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure Access;
    { Public declarations }
  end;

var
  FProperties: TFProperties;

implementation

{$R *.dfm}

uses
  UPasswd;

procedure TFProperties.Access;
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
      FrameProperties1.FrameTopPanel1.btnAdd.Enabled :=
        FieldByName('��������_����������').AsBoolean;
      FrameProperties1.FrameTopPanel1.btnEdit.Enabled :=
        FieldByName('��������_��������������').AsBoolean;
      FrameProperties1.FrameTopPanel1.btnDel.Enabled :=
        FieldByName('��������_��������').AsBoolean;
    end;
  end;
end;

procedure TFProperties.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FProperties := nil;
end;

end.
