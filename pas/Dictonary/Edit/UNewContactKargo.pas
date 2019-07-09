unit UNewContactKargo;

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
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  dxSkinsCore,

  cxTextEdit,
  cxLabel,
  cxGroupBox,
  UFrameSave,
  Data.DB,
  MemDS,
  DBAccess,
  Uni,

  dxSkinDevExpressStyle,

   dxSkinsDefaultPainters;

type
  TFNewContactKargo = class(TForm)
    FrameSave1: TFrameSave;
    cxGroupBox1: TcxGroupBox;
    Label3: TcxLabel;
    edtName: TcxTextEdit;
    edtDolgnost: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    edtEmail: TcxTextEdit;
    cxLabel4: TcxLabel;
    edtSkype: TcxTextEdit;
    cxLabel8: TcxLabel;
    edtMessenger: TcxTextEdit;
    edtPhone1: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    edtPhone3: TcxTextEdit;
    edtPhone2: TcxTextEdit;
    cxLabel5: TcxLabel;
    Query1: TUniQuery;
    procedure edtDolgnostKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtNameKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edtNamePropertiesChange(Sender: TObject);
    procedure edtDolgnostPropertiesChange(Sender: TObject);
    procedure FrameSave1btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    s_id_contact, s_id_kargo_for_edit: Integer;
    procedure EnableSave;
    procedure InsUpdContact(id_ins: boolean);
    { Public declarations }
  end;

var
  FNewContactKargo: TFNewContactKargo;

implementation

{$R *.dfm}

uses
  PGSQL;

procedure TFNewContactKargo.edtDolgnostKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFNewContactKargo.edtDolgnostPropertiesChange(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewContactKargo.edtNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFNewContactKargo.edtNamePropertiesChange(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewContactKargo.EnableSave;
begin
  if (edtName.Text <> '') and (edtDolgnost.Text <> '') then
    FrameSave1.btnSave.Enabled := True
  else
    FrameSave1.btnSave.Enabled := false;
end;

procedure TFNewContactKargo.FormShow(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewContactKargo.FrameSave1btnSaveClick(Sender: TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  if s_id_contact = 0 then
    InsUpdContact(True)
  else
    InsUpdContact(false);
  Close;
end;

procedure TFNewContactKargo.InsUpdContact(id_ins: boolean);
begin
  with Query1 do
  begin
    Close;
    if id_ins = True then
    begin
      s_id_contact := PGSQL.NewID('"карго"."контакты_id_seq"');
      sql.Text := 'INSERT INTO "карго"."контакты"(id, "код_карго", name, "тип",'
        + '"телефон1", "телефон2", "телефон3", "почта", "скайп", "месенджер"' +
        ')VALUES (:id, :код_карго, :name, :тип, :телефон1, :телефон2, :телефон3,'
        + ':почта, :скайп, :месенджер)';
    end
    else
    begin
      sql.Text := 'UPDATE "карго"."контакты" SET "код_карго" = :код_карго,' +
        'name = :name, "тип" = :тип, "телефон1" = :телефон1, "телефон2" = :телефон2,'
        + '"телефон3" = :телефон3, "почта" = :почта, "скайп" = :скайп,' +
        '"месенджер" = :месенджер WHERE id = :id';
    end;
    ParamByName('id').AsInteger := s_id_contact;
    ParamByName('код_карго').AsInteger := s_id_kargo_for_edit;
    ParamByName('name').AsString := edtName.Text;
    ParamByName('тип').AsString := edtDolgnost.Text;
    ParamByName('телефон1').AsString := edtPhone1.Text;
    ParamByName('телефон2').AsString := edtPhone2.Text;
    ParamByName('телефон3').AsString := edtPhone3.Text;
    ParamByName('почта').AsString := edtEmail.Text;
    ParamByName('скайп').AsString := edtSkype.Text;
    ParamByName('месенджер').AsString := edtMessenger.Text;
    ExecSQL;
  end;
end;

end.
