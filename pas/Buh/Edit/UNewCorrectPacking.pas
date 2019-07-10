unit UNewCorrectPacking;
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
  
  Vcl.StdCtrls,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sCurrEdit,
  cxGroupBox,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue;
type
  TFNewCorrectPacking = class(TForm)
    FrameSave1 : TFrameSave;
    GroupPrice : TcxGroupBox;
    lbl2 : TLabel;
    edtЗнакЦены : TComboBox;
    lbl3 : TLabel;
    edtЦенаКоррект : TsCalcEdit;
    cxGroupBox1 : TcxGroupBox;
    Label2 : TLabel;
    Label3 : TLabel;
    edtВесДействие : TComboBox;
    edtВесЗначение : TsCalcEdit;
    procedure FormShow(Sender : TObject);
    procedure FrameSave1btnSaveClick(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNewCorrectPacking : TFNewCorrectPacking;
implementation
{$R *.dfm}

procedure TFNewCorrectPacking.FormShow(Sender : TObject);
begin
  edtЦенаКоррект.SetFocus;
end;
procedure TFNewCorrectPacking.FrameSave1btnSaveClick(Sender : TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  Close;
end;
end.
