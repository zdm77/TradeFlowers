unit UNewZakupDetailQuick;

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
  
  cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  Data.DB,
  DBAccess,
  Uni,
  MemDS,
  Vcl.DBCtrls,
  UFrameSave,
  Vcl.StdCtrls,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sCurrEdit,
  AdvEdit,
  cxLabel,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue;

type
  TFNewZakupDetailQuick = class(TForm)
    QueryPlant: TUniQuery;
    dsPlant: TUniDataSource;
    QueryCountry: TUniQuery;
    dsCountry: TUniDataSource;
    dsSort: TUniDataSource;
    QuerySort: TUniQuery;
    edtSort: TcxLookupComboBox;
    edtType: TcxLookupComboBox;
    QueryType: TUniQuery;
    dsType: TUniDataSource;
    edtPlant: TcxLookupComboBox;
    QueryProduct: TUniQuery;
    dsProduct: TUniDataSource;
    edtProduct: TcxLookupComboBox;
    FrameSave1: TFrameSave;
    lblSum: TcxLabel;
    edtLength: TAdvEdit;
    lblPrice: TcxLabel;
    edtPrice: TAdvEdit;
    lblCount: TcxLabel;
    edtCount: TsCalcEdit;
    procedure edtCountryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCountryPropertiesCloseUp(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtTypePropertiesCloseUp(Sender: TObject);
    procedure edtPlantPropertiesCloseUp(Sender: TObject);
    procedure edtSortPropertiesCloseUp(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
  private
    { Private declarations }
  public
    s_id_country_for_add, s_id_plant_for_add: integer;
    procedure ShowCountry(id_locate: integer = 0);
    procedure ShowPlant(id_locate: integer = 0);
    procedure ShowProduct(id_locate: integer = 0);
    procedure ShowSort(id_locate: integer = 0);
    procedure ShowType(id_locate: integer = 0);
    { Public declarations }
  end;

var
  FNewZakupDetailQuick: TFNewZakupDetailQuick;

implementation

{$R *.dfm}

uses
  UNewZakupkaDetail;

procedure TFNewZakupDetailQuick.btnPriorClick(Sender: TObject);
begin
  with FNewZakupkaDetail do
  begin
    id_sort := edtSort.EditValue;
    id_product := edtProduct.EditValue;
    len := edtLength.Text;
    price := edtPrice.Text;
    стеблей := Trunc(edtCount.Value);
    InsUpdDetail(true);
  end;
end;

procedure TFNewZakupDetailQuick.edtCountryKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    // ShowType();
    // edtType.SetFocus;
  end;
end;

procedure TFNewZakupDetailQuick.edtCountryPropertiesCloseUp(Sender: TObject);
begin
  // ShowType();
  edtType.SetFocus;
end;

procedure TFNewZakupDetailQuick.edtPlantPropertiesCloseUp(Sender: TObject);
begin
  edtSort.SetFocus;
  ShowSort();
end;

procedure TFNewZakupDetailQuick.edtSortPropertiesCloseUp(Sender: TObject);
begin
  edtProduct.SetFocus;
  ShowProduct();
end;

procedure TFNewZakupDetailQuick.edtTypePropertiesCloseUp(Sender: TObject);
begin
  ShowPlant();
end;

procedure TFNewZakupDetailQuick.FormShow(Sender: TObject);
begin
  edtPlant.SetFocus;
end;

procedure TFNewZakupDetailQuick.ShowCountry(id_locate: integer = 0);
begin
  // with QueryCountry do
  // begin
  // Close;
  // sql.Text := 'select * from "продукция"."страны" order by приоритет';
  // Open;
  // if id_locate = 0 then
  // edtCountry.EditValue := Fields[0].AsInteger;
  // end;
end;

procedure TFNewZakupDetailQuick.ShowPlant(id_locate: integer = 0);
begin
  with QueryPlant do
  begin
    Close;
    sql.Clear;
    sql.Add(' SELECT p.id,');
    sql.Add(' p.name,');
    sql.Add(' p.brand,');
    sql.Add(' p."код_страны",');
    sql.Add(' p.uni_name,');
    sql.Add(' p.reg_name,');
    sql.Add(' p."примечание",');
    sql.Add(' p."адрес",');
    sql.Add(' p."телефон1",');
    sql.Add(' p."телефон2",');
    sql.Add(' p.email,');
    sql.Add(' p."код_города",');
    sql.Add(' p."код_страны_факт",');
    sql.Add(' p."факс"');
    sql.Add(' FROM "продукция"."плантации" p');
    sql.Add(' INNER JOIN "продукция"."плантация_тип" pt ON (p.id = pt."код_плантации")');
    // sql.Add(' INNER JOIN "продукция"."страны" s ON (p."код_страны" = s.id)');
    sql.Add(' where p."код_страны" = ' + IntToStr(s_id_country_for_add)
      + ' and');
    sql.Add(' pt."код_типа" = ' + IntToStr(edtType.EditValue));
    sql.Add(' order by p.uni_name');
    Open;
  end;
end;

procedure TFNewZakupDetailQuick.ShowProduct(id_locate: integer = 0);
begin
  with QueryProduct do
  begin
    Close;
    sql.Clear;
    sql.Add(' select *');
    sql.Add(' from "продукция"."продукция" p');
    sql.Add(' where p."код_плантации" = ' + QueryPlant.Fields[0].AsString
      + ' and');
    sql.Add(' p."код_типа" = ' + IntToStr(edtType.EditValue) + ' and');
    sql.Add(' p."код_сорта" = ' + QuerySort.Fields[0].AsString);
    sql.Add(' order by uni_name');
    Open;
    if id_locate = 0 then
      edtProduct.EditValue := Fields[0].AsString;
  end;
end;

procedure TFNewZakupDetailQuick.ShowSort(id_locate: integer = 0);
begin
  // ShowMessage(QueryPlant.Fields[0].AsString);
  with QuerySort do
  begin
    Close;
    sql.Clear;
    sql.Add(' SELECT DISTINCT s.id,');
    sql.Add(' s.name,');
    sql.Add(' s.uni_name,');
    sql.Add(' s.reg_name,');
    sql.Add(' s."стеблей",');
    sql.Add(' s."код_типа",');
    sql.Add(' s."комментарий",');
    sql.Add(' s."изображение"');
    sql.Add(' FROM "продукция"."сорт_плантация" sp');
    sql.Add(' INNER JOIN "продукция"."сорта" s ON (sp."код_сорта" = s.id)');
    sql.Add(' INNER JOIN "продукция"."сорт_страна" ss ON (s.id = ss."код_сорта")');
    sql.Add(' where s."код_типа" = ' + IntToStr(edtType.EditValue) + ' and');
    sql.Add(' ss."код_страны" = ' + IntToStr(s_id_country_for_add) + ' and');
    sql.Add(' sp."код_плантации" =' + QueryPlant.Fields[0].AsString);
    sql.Add(' order by s.uni_name');
    Open;
  end;
end;

procedure TFNewZakupDetailQuick.ShowType(id_locate: integer = 0);
begin
  with QueryType do
  begin
    Close;
    sql.Clear;
    sql.Add(' SELECT');
    sql.Add(' t.id,');
    sql.Add(' t.name,');
    sql.Add(' t.uni_name,');
    sql.Add(' t.reg_name,');
    sql.Add(' t."приоритет",');
    sql.Add(' t.code');
    sql.Add(' FROM');
    sql.Add(' "продукция"."тип_страна" ts');
    sql.Add(' INNER JOIN "продукция"."типы" t ON (ts."код_типа" = t.id)');
    sql.Add(' where ts."код_страны"=' + IntToStr(s_id_country_for_add));
    sql.Add(' order by t."приоритет"');
    Open;
    if id_locate = 0 then
      edtType.EditValue := Fields[0].AsInteger;
  end;
  ShowPlant();
end;

end.
