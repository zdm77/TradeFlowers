unit UNewPedidoAWBDetail;

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
  DBGridEh,
  Data.DB,
  MemDS,
  DBAccess,
  Uni,
  Vcl.StdCtrls,
  Vcl.Mask,
  DBCtrlsEh,
  DBLookupEh,
  UFrameSave;

type
  TFNewPedidoAWBDetail = class(TForm)
    QueryMarking: TUniQuery;
    dsMarking: TDataSource;
    lblMarking: TLabel;
    edtMarking: TDBLookupComboboxEh;
    edtTrack: TDBLookupComboboxEh;
    lblTrack: TLabel;
    dsTrack: TDataSource;
    QueryTrack: TUniQuery;
    FrameSave1: TFrameSave;
    edtПорядок: TDBNumberEditEh;
    edtType: TEdit;
    edtFITO: TDBLookupComboboxEh;
    lblFITO: TLabel;
    QueryFITO: TUniQuery;
    dsFITO: TDataSource;
    edtPrikul: TDBLookupComboboxEh;
    lblPricul: TLabel;
    QueryPricul: TUniQuery;
    dsPricul: TDataSource;
    procedure edtMarkingKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtПорядокChange(Sender: TObject);
    procedure FrameSave1btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    s_date_pedido_awb_new: TDate;
    procedure ShowFITO(id_locate: Integer = 0);
    procedure ShowMarking(id_locate: Integer = 0);
    procedure ShowPricul(id_locate: Integer = 0);
    procedure ShowTrack(id_locate: Integer = 0);
    { Public declarations }
  end;

var
  FNewPedidoAWBDetail: TFNewPedidoAWBDetail;

implementation

{$R *.dfm}

procedure TFNewPedidoAWBDetail.edtMarkingKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    edtTrack.SetFocus;
  end;
end;

procedure TFNewPedidoAWBDetail.edtПорядокChange(Sender: TObject);
begin
  edtType.Text := 'guia hija' + edtПорядок.Text;
end;

procedure TFNewPedidoAWBDetail.FrameSave1btnSaveClick(Sender: TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  Close;
end;

procedure TFNewPedidoAWBDetail.ShowFITO(id_locate: Integer = 0);
begin
  with QueryFITO do
  begin
    SQL.Clear;
    SQL.Add(' SELECT * from "документы"."фито" ');
    Open;
    edtFITO.KeyValue := id_locate;
  end;
end;

procedure TFNewPedidoAWBDetail.ShowMarking(id_locate: Integer = 0);
begin
  with QueryMarking do
  begin
    SQL.Clear;
    SQL.Add(' SELECT dz."код_маркировки",');
    SQL.Add(' m.uni_name');
    SQL.Add(' FROM "документы"."заказы" dz');
    SQL.Add(' INNER JOIN "маркировки"."маркировки" m ON (dz."код_маркировки" = m.id)');
    SQL.Add(' where dz."дата_вылета" = :d');
    ParamByName('d').Value := s_date_pedido_awb_new;
    Open;
    edtMarking.KeyValue := id_locate;
  end;
end;

procedure TFNewPedidoAWBDetail.ShowPricul(id_locate: Integer = 0);
begin
  with QueryPricul do
  begin
    SQL.Clear;
    SQL.Add(' SELECT * from "прикулинг"."агенства"  ');
    Open;
    edtPrikul.KeyValue := id_locate;
  end;
end;

procedure TFNewPedidoAWBDetail.ShowTrack(id_locate: Integer = 0);
begin
  with QueryTrack do
  begin
    SQL.Clear;
    SQL.Add(' SELECT * from траки.траки ');
    Open;
    edtTrack.KeyValue := id_locate;
  end;
end;

end.
