unit UFPlant;
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
  UFramePlant,
  Data.DB,
  MemDS,
  DBAccess,
  Uni;
type
  TFPlant = class(TForm)
    FramePlant1 : TFramePlant;
    Query1 : TUniQuery;
    procedure FormCreate(Sender : TObject);
    procedure FormClose(Sender : TObject; var Action : TCloseAction);
  private
    { Private declarations }
  public
    procedure Access;
    { Public declarations }
  end;

var
  FPlant : TFPlant;
implementation
{$R *.dfm}

uses
  UPasswd;
procedure TFPlant.Access;
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
      FramePlant1.FrameTopPanel1.btnAdd.Enabled :=
                                                  FieldByName('���������_����������').AsBoolean;
      FramePlant1.FrameTopPanel1.btnEdit.Enabled :=
                                                   FieldByName('���������_��������������').AsBoolean;
      FramePlant1.FrameTopPanel1.btnDel.Enabled :=
                                                  FieldByName('���������_��������').AsBoolean;
    end;
  end;
end;
procedure TFPlant.FormCreate(Sender : TObject);
begin
  case FPasswd.Lang of
    1 :
    begin
      Caption := 'Plantation';
    end;
    2 :
    begin
      Caption := 'Fincas';
    end;
  end;
end;
procedure TFPlant.FormClose(Sender : TObject; var Action : TCloseAction);
begin
  Action := caFree;
  FPlant := nil;
end;
end.
