unit UFParamPosPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinOffice2007Blue, dxSkinsDefaultPainters, Vcl.StdCtrls, Vcl.Mask, sMaskEdit,
  sCustomComboEdit, sCurrEdit, cxLabel, UFrameSave;

type
  TFParamPosPedido = class(TForm)
    lblPrice: TcxLabel;
    edtPrice: TsCalcEdit;
    lblCount: TcxLabel;
    edtCount: TsCalcEdit;
    cxLabel1: TcxLabel;
    edtFB: TsCalcEdit;
    btnSave: TButton;
    FrameSave1: TFrameSave;
    procedure FrameSave1btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    idSelect: Boolean
    { Public declarations }
    end;

  var
    FParamPosPedido: TFParamPosPedido;

implementation

{$R *.dfm}

procedure TFParamPosPedido.FrameSave1btnSaveClick(Sender: TObject);
begin
  idSelect:=True;
  Close;

end;

end.
