unit UNewPlantCountry;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Data.DB, MemDS, DBAccess, Uni, cxGroupBox;
type
  TfNewPlantCountry = class(TForm)
    cxGroupBox1 : TcxGroupBox;
    QueryDetail : TUniQuery;
    dsDetail : TDataSource;
    edtDetail : TcxLookupComboBox;
    lblDetail : TcxLabel;
    btnSel : TcxButton;
    btnCancel : TcxButton;
    procedure btnCancelClick(Sender : TObject);
    procedure btnSelClick(Sender : TObject);
  private
    { Private declarations }
  public
    IDSelect : Boolean;
    procedure ShowCountry;
    { Public declarations }
  end;

var
  fNewPlantCountry : TfNewPlantCountry;
implementation
{$R *.dfm}

procedure TfNewPlantCountry.btnCancelClick(Sender : TObject);
begin
  Close;
end;
procedure TfNewPlantCountry.btnSelClick(Sender : TObject);
begin
  IDSelect := True;
  Close;
end;
procedure TfNewPlantCountry.ShowCountry;
begin
  with QueryDetail do
  begin
    Close;
    sql.Text := 'select * from продукция.страны order by приоритет';
    Open;
    edtDetail.EditValue := Fields[0].AsInteger;
  end;
end;
end.
