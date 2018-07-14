unit UPedido;

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
  UFramePedido;

type
  TFPedido = class(TForm)
    FramePedido1: TFramePedido;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPedido: TFPedido;

implementation

{$R *.dfm}

procedure TFPedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FPedido := nil;
end;

end.
