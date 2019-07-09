unit UNewInAccount;

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

  UFrameSave,
  cxMaskEdit,
  cxButtonEdit,
  cxMemo,
  cxTextEdit,
  cxLabel,
  cxGroupBox,

  dxSkinDevExpressStyle,

   dxSkinsDefaultPainters;

type
  TFNewInAccount = class(TForm)
    cxGroupBox1: TcxGroupBox;
    lblName: TcxLabel;
    cxLabel1: TcxLabel;
    edtSWIFT: TcxTextEdit;
    mmoAddress: TcxMemo;
    lblAddr: TcxLabel;
    edtName: TcxButtonEdit;
    FrameSave1: TFrameSave;
    edtAccount: TcxTextEdit;
    lblNumber: TcxLabel;
    procedure edtAccountKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrameSave1btnSaveClick(Sender: TObject);
    procedure edtNamePropertiesEditValueChanged(Sender: TObject);
    procedure edtAccountPropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    o_id_bank: Integer;
    procedure EnableSave;
    { Public declarations }
  end;

var
  FNewInAccount: TFNewInAccount;

implementation

{$R *.dfm}

uses
  USelectInBank;

procedure TFNewInAccount.edtAccountKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFNewInAccount.edtAccountPropertiesEditValueChanged(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewInAccount.edtNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.CreateForm(TFSelectInBank, FSelectInBank);
  with FSelectInBank do
  begin
    FrameBankInter1.ShowBank();
    ShowModal;
    if FrameBankInter1.FrameTopPanel1.id_select = true then
    begin
      edtName.Text := FrameBankInter1.QueryBanks.FieldByName('name').AsString;
      o_id_bank := FrameBankInter1.QueryBanks.FieldByName('id').AsInteger;
      edtSWIFT.Text := FrameBankInter1.QueryBanks.FieldByName('swift').AsString;
      mmoAddress.Text := FrameBankInter1.QueryBanks.FieldByName
        ('адрес').AsString;
      edtAccount.SetFocus;
    end;
  end;
end;

procedure TFNewInAccount.edtNamePropertiesEditValueChanged(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewInAccount.EnableSave;
begin
  if (edtName.Text <> '') and (edtAccount.Text <> '') then
    FrameSave1.btnSave.Enabled := true
  else
    FrameSave1.btnSave.Enabled := false;
end;

procedure TFNewInAccount.FormShow(Sender: TObject);
begin
  EnableSave;
  if edtName.Text <> '' then
    edtAccount.SetFocus;
end;

procedure TFNewInAccount.FrameSave1btnSaveClick(Sender: TObject);
begin
  FrameSave1.id_save := true;
  CLose;
end;

end.
