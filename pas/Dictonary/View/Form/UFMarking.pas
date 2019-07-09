unit UFMarking;

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
  UFrameMarking,
  Data.DB,
  MemDS,
  DBAccess,
  Uni;

type
  TFMarking = class(TForm)
    Query1: TUniQuery;
    FrameMarking1: TFrameMarking;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure Access;
    { Public declarations }
  end;

var
  FMarking: TFMarking;

implementation

{$R *.dfm}

uses
  UPasswd;

procedure TFMarking.Access;
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
      FrameMarking1.FrameTopPanel1.btnAdd.Enabled :=
        FieldByName('����������_����������').AsBoolean;
      FrameMarking1.FrameTopPanel1.btnEdit.Enabled :=
        FieldByName('����������_��������������').AsBoolean;
      FrameMarking1.FrameTopPanel1.btnDel.Enabled :=
        FieldByName('����������_��������').AsBoolean;
    end;
  end;
end;

procedure TFMarking.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FMarking := nil;
end;

end.
