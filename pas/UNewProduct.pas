unit UNewProduct;

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
  Data.DB,
  MemDS,
  DBAccess,
  Uni,
  Vcl.StdCtrls,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  dxSkinsCore,

  cxGroupBox,
  UFrameSave,
  cxTextEdit,
  cxLabel,
  Menus,
  cxButtons,
  cxMaskEdit,
  cxDropDownEdit,
  cxDBLookupComboBox,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sCurrEdit,

  dxSkinDevExpressStyle,

   dxSkinsDefaultPainters;

type
  TFNewProduct = class(TForm)
    dsTTH: TDataSource;
    QueryTTH: TUniQuery;
    GroupOsn: TcxGroupBox;
    FrameSave1: TFrameSave;
    QueryName: TUniQuery;
    GroupTTH: TcxGroupBox;
    btnName: TcxButton;
    lblUniName: TcxLabel;
    edtUniName: TcxTextEdit;
    edtName: TcxTextEdit;
    lblName: TcxLabel;
    edtRegName: TcxTextEdit;
    lblRegName: TcxLabel;
    edtPrice: TsCalcEdit;
    lblPrice: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNameClick(Sender: TObject);
    procedure edtNameKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtUniNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrameSave1btnSaveClick(Sender: TObject);
    procedure edtUniNamePropertiesChange(Sender: TObject);
    procedure edtNamePropertiesChange(Sender: TObject);
    procedure edtRegNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtRegNamePropertiesChange(Sender: TObject);
    procedure edtPriceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    CountQuery: Integer;
    Query: array [1 .. 20] of TUniQuery;
    DS: array [1 .. 20] of TDataSource;
    QueryAllName: TUniQuery;
    s_id_type: string; // поле в cорте
    s_name_sort: string;
    Plant, Country: string;
    procedure EnableSave;
    procedure GetParrents(id: string);
    function GetUseName(s_id: Integer): Boolean;
    procedure InsUpdProduct(id_ins: Boolean);
    procedure InsertPropValue;
    { Private declarations }
  public
    id_new: Boolean;
    s_id_detail: string;
    s_id_parrent: string;
    s_id_product: Integer;
    Gen_Name, Gen_UniName, Gen_RegName: string;
    s_tree: string;
    procedure GetAllNames(s_name: string);
    procedure GetInfoForProduct;
    procedure SetLang;
    procedure SetName;
    { Public declarations }
  end;

var
  FNewProduct: TFNewProduct;

implementation

{$R *.dfm}

uses
  UDataModule1,
  UPasswd,
  PGSQL,
  USplash;

procedure TFNewProduct.FormCreate(Sender: TObject);
begin
  QueryAllName := TUniQuery.Create(nil);
  QueryAllName.Connection := DM1.dbUpd;
end;

procedure TFNewProduct.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TFNewProduct.btnNameClick(Sender: TObject);
begin
  FSplash.Show;
  SetName;
  edtPrice.SetFocus;
  FSplash.Close;
end;

procedure TFNewProduct.edtNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFNewProduct.edtNamePropertiesChange(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewProduct.edtPriceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    if FrameSave1.btnSave.Enabled = true then
      FrameSave1btnSaveClick(Sender);
end;

procedure TFNewProduct.edtRegNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFNewProduct.edtRegNamePropertiesChange(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewProduct.edtUniNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFNewProduct.edtUniNamePropertiesChange(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewProduct.EnableSave;
begin
  if (edtName.Text <> '') and (edtUniName.Text <> '') and (edtRegName.Text <> '')
  then
    FrameSave1.btnSave.Enabled := true
  else
    FrameSave1.btnSave.Enabled := False;
end;

procedure TFNewProduct.FormShow(Sender: TObject);
begin
  FrameSave1.SetLang;
  SetLang;
  if s_id_product = 0 then
    GetInfoForProduct
  else
  begin
    GroupTTH.Visible := False;
    GroupTTH.Height := 0;
    edtPrice.SetFocus;
    btnName.Enabled := False;
  end;
  EnableSave;
  if btnName.Enabled = true then
    btnName.SetFocus
  else
    edtPrice.SetFocus;
end;

procedure TFNewProduct.FrameSave1btnSaveClick(Sender: TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  if s_id_product = 0 then
  begin
    InsUpdProduct(true);
    InsertPropValue;
  end
  else
    InsUpdProduct(False);
  Close;
end;

procedure TFNewProduct.GetAllNames(s_name: string);
begin
  with QueryAllName do
  begin
    Close;
    sql.Text :=
      'select * from "продукция"."свойства_значения" where uni_name=:name LIMIT 1';
    ParamByName('name').AsString := s_name;
    Open;
  end;
end;

procedure TFNewProduct.GetInfoForProduct;
var
  a: array [1 .. 20] of TcxLookupComboBox; // массив элементов Edit
  b: array [1 .. 20] of TLabel; // массив меток
  i: Integer;
  top: Integer;
  Query1, Query2: TUniQuery;
begin
  i := 1;
  CountQuery := 0;
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  Query2 := TUniQuery.Create(nil);
  Query2.Connection := DM1.dbUpd;
  with Query1 do
  begin
    { определяем карактеристики по типу }
    Close;
    sql.Text := 'select * from "продукция"."типы_свойства" where код_типа IN ('
      + 'select код_типа from "продукция"."сорта" where id=' + s_id_detail +
      ' ) order by id';
    Open;
    { высота + (кол-во хар-к -1)*30 }
    Height := Height + (RecordCount - 1) * 42;
    top := 16;
    while not Eof do
    begin
      b[i] := TLabel.Create(self);
      b[i].parent := GroupTTH;
      b[i].left := 10;
      b[i].Width := GroupTTH.Width - 20;
      case FPasswd.Lang of
        0:
          b[i].Caption := FieldByName('name').AsString + ':';
        1:
          b[i].Caption := FieldByName('uni_name').AsString + ':';
        2:
          b[i].Caption := FieldByName('reg_name').AsString + ':';
      end;
      b[i].top := top;
      top := top + 15;
      //
      Query[i] := TUniQuery.Create(self);
      Query[i].Connection := DM1.dbUpd;
      Query[i].Close;
      if FieldByName('uniq').AsBoolean = False then
        Query[i].sql.Text :=
          'select * from  "продукция"."свойства_значения" where код_свойства=' +
          fields[0].AsString
      else
        Query[i].sql.Text :=
          'select * from  "продукция"."свойства_значения" where ' +
          ' код_свойства=' + fields[0].AsString + ' and id not in ' +
          ' (select код_значения_свойства from "продукция"."продукт_свойство" '
          + ' where код_товара in (select id from "продукция"."продукция" where pid='
          + s_id_parrent + '))';
      Query[i].Open;
      DS[i] := TDataSource.Create(self);
      DS[i].DataSet := Query[i];
      a[i] := TcxLookupComboBox.Create(self);
      a[i].parent := GroupTTH;
      a[i].left := 10;
      a[i].Width := GroupTTH.Width - 20;
      a[i].top := top;
      a[i].Properties.DropDownListStyle := lsFixedList;
      a[i].Style.LookAndFeel.Kind := lfOffice11;
      a[i].Properties.ListSource := DS[i];
      a[i].Properties.ListFieldNames := 'uni_name';
      a[i].Properties.KeyFieldNames := 'id';
      a[i].EditValue := Query[i].fields[0].AsInteger;
      a[i].Properties.ListOptions.ShowHeader := False;
      if FieldByName('use_name').AsBoolean = true then
        a[i].Tag := 1
      else
        a[i].Tag := 0;
      CountQuery := CountQuery + 1;
      // if FieldByName('use_name').AsBoolean = True then
      // a[i].Tag := 1
      // else
      // a[i].Tag := 0;
      // a[i].Tag:=
      top := top + 23;
      // Query2.Close;
      // Query2.SQL.Text :=
      // 'select * from  "продукция"."свойства_значения" where код_свойства=' +
      // fields[0].AsString;
      // Query2.Open;
      // while not Query2.Eof do
      // begin
      // a[i].Properties.Items.Add(Query2.FieldByName('uni_name').AsString);
      // a[i].Tag := Query2.FieldByName('id').AsInteger;
      // Query2.Next;
      // end;
      // a[i].ItemIndex := 0;
      Inc(i);
      Next;
    end;
    if RecordCount > 0 then
      a[1].SetFocus;
  end;
  // TODO -cMM: TFNewProduct.GetInfoForProduct default body inserted
end;

procedure TFNewProduct.GetParrents(id: string);
begin
  with QueryName do
  begin
    Close;
    sql.Text := 'select * from "продукция"."продукция" where id=' + id;
    Open;
    Gen_Name := FieldByName('name').AsString + ', ' + Gen_Name;
    Gen_UniName := FieldByName('uni_name').AsString + ', ' + Gen_UniName;
    Gen_RegName := FieldByName('reg_name').AsString + ', ' + Gen_RegName;
    while FieldByName('pid').AsInteger <> 1 do
      GetParrents(FieldByName('pid').AsString);
  end;
end;

function TFNewProduct.GetUseName(s_id: Integer): Boolean;
var
  Query1: TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  with Query1 do
  begin
    Close;
    sql.Text := 'select use_name from "продукция"."типы_свойства" where id= (' +
      'select код_свойства from "продукция"."свойства_значения" where id=' +
      inttostr(s_id) + ')';
    Open;
    Result := fields[0].AsBoolean;
  end;
  // TODO -cMM: TFNewProduct.GetUseName default body inserted
end;

procedure TFNewProduct.InsUpdProduct(id_ins: Boolean);
var
  Query1: TUniQuery;
begin
  FSplash.Show;
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  with Query1 do
  begin
    Close;
    if id_ins = true then
    begin
      s_id_product := PGSQL.NewID('"продукция"."продукция_id_seq"');
      sql.Text := 'insert into продукция.продукция (id,pid,код_структуры,name,'
        + ' uni_name, reg_name, цена, tree) values (:id,:pid,6,:name,:uni_name, :reg_name, :цена, :tree)';
    end
    else
    begin
      sql.Text := 'UPDATE "продукция"."продукция" SET pid = :pid,' +
        ' name = :name, uni_name = :uni_name, reg_name = :reg_name, ' +
        '"цена" = :цена WHERE id = :id';
    end;
    ParamByName('id').AsInteger := s_id_product;
    ParamByName('pid').AsString := s_id_parrent;
    if id_ins = true then
      ParamByName('tree').AsString := s_tree;
    ParamByName('name').AsString := edtName.Text;
    ParamByName('uni_name').AsString := edtUniName.Text;
    ParamByName('reg_name').AsString := edtRegName.Text;
    ParamByName('цена').Value := edtPrice.Value;
    ExecSQL;
    Close;
    sql.Text := 'select * from "продукция".get_product_plant(' +
      inttostr(s_id_product) + ')';
    Open;
    // Close;
    // sql.Text:='insert into "продукция"."продукт_свойство" (код_товара, код_значения_свойства) '
    // +'(:код_товара, :код_значения_свойства) ';
    // ParamByName('').aasin
    // ExecSQL;
  end;
  FSplash.Close;
end;

procedure TFNewProduct.InsertPropValue;
var
  Query1: TUniQuery;
  i: Integer;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  with Query1 do
  begin
    Close;
    sql.Text :=
      'insert into "продукция"."продукт_свойство" (код_товара, код_значения_свойства) '
      + ' values (:код_товара, :код_значения_свойства) ';
    for i := 1 to GroupTTH.ControlCount - 1 do
    begin
      if GroupTTH.Controls[i].ClassName = 'TcxLookupComboBox' then
      begin
        Close;
        ParamByName('код_значения_свойства').AsInteger :=
          (GroupTTH.Controls[i] as TcxLookupComboBox).EditValue;
        //
        // ((GroupTTH.Controls[i] as TcxComboBox).;
        ParamByName('код_товара').AsInteger := s_id_product;
        ExecSQL;
      end;
    end;
  end;
end;

procedure TFNewProduct.SetLang;
begin
  case FPasswd.Lang of
    0:
      begin
        Caption := 'Карточка товара';
        GroupTTH.Caption := 'Свойства';
        GroupOsn.Caption := 'Основные сведения';
        btnName.Caption := 'Сформировать';
        lblUniName.Caption := 'Международный';
        lblName.Caption := 'Русский';
        lblRegName.Caption := 'Региональный';
      end;
    1:
      begin
        Caption := 'Card of the goods';
        GroupTTH.Caption := 'Properties';
        GroupOsn.Caption := 'Basic information';
        btnName.Caption := 'Form';
        lblUniName.Caption := 'International';
        lblName.Caption := 'Russian';
        lblRegName.Caption := 'Regional';
      end;
    2:
      begin
        Caption := 'La tarjeta de la mercancía';
        GroupTTH.Caption := 'Las propiedades';
        GroupOsn.Caption := 'Las noticias básicas';
        btnName.Caption := 'Formar';
        lblUniName.Caption := 'Internacional';
        lblName.Caption := 'Ruso';
        lblRegName.Caption := 'Regional';
      end;
  end;
end;

procedure TFNewProduct.SetName;
var
  i: Integer;
  a: array [1 .. 20] of TEdit;
begin
  Gen_Name := '';
  Gen_UniName := '';
  Gen_RegName := '';
  GetParrents(s_id_parrent);
  for i := 0 to GroupTTH.ControlCount - 1 do
  begin
    if GroupTTH.Controls[i].ClassName = 'TcxLookupComboBox' then
    begin
      // if GroupTTH.Controls[i].Tag = 1 then
      if GroupTTH.Controls[i].Tag = 1 then
      begin
        GetAllNames((GroupTTH.Controls[i] as TcxLookupComboBox).Text);
        Gen_UniName := Gen_UniName + QueryAllName.FieldByName('uni_name')
          .AsString + ', ';
        Gen_Name := Gen_Name + QueryAllName.FieldByName('name').AsString + ', ';
        Gen_RegName := Gen_RegName + QueryAllName.FieldByName('reg_name')
          .AsString + ', ';
      end;
    end;
  end;
  edtName.Text := Copy(Gen_Name, 1, Length(Gen_Name) - 2);
  edtUniName.Text := Copy(Gen_UniName, 1, Length(Gen_UniName) - 2);
  edtRegName.Text := Copy(Gen_RegName, 1, Length(Gen_RegName) - 2);
end;

end.
