unit USelectTypeAuc;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UTypeAuc, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  Vcl.StdCtrls, cxGroupBox;
type
  TFSelectTypeAuc = class(TForm)
    FrameTypeAuc1 : TFrameTypeAuc;
    cxGroupBox1 : TcxGroupBox;
    Label1 : TLabel;
    procedure btnSelClick(Sender : TObject);
  private
    { Private declarations }
  public
    idSel : Boolean;
    { Public declarations }
  end;

var
  FSelectTypeAuc : TFSelectTypeAuc;
implementation
{$R *.dfm}

procedure TFSelectTypeAuc.btnSelClick(Sender : TObject);
begin
  idSel := true;
  Close;
end;
end.
