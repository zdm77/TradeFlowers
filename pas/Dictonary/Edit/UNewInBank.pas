unit UNewInBank;

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

  cxMemo,
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
  TFNewInBank = class(TForm)
    FrameSave1: TFrameSave;
    cxGroupBox1: TcxGroupBox;
    lblName: TcxLabel;
    cxLabel1: TcxLabel;
    edtSWIFT: TcxTextEdit;
    mmoAddress: TcxMemo;
    lblAddr: TcxLabel;
    edtName: TcxTextEdit;
    Query1: TUniQuery;
    procedure edtNameKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edtNamePropertiesEditValueChanged(Sender: TObject);
    procedure edtSWIFTKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtSWIFTPropertiesEditValueChanged(Sender: TObject);
    procedure FrameSave1btnSaveClick(Sender: TObject);
    procedure mmoAddressKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mmoAddressPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    s_id_bank: Integer;
    procedure EnableSave;
    procedure InsUpdBank(id_ins: boolean);
    { Public declarations }
  end;

var
  FNewInBank: TFNewInBank;

implementation

{$R *.dfm}

uses
  PGSQL;

procedure TFNewInBank.edtNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFNewInBank.edtNamePropertiesEditValueChanged(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewInBank.edtSWIFTKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFNewInBank.edtSWIFTPropertiesEditValueChanged(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewInBank.EnableSave;
begin
  if (edtName.Text <> '') and (edtSWIFT.Text <> '') and (mmoAddress.Text <> '')
  then
    FrameSave1.btnSave.Enabled := True
  else
    FrameSave1.btnSave.Enabled := false;
end;

procedure TFNewInBank.FormShow(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewInBank.FrameSave1btnSaveClick(Sender: TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  if s_id_bank = 0 then
    InsUpdBank(True)
  else
    InsUpdBank(false);
  Close;
end;

procedure TFNewInBank.InsUpdBank(id_ins: boolean);
begin
  with Query1 do
  begin
    Close;
    if id_ins = True then
    begin
      s_id_bank := PGSQL.NewID('банки_зарубеж_id_seq');
      sql.Text := 'INSERT INTO "банки_зарубеж"(id, name, swift, "адрес") ' +
        'VALUES (:id, :name, :swift, :адрес)';
    end
    else
      sql.Text :=
        'UPDATE "public"."банки_зарубеж" SET name = :name, swift = :swift,' +
        '"адрес" = :адрес WHERE id = :id';
    ParamByName('id').AsInteger := s_id_bank;
    ParamByName('name').AsString := edtName.Text;
    ParamByName('swift').AsString := edtSWIFT.Text;
    ParamByName('адрес').AsString := mmoAddress.Text;
    ExecSQL;
  end;
end;

procedure TFNewInBank.mmoAddressKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFNewInBank.mmoAddressPropertiesEditValueChanged(Sender: TObject);
begin
  EnableSave;
end;

end.
