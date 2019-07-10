unit UFrameOrder;
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
  cxStyles,
  dxSkinsCore,
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxEdit,
  DB,
  cxDBData,
  cxContainer,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  MemDS,
  DBAccess,
  Uni,
  Vcl.ComCtrls,
  AdvDateTimePicker,
  cxGroupBox,
  cxGridLevel,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  UFrameTopPanel,
  cxNavigator,
  dxSkinDevExpressStyle,
  dxSkinXmas2008Blue, dxSkinOffice2007Blue, dxSkinsDefaultPainters, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Vcl.StdCtrls, Vcl.Mask, sMaskEdit, sCustomComboEdit,
  sToolEdit;
type
  TFrameOrder = class(TFrame)
    FrameTopPanel1 : TFrameTopPanel;
    GridOrder : TcxGrid;
    ViewOrder : TcxGridDBTableView;
    GridLevelOrder : TcxGridLevel;
    Group1 : TcxGroupBox;
    QueryOrder : TUniQuery;
    dsOrder : TDataSource;
    ColumnN : TcxGridDBColumn;
    ColumnViewOrder_11 : TcxGridDBColumn;
    ColumnViewOrder_5 : TcxGridDBColumn;
    ColumnViewOrderu_name : TcxGridDBColumn;
    ColumnViewOrderlogin : TcxGridDBColumn;
    ColumnViewOrderm_name : TcxGridDBColumn;
    Query1 : TUniQuery;
    edtOt : TDateTimePicker;
    edtDo : TDateTimePicker;
    procedure btnAddClick(Sender : TObject);
    procedure btnEditClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure btnRefreshClick(Sender : TObject);
    procedure edtDoChange(Sender : TObject);
    procedure edtOtChange(Sender : TObject);
    procedure FrameTopPanel1btnSelClick(Sender : TObject);
    procedure ViewOrderDblClick(Sender : TObject);
    procedure btnЗаказClick(Sender : TObject);
  private
    { Private declarations }
  public
    procedure EnableSave;
    procedure ShowOrders(id_locate : integer = 0);
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  UNewOrder,
  PGSQL,
  UPasswd,
  USplash,
  UDialogMy,
  UReport;
procedure TFrameOrder.btnAddClick(Sender : TObject);
begin
  Application.CreateForm(TFNewOrder, FNewOrder);
  with FNewOrder do
  begin
    edtДатаВылета.Date := now;
    edtДатаЗаказа.Date := now;
    try
      with Query2 do
      begin
        Close;
        sql.Text := 'select cast(max(номер) as integer) from "документы"."заказы"';
        Open;
        if Fields[0].AsString = '' then
          edtNum.Text := '1'
        else
          edtNum.Text := IntToStr(Fields[0].AsInteger + 1);
      end;
    except
    end;
    ShowFito;
    FNewOrder.Show;
    edtMarkingPropertiesButtonClick(Sender, 0);
  end;
end;
procedure TFrameOrder.btnDelClick(Sender : TObject);
var s, s1 : string;
begin
  FSplash.Show();
  FSplash.Update;
  { есть-ли связанные закупки }
  with Query1 do
  begin
    Close;
    sql.Text := 'SELECT z."код_детали_заказа", zp."дата_вылета", p.name, p.uni_name, p.reg_name FROM' +
  ' "документы"."закупки_деталь" zd INNER JOIN "документы"."закупки" z ON (zd."код_закупки" = z.id)' +
  ' INNER JOIN "документы"."заказы_деталь" zdt ON (z."код_детали_заказа" = zdt.id)' +
  ' INNER JOIN "документы"."заказы" zp ON (zdt."код_заказа" = zp.id)' +
  ' left join "продукция"."продукция" p on (p.id=zd."код_товара")' + ' where zp.id=' +
  QueryOrder.FieldByName('id').AsString;
    Open;
    if Fields[0].AsString = '' then
    begin
      FSplash.Close;
      PGSQL.StandartDelete(QueryOrder.FieldByName('id').AsString, '"документы"."заказы"', QueryOrder, '', '', '', '');
    end
    else
    begin
      while not Eof do
      begin
        case FPasswd.edtLang.ItemIndex of
          0 :
          begin
            s := s + 'Код заказа: ' + Fields[0].AsString + ', дата вылета: ' + Fields[1].AsString + ', позиция: ' +
          Fields[2].AsString + #13;
            s1 := 'Связанные закупки';
          end;
          1 :
          begin
            s := s + 'Order code: ' + Fields[0].AsString + ', Date of departure: ' + Fields[1].AsString +
          ', position: ' + Fields[3].AsString + #13;
            s1 := 'Associated procurement';
          end;
          2 :
          begin
            s := s + 'Código del encargo: ' + Fields[0].AsString + ', Fecha del vuelo: ' + Fields[1].AsString +
          ', posición: ' + Fields[4].AsString + #13;
            s1 := 'Сompras vinculadas';
          end;
        end;
        Next;
      end;
      FSplash.Close;
      case FPasswd.edtLang.ItemIndex of
        0 : ErrorDialog('Удаление невозможно.', s, 'Есть связанные данные.', s1);
        1 : ErrorDialog('Removal is impossible', s, 'There are associated data.', s1);
        2 : ErrorDialog('La desaparición es imposible', s, 'Hay unos datos vinculados.', s1);
      end;
    end;
  end;
end;
procedure TFrameOrder.btnEditClick(Sender : TObject);
begin
  Application.CreateForm(TFNewOrder, FNewOrder);
  with FNewOrder do
  begin
    with QueryOrder do
    begin
      s_id_order := FieldByName('id').Value;
      s_id_marking := FieldByName('код_маркировки').Value;
      ShowOrderDetail;
      case FPasswd.Lang of
        0 :
        begin
          edtMarking.Text := FieldByName('m_name').AsString;
          edtKargo.Text := FieldByName('k_name').AsString;
          edtTrack.Text := FieldByName('t_name').AsString;
          edtPricooling.Text := FieldByName('p_name').AsString;
        end;
        1 :
        begin
          edtMarking.Text := FieldByName('m_uni_name').AsString;
          edtKargo.Text := FieldByName('k_uni_name').AsString;
          edtTrack.Text := FieldByName('t_uni_name').AsString;
          edtPricooling.Text := FieldByName('p_name').AsString;
        end;
        2 :
        begin
          edtMarking.Text := FieldByName('m_reg_name').AsString;
          edtKargo.Text := FieldByName('k_reg_name').AsString;
          edtTrack.Text := FieldByName('t_reg_name').AsString;
          edtPricooling.Text := FieldByName('p_name').AsString;
        end;
      end;
      edtДатаВылета.Date := FieldByName('дата_вылета').Value;
      if FieldByName('код_карго').AsString <> '' then
        s_id_kargo := FieldByName('код_карго').Value;
      if FieldByName('код_трака').AsString <> '' then
        s_id_track := FieldByName('код_трака').Value;
      if FieldByName('код_прикулинга').AsString <> '' then
        s_id_pricooling := FieldByName('код_прикулинга').Value;
      edtДатаЗаказа.Date := FieldByName('дата_исполнения').Value;
      edtNum.Text := FieldByName('номер').Value;
    end;
    s_id_fito := QueryOrder.FieldByName('код_фито').AsInteger;
    ShowFito;
    FNewOrder.Show;
  end;
end;
procedure TFrameOrder.btnRefreshClick(Sender : TObject);
begin
  ShowOrders(QueryOrder.FieldByName('id').AsInteger);
end;
procedure TFrameOrder.btnЗаказClick(Sender : TObject);
begin
  ОтчетЗаказ(QueryOrder.FieldByName('id').AsInteger);
end;
procedure TFrameOrder.edtDoChange(Sender : TObject);
begin
  ShowOrders();
end;
procedure TFrameOrder.edtOtChange(Sender : TObject);
begin
  ShowOrders();
end;
procedure TFrameOrder.EnableSave;
begin
  with FrameTopPanel1 do
  begin
    if QueryOrder.RecordCount <> 0 then
    begin
      btnEdit.Enabled := true;
      btnDel.Enabled := true;
    end
    else
    begin
      btnEdit.Enabled := false;
      btnDel.Enabled := false;
    end;
  end;
end;
procedure TFrameOrder.FrameTopPanel1btnSelClick(Sender : TObject);
begin
  FrameTopPanel1.btnSelClick(Sender);
end;
procedure TFrameOrder.ShowOrders(id_locate : integer = 0);
begin
  with QueryOrder do
  begin
    Close;
    sql.Text := 'SELECT doc.id, doc."код_маркировки", doc."дата_вылета",doc.код_фито, doc."код_карго",' +
  'doc."код_трака", doc."код_прикулинга", doc."дата_исполнения", doc."код_пользователя",' +
  ' u.name  u_name, u.login, m.name  m_name, k.name k_name, k.reg_name k_reg_name,' +
  ' k.uni_name k_uni_name, p.name p_name, doc."номер", m.uni_name m_uni_name, m.reg_name m_reg_name,' +
  ' t.uni_name t_uni_name, t.reg_name t_reg_name, t.name t_name FROM' +
  ' "документы"."заказы" doc INNER JOIN "пользователи"."пользователи" u ON (doc."код_пользователя" = u.id)' +
  '  LEFT OUTER JOIN "прикулинг"."агенства" p ON (doc."код_прикулинга" = p.id)' +
  '  LEFT OUTER JOIN "карго"."агенства" k ON (doc."код_карго" = k.id)' +
  '  LEFT OUTER JOIN "траки"."траки" t ON (doc."код_трака" = t.id)' +
  '  INNER JOIN "маркировки"."маркировки" m ON (doc."код_маркировки" = m.id) where 1=1';
    if edtOt.Checked = true then
    begin
      sql.Add(' and дата_исполнения>=:d1');
      ParamByName('d1').Value := edtOt.Date;
    end;
    if edtDo.Checked = true then
    begin
      sql.Add(' and дата_исполнения<=:d2');
      ParamByName('d2').Value := edtOt.Date;
    end;
    FSplash.Show();
    FSplash.Update;
    Open;
    Locate('id', id_locate, []);
    FSplash.Close;
    EnableSave;
  end;
end;
procedure TFrameOrder.ViewOrderDblClick(Sender : TObject);
begin
  btnEditClick(Sender);
end;
end.
