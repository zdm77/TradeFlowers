unit UNewLength;
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
  cxLabel,
  Vcl.StdCtrls,
  AdvEdit,
  cxGroupBox,
  
  dxSkinDevExpressStyle,
  
  dxSkinsDefaultPainters;
type
  TFNewSortRose = class(TForm)
    Group1 : TcxGroupBox;
    edtValue : TAdvEdit;
    lblValue : TcxLabel;
    FrameSave1 : TFrameSave;
    procedure FormShow(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNewSortRose : TFNewSortRose;
implementation
{$R *.dfm}

procedure TFNewSortRose.FormShow(Sender : TObject);
begin
  edtValue.SetFocus;
end;
end.
