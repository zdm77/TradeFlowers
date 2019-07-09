unit UFProduct;

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
  UFrameProduct,
  Data.DB,
  MemDS,
  DBAccess,
  Uni;

type
  TFProduct = class(TForm)
    FrameProduct1: TFrameProduct;
    Query1: TUniQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure Access;
    { Public declarations }
  end;

var
  FProduct: TFProduct;

implementation

{$R *.dfm}

uses
  UPasswd;

procedure TFProduct.Access;
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
      FrameProduct1.FrameTopPanel1.btnAdd.Enabled :=
        FieldByName('������������_����������').AsBoolean;
      FrameProduct1.FrameTopPanel1.btnEdit.Enabled :=
        FieldByName('������������_��������������').AsBoolean;
      FrameProduct1.FrameTopPanel1.btnDel.Enabled :=
        FieldByName('������������_��������').AsBoolean;
    end;
  end;
end;

procedure TFProduct.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FProduct := nil;
end;

end.
