unit USelectInBank;
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
  UFrameBankInter;
type
  TFSelectInBank = class(TForm)
    FrameBankInter1 : TFrameBankInter;
    procedure FrameBankInter1ViewStatWorkDblClick(Sender : TObject);
    procedure FrameTopPanel1btnSelClick(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSelectInBank : TFSelectInBank;
implementation
{$R *.dfm}

procedure TFSelectInBank.FrameBankInter1ViewStatWorkDblClick(Sender : TObject);
begin
  FrameBankInter1.ViewStatWorkDblClick(Sender);
end;
procedure TFSelectInBank.FrameTopPanel1btnSelClick(Sender : TObject);
begin
  FrameBankInter1.FrameTopPanel1.id_select := True;
  Close;
end;
end.
