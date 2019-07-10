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
    Column������� : TcxGridDBColumn;
    ColumnPrice : TcxGridDBColumn;
    ColumnStand : TcxGridDBColumn;
    ColumnLock : TcxGridDBColumn;
    ColumnGood : TcxGridDBColumn;
    ColumnLockPos : TcxGridDBColumn;
    Column����� : TcxGridDBColumn;
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
        // // FB_Zakaz := QueryGroupOrder.FieldByName('���_��_���������').AsFloat;
        // FSplash.Show();
        // FSplash.Update;
        // //  s_id_order_detail := QueryGroupOrder.FieldByName('dt_id').AsInteger;
        // //  s_id_order := QueryGroupOrder.FieldByName('���_������').AsInteger;
        // //  s_id_marking := QueryGroupOrder.FieldByName('���_����������').AsInteger;
        // //   s_date_fly := QueryGroupOrder.FieldByName('����_������').AsDateTime;
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
    SQL.Text := 'select id  from "���������"."�������" f  where f."����_�������" = :s_����_������� and ' +
  '          f."���_����������" = :s_���_���������� and   f."���_���������" = :s_���_���������;';
    ParamByName('s_���_����������').Value := idMarking;
    ParamByName('s_���_���������').Value := idPlant;
    ParamByName('s_����_�������').Value := now;
    Open;
    if RecordCount = 0 then
    begin
      close;
      idFactura := NewID('"���������"."�������_id_seq"');
      SQL.Text := 'INSERT INTO "���������"."�������"(id, "���_������������", "���_�������",  ' +
    ' "����_������", "���_����������", "���_���������", ����_�������, ����_�������) ' +
    '      VALUES (:id, :s_���_������������, 1, :s_����_������, ' +
    '      :s_���_����������, :s_���_���������, :s_����_�������, :s_����_�������);';
      ParamByName('id').Value := idFactura;
      ParamByName('s_���_������������').Value := FPasswd.ID_USER;
      ParamByName('s_���_����������').Value := idMarking;
      ParamByName('s_����_������').Value := dateAir;
      ParamByName('s_���_���������').Value := idPlant;
      ParamByName('s_����_�������').Value := now;
      ExecSQL;
      close;
      SQL.Text := 'update  "���������"."�������" set ���_������� = :id_factura';
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
    SQL.Text := 'insert into "���������"."������" ';
    idOrder := NewID('"���������"."������_id_seq"');
    SQL.Add(' (');
    SQL.Add('id,');
    SQL.Add('���_����������,');
    SQL.Add('����_������,');
    SQL.Add('online,');
    SQL.Add('����_����������,');
    SQL.Add('���_������������');
    SQL.Add(') values (');
    SQL.Add(' :id,');
    SQL.Add(' :���_����������,');
    SQL.Add(':����_������,');
    SQL.Add(':online,');
    SQL.Add(':����_����������,');
    SQL.Add(':���_������������');
    SQL.Add(')');
    ParamByName('id').Value := idOrder;
    ParamByName('���_����������').Value := idMarking;
    ParamByName('����_������').Value := dateAir;
    ParamByName('online').Value := 1;
    ParamByName('����_����������').Value := now;
    ParamByName('���_������������').Value := FPasswd.ID_USER;
    ExecSQL;
    Result := idOrder;
  end;
end;
procedure TFNewPedidoPosition.CreatePedido;
begin
  with Query1 do
  begin
    close;
    idPedido := NewID('"���������"."�������_id_seq"');
    SQL.Text := 'insert into "���������"."�������" (';
    SQL.Add('id,');
    SQL.Add('���_������_������,');
    SQL.Add('���_������������,');
    SQL.Add('����_�������,');
    SQL.Add('����_������_edt,');
    SQL.Add('���_������');
    SQL.Add(') values(');
    SQL.Add(':id,');
    SQL.Add(':���_������_������,');
    SQL.Add(':���_������������,');
    SQL.Add(':����_�������,');
    SQL.Add(':����_������_edt,');
    SQL.Add(':���_������');
    SQL.Add(')');
    ParamByName('id').Value := idPedido;
    ParamByName('���_������_������').Value := idPos;
    ParamByName('���_������������').Value := FPasswd.ID_USER;
    ParamByName('����_�������').Value := now;
    ParamByName('����_������_edt').Value := dateAir;
    ParamByName('���_������').Value := idOrder;
    ExecSQL;
  end;
end;
procedure TFNewPedidoPosition.CreatePedidoPos;
begin
  with Query1 do
  begin
    close;
    idPedidoPos := PGSQL.NewID('"���������"."�������_������_id_seq"');
    SQL.Text := 'INSERT INTO "���������"."�������_������"(id, "���_�������", "���_���������",' +
  ' "���_�����", "���_������", "����", fb, "�����", "�������", ' + ' ���_������������, ���_������_�����) VALUES (' +
  ' :id, :���_�������, :���_���������, :���_�����, :���_������, :����,' +
  ' :fb, :�����, :�������, :���_������������, :���_������_�����)';
    ParamByName('id').Value := idPedidoPos;
    ParamByName('���_���������').Value := idPlant;
    ParamByName('���_�����').Value := idSort;
    ParamByName('���_������').Value := idProduct;
    ParamByName('���_������_�����').Value := idPos;
    ParamByName('fb').Value := fbP;
    ParamByName('���_�������').Value := idPedido;
    ParamByName('�����').Value := lenP;
    ParamByName('����').Value := priceP;
    ParamByName('�������').Value := steemsP;
    ParamByName('���_������������').AsInteger := FPasswd.ID_USER;
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
    Caption := '�������� ����������';
    lstTree.Visible := true;
    GridSelect.Visible := false;
    ShowSelect('"����������"."����������"', '', false);
    ShowModal;
{$REGION '���� ������� ����������'}
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
    idPos := NewID('"���������"."������_������_id_seq"');
    // if idPedido = 0 then
    // CreatePedido();
    SQL.Text := 'insert into "���������"."������_������" (';
    SQL.Add('id,');
    SQL.Add('���_������,');
    SQL.Add('���_���������,');
    SQL.Add('���_�����,');
    SQL.Add('�����,');
    SQL.Add('���_��_���������,');
    SQL.Add('����,');
    SQL.Add('�������');
    SQL.Add(') values(');
    // if idPedido <> 0 then
    // sql.Add(',���_�������');
    SQL.Add(':id,');
    SQL.Add(':���_������,');
    SQL.Add(':���_���������,');
    SQL.Add(':���_�����,');
    SQL.Add(':�����,');
    SQL.Add(':���_��_���������,');
    SQL.Add(':����,');
    SQL.Add(':�������');
    SQL.Add(')');
    // if idPedido <> 0 then
    // sql.Add(',:���_�������');
    ParamByName('id').Value := idPos;
    ParamByName('���_������').Value := idOrder;
    ParamByName('���_���������').Value := id_plant;
    ParamByName('���_�����').Value := id_sort;
    ParamByName('�����').Value := len;
    ParamByName('����').Value := price;
    ParamByName('���_��_���������').Value := fb;
    ParamByName('�������').Value := steems;
    ExecSQL;
    // ParamByName('���_�������').Value := idPedido;
    // if idPedido = 0 then
    CreatePedido();
    close;
    SQL.Text := 'update "���������"."������_������" set ���_������� =:���_������� where id =:id';
    ParamByName('id').Value := idPos;
    ParamByName('���_�������').Value := idPedido;
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
    // sql.Text := 'select * from  "���������"."������_������" where ���_������=' + IntToStr(idOrder);
    SQL.Text := 'SELECT ';
    SQL.Add(' s.uni_name s_name,');
    SQL.Add(' pl.uni_name pl_name,');
    SQL.Add(' d.*');
    SQL.Add(' FROM ');
    SQL.Add(' "���������"."������_������" d ');
    SQL.Add(' INNER JOIN "���������"."���������" pl ON (d."���_���������" = pl.id) ');
    SQL.Add(' INNER JOIN "���������"."�����" s ON (d."���_�����" = s.id) ');
    SQL.Add(' where ���_������=' + IntToStr(idOrder));
    Open;
  end;
end;
end.
