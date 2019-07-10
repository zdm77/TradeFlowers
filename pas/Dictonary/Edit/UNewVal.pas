unit UNewVal;
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
  
  Vcl.StdCtrls,
  cxGroupBox,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sCurrEdit,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue;
type
  TFAddValue = class(TForm)
    Group1 : TcxGroupBox;
    edtVal : TEdit;
    edtPrice : TsCalcEdit;
    procedure edtPriceKeyDown(Sender : TObject; var Key : Word;
                                 Shift : TShiftState);
    procedure edtValKeyDown(Sender : TObject; var Key : Word; Shift : TShiftState);
    procedure edtValKeyUp(Sender : TObject; var Key : Word; Shift : TShiftState);
  private
    { Private declarations }
  public
    id_save : Boolean;
    { Public declarations }
  end;

var
  FAddValue : TFAddValue;
implementation
{$R *.dfm}

procedure TFAddValue.edtPriceKeyDown(Sender : TObject; var Key : Word;
                                        Shift : TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if edtPrice.Text <> '' then
    begin
      id_save := True;
      Close;
    end
    else
      Application.MessageBox('¬ведите значение', 'ќшибка', MB_OK + MB_ICONERROR)
  end;
end;
procedure TFAddValue.edtValKeyDown(Sender : TObject; var Key : Word;
                                      Shift : TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if edtVal.Text <> '' then
    begin
      id_save := True;
      Close;
    end
    else
      Application.MessageBox('¬ведите значение', 'ќшибка', MB_OK + MB_ICONERROR)
  end;
end;
procedure TFAddValue.edtValKeyUp(Sender : TObject; var Key : Word;
                                    Shift : TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;
end.
