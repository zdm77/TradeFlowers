unit UEditFacturaDetail;

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
  UFrameSave,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  dxSkinsCore,
  
  cxGroupBox,
  cxTextEdit,
  cxLabel,
  cxMaskEdit,
  cxButtonEdit,
  AdvEdit,
  Vcl.StdCtrls,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sCurrEdit,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue;

type
  TFEditFacturaDetail = class(TForm)
    FrameSave1: TFrameSave;
    Group1: TcxGroupBox;
    edtProduct: TcxButtonEdit;
    lblKargo: TcxLabel;
    lblLength: TcxLabel;
    edtCount: TsCalcEdit;
    lblCount: TcxLabel;
    edtPrice: TAdvEdit;
    lblPrice: TcxLabel;
    edtFB: TsCalcEdit;
    lblFB: TcxLabel;
    edtLength: TAdvEdit;
    procedure edtCountChange(Sender: TObject);
    procedure edtCountKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtFBChange(Sender: TObject);
    procedure edtFBKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtLengthChange(Sender: TObject);
    procedure edtLengthKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPriceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FrameSave1btnSaveClick(Sender: TObject);
    procedure edtLengthPropertiesEditValueChanged(Sender: TObject);
    procedure edtPriceChange(Sender: TObject);
    procedure edtProductPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }
  public
    id_product_sel: Integer;
    s_id_product: Integer;
    o_pid: Integer;
    procedure EnableSave;
    { Public declarations }
  end;

var
  FEditFacturaDetail: TFEditFacturaDetail;

implementation

uses
  USelect,
  PGSQL;
{$R *.dfm}

procedure TFEditFacturaDetail.edtCountChange(Sender: TObject);
begin
  EnableSave;
end;

procedure TFEditFacturaDetail.edtCountKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    FrameSave1btnSaveClick(Sender);
end;

procedure TFEditFacturaDetail.edtFBChange(Sender: TObject);
begin
  EnableSave;
end;

procedure TFEditFacturaDetail.edtFBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    edtCount.SetFocus;
end;

procedure TFEditFacturaDetail.edtLengthChange(Sender: TObject);
begin
  EnableSave;
end;

procedure TFEditFacturaDetail.edtLengthKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    edtPrice.SetFocus;
end;

procedure TFEditFacturaDetail.edtLengthPropertiesEditValueChanged
  (Sender: TObject);
begin
  EnableSave;
end;

procedure TFEditFacturaDetail.edtPriceChange(Sender: TObject);
begin
  EnableSave;
end;

procedure TFEditFacturaDetail.edtPriceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    edtFB.SetFocus;
end;

procedure TFEditFacturaDetail.edtProductPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  tree: string;
begin
  Application.CreateForm(TFSelect, FSelect);
  with FSelect do
  begin
    lstTree.Visible := true;
    GridSelect.Visible := false;
    with QuerySelect do
    begin
      Close;
      SQL.Text := 'select ';
      Open;
      // Close;
      // sql.Text := 'select tree from продукция.продукция where id=' +
      // IntToStr(s_id_product);
      // Open;
      // tree := Fields[0].AsString;
      // Close;
      // sql.Text := 'select * from продукция.продукция where tree like ''' +
      // tree + '%''';
      // Open;
    end;
    ShowModal;
    if FrameTopPanel1.id_select = true then
    begin
      s_id_product := QuerySelect.FieldByName('id').AsInteger;
      o_pid := QuerySelect.FieldByName('pid').AsInteger;
      edtProduct.Text := QuerySelect.FieldByName('uni_name').AsString;
      edtLength.Text := PGSQL.GetLength(s_id_product);
      edtPrice.SetFocus;
    end;
  end;
end;

procedure TFEditFacturaDetail.EnableSave;
begin
  if (edtLength.Text <> '') and (edtLength.Text <> '0') and
    (edtPrice.Text <> '') and (edtPrice.Text <> '0') and (edtFB.Text <> '') and
    (edtFB.Text <> '0') and (edtCount.Text <> '') and (edtCount.Text <> '0')
  then
    FrameSave1.btnSave.Enabled := true
  else
    FrameSave1.btnSave.Enabled := false;
end;

procedure TFEditFacturaDetail.FormShow(Sender: TObject);
begin
  FrameSave1.SetLang;
end;

procedure TFEditFacturaDetail.FrameSave1btnSaveClick(Sender: TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  Close;
end;

end.
