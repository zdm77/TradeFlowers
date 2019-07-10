unit UFAwb;
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
  UFrameAWB;
type
  TFAWB = class(TForm)
    FrameAWB1 : TFrameAWB;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAWB : TFAWB;
implementation
{$R *.dfm}
end.
