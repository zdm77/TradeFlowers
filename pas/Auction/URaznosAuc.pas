unit URaznosAuc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrameRaznosAuc;

type
  TfRaznosAuc = class(TForm)
    FrameRaznosAuc1: TFrameRaznosAuc;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRaznosAuc: TfRaznosAuc;

implementation

{$R *.dfm}

procedure TfRaznosAuc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fRaznosAuc := nil;
end;

end.
