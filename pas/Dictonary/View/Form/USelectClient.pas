unit USelectClient;
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
  UFrameClient;
type
  TFSelectClient = class(TForm)
    FrameClient1 : TFrameClient;
    procedure FrameTopPanel1btnSelClick(Sender : TObject);
  private
    { Private declarations }
  public
  var
    IDSelect : Boolean;
    s_id_select_client : Integer;
    { Public declarations }
  end;

var
  FSelectClient : TFSelectClient;
implementation
{$R *.dfm}

procedure TFSelectClient.FrameTopPanel1btnSelClick(Sender : TObject);
begin
  s_id_select_client := FrameClient1.QueryClient.FieldByName('id').AsInteger;
  IDSelect := True;
  Close;
end;
end.
