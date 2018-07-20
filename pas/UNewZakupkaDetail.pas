unit UNewZakupkaDetail;

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
  
  cxStyles,
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  DB,
  cxDBData,
  UFrameProduct,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  UFrameTopPanel,
  cxGroupBox,
  MemDS,
  DBAccess,
  Uni,
  Vcl.StdCtrls,
  cxSplitter,
  cxLabel,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sCurrEdit,
  cxTextEdit,
  cxMaskEdit,
  cxButtonEdit,
  sTooledit,
  AdvEdit,
  Vcl.ComCtrls,
  AdvDateTimePicker,
  cxNavigator,
  cxDBEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  Vcl.Menus,
  cxButtons,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue, dxSkinOffice2007Blue, dxSkinsDefaultPainters;

type
  TFNewZakupkaDetail = class(TForm)
    FrameSave1: TFrameSave;
    GroupProduct: TcxGroupBox;
    cxGroupBox1: TcxGroupBox;
    FrameTopPanel1: TFrameTopPanel;
    GridOrder: TcxGrid;
    ViewOrder: TcxGridDBTableView;
    GridLevelOrder: TcxGridLevel;
    QueryDetail: TUniQuery;
    dsDetail: TDataSource;
    Query1: TUniQuery;
    cxspltr1: TcxSplitter;
    Group1: TcxGroupBox;
    edtFB: TsCalcEdit;
    lblFB: TcxLabel;
    ViewOrderDBColumn: TcxGridDBColumn;
    ViewOrderDBColumn1: TcxGridDBColumn;
    ViewOrderDBColumn2: TcxGridDBColumn;
    ViewOrderpt_uni_name: TcxGridDBColumn;
    ViewOrderst_uni_name: TcxGridDBColumn;
    edtPlant: TcxButtonEdit;
    lblMarking: TcxLabel;
    edtNumFact: TAdvEdit;
    lblSum: TcxLabel;
    lblDateFact: TcxLabel;
    edtDateFact: TAdvDateTimePicker;
    dbZakup: TUniConnection;
    TransactZakup: TUniTransaction;
    QueryCountry: TUniQuery;
    dsCountry: TUniDataSource;
    dsSort: TUniDataSource;
    QuerySort: TUniQuery;
    edtSort: TcxLookupComboBox;
    QueryType: TUniQuery;
    dsType: TUniDataSource;
    QueryProduct: TUniQuery;
    dsProduct: TUniDataSource;
    cxLabel1: TcxLabel;
    edtLength: TAdvEdit;
    lblPrice: TcxLabel;
    lblCount: TcxLabel;
    btnINSERT: TcxButton;
    lblType: TcxLabel;
    lblSort: TcxLabel;
    lblProduct: TcxLabel;
    edtCount: TsCalcEdit;
    edtType: TcxLookupComboBox;
    edtProduct: TcxLookupComboBox;
    edtPrice: TsCalcEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FrameProduct1lstTreeProductsDblClick(Sender: TObject);
    procedure FrameSave1btnSaveClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure FrameSearch1edtNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPlantPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnDelClick(Sender: TObject);
    procedure edtDateFactChange(Sender: TObject);
    procedure FrameProduct1lstTreeProductsKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure FrameSearch1edtNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QueryDetailAfterFetch(DataSet: TCustomDADataSet);
    procedure ViewOrderDblClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure edtFBChange(Sender: TObject);
    procedure edtFBExit(Sender: TObject);
    procedure edtPlantPropertiesEditValueChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnINSClick(Sender: TObject);
    procedure edtProductKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtTypePropertiesCloseUp(Sender: TObject);
    procedure edtSortPropertiesCloseUp(Sender: TObject);
    procedure edtProductPropertiesCloseUp(Sender: TObject);
    procedure edtSortKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtProductPropertiesChange(Sender: TObject);
    procedure btnINSERTClick(Sender: TObject);
    procedure edtCountChange(Sender: TObject);
    procedure edtCountKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPriceChange(Sender: TObject);
    procedure edtPriceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    id_order_detail: Integer;
    id_order_edit: Integer;
    id_zakup_edit: Integer;
    id_plant, id_sort, id_product, стеблей: Integer;
    len, price: string;
    id_marking_edit: Integer;
    FB: Double;
    id_factura: Integer;
    Max_FB: Double;
    s_date_fly_edit: TDate;
    id_country: Integer;
    function DetectFacturaID: Integer;
    function DetectLimitFB: Boolean;
    procedure EnableSave;
    procedure InsUpdDetail(id_ins: Boolean);
    procedure InsUpdZakup(id_ins: Boolean);
    procedure ShowDetail;
    procedure ShowProduct(id_locate: Integer = 0);
    procedure ShowProductsW;
    procedure ShowSort(id_locate: Integer = 0);
    procedure ShowType(id_locate: Integer = 0);
    { Public declarations }
  end;

var
  FNewZakupkaDetail: TFNewZakupkaDetail;

implementation

{$R *.dfm}

uses
  PGSQL,
  UNewOrderDetail,
  UDataModule1,
  UPasswd,
  USelect,
  USplash,
  UDialogMy,
  USelectPlant,
  UNewFB;

procedure TFNewZakupkaDetail.FormCreate(Sender: TObject);
begin
  if dbZakup.Connected = false then
  begin
    dbZakup.Database := DM1.db1.Database;
    dbZakup.Server := DM1.db1.Server;
    dbZakup.Username := DM1.db1.Username;
    dbZakup.Password := DM1.db1.Password;
    dbZakup.Connected := True;
  end;
  FSplash.Show();
  FSplash.Update;
end;

procedure TFNewZakupkaDetail.btnINSClick(Sender: TObject);
begin
  // Application.CreateForm(TFNewZakupDetailQuick, FNewZakupDetailQuick);
  // with FNewZakupDetailQuick do
  // begin
  // // ShowCountry();
  // s_id_country_for_add:= id_country;
  // ShowType();
  // // ShowPlant();
  // ShowModal;
  // end;
end;

procedure TFNewZakupkaDetail.btnINSERTClick(Sender: TObject);
begin
  edtLength.Text := PGSQL.GetLength(QueryProduct.FieldByName('id').AsInteger);
  InsUpdDetail(True);
  edtCount.Text := '0';
  ShowProduct();
  edtProduct.SetFocus;
  /// /ТЕСТРУЮ ВСТАВКУ В НОВУЮ ТАБЛИЦУ
  with Query1 do
  begin
    Close;
  end;
end;

procedure TFNewZakupkaDetail.btnDelClick(Sender: TObject);
var
  // FB: Double;
  id_fb: Boolean;
begin
  if QueryDetail.FieldByName('fb').AsString <> '' then
  begin
    id_fb := True;
    // FB := QueryDetail.FieldByName('fb').Value;
  end;
  if Application.MessageBox('Вы действительно хотите удалить позицию ?',
    'Вопрос', MB_YESNO) = mrYes then
  begin
    with Query1 do
    begin
      Close;
      sql.Text :=
        'delete from "документы"."фактура_деталь" where код_детализ_закупки=' +
        QueryDetail.FieldByName('id').AsString;
      ExecSQL;
      Close;
      sql.Text := 'delete from "документы"."закупки_деталь" where id=' +
        QueryDetail.FieldByName('id').AsString;
      ExecSQL;
      ShowDetail;
      if (id_fb = True) and (QueryDetail.RecordCount <> 0) then
      begin
        QueryDetail.First;
        Close;
        sql.Text := 'update "документы"."закупки_деталь" set fb=:fb where id=' +
          QueryDetail.FieldByName('id').AsString;
        ParamByName('fb').Value := edtFB.Value;
        ExecSQL;
      end;
    end;
  end;
end;

procedure TFNewZakupkaDetail.btnEditClick(Sender: TObject);
begin
  Application.CreateForm(TFNewOrderDetail, FNewOrderDetail);
  FNewOrderDetail.edtFB.Enabled := false;
  FNewOrderDetail.edtFB.Text := edtFB.Text;
  with FNewOrderDetail do
  begin
    edtPrice.Text := QueryDetail.FieldByName('цена').AsString;
    edtLength.Text := QueryDetail.FieldByName('длина').AsString;
    edtCount.Text := QueryDetail.FieldByName('стеблей').AsString;
    // id_sort := 2QueryDetail.FieldByName(QueryDetail.FieldByName('pid').AsInteger);
    ShowModal;
    if FrameSave1.id_save = True then
    begin
      if id_zakup_edit = 0 then
        InsUpdZakup(True);
      { pid сорта - плантация }
      // i := PGSQL.GetPid(QueryDetail.FieldByName('pid').AsInteger);
      // id_plant := PGSQL.GetIDDetail(i);
      id_product := QueryDetail.FieldByName('id').AsInteger;
      len := edtLength.Text;
      // FB := edtFB.Value;
      price := edtPrice.Text;
      стеблей := StrToInt(edtCount.Text);
      InsUpdDetail(false);
      ShowDetail;
    end;
  end;
end;

procedure TFNewZakupkaDetail.btnRefreshClick(Sender: TObject);
begin
  QueryDetail.Refresh;
end;

function TFNewZakupkaDetail.DetectFacturaID: Integer;
begin
  with Query1 do
  begin
    Close;
    sql.Text :=
      'select id from "документы"."фактуры" where дата_закупки=:d and ' +
      ' код_маркировки=:m and код_плантации=:p';
    ParamByName('d').AsDate := now;
    ParamByName('m').AsInteger := id_marking_edit;
    ParamByName('p').AsInteger := id_plant;
    Open;
    if Fields[0].AsString <> '' then
      Result := Fields[0].AsInteger
    else
      Result := 0;
  end;
end;

function TFNewZakupkaDetail.DetectLimitFB: Boolean;
var
  s: string;
begin
  if edtFB.Value > Max_FB then
  begin
    s := 'Превзойден лимит. Максимум FB - ' + FloatToStr(Max_FB);
    Application.MessageBox(PChar(s), 'Ошибка', mb_ok + MB_ICONERROR);
    edtFB.SetFocus;
    Result := True;
  end
  else
  begin
    // FrameProduct1.FrameSearch1.edtName.SetFocus;
    Result := false;
  end;
end;

procedure TFNewZakupkaDetail.edtCountChange(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewZakupkaDetail.edtCountKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    if btnINSERT.Enabled = True then
      btnINSERTClick(Sender);
end;

procedure TFNewZakupkaDetail.edtDateFactChange(Sender: TObject);
begin
  edtNumFact.Enabled := edtDateFact.Checked;
end;

procedure TFNewZakupkaDetail.edtFBChange(Sender: TObject);
begin
  if (edtFB.Value <> 0) and (edtFB.Value <= Max_FB) then
    edtFB.Color := clWindow
  else
    edtFB.Color := clRed;
end;

procedure TFNewZakupkaDetail.edtFBExit(Sender: TObject);
begin
  DetectLimitFB;
end;

procedure TFNewZakupkaDetail.edtPlantPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.CreateForm(TFSelectPlant, FSelectPlant);
  with FSelectPlant do
  begin
    ColumnSel.Visible := false;
    ColumnColorGrid.DataBinding.FieldName := 'код_позиции_заказа';
    use_color := True;
    // with QuerySelect do
    // begin
    // Close;
    // sql.Text :=
    // 'SELECT pt.id,  pt.name,  pt.brand,  pt."код_страны",  pt.uni_name,' +
    // ' pt.reg_name,  pt."примечание",  p."код_позиции_заказа" FROM' +
    // '  "продукция"."плантации" pt  LEFT JOIN "маркировки"."желаемые_плантации" '
    // + ' p ON (pt.id = p."код_плантации" and  "код_позиции_заказа"=' +
    // IntToStr(id_order_edit) + ')' +
    // ' WHERE  pt.id NOT IN (SELECT "код_плантации" FROM ' +
    // ' "маркировки"."запрет_плантаций" where  "код_позиции_заказа"=' +
    // IntToStr(id_order_edit) + ' )' +
    // ' order by p."код_позиции_заказа", name    ';
    // Open;
    // end;
    case FPasswd.Lang of
      0:
        Caption := 'Выбор плантации';
      1:
        Caption := 'Elección de la plantación';
      2:
        Caption := 'Selection of plantations';
    end;
    ID_ORDER_NOT := id_order_detail;
    ShowCountry;
    ShowModal;
    if FrameTopPanel1.id_select = True then
    begin
      id_plant := QuerySelect.FieldByName('id').AsInteger;
      case FPasswd.Lang of
        0:
          edtPlant.Text := QuerySelect.FieldByName('name').AsString;
        1:
          edtPlant.Text := QuerySelect.FieldByName('uni_name').AsString;
        2:
          edtPlant.Text := QuerySelect.FieldByName('reg_name').AsString;
      end;
      id_country := edtDetail.EditValue;
      FSplash.Show();
      FSplash.Update;
      // ShowProductsW;
      ShowType();
      FSplash.Close;
    end;
  end;
  FSplash.Close;
  if edtPlant.Text <> '' then
    edtPlant.Style.Color := clWindow
  else
    edtPlant.Style.Color := clRed;
  if edtFB.Value = 0 then
  begin
    Application.CreateForm(TFNewFB, FNewFB);
    FNewFB.ShowModal;
    if FNewFB.id_save = True then
    begin
      edtFB.Text := FNewFB.edtFB.Text;
    end;
    if (edtFB.Value = 0) then
      edtFB.Color := clRed;
  end;
  // if edtFB.Value = 0 then
  // begin
  // Application.CreateForm(TFNewFB, FNewFB);
  // FNewFB.ShowModal;
  // if FNewFB.id_save = True then
  // edtFB.Text := FNewFB.edtFB.Text;
  // end;
end;

procedure TFNewZakupkaDetail.edtPlantPropertiesEditValueChanged
  (Sender: TObject);
begin
  id_factura := DetectFacturaID;
  if QueryDetail.RecordCount = 0 then
    edtPlant.Enabled := false
  else
    edtPlant.Enabled := True;
  if edtPlant.Text <> '' then
    edtPlant.Style.Color := clWindow
  else
    edtPlant.Style.Color := clRed;
end;

procedure TFNewZakupkaDetail.edtPriceChange(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewZakupkaDetail.edtPriceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    edtCount.SetFocus;
end;

procedure TFNewZakupkaDetail.edtProductKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    edtPrice.SetFocus;
end;

procedure TFNewZakupkaDetail.edtProductPropertiesChange(Sender: TObject);
begin
  edtPrice.Text := QueryProduct.FieldByName('цена').AsString;
  EnableSave;
end;

procedure TFNewZakupkaDetail.edtProductPropertiesCloseUp(Sender: TObject);
begin
  edtPrice.SetFocus;
  edtPrice.Text := QueryProduct.FieldByName('цена').AsString;
  edtPrice.SelectAll;
  EnableSave;
end;

procedure TFNewZakupkaDetail.edtSortKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    edtProduct.SetFocus;
end;

procedure TFNewZakupkaDetail.edtSortPropertiesCloseUp(Sender: TObject);
begin
  edtProduct.SetFocus;
  ShowProduct();
  EnableSave;
  // if edtSort.Text <> '' then
  // edtSort.Style.Color := clWindow
  // else
  // edtSort.Style.Color := clRed;
end;

procedure TFNewZakupkaDetail.edtTypePropertiesCloseUp(Sender: TObject);
begin
  edtSort.SetFocus;
  ShowSort();
  EnableSave;
  // if edtType.Text <> '' then
  // edtType.Style.Color := clWindow
  // else
  // edtType.Style.Color := clRed;
end;

procedure TFNewZakupkaDetail.EnableSave;
begin
  if (edtType.Text <> '') and (edtSort.Text <> '') and (edtProduct.Text <> '')
    and (edtPrice.Text <> '') and (edtPrice.Text <> '0') and
    (edtCount.Text <> '') and (edtCount.Text <> '0') then
    btnINSERT.Enabled := True
  else
    btnINSERT.Enabled := false;
end;

procedure TFNewZakupkaDetail.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  InsUpdZakup(false);
end;

procedure TFNewZakupkaDetail.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if (TransactZakup.Active = True) and (QueryDetail.RecordCount > 0) then
  begin
    case Application.MessageBox('Сохранить изменения?', 'Вопрос',
      MB_YESNOCANCEL + MB_ICONQUESTION) of
      6:
        begin
          FrameSave1btnSaveClick(Sender)
        end;
      7:
        TransactZakup.Rollback;
      2:
        CanClose := false;
    end;
  end;
end;

procedure TFNewZakupkaDetail.FormShow(Sender: TObject);
begin
  if edtPlant.Text = '' then
  begin
    FSplash.Close;
    edtPlantPropertiesButtonClick(Sender, 0);
  end;
  if edtFB.Text = '0' then
    edtFB.SetFocus
  else
    // FrameProduct1.FrameSearch1.edtName.SetFocus;
    FrameTopPanel1.SetLang;
  edtNumFact.Enabled := edtDateFact.Checked;
  if edtFB.Value = 0 then
  begin
    Application.CreateForm(TFNewFB, FNewFB);
    FNewFB.ShowModal;
    if FNewFB.id_save = True then
    begin
      edtFB.Text := FNewFB.edtFB.Text;
    end;
    if (edtFB.Value = 0) then
      edtFB.Color := clRed;
  end;
end;

procedure TFNewZakupkaDetail.FrameProduct1lstTreeProductsDblClick
  (Sender: TObject);
var
  i: Integer;
begin
  // if edtFB.Text <> '0' then
  // begin
  // with FrameProduct1 do
  // begin
  // { если выбран товар }
  // if QueryProduct.FieldByName('код_структуры').AsInteger = 6 then
  // begin
  // { проверяем запрет плантации }
  // with Query1 do
  // begin
  // Application.CreateForm(TFNewOrderDetail, FNewOrderDetail);
  // FNewOrderDetail.edtFB.Enabled := false;
  // FNewOrderDetail.edtFB.Text := edtFB.Text;
  // with FNewOrderDetail do
  // begin
  // edtPrice.Text := QueryProduct.FieldByName('цена').AsString;
  // edtLength.Text := PGSQL.GetLength(QueryProduct.FieldByName('id')
  // .AsInteger);
  // ShowModal;
  // if FrameSave1.id_save = True then
  // begin
  // FSplash.Show();
  // FSplash.Update;
  // if id_zakup_edit = 0 then
  // InsUpdZakup(True);
  // // id_sort := PGSQL.GetIDDetail(QueryProduct.FieldByName('pid')
  // // .AsInteger);
  // //
  // // { pid сорта - плантация }
  // // i := PGSQL.GetPid(QueryProduct.FieldByName('pid').AsInteger);
  // // id_plant := PGSQL.GetIDDetail(i);
  // id_product := QueryProduct.FieldByName('id').AsInteger;
  // //
  // len := edtLength.Text;
  // FB := edtFB.Value;
  // price := edtPrice.Text;
  // стеблей := StrToInt(edtCount.Text);
  // InsUpdDetail(True);
  // ShowDetail;
  // end;
  // end;
  // end;
  // end;
  // end;
  // end
  // else
  // begin
  // case FPasswd.edtLang.ItemIndex of
  // 0:
  // ErrorDialog('Введите кол-во FULL BOX', '', '', '');
  // 1:
  // ErrorDialog('Enter a number in  FULL BOX', '', '', '');
  // 2:
  // ErrorDialog('Introduzcan la estaca-en FULL BOX', '', '', '');
  // end;
  // edtFB.SetFocus;
  // end;
end;

procedure TFNewZakupkaDetail.FrameProduct1lstTreeProductsKeyDown
  (Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    FrameProduct1lstTreeProductsDblClick(Sender)
end;

procedure TFNewZakupkaDetail.FrameSave1btnSaveClick(Sender: TObject);
begin
  if DetectLimitFB = false then
  begin
    FrameSave1.btnSaveClick(Sender);
    with Query1 do
    begin
      Close;
      sql.Text :=
        'UPDATE "документы"."закупки_деталь" SET fb=:fb where код_закупки=' +
        IntToStr(id_zakup_edit) + ' and fb is not null';
      ParamByName('fb').AsFloat := edtFB.Value;
      ExecSQL;
    end;
    Close;
  end;
  if TransactZakup.Active = True then
    TransactZakup.Commit;
end;

procedure TFNewZakupkaDetail.FrameSearch1edtNameKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (edtPlant.Text <> '') And (Key = VK_RETURN) then
    ShowProductsW;
end;

procedure TFNewZakupkaDetail.FrameSearch1edtNameKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  // if QueryDetail.RecordCount = 0 then
  // FrameProduct1.FrameSearch1edtNameKeyUp(Sender, Key, Shift);
end;

procedure TFNewZakupkaDetail.InsUpdDetail(id_ins: Boolean);
var
  // Query1: TUniQuery;
  id_detail: Integer;
  id_detail_factura: Integer;
begin
  if TransactZakup.Active = false then
    TransactZakup.StartTransaction;
  if id_zakup_edit = 0 then
    InsUpdZakup(True);
  FSplash.Show;
  with Query1 do
  begin
    Close;
    if id_ins = True then
    begin
      id_detail := PGSQL.NewID('"документы"."закупки_деталь_id_seq"');
      sql.Text :=
        'INSERT INTO "документы"."закупки_деталь"(id, "код_закупки", "код_плантации",'
        + ' "код_сорта", "код_товара", "цена", fb, "длина", "стеблей", ' +
        ' код_пользователя, код_деталь_заказ) VALUES (' +
        ' :id, :код_закупки, :код_плантации, :код_сорта, :код_товара, :цена,' +
        ' :fb, :длина, :стеблей, :код_пользователя, :код_деталь_заказ)';
      ParamByName('код_плантации').Value := id_plant;
      ParamByName('код_сорта').Value := QuerySort.FieldByName('id').AsInteger;
      ParamByName('код_товара').Value := QueryProduct.FieldByName('id')
        .AsInteger;
      ParamByName('код_деталь_заказ').Value := id_order_edit;
      if QueryDetail.RecordCount = 0 then
      begin
        ParamByName('fb').Value := edtFB.Value;
      end;
    end;
    ParamByName('id').Value := id_detail;
    ParamByName('код_закупки').Value := id_zakup_edit;
    ParamByName('длина').Value := edtLength.Text;
    ParamByName('цена').Value := edtPrice.Text;
    ParamByName('стеблей').Value := edtCount.Text;
    ParamByName('код_пользователя').AsInteger := FPasswd.ID_USER;
    ExecSQL;
    ShowDetail;
  end;
  FSplash.Close;
{$REGION 'Последнее добавление обновление'}
  // FSplash.Show;
  // with Query1 do
  // begin
  // Close;
  // sql.Text :=
  // 'select * from "документы".ins_upd_zakup_detail(:id_ins, :s_код_закупки, '
  // + '  :s_код_товара, :s_цена, :s_fb, :s_длина, :s_стеблей, ' +
  // ' :s_код_пользователя, :s_код_деталь_заказ, :s_код_фактуры, :id, :s_код_заказа)';
  // if id_ins = false then
  // ParamByName('id').AsInteger := QueryDetail.FieldByName('id').AsInteger;
  // ParamByName('id_ins').Value := id_ins;
  // ParamByName('s_код_товара').Value := id_product;
  // ParamByName('s_код_деталь_заказ').Value := id_order_detail;
  // ParamByName('s_код_закупки').Value := id_zakup_edit;
  // ParamByName('s_длина').Value := len;
  // ParamByName('s_цена').Value := price;
  // ParamByName('s_стеблей').Value := стеблей;
  // ParamByName('s_код_пользователя').AsInteger := FPasswd.ID_USER;
  // ParamByName('s_код_фактуры').Value := id_factura;
  // ParamByName('s_код_заказа').Value := id_order_edit;
  // if QueryDetail.RecordCount = 0 then
  // begin
  // ParamByName('s_fb').Value := edtFB.Value;
  // end
  // else
  // ParamByName('s_fb').Value := null;
  // Open;
  // id_detail := FieldByName('new_id').AsInteger;
  // end;
  // FSplash.Close;
{$ENDREGION}
{$REGION 'Старое добавление/обновление'}
  // FSplash.Show;
  // Query1 := TUniQuery.Create(nil);
  // Query1.Connection := DM1.dbUpd;
  // DM1.dbUpd.Connected := True;
  // with Query1 do
  // begin
  // Close;
  // if id_ins = True then
  // begin
  // id_detail := PGSQL.NewID('"документы"."закупки_деталь_id_seq"');
  // sql.Text :=
  // 'INSERT INTO "документы"."закупки_деталь"(id, "код_закупки", "код_плантации",'
  // + ' "код_сорта", "код_товара", "цена", fb, "длина", "стеблей", ' +
  // ' код_пользователя, код_деталь_заказ) VALUES (' +
  // ' :id, :код_закупки, :код_плантации, :код_сорта, :код_товара, :цена,' +
  // ' :fb, :длина, :стеблей, :код_пользователя, :код_деталь_заказ)';
  // ParamByName('код_плантации').Value := id_plant;
  // ParamByName('код_сорта').Value := id_sort;
  // ParamByName('код_товара').Value := id_product;
  // ParamByName('код_деталь_заказ').Value := id_order_edit;
  // if QueryDetail.RecordCount = 0 then
  // begin
  // ParamByName('fb').Value := edtFB.Value;
  // end;
  // end
  // else
  // begin
  // id_detail := QueryDetail.FieldByName('id').AsInteger;
  // sql.Text :=
  // 'UPDATE "документы"."закупки_деталь" SET "код_закупки" = :код_закупки,'
  // + ' "цена" = :цена,  "длина" = :длина, "стеблей" = :стеблей, ' +
  // 'код_пользователя=:код_пользователя WHERE  id = :id';
  // end;
  // ParamByName('id').Value := id_detail;
  // ParamByName('код_закупки').Value := id_zakup_edit;
  // ParamByName('длина').Value := len;
  // ParamByName('цена').Value := price;
  // ParamByName('стеблей').Value := стеблей;
  // ParamByName('код_пользователя').AsInteger := FPasswd.ID_USER;
  // ExecSQL;
  // { фактура деталь }
  // Close;
  // if id_ins = True then
  // begin
  // id_detail_factura := PGSQL.NewID('"документы"."фактура_деталь_id_seq"');
  // sql.Text := 'INSERT INTO "документы"."фактура_деталь"(id,  "код_фактуры",'
  // + ' "код_пользователя",  "код_детализ_закупки",  "код_сорта",' +
  // '  "код_товара",  "цена",  fb,  "стеблей", длина, код_плантации) VALUES ('
  // + ' :id,  :код_фактуры,  :код_пользователя,  :код_детализ_закупки,' +
  // '  :код_сорта,  :код_товара,  :цена,  :fb,  :стеблей, :длина, :код_плантации)';
  // ParamByName('id').Value := id_detail_factura;
  // ParamByName('код_детализ_закупки').AsInteger := id_detail;
  // ParamByName('код_фактуры').Value := id_factura;
  // if QueryDetail.RecordCount = 0 then
  // ParamByName('fb').Value := edtFB.Value;
  // ParamByName('код_плантации').Value := id_plant;
  // ParamByName('код_сорта').Value := id_sort;
  // ParamByName('код_товара').Value := id_product;
  // end
  // else
  // begin
  // sql.Text :=
  // 'update "документы"."фактура_деталь" set код_пользователя=:код_пользователя'
  // + ', длина=:длина,  цена=:цена, стеблей=:стеблей where код_детализ_закупки='
  // + IntToStr(id_detail);
  // end;
  // ParamByName('код_пользователя').AsInteger := FPasswd.ID_USER;
  // ParamByName('длина').Value := len;
  // ParamByName('цена').Value := price;
  // ParamByName('стеблей').Value := стеблей;
  // ExecSQL;
  // end;
  // FSplash.Close;
{$ENDREGION}
end;

procedure TFNewZakupkaDetail.InsUpdZakup(id_ins: Boolean);
begin
  with Query1 do
  begin
    Close;
    sql.Text :=
      'select * from "документы".ins_zakup(:id_ins,:код_детали_заказа, ' +
      ' :код_пользователя, :дата_закупки, :код_плантации, :код_маркировки, :дата_вылета, :id, :s_id_zakaz )';
    if id_ins = false then
      ParamByName('id').Value := id_zakup_edit;
    ParamByName('id_ins').Value := id_ins;
    ParamByName('дата_вылета').AsDate := s_date_fly_edit;
    ParamByName('код_детали_заказа').AsInteger := id_order_detail;
    ParamByName('код_пользователя').Value := FPasswd.ID_USER;
    ParamByName('дата_закупки').AsDate := now;
    ParamByName('код_плантации').Value := id_plant;
    ParamByName('код_маркировки').Value := id_marking_edit;
    ParamByName('s_id_zakaz').Value := id_order_edit;
    Open;
    id_zakup_edit := FieldByName('new_id').AsInteger;
    id_factura := FieldByName('o_id_factura').AsInteger;
  end;
{$REGION 'Старое обновление/добавление'}
  // FSplash.Show;
  // with Query1 do
  // begin
  // Close;
  // { закупка }
  // if id_ins = True then
  // begin
  // id_zakup_edit := PGSQL.NewID('"документы"."закупки_id_seq"');
  // sql.Text :=
  // 'INSERT INTO "документы"."закупки"(id, "код_детали_заказа",код_пользователя'
  // + ', фактура_номер, фактура_дата, дата_закупки, код_фактуры) VALUES (' +
  // ':id, :код_детали_заказа,:код_пользователя, :фактура_номер, ' +
  // ' :фактура_дата,:дата_закупки, :код_фактуры )';
  // end
  // else
  // sql.Text :=
  // 'UPDATE "документы"."закупки" SET "код_детали_заказа" = :код_детали_заказа,'
  // + ' "код_пользователя" = :код_пользователя, фактура_номер=:фактура_номер, '
  // + ' фактура_дата=:фактура_дата WHERE id = :id';
  // ParamByName('id').Value := id_zakup_edit;
  // ParamByName('код_детали_заказа').Value := id_order_edit;
  // ParamByName('код_пользователя').Value := FPasswd.ID_USER;
  //
  // if id_ins = True then
  // begin
  // ParamByName('дата_закупки').AsDate := now;
  // ParamByName('код_фактуры').AsInteger := id_factura;
  // end;
  // if edtDateFact.Checked = True then
  // begin
  // ParamByName('фактура_номер').Value := edtNumFact.Text;
  // ParamByName('фактура_дата').Value := edtDateFact.Date;
  // end;
  // ExecSQL;
  // if id_factura = 0 then
  // // if id_ins = True then
  // begin
  // id_factura := PGSQL.NewID('"документы"."фактуры_id_seq"');
  // { фактура }
  // Close;
  // sql.Text :=
  // 'INSERT INTO "документы"."фактуры"(id, "код_закупки", "номер",' +
  // '"дата_фактуры", "код_пользователя",код_статуса, дата_вылета, ' +
  // 'код_маркировки, код_плантации, дата_закупки) ' +
  // ' VALUES (:id, :код_закупки, :номер, :дата_фактуры,' +
  // '  :код_пользователя,1,:дата_вылета, :код_маркировки, :код_плантации, :дата_закупки)';
  // ParamByName('id').AsInteger := id_factura;
  // ParamByName('код_закупки').AsInteger := id_zakup_edit;
  // ParamByName('дата_фактуры').AsDate := now;
  // ParamByName('код_пользователя').AsInteger := FPasswd.ID_USER;
  // ParamByName('дата_вылета').AsDate := s_date_fly_edit;
  // ParamByName('код_маркировки').AsInteger := id_marking_edit;
  // ParamByName('код_плантации').AsInteger := id_plant;
  // ParamByName('дата_закупки').AsDate := now;
  // ExecSQL;
  // { заказ }
  // Close;
  // sql.Text := 'update "документы"."заказы_деталь" set код_закупки=' +
  // IntToStr(id_zakup_edit) + ' where id=' + IntToStr(id_order_edit);
  // ExecSQL;
  // end;
  // ShowDetail;
  // end;
  // FSplash.Close;
{$ENDREGION}
end;

procedure TFNewZakupkaDetail.QueryDetailAfterFetch(DataSet: TCustomDADataSet);
begin
  FSplash.Close;
end;

procedure TFNewZakupkaDetail.ShowDetail;
begin
  with QueryDetail do
  begin
    Close;
    ParamByName('id').AsInteger := id_zakup_edit;
    Open;
  end;
end;

procedure TFNewZakupkaDetail.ShowProduct(id_locate: Integer = 0);
begin
  if edtSort.Text <> '' then
  begin
    with QueryProduct do
    begin
      Close;
      sql.Clear;
      sql.Add(' select *');
      sql.Add(' from "продукция"."продукция" p');
      sql.Add(' where p."код_плантации" = ' + IntToStr(id_plant) + ' and');
      sql.Add(' p."код_типа" = ' + IntToStr(edtType.EditValue) + ' and');
      sql.Add(' p."код_сорта" = ' + QuerySort.Fields[0].AsString);
      sql.Add(' and p.id not in(select код_товара from "документы"."закупки_деталь" ');
      sql.Add(' where код_закупки=' + IntToStr(id_zakup_edit) + ')');
      sql.Add(' order by uni_name');
      Open;
      if id_locate = 0 then
        if Fields[0].AsString <> '' then
          edtProduct.EditValue := Fields[0].AsString;
    end;
  end;
end;

procedure TFNewZakupkaDetail.ShowProductsW;
var
  p, s, pr: string;
begin
  // with FrameProduct1 do
  // begin
  // with Query1 do
  // begin
  // Close;
  // sql.Text :=
  // 'select id from "продукция"."продукция" where pid IN (select id ' +
  // ' from "продукция"."продукция" where "код_детализации"=' +
  // IntToStr(id_plant) + ' and "код_структуры"=4) ';
  // Open;
  // while not eof do
  // begin
  // s := s + Fields[0].AsString + ',';
  // Next;
  // end;
  // end;
  // s := Copy(s, 1, length(s) - 1);
  // if s <> '' then
  // begin
  // with QueryProduct do
  // begin
  // Close;
  // sql.Text :=
  // 'select * from "продукция"."продукция" where id in (select pid from' +
  // '"продукция"."продукция" p where p."код_детализации"=' +
  // IntToStr(id_plant) + ' and p."код_структуры"=4)' +
  // 'union all select * from "продукция"."продукция" p where p."код_детализации"='
  // + IntToStr(id_plant) + ' and p."код_структуры"=4' +
  // 'union all select * from "продукция"."продукция" where id IN ' + ' ('
  // + s + ') or pid in (' + s + ')';
  // if FrameSearch1.edtName.Text <> '' then
  // begin
  // sql.Add(' and UPPER(');
  // case FPasswd.Lang of
  // 0:
  // sql.Add('name');
  // 1:
  // sql.Add('uni_name');
  // 2:
  // sql.Add('reg_name');
  // end;
  // sql.Add(') Like ''%' + AnsiUpperCase
  // (FrameSearch1.edtName.Text) + '%''');
  // end;
  // Open;
  // if FrameSearch1.edtName.Text <> '' then
  // lstTreeProducts.FullExpand;
  // end;
  // end;
  // end;
end;

procedure TFNewZakupkaDetail.ShowSort(id_locate: Integer = 0);
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
    sql.Add(' ss."код_страны" = ' + IntToStr(id_country) + ' and');
    sql.Add(' sp."код_плантации" =' + IntToStr(id_plant));
    sql.Add(' order by s.uni_name');
    Open;
  end;
end;

procedure TFNewZakupkaDetail.ShowType(id_locate: Integer = 0);
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
    sql.Add(' "продукция"."типы" t');
    sql.Add(' INNER JOIN "продукция"."плантация_тип" pt ON (t.id = pt."код_типа")');
    sql.Add(' WHERE');
    sql.Add(' pt."код_плантации" = ' + IntToStr(id_plant));
    sql.Add(' order by t."приоритет"');
    Open;
    if id_locate = 0 then
      edtType.EditValue := Fields[0].AsInteger;
  end;
  ShowSort();
  edtSort.SetFocus;
end;

procedure TFNewZakupkaDetail.ViewOrderDblClick(Sender: TObject);
begin
  btnEditClick(Sender);
end;

end.
