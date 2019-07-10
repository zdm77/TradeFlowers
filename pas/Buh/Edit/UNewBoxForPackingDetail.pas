unit UNewBoxForPackingDetail;
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
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  dxSkinsCore,
  
  UFrameProduct,
  UFrameTopPanel,
  Vcl.StdCtrls,
  cxLabel,
  cxGroupBox,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue;
type
  TFNewBoxForPackingDetail = class(TForm)
    GroupOsn : TcxGroupBox;
    lbl2 : TcxLabel;
    edtNumberBox : TEdit;
    FrameTopPanel1 : TFrameTopPanel;
    GroupProduct : TcxGroupBox;
    FrameProduct1 : TFrameProduct;
    procedure FormShow(Sender : TObject);
    procedure FrameProduct1lstTreeProductsDblClick(Sender : TObject);
    procedure FrameSearch1edtNameKeyDown(Sender : TObject; var Key : Word;
                                            Shift : TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNewBoxForPackingDetail : TFNewBoxForPackingDetail;
implementation
{$R *.dfm}

uses
  UDataModule1,
  UDetailBoxPacking;
procedure TFNewBoxForPackingDetail.FormShow(Sender : TObject);
begin
  FrameProduct1.ShowProduct();
end;
procedure TFNewBoxForPackingDetail.FrameProduct1lstTreeProductsDblClick
  (Sender : TObject);
begin
  with FrameProduct1 do
  begin
    if QueryProduct.FieldByName('код_структуры').AsInteger = 6 then
    begin
      Application.CreateForm(TFDetailBoxPacking, FDetailBoxPacking);
      with FDetailBoxPacking do
      begin
        ShowModal;
      end;
    end;
  end;
end;
procedure TFNewBoxForPackingDetail.FrameSearch1edtNameKeyDown(Sender : TObject;
                                                                 var Key : Word; Shift : TShiftState);
begin
  if Key = VK_RETURN then
    FrameProduct1.ShowProduct();
end;
end.
