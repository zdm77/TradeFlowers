unit UBuhBalancePlant;
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
  UFrameBalance;
type
  TFBuhBalancePlant = class(TForm)
    FrameBalance1 : TFrameBalance;
    procedure FormClose(Sender : TObject; var Action : TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBuhBalancePlant : TFBuhBalancePlant;
implementation
{$R *.dfm}

procedure TFBuhBalancePlant.FormClose(Sender : TObject;
                                         var Action : TCloseAction);
begin
  Action := caFree;
  FBuhBalancePlant := nil;
end;
end.
