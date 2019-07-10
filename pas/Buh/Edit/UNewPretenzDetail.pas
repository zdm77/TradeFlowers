unit UNewPretenzDetail;
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
  
  cxGroupBox,
  UFrameSave,
  Vcl.StdCtrls,
  AdvEdit,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sCurrEdit,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue;
type
  TFNewPretenzDetail = class(TForm)
    FrameSave1 : TFrameSave;
    Group1 : TcxGroupBox;
    lblСтеблей : TLabel;
    edtСтеблей : TAdvEdit;
    edtHalfBox : TAdvEdit;
    lblHalfBox : TLabel;
    lblСтоимостьТранспорта : TLabel;
    lblСтоимость : TLabel;
    edtСтоимость : TsCalcEdit;
    edtСтоимостьТранспорта : TsCalcEdit;
    procedure edtHalfBoxKeyDown(Sender : TObject; var Key : Word;
                                   Shift : TShiftState);
    procedure edtСтеблейKeyDown(Sender : TObject; var Key : Word;
                                   Shift : TShiftState);
    procedure edtСтоимостьKeyDown(Sender : TObject; var Key : Word;
                                     Shift : TShiftState);
    procedure edtСтоимостьТранспортаKeyDown(Sender : TObject; var Key : Word;
                                               Shift : TShiftState);
    procedure FormShow(Sender : TObject);
    procedure FrameSave1btnSaveClick(Sender : TObject);
  private
    { Private declarations }
  public
    procedure SetLang;
    { Public declarations }
  end;

var
  FNewPretenzDetail : TFNewPretenzDetail;
implementation
{$R *.dfm}

uses
  UPasswd;
procedure TFNewPretenzDetail.edtHalfBoxKeyDown(Sender : TObject; var Key : Word;
                                                  Shift : TShiftState);
begin
  if Key = VK_RETURN then
    edtСтоимость.SetFocus;
end;
procedure TFNewPretenzDetail.edtСтеблейKeyDown(Sender : TObject; var Key : Word;
                                                  Shift : TShiftState);
begin
  if Key = VK_RETURN then
    edtHalfBox.SetFocus;
end;
procedure TFNewPretenzDetail.edtСтоимостьKeyDown(Sender : TObject; var Key : Word;
                                                    Shift : TShiftState);
begin
  if Key = VK_RETURN then
    edtСтоимостьТранспорта.SetFocus;
end;
procedure TFNewPretenzDetail.edtСтоимостьТранспортаKeyDown(Sender : TObject;
                                                              var Key : Word; Shift : TShiftState);
begin
  if Key = VK_RETURN then
    FrameSave1btnSaveClick(Sender);
end;
procedure TFNewPretenzDetail.FormShow(Sender : TObject);
begin
  edtСтеблей.SetFocus;
  SetLang;
end;
procedure TFNewPretenzDetail.FrameSave1btnSaveClick(Sender : TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  Close;
end;
procedure TFNewPretenzDetail.SetLang;
begin
  case FPasswd.Lang of
    2 :
    begin
      Caption := 'Posición';
      lblСтеблей.Caption := 'Tallos:';
      lblСтоимость.Caption := 'Precios:';
      lblСтоимостьТранспорта.Caption := 'Costo de transporte';
      FrameSave1.SetLang;
    end;
  end;
end;
end.
