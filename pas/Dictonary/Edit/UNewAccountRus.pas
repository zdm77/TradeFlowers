unit UNewAccountRus;

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

  cxMaskEdit,
  UFrameSave,
  cxButtonEdit,
  cxTextEdit,
  cxMemo,
  cxLabel,
  cxGroupBox,
  cxCheckBox,

  dxSkinDevExpressStyle,

   dxSkinsDefaultPainters;

type
  TFNewAccountRus = class(TForm)
    cxGroupBox1: TcxGroupBox;
    lblName: TcxLabel;
    cxLabel1: TcxLabel;
    mmoAddress: TcxMemo;
    lblAddr: TcxLabel;
    edtName: TcxButtonEdit;
    lblNumber: TcxLabel;
    FrameSave1: TFrameSave;
    edtAccount: TcxMaskEdit;
    edtKch: TcxMaskEdit;
    chkOsn: TcxCheckBox;
    procedure edtAccountKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FrameSave1btnSaveClick(Sender: TObject);
    procedure edtNamePropertiesChange(Sender: TObject);
    procedure edtAccountPropertiesEditValueChanged(Sender: TObject);
    procedure edtNamePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    o_id_bank: string;
    procedure EnableSave;
    { Public declarations }
  end;

var
  FNewAccountRus: TFNewAccountRus;

implementation

{$R *.dfm}

uses
  USelectRusBank;

procedure TFNewAccountRus.edtAccountKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFNewAccountRus.edtAccountPropertiesEditValueChanged(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewAccountRus.edtNamePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.CreateForm(TFSelectBankRus, FSelectBankRus);
  with FSelectBankRus do
  begin
    FrameBank1.ShowBank();
    ShowModal;
    if FrameBank1.FrameTopPanel1.id_select = true then
    begin
      edtName.Text := FrameBank1.QueryBanks.FieldByName('name').AsString;
      o_id_bank := FrameBank1.QueryBanks.FieldByName('bik').AsString;
      edtKch.Text := FrameBank1.QueryBanks.FieldByName('кор_счет').AsString;
      mmoAddress.Text := FrameBank1.QueryBanks.FieldByName('адрес').AsString;
      edtAccount.SetFocus;
    end;
  end;
end;

procedure TFNewAccountRus.edtNamePropertiesChange(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewAccountRus.EnableSave;
begin
  if (edtName.Text <> '') and (edtAccount.Text <> '') then
    FrameSave1.btnSave.Enabled := true
  else
    FrameSave1.btnSave.Enabled := false;
end;

procedure TFNewAccountRus.FormShow(Sender: TObject);
begin
  EnableSave;
  if edtName.Text <> '' then
    edtAccount.SetFocus;
end;

procedure TFNewAccountRus.FrameSave1btnSaveClick(Sender: TObject);
begin
  FrameSave1.id_save := true;
  CLose;
end;

end.
