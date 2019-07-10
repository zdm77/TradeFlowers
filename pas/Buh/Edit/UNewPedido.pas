unit UNewPedido;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinOffice2007Blue, dxSkinsDefaultPainters, Vcl.ComCtrls, AdvDateTimePicker, cxGroupBox;
type
  TFNewPedido = class(TForm)
    Group1 : TcxGroupBox;
    edtДатаВылета : TAdvDateTimePicker;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNewPedido : TFNewPedido;
implementation
{$R *.dfm}
end.
