unit UNewOrderDetail;
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
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sCurrEdit,
  Vcl.StdCtrls,
  AdvEdit,
  cxLabel,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue;
type
  TFNewOrderDetail = class(TForm)
    FrameSave1 : TFrameSave;
    Group1 : TcxGroupBox;
    lblSum : TcxLabel;
    edtLength : TAdvEdit;
    lblFB : TcxLabel;
    lblCount : TcxLabel;
    lblPrice : TcxLabel;
    edtPrice : TAdvEdit;
    edtFB : TsCalcEdit;
    edtCount : TsCalcEdit;
    procedure edtCountChange(Sender : TObject);
    procedure edtCountKeyDown(Sender : TObject; var Key : Word;
                                 Shift : TShiftState);
    procedure edtFBChange(Sender : TObject);
    procedure edtFBKeyDown(Sender : TObject; var Key : Word; Shift : TShiftState);
    procedure edtLengthChange(Sender : TObject);
    procedure edtLengthKeyDown(Sender : TObject; var Key : Word;
                                  Shift : TShiftState);
    procedure edtPriceChange(Sender : TObject);
    procedure edtPriceKeyDown(Sender : TObject; var Key : Word;
                                 Shift : TShiftState);
    procedure FormShow(Sender : TObject);
    procedure FrameSave1btnSaveClick(Sender : TObject);
  private
    { Private declarations }
  public
    procedure EnableSave;
    { Public declarations }
  end;

var
  FNewOrderDetail : TFNewOrderDetail;
implementation
{$R *.dfm}

procedure TFNewOrderDetail.edtCountChange(Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewOrderDetail.edtCountKeyDown(Sender : TObject; var Key : Word;
                                              Shift : TShiftState);
begin
  if FrameSave1.btnSave.Enabled = true then
    if Key = VK_RETURN then
      FrameSave1btnSaveClick(Sender);
end;
procedure TFNewOrderDetail.edtFBChange(Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewOrderDetail.edtFBKeyDown(Sender : TObject; var Key : Word;
                                           Shift : TShiftState);
begin
  if Key = VK_RETURN then
    edtCount.SetFocus;
end;
procedure TFNewOrderDetail.edtLengthChange(Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewOrderDetail.edtLengthKeyDown(Sender : TObject; var Key : Word;
                                               Shift : TShiftState);
begin
  if Key = VK_RETURN then
    edtPrice.SetFocus;
end;
procedure TFNewOrderDetail.edtPriceChange(Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewOrderDetail.edtPriceKeyDown(Sender : TObject; var Key : Word;
                                              Shift : TShiftState);
begin
  if Key = VK_RETURN then
    edtFB.SetFocus;
end;
procedure TFNewOrderDetail.EnableSave;
begin
  // if (edtLength.Text <> '') and (edtLength.Text <> '0') and
  // (edtPrice.Text <> '') and (edtPrice.Text <> '0') and (edtFB.Text <> '') and
  // (edtFB.Text <> '0') and (edtCount.Text <> '') and (edtCount.Text <> '0')
  // then
  // FrameSave1.btnSave.Enabled := true
  // else
  // FrameSave1.btnSave.Enabled := false;
  if (edtLength.Text <> '') and (edtLength.Text <> '0') and (edtFB.Text <> '')
  and (edtFB.Text <> '0') then
    FrameSave1.btnSave.Enabled := true
  else
    FrameSave1.btnSave.Enabled := false;
end;
procedure TFNewOrderDetail.FormShow(Sender : TObject);
begin
  if edtLength.Text <> '0' then
  begin
    if edtPrice.Text = '0' then
      edtPrice.SetFocus
    else
      edtCount.SetFocus;
  end;
  EnableSave;
end;
procedure TFNewOrderDetail.FrameSave1btnSaveClick(Sender : TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  Close;
end;
end.
