unit UFCountry;

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
  UFrameCountry;

type
  TFCountry = class(TForm)
    FrameCountry1: TFrameCountry;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FrameTopPanel1btnSelClick(Sender: TObject);
  private
    { Private declarations }
  public
    ShowSel: Boolean;
    IDSelect: Boolean;
    { Public declarations }
  end;

var
  FCountry: TFCountry;

implementation

{$R *.dfm}

uses UNewCountry;

procedure TFCountry.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FormStyle = fsMDIChild then
  begin
    Action := caFree;
    FCountry := nil;
  end;
end;

procedure TFCountry.FrameTopPanel1btnSelClick(Sender: TObject);
begin
  IDSelect := True;
  Close;
end;

end.
