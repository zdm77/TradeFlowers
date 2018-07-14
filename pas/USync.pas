unit USync;

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
  Vcl.ComCtrls,
  AdvProgr,
  Vcl.StdCtrls;

type
  TFSync = class(TForm)
    ProgresOne: TAdvProgress;
    lblAll: TLabel;
    lblOne: TLabel;
    ProgresALL: TAdvProgress;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSync: TFSync;

implementation

{$R *.dfm}

end.
