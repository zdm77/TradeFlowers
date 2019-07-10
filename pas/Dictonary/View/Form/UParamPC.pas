unit UParamPC;
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
  Vcl.StdCtrls,
  IdBaseComponent,
  IdComponent,
  IdIPWatch,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  dxSkinsCore,
  
  UFrameSave,
  cxGroupBox,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue;
type
  TFParamPC = class(TForm)
    IdIPWatch1 : TIdIPWatch;
    cxGroupBox1 : TcxGroupBox;
    edtPCName : TEdit;
    chkUsePcName : TCheckBox;
    edtHDD : TEdit;
    CheckBox1 : TCheckBox;
    edtUser : TEdit;
    CheckBox2 : TCheckBox;
    CheckBox3 : TCheckBox;
    edtMAC : TEdit;
    FrameSave1 : TFrameSave;
    chkAccess : TCheckBox;
    procedure FrameSave1btnSaveClick(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FParamPC : TFParamPC;
implementation
{$R *.dfm}

uses
  PGSQL;
procedure TFParamPC.FrameSave1btnSaveClick(Sender : TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  Close;
end;
end.
