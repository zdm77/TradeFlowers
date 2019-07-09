unit UNewContactUni;

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

  Data.DB,
  MemDS,
  DBAccess,
  Uni,
  cxTextEdit,
  cxLabel,
  cxGroupBox,
  UFrameSave,

  dxSkinDevExpressStyle,

   dxSkinsDefaultPainters;

type
  TFNewContactUni = class(TForm)
    FrameSave1: TFrameSave;
    cxGroupBox1: TcxGroupBox;
    lblName: TcxLabel;
    edtName: TcxTextEdit;
    edtDolgnost: TcxTextEdit;
    lblDolg: TcxLabel;
    lblMail: TcxLabel;
    edtEmail: TcxTextEdit;
    lblSkype: TcxLabel;
    edtSkype: TcxTextEdit;
    lblMessenger: TcxLabel;
    edtMessenger: TcxTextEdit;
    edtPhone1: TcxTextEdit;
    lblPhone2: TcxLabel;
    lblPhone3: TcxLabel;
    edtPhone3: TcxTextEdit;
    edtPhone2: TcxTextEdit;
    lblPhone1: TcxLabel;
    Query1: TUniQuery;
    procedure FormShow(Sender: TObject);
    procedure FrameSave1btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure SetLang;
    { Public declarations }
  end;

var
  FNewContactUni: TFNewContactUni;

implementation

{$R *.dfm}

uses
  UPasswd;

procedure TFNewContactUni.FormShow(Sender: TObject);
begin
  SetLang;
  FrameSave1.SetLang;
end;

procedure TFNewContactUni.FrameSave1btnSaveClick(Sender: TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  Close;
end;

procedure TFNewContactUni.SetLang;
begin
  case FPasswd.Lang of
    2:
      begin
        Caption := 'Contactos';
        lblName.Caption := 'Nombre:';
        lblDolg.Caption := 'Puesto:';
        lblPhone1.Caption := 'Teléfono 1:';
        lblPhone2.Caption := 'Teléfвono 2:';
        lblPhone3.Caption := 'Teléfono 3:';
        lblMail.Caption := 'EMail:';
      end;
  end;
end;

end.
