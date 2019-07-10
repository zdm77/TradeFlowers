unit UNewTarifPricooling;
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
  
  Vcl.StdCtrls,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sCurrEdit,
  cxGroupBox,
  Data.DB,
  MemDS,
  DBAccess,
  Uni,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue;
type
  TFNewTarifPricooling = class(TForm)
    FrameSave1 : TFrameSave;
    Group1 : TcxGroupBox;
    edtSum : TsCalcEdit;
    edtDoc : TsCalcEdit;
    lblSum : TLabel;
    lblDoc : TLabel;
    lblMarking : TLabel;
    Query1 : TUniQuery;
    procedure edtDocKeyDown(Sender : TObject; var Key : Word; Shift : TShiftState);
    procedure FrameSave1btnSaveClick(Sender : TObject);
  private
    { Private declarations }
  public
    s_id_tarif : Integer;
    { Public declarations }
  end;

var
  FNewTarifPricooling : TFNewTarifPricooling;
implementation
{$R *.dfm}

procedure TFNewTarifPricooling.edtDocKeyDown(Sender : TObject; var Key : Word;
                                                Shift : TShiftState);
begin
  if Key = VK_RETURN then
    FrameSave1btnSaveClick(Sender);
end;
procedure TFNewTarifPricooling.FrameSave1btnSaveClick(Sender : TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  with Query1 do
  begin
    Close;
    sql.Text :=
               'UPDATE "прикулинг"."наценки" SET "тариф" = :тариф, "оформление" = :оформление'
               + ' WHERE id = :id';
    ParamByName('id').AsInteger := s_id_tarif;
    ParamByName('тариф').Value := edtSum.Value;
    ParamByName('оформление').Value := edtDoc.Value;
    ExecSQL;
  end;
  Close;
end;
end.
