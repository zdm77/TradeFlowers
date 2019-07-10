unit UFTrack;
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
  UFrameTrack;
type
  TFTrack = class(TForm)
    FrameTrack1 : TFrameTrack;
    Query1 : TUniQuery;
    procedure FormClose(Sender : TObject; var Action : TCloseAction);
  private
    { Private declarations }
  public
    procedure Access;
    { Public declarations }
  end;

var
  FTrack : TFTrack;
implementation
{$R *.dfm}

uses
  UPasswd;
procedure TFTrack.Access;
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
      FrameTrack1.FrameTopPanel1.btnAdd.Enabled :=
                                                  FieldByName('�����_����������').AsBoolean;
      FrameTrack1.FrameTopPanel1.btnEdit.Enabled :=
                                                   FieldByName('�����_��������������').AsBoolean;
      FrameTrack1.FrameTopPanel1.btnDel.Enabled := FieldByName('�����_��������')
    .AsBoolean;
    end;
  end;
end;
procedure TFTrack.FormClose(Sender : TObject; var Action : TCloseAction);
begin
  Action := caFree;
  FTrack := nil;
end;
end.
