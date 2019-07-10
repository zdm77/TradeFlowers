unit UNewPedidoPosition;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinOffice2007Blue, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer, cxLabel, cxTextEdit, cxMaskEdit, cxButtonEdit,
  cxGroupBox, MemDS, DBAccess, Uni, cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, UFrameTopPanel, cxCheckBox, Vcl.ComCtrls, AdvDateTimePicker, Vcl.StdCtrls;
type
  TFNewPedidoPosition = class(TForm)
    FrameTopPanel1 : TFrameTopPanel;
    QueryPedidoPos : TUniQuery;
    dsPedidoPos : TDataSource;
    Group1 : TcxGroupBox;
    edtMarking : TcxButtonEdit;
    lblMarking : TcxLabel;
    GridOrder : TcxGrid;
    ViewOrder : TcxGridDBTableView;
    ColumnViewOrderpl_name : TcxGridDBColumn;
    ColumnViewOrders_name : TcxGridDBColumn;
    ColumnViewOrderDBColumn : TcxGridDBColumn;
    ColumnViewOrder__1 : TcxGridDBColumn;
    ColumnСтеблей : TcxGridDBColumn;
    ColumnPrice : TcxGridDBColumn;
    ColumnStand : TcxGridDBColumn;
    ColumnLock : TcxGridDBColumn;
    ColumnGood : TcxGridDBColumn;
    ColumnLockPos : TcxGridDBColumn;
    ColumnЗакуп : TcxGridDBColumn;
    GridLevelOrder : TcxGridLevel;
    Query1 : TUniQuery;
    edtDateFly : TDateTimePicker;
    lbl1 : TLabel;
    procedure edtMarkingPropertiesButtonClick(Sender : TObject; AButtonIndex : Integer);
    procedure btnAddClick(Sender : TObject);
    procedure FormShow(Sender : TObject);
  private
  var
    dateAir, dateZakup : TDate;
    idMarking : Integer;
    idOrder : Integer;
    idPos : Integer;
    idPedido : Integer;
    idPedidoPos : Integer;
    idFactura : Integer;
    idPlant, idSort, idProduct : Integer;
    lenP, fbP, steemsP, priceP : string;
    procedure CreateFactura;
    function createOrder : Integer;
    procedure CreatePedidoPos;
    { Private declarations }
  public
    procedure CreatePedido;
    procedure InsertPos(id_plant, id_sort : Integer; len, fb, steems, price : string; id_product : Integer);
    procedure setDate(d : TDate);
    procedure setIdMarking(id : Integer);
    procedure showPedido;
    { Public declarations }
  end;

var
  FNewPedidoPosition : TFNewPedidoPosition;
implementation
{$R *.dfm}

uses UPasswd, USplash, USelect, USelectProduct, UNewZakupka, PGSQL, UNewOrderFromChat;
procedure TFNewPedidoPosition.btnAddClick(Sender : TObject);
begin
  if idMarking <> 0 then
  begin
    if edtDateFly.Checked = true then
    begin
      dateAir := edtDateFly.Date;
      Application.CreateForm(TFSelectProduct, FSelectProduct);
      with FSelectProduct do
      begin
        Show;
        // if IDSelect = true then
        // begin
        // if idOrder = 0 then
        // begin
        // createOrder();
        // end;
        //
        // // i := Table1.DataController.GetEditingRecordIndex;
        // // Table1.DataController.SetValue(i, FNewOrderFromChat.columnCountry.Index,
        // // memPr.FieldByName('country').AsString);
        // // Table1.DataController.SetValue(i, FNewOrderFromChat.columnType.Index,
        // // memPr.FieldByName('tpe').AsString);
        // // Table1.DataController.SetValue(i, FNewOrderFromChat.columnPlant.Index,
        // // memPr.FieldByName('plant').AsString);
        // // Table1.DataController.SetValue(i, FNewOrderFromChat.columnSort.Index,
        // // memPr.FieldByName('sort').AsString);
        // // Table1.DataController.SetValue(i, FNewOrderFromChat.columnID.Index,
        // // memPr.FieldByName('id').AsString);
        // // Table1.DataController.SetValue(i, FNewOrderFromChat.columnName.Index,
        // // memPr.FieldByName('uni_name').AsString);
        // end;
        // end;
        // Application.CreateForm(TFNewZakupka, FNewZakupka);
        // with FNewZakupka do
        // begin
        // // FB_Zakaz := QueryGroupOrder.FieldByName('кол_во_фулбоксов').AsFloat;
        // FSplash.Show();
        // FSplash.Update;
        // //  s_id_order_detail := QueryGroupOrder.FieldByName('dt_id').AsInteger;
        // //  s_id_order := QueryGroupOrder.FieldByName('код_заказа').AsInteger;
        // //  s_id_marking := QueryGroupOrder.FieldByName('код_маркировки').AsInteger;
        // //   s_date_fly := QueryGroupOrder.FieldByName('дата_вылета').AsDateTime;
        // //   lblName.Caption := QueryGroupOrder.FieldByName('sss').AsString;
        // ShowZakupka();
        // ShowModal;
        // // QueryGroupOrder.Refresh;
        // //  ShowGroupOrder(id_zakup, 1);
      end;
    end
    else
      Application.MessageBox('Select date fly', 'Error', MB_OK)
  end
  else
    Application.MessageBox('Select marking', 'Error', MB_OK)
end;
procedure TFNewPedidoPosition.CreateFactura;
begin
  with Query1 do
  begin
    close;
    SQL.Text := 'select id  from "документы"."фактуры" f  where f."дата_закупки" = :s_дата_закупки and ' +
  '          f."код_маркировки" = :s_код_маркировки and   f."код_плантации" = :s_код_плантации;';
    ParamByName('s_код_маркировки').Value := idMarking;
    ParamByName('s_код_плантации').Value := idPlant;
    ParamByName('s_дата_закупки').Value := now;
    Open;
    if RecordCount = 0 then
    begin
      close;
      idFactura := NewID('"документы"."фактуры_id_seq"');
      SQL.Text := 'INSERT INTO "документы"."фактуры"(id, "код_пользователя", "код_статуса",  ' +
    ' "дата_вылета", "код_маркировки", "код_плантации", дата_фактуры, дата_закупки) ' +
    '      VALUES (:id, :s_код_пользователя, 1, :s_дата_вылета, ' +
    '      :s_код_маркировки, :s_код_плантации, :s_дата_закупки, :s_дата_закупки);';
      ParamByName('id').Value := idFactura;
      ParamByName('s_код_пользователя').Value := FPasswd.ID_USER;
      ParamByName('s_код_маркировки').Value := idMarking;
      ParamByName('s_дата_вылета').Value := dateAir;
      ParamByName('s_код_плантации').Value := idPlant;
      ParamByName('s_дата_закупки').Value := now;
      ExecSQL;
      close;
      SQL.Text := 'update  "документы"."закупки" set код_фактуры = :id_factura';
      ParamByName('id_factura').Value := idFactura;
      ExecSQL;
    end;
  end;
end;
function TFNewPedidoPosition.createOrder : Integer;
begin
  with Query1 do
  begin
    close;
    SQL.Text := 'insert into "документы"."заказы" ';
    idOrder := NewID('"документы"."заказы_id_seq"');
    SQL.Add(' (');
    SQL.Add('id,');
    SQL.Add('код_маркировки,');
    SQL.Add('дата_вылета,');
    SQL.Add('online,');
    SQL.Add('дата_исполнения,');
    SQL.Add('код_пользователя');
    SQL.Add(') values (');
    SQL.Add(' :id,');
    SQL.Add(' :код_маркировки,');
    SQL.Add(':дата_вылета,');
    SQL.Add(':online,');
    SQL.Add(':дата_исполнения,');
    SQL.Add(':код_пользователя');
    SQL.Add(')');
    ParamByName('id').Value := idOrder;
    ParamByName('код_маркировки').Value := idMarking;
    ParamByName('дата_вылета').Value := dateAir;
    ParamByName('online').Value := 1;
    ParamByName('дата_исполнения').Value := now;
    ParamByName('код_пользователя').Value := FPasswd.ID_USER;
    ExecSQL;
    Result := idOrder;
  end;
end;
procedure TFNewPedidoPosition.CreatePedido;
begin
  with Query1 do
  begin
    close;
    idPedido := NewID('"документы"."закупки_id_seq"');
    SQL.Text := 'insert into "документы"."закупки" (';
    SQL.Add('id,');
    SQL.Add('код_детали_заказа,');
    SQL.Add('код_пользователя,');
    SQL.Add('дата_закупки,');
    SQL.Add('дата_вылета_edt,');
    SQL.Add('код_заказа');
    SQL.Add(') values(');
    SQL.Add(':id,');
    SQL.Add(':код_детали_заказа,');
    SQL.Add(':код_пользователя,');
    SQL.Add(':дата_закупки,');
    SQL.Add(':дата_вылета_edt,');
    SQL.Add(':код_заказа');
    SQL.Add(')');
    ParamByName('id').Value := idPedido;
    ParamByName('код_детали_заказа').Value := idPos;
    ParamByName('код_пользователя').Value := FPasswd.ID_USER;
    ParamByName('дата_закупки').Value := now;
    ParamByName('дата_вылета_edt').Value := dateAir;
    ParamByName('код_заказа').Value := idOrder;
    ExecSQL;
  end;
end;
procedure TFNewPedidoPosition.CreatePedidoPos;
begin
  with Query1 do
  begin
    close;
    idPedidoPos := PGSQL.NewID('"документы"."закупки_деталь_id_seq"');
    SQL.Text := 'INSERT INTO "документы"."закупки_деталь"(id, "код_закупки", "код_плантации",' +
  ' "код_сорта", "код_товара", "цена", fb, "длина", "стеблей", ' + ' код_пользователя, код_деталь_заказ) VALUES (' +
  ' :id, :код_закупки, :код_плантации, :код_сорта, :код_товара, :цена,' +
  ' :fb, :длина, :стеблей, :код_пользователя, :код_деталь_заказ)';
    ParamByName('id').Value := idPedidoPos;
    ParamByName('код_плантации').Value := idPlant;
    ParamByName('код_сорта').Value := idSort;
    ParamByName('код_товара').Value := idProduct;
    ParamByName('код_деталь_заказ').Value := idPos;
    ParamByName('fb').Value := fbP;
    ParamByName('код_закупки').Value := idPedido;
    ParamByName('длина').Value := lenP;
    ParamByName('цена').Value := priceP;
    ParamByName('стеблей').Value := steemsP;
    ParamByName('код_пользователя').AsInteger := FPasswd.ID_USER;
    ExecSQL;
    CreateFactura;
  end;
end;
// TODO -cMM: TFNewPedidoPosition.createOrder default body inserted

procedure TFNewPedidoPosition.edtMarkingPropertiesButtonClick(Sender : TObject; AButtonIndex : Integer);
begin
  Application.CreateForm(TFSelect, FSelect);
  with FSelect do
  begin
    Caption := 'Выберите маркировку';
    lstTree.Visible := true;
    GridSelect.Visible := false;
    ShowSelect('"маркировки"."маркировки"', '', false);
    ShowModal;
{$REGION 'Если выбрана маркировка'}
    if FrameTopPanel1.id_select = true then
    begin
      // s_id_marking := QuerySelect.FieldByName('id').AsInteger;
      setIdMarking(QuerySelect.FieldByName('id').AsInteger);
      edtMarking.Text := QuerySelect.FieldByName('uni_name').AsString;
    end
    else
      FSplash.close;
{$ENDREGION}
  end;
end;
procedure TFNewPedidoPosition.FormShow(Sender : TObject);
begin
  showPedido;
  // dateAir then
  // ShowMessage(DateToStr(dateAir));
end;
procedure TFNewPedidoPosition.InsertPos(id_plant, id_sort : Integer; len, fb, steems, price : string;
                                           id_product : Integer);
begin
  if idOrder = 0 then
    createOrder;
  idPlant := id_plant;
  idSort := id_sort;
  lenP := len;
  fbP := fb;
  steemsP := steems;
  priceP := price;
  idProduct := id_product;
  with Query1 do
  begin
    close;
    idPos := NewID('"документы"."заказы_деталь_id_seq"');
    // if idPedido = 0 then
    // CreatePedido();
    SQL.Text := 'insert into "документы"."заказы_деталь" (';
    SQL.Add('id,');
    SQL.Add('код_заказа,');
    SQL.Add('код_плантации,');
    SQL.Add('код_сорта,');
    SQL.Add('длина,');
    SQL.Add('кол_во_фулбоксов,');
    SQL.Add('цена,');
    SQL.Add('стеблей');
    SQL.Add(') values(');
    // if idPedido <> 0 then
    // sql.Add(',код_закупки');
    SQL.Add(':id,');
    SQL.Add(':код_заказа,');
    SQL.Add(':код_плантации,');
    SQL.Add(':код_сорта,');
    SQL.Add(':длина,');
    SQL.Add(':кол_во_фулбоксов,');
    SQL.Add(':цена,');
    SQL.Add(':стеблей');
    SQL.Add(')');
    // if idPedido <> 0 then
    // sql.Add(',:код_закупки');
    ParamByName('id').Value := idPos;
    ParamByName('код_заказа').Value := idOrder;
    ParamByName('код_плантации').Value := id_plant;
    ParamByName('код_сорта').Value := id_sort;
    ParamByName('длина').Value := len;
    ParamByName('цена').Value := price;
    ParamByName('кол_во_фулбоксов').Value := fb;
    ParamByName('стеблей').Value := steems;
    ExecSQL;
    // ParamByName('код_закупки').Value := idPedido;
    // if idPedido = 0 then
    CreatePedido();
    close;
    SQL.Text := 'update "документы"."заказы_деталь" set код_закупки =:код_закупки where id =:id';
    ParamByName('id').Value := idPos;
    ParamByName('код_закупки').Value := idPedido;
    ExecSQL;
    CreatePedidoPos;
  end;
end;
procedure TFNewPedidoPosition.setDate(d : TDate);
begin
  dateAir := d;
end;
procedure TFNewPedidoPosition.setIdMarking(id : Integer);
begin
  idMarking := id;
end;
procedure TFNewPedidoPosition.showPedido;
begin
  with QueryPedidoPos do
  begin
    close;
    // sql.Text := 'select * from  "документы"."заказы_деталь" where код_заказа=' + IntToStr(idOrder);
    SQL.Text := 'SELECT ';
    SQL.Add(' s.uni_name s_name,');
    SQL.Add(' pl.uni_name pl_name,');
    SQL.Add(' d.*');
    SQL.Add(' FROM ');
    SQL.Add(' "документы"."заказы_деталь" d ');
    SQL.Add(' INNER JOIN "продукция"."плантации" pl ON (d."код_плантации" = pl.id) ');
    SQL.Add(' INNER JOIN "продукция"."сорта" s ON (d."код_сорта" = s.id) ');
    SQL.Add(' where код_заказа=' + IntToStr(idOrder));
    Open;
  end;
end;
end.
