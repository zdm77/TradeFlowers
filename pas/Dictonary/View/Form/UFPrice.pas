unit UFPrice;
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
  UFramePriceLength;
type
  TFPrice = class(TForm)
    FramePriceLength1 : TFramePriceLength;
    procedure FormClose(Sender : TObject; var Action : TCloseAction);
  private
    { Private declarations }
  public
    procedure Access;
    { Public declarations }
  end;

var
  FPrice : TFPrice;
implementation
{$R *.dfm}

uses
  UPasswd;
procedure TFPrice.Access;
begin
  // if (FPasswd.ID_ROLE <> 1) then
  // begin
  // with Query1 do
  // begin
  // { ������ }
  // Close;
  // sql.Text := 'select * from "������������"."������"  where ���_����=' +
  // IntToStr(FPasswd.ID_ROLE);
  // Open;
  // FrameStanding1.FrameTopPanel1.btnAdd.Enabled :=
  // FieldByName('��������_����������').AsBoolean;
  // FrameStanding1.FrameTopPanel1.btnEdit.Enabled :=
  // FieldByName('��������_��������������').AsBoolean;
  // FrameStanding1.FrameTopPanel1.btnDel.Enabled :=
  // FieldByName('��������_��������').AsBoolean;
  // end;
  // end;
end;
procedure TFPrice.FormClose(Sender : TObject; var Action : TCloseAction);
begin
  Action := caFree;
  FPrice := nil;
end;
end.
