unit UPriceDetail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFramePriceDetail;

type
  TFPriceDetail = class(TForm)
    FramePriceDetail1: TFramePriceDetail;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FramePriceDetail1edtPlantMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPriceDetail: TFPriceDetail;

implementation

{$R *.dfm}

uses UDocs;

procedure TFPriceDetail.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FDocs.FramePrice1.ShowPrice(FramePriceDetail1.IDPrice);
  FPriceDetail := nil;
end;

procedure TFPriceDetail.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  FramePriceDetail1.UpdatePrice;
end;

procedure TFPriceDetail.FramePriceDetail1edtPlantMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  FramePriceDetail1.edtPlant.SelectAll;
end;

end.
