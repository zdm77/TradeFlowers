unit UDetailBoxPacking;
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
  
  cxGroupBox,
  UFrameSave,
  Vcl.StdCtrls,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sCurrEdit,
  AdvEdit,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue;
type
  TFDetailBoxPacking = class(TForm)
    FrameSave1 : TFrameSave;
    cxGroupBox1 : TcxGroupBox;
    lblProduct : TLabel;
    edtStems : TsCalcEdit;
    lbl1 : TLabel;
    edtPrice : TsCalcEdit;
    lblPrice : TLabel;
    Label1 : TLabel;
    edtLength : TsCalcEdit;
    edtWeight : TAdvEdit;
    procedure edtPriceKeyDown(Sender : TObject; var Key : Word;
                                 Shift : TShiftState);
    procedure edtStemsKeyDown(Sender : TObject; var Key : Word;
                                 Shift : TShiftState);
    procedure edtWeightKeyDown(Sender : TObject; var Key : Word;
                                  Shift : TShiftState);
    procedure FrameSave1btnSaveClick(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDetailBoxPacking : TFDetailBoxPacking;
implementation
{$R *.dfm}

procedure TFDetailBoxPacking.edtPriceKeyDown(Sender : TObject; var Key : Word;
                                                Shift : TShiftState);
begin
  if Key = VK_RETURN then
    edtWeight.SetFocus;
end;
procedure TFDetailBoxPacking.edtStemsKeyDown(Sender : TObject; var Key : Word;
                                                Shift : TShiftState);
begin
  if Key = VK_RETURN then
    edtPrice.SetFocus;
end;
procedure TFDetailBoxPacking.edtWeightKeyDown(Sender : TObject; var Key : Word;
                                                 Shift : TShiftState);
begin
  if Key = VK_RETURN then
    FrameSave1btnSaveClick(Sender);
end;
procedure TFDetailBoxPacking.FrameSave1btnSaveClick(Sender : TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  Close;
end;
end.
