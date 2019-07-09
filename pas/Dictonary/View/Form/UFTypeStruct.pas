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
      { ������ }
      Close;
      sql.Text := 'select * from "������������"."������"  where ���_����=' +
        IntToStr(FPasswd.ID_ROLE);
      Open;
      FrameType1.FrameTopPanel1.btnAdd.Enabled := FieldByName('����_����������')
        .AsBoolean;
      FrameType1.FrameTopPanel1.btnEdit.Enabled :=
        FieldByName('����_��������������').AsBoolean;
      FrameType1.FrameTopPanel1.btnDel.Enabled := FieldByName('����_��������')
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
