unit UNewBox;
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
  UFrameSave,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  dxSkinsCore,
  
  cxGroupBox,
  Vcl.StdCtrls,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sCurrEdit,
  AdvEdit,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue;
type
  TFNewBox = class(TForm)
    FrameSave1 : TFrameSave;
    cxGroupBox1 : TcxGroupBox;
    lbl3 : TLabel;
    Label1 : TLabel;
    edtName : TEdit;
    edtÂåñ : TAdvEdit;
    procedure edtNameKeyDown(Sender : TObject; var Key : Word;
                                Shift : TShiftState);
    procedure edtÂåñKeyDown(Sender : TObject; var Key : Word; Shift : TShiftState);
    procedure FormShow(Sender : TObject);
    procedure FrameSave1btnSaveClick(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNewBox : TFNewBox;
implementation
{$R *.dfm}

procedure TFNewBox.edtNameKeyDown(Sender : TObject; var Key : Word;
                                     Shift : TShiftState);
begin
  if Key = VK_RETURN then
    edtÂåñ.SetFocus;
end;
procedure TFNewBox.edtÂåñKeyDown(Sender : TObject; var Key : Word;
                                    Shift : TShiftState);
begin
  if Key = VK_RETURN then
    FrameSave1btnSaveClick(Sender);
end;
procedure TFNewBox.FormShow(Sender : TObject);
begin
  edtName.SetFocus;
end;
procedure TFNewBox.FrameSave1btnSaveClick(Sender : TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  Close;
end;
end.
