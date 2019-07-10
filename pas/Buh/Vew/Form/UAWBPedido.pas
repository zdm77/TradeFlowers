unit UAWBPedido;
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
  UFrameAWBPedido;
type
  TFAWBPedido = class(TForm)
    FrameAWBPedido1 : TFrameAWBPedido;
    procedure FormClose(Sender : TObject; var Action : TCloseAction);
    procedure FrameTopPanel1btnAddClick(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAWBPedido : TFAWBPedido;
implementation
{$R *.dfm}

procedure TFAWBPedido.FormClose(Sender : TObject; var Action : TCloseAction);
begin
  Action := caFree;
  FAWBPedido := nil;
end;
procedure TFAWBPedido.FrameTopPanel1btnAddClick(Sender : TObject);
begin
  FrameAWBPedido1.btnAddClick(Sender);
end;
end.
