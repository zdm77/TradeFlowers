unit USelectRusBank;
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
  UFrameBankInter,
  UFrameBankRussia;
type
  TFSelectBankRus = class(TForm)
    FrameBank1 : TFrameBank;
    procedure FrameTopPanel1btnSelClick(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSelectBankRus : TFSelectBankRus;
implementation
{$R *.dfm}

procedure TFSelectBankRus.FrameTopPanel1btnSelClick(Sender : TObject);
begin
  FrameBank1.FrameTopPanel1.id_select := True;
  Close;
end;
end.
