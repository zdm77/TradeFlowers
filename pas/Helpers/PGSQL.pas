unit PGSQL;

interface

uses
  Uni,
  SysUtils,
  cxMemo,
  Forms,
  Windows,
  NB30;

var
  id_country, id_city, id_street: Integer;
  name_country, name_city: string;
  Level_Val: Integer;
function NewID(name_seq: string): Integer;
/// <summary>
/// Стандартная вставка
/// </summary>
/// <param name="name_seq">
/// Имя последовательности
/// </param>
/// <param name="TableName">
/// Имя таблицы
/// </param>
/// <param name="s_name">
/// Русское имя
/// </param>
/// <param name="s_uniname">
/// Английское имя
/// </param>
/// <param name="s_regname">
/// Испанское имя
/// </param>
procedure StandartInsert(name_seq, TableName, s_name, s_uniname,
  s_regname: string; s_query_for_refresh: TUniQuery;
  id_use_name: boolean = false);
procedure StandartUpdate(s_id, TableName, s_name, s_uniname, s_regname: string;
  s_query_for_refresh: TUniQuery; id_use_name: boolean = false);
function StandartDelete(s_id, TableName: string; s_query_for_refresh: TUniQuery;
  связь_поле: string = ''; связь_таблица: string = '';
  поле_подробностей: string = ''; заголовок_подробностей: string = ''): boolean;
procedure SelectAddress(s_memo: TcxMemo; s_IDCountry, s_IDCity, s_IDRegion,
  s_IDStreet: Integer; s_IDHome, s_IDKorpus, s_IDKvartira, s_Index: string);
procedure AddMarking(table_detail, field_detail: string; value_detail: Integer);
procedure AddMarkingAllPrice(s_id_marking: Integer);
function GetIDDetail(s_id: Integer): Integer;
function GetPid(s_id: Integer): Integer;
function GetLength(s_id: Integer): string;
procedure DelType(s_id_type, s_id_plant: Integer);
function GetNewTree(s_id: Integer; s_tree: string): string;
procedure DelCountry(id_country: Integer; id_type: Integer);
procedure DelSort(s_id_sort, s_id_plant: Integer);
function ReturnSystemDate: Tdate;
function GetComputerNetName: string;
function GetHDDSn(): string;
function GetUserFromWindows: string;
function GetAdapterInfo(Lana: Char): string;
function GetMACAddress: string;
procedure DetectVersion;
function GetFieldFromId(s_id: Integer; s_field_name, s_table: string): string;

implementation

uses
  UDataModule1,
  UPasswd,
  UDialogMy,
  UAdress;

function GetAdapterInfo(Lana: Char): string;
var
  Adapter: TAdapterStatus;
  NCB: TNCB;
begin
  FillChar(NCB, SizeOf(NCB), 0);
  NCB.ncb_command := Char(NCBRESET);
  NCB.ncb_lana_num := AnsiChar(Lana);
  if Netbios(@NCB) <> Char(NRC_GOODRET) then
  begin
    Result := 'Адрес не известен';
    Exit;
  end;
  FillChar(NCB, SizeOf(NCB), 0);
  NCB.ncb_command := Char(NCBASTAT);
  NCB.ncb_lana_num := AnsiChar(Lana);
  NCB.ncb_callname := '*';
  FillChar(Adapter, SizeOf(Adapter), 0);
  NCB.ncb_buffer := @Adapter;
  NCB.ncb_length := SizeOf(Adapter);
  if Netbios(@NCB) <> Char(NRC_GOODRET) then
  begin
    Result := 'Адрес не известен';
    Exit;
  end;
  Result := IntToHex(Byte(Adapter.adapter_address[0]), 2) + '-' +
    IntToHex(Byte(Adapter.adapter_address[1]), 2) + '-' +
    IntToHex(Byte(Adapter.adapter_address[2]), 2) + '-' +
    IntToHex(Byte(Adapter.adapter_address[3]), 2) + '-' +
    IntToHex(Byte(Adapter.adapter_address[4]), 2) + '-' +
    IntToHex(Byte(Adapter.adapter_address[5]), 2);
end;

function GetMACAddress: string;
var
  AdapterList: TLanaEnum;
  NCB: TNCB;
begin
  FillChar(NCB, SizeOf(NCB), 0);
  NCB.ncb_command := Char(NCBENUM);
  NCB.ncb_buffer := @AdapterList;
  NCB.ncb_length := SizeOf(AdapterList);
  Netbios(@NCB);
  if Byte(AdapterList.length) > 0 then
    Result := GetAdapterInfo(Char(AdapterList.Lana[0]))
  else
    Result := 'Адрес не известен';
end;

function GetUserFromWindows: string;
var
  UserName: string;
  UserNameLen: Dword;
begin
  UserNameLen := 255;
  SetLength(UserName, UserNameLen);
  if GetUserName(PChar(UserName), UserNameLen) then
    Result := Copy(UserName, 1, UserNameLen - 1)
  else
    Result := 'Unknown';
end;

function GetHDDSn(): string;
var
  VolumeSerialNumber: Dword;
  MaximumComponentLength: Dword;
  FileSystemFlags: Dword;
  SerialNumber: string;
begin
  GetVolumeInformation('C:\', nil, 0, @VolumeSerialNumber,
    MaximumComponentLength, FileSystemFlags, nil, 0);
  SerialNumber := IntToHex(HiWord(VolumeSerialNumber), 4) + '-' +
    IntToHex(LoWord(VolumeSerialNumber), 4);
  Result := SerialNumber;
end;

function GetNewTree(s_id: Integer; s_tree: string): string;
var
  Query1: TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  with Query1 do
  begin
    Close;
    sql.Text := 'select max(level_val) from продукция.продукция where pid=' +
      IntToStr(s_id);
    Open;
    if Fields[0].AsString <> '' then
    begin
      Level_Val := Fields[0].AsInteger + 1;
      Result := s_tree + IntToStr(Fields[0].AsInteger + 1) + '.'
    end
    else
    begin
      Result := s_tree + '1.';
      Level_Val := 1;
    end;
  end;
end;

procedure DelType(s_id_type, s_id_plant: Integer);
var
  tree: string;
  Query1: TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  with Query1 do
  begin
    Close;
    sql.Text := 'select tree from продукция.продукция where id=(' +
      'select код_товара from продукция.плантация_тип where код_плантации=' +
      IntToStr(s_id_plant) + ' and код_типа=' + IntToStr(s_id_type) + ')';
    Open;
    tree := Fields[0].AsString;
    if tree <> '' then
    begin
      DM1.dbUpd.StartTransaction;
      { отвязываем плантацию от сорта с этим типом }
      try
        Close;
        sql.Text := 'delete from продукция.сорт_плантация where код_плантации='
          + IntToStr(s_id_plant) +
          ' and код_сорта in(select id from продукция.сорта where код_типа=' +
          IntToStr(s_id_type) + ')';
        ExecSQL;
        { отвязываем тип от плантации }
        Close;
        sql.Text := 'delete from продукция.плантация_тип where код_плантации=' +
          IntToStr(s_id_plant) + ' and код_типа=' + IntToStr(s_id_type);
        ExecSQL;
        { удаляем детей из номенклатуры }
        Close;
        sql.Text := 'delete from "продукция"."продукция" where tree like ''' +
          tree + '%''';
        ExecSQL;
        DM1.dbUpd.Commit;
      except
        DM1.dbUpd.Rollback;
      end;
    end;
  end;
end;

function NewID(name_seq: string): Integer;
var
  Query1: TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  with Query1 do
  begin
    Close;
    sql.Text := 'select nextval(' + QuotedStr(name_seq) + ')';
    Open;
    Result := Fields[0].AsInteger;
  end;
end;

procedure StandartInsert(name_seq, TableName, s_name, s_uniname,
  s_regname: string; s_query_for_refresh: TUniQuery;
  id_use_name: boolean = false);
var
  Query1: TUniQuery;
  id: Integer;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  DM1.dbUpd.Connected := true;
  DM1.dbUpd.StartTransaction;
  id := PGSQL.NewID(name_seq);
  with Query1 do
  begin
    Close;
    sql.Text := 'insert into ' + TableName + '(id, name, uni_name, reg_name';
    if id_use_name = true then
      sql.Add(',в_названии');
    sql.Add(') values (:id, :name, :uni_name, :reg_name');
    if id_use_name = true then
      sql.Add(',:в_названии');
    sql.Add(')');
    ParamByName('id').AsInteger := id;
    ParamByName('name').AsString := s_name;
    ParamByName('uni_name').AsString := s_uniname;
    ParamByName('reg_name').AsString := s_regname;
    if id_use_name = true then
      ParamByName('в_названии').AsBoolean := id_use_name;
    try
      ExecSQL;
      DM1.dbUpd.Commit;
      with s_query_for_refresh do
      begin
        Close;
        Open;
        Locate('id', id, []);
      end;
    except
      DM1.dbUpd.Rollback;
    end;
  end;
end;

procedure StandartUpdate(s_id, TableName, s_name, s_uniname, s_regname: string;
  s_query_for_refresh: TUniQuery; id_use_name: boolean = false);
var
  Query1: TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  DM1.dbUpd.Connected := true;
  DM1.dbUpd.StartTransaction;
  with Query1 do
  begin
    Close;
    sql.Text := 'update ' + TableName +
      'set name=:name, uni_name=:uni_name, reg_name=:reg_name';
    if id_use_name = true then
      sql.Add(',в_названии=:в_названии');
    sql.Add(' where id=' + s_id);
    ParamByName('name').AsString := s_name;
    ParamByName('uni_name').AsString := s_uniname;
    ParamByName('reg_name').AsString := s_regname;
    if id_use_name = true then
      ParamByName('в_названии').AsBoolean := id_use_name;
    try
      ExecSQL;
      DM1.dbUpd.Commit;
      s_query_for_refresh.Refresh;
    except
      DM1.dbUpd.Rollback;
    end;
    DM1.dbUpd.Connected := false;
  end;
end;

function StandartDelete(s_id, TableName: string; s_query_for_refresh: TUniQuery;
  связь_поле: string = ''; связь_таблица: string = '';
  поле_подробностей: string = ''; заголовок_подробностей: string = ''): boolean;
var
  s: string;
begin
  case FPasswd.edtLang.ItemIndex of
    0:
      QuestionDialog('Удаление', 'Вы действительно хотите удалить запись?');
    1:
      QuestionDialog('Removal', 'You really want to delete the entry? ');
    2:
      QuestionDialog('Desaparición', 'Queréis quitar realmente la anotación?');
  end;
  if UDialogMy.Dlg.Execute = 100 then
  begin
    Result := true;
    DM1.dbUpd.Connected := true;
    DM1.dbUpd.StartTransaction;
    with DM1.QueryUpd do
    begin
      { продукция }
      Close;
      sql.Text := 'delete from ' + TableName + ' where id=' + s_id;
      try
        ExecSQL;
        s_query_for_refresh.Prior;
        DM1.dbUpd.Commit;
        s_query_for_refresh.Refresh;
      except
        DM1.dbUpd.Rollback;
        Close;
        sql.Text := 'select ' + поле_подробностей + ' from ' + связь_таблица +
          ' where ' + связь_поле + ' =' + s_id;
        Open;
        while not Eof do
        begin
          s := s + Fields[0].AsString + #13;
          Next;
        end;
        case FPasswd.edtLang.ItemIndex of
          0:
            ErrorDialog('Удаление невозможно.', s, 'Есть связанные данные.',
              заголовок_подробностей);
          1:
            ErrorDialog('Removal is impossible', s,
              'There are associated data.', заголовок_подробностей);
          2:
            ErrorDialog('La desaparición es imposible', s,
              'Hay unos datos vinculados.', заголовок_подробностей);
        end;
      end;
    end;
    DM1.dbUpd.Connected := false;
  end;
end;

procedure SelectAddress(s_memo: TcxMemo; s_IDCountry, s_IDCity, s_IDRegion,
  s_IDStreet: Integer; s_IDHome, s_IDKorpus, s_IDKvartira, s_Index: string);
var
  s: string;
begin
  Application.CreateForm(TFAddress, FAddress);
  with FAddress do
  begin
    s_field_name := 'name';
    if s_IDCountry <> 0 then
    begin
      ShowCountry(s_IDCountry);
      ShowRegions(s_IDRegion);
      ShowCity(s_IDCity);
      ShowStreet(s_IDStreet);
      edtHome.Text := s_IDHome;
      edtKorp.Text := s_IDKorpus;
      edtKv.Text := s_IDKvartira;
      edtIndex.Text := s_Index;
    end
    else
    begin
      ShowCountry(FPasswd.id_country);
      // ShowCity(FPasswd.id_city);
    end;
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      IDCountry := edtCountry.EditValue;
      IDRegion := edtRegion.EditValue;
      IDCity := edtCity.EditValue;
      IDStreet := edtStreet.EditValue;
      IndexA := edtIndex.Text;
      IDHome := edtHome.Text;
      IDKorpus := edtKorp.Text;
      IDKvartira := edtKv.Text;
      if edtIndex.Text <> '' then
        s := edtIndex.Text + ', ';
      s := s + edtCountry.Text + ', ';
      if edtRegion.Text <> edtCity.Text then
        s := s + edtRegion.Text;
      if edtCity.Text <> '' then
        s := s + ', ' + edtCity.Text;
      if edtStreet.Text <> '' then
        s := s + ', ' + edtStreet.Text;
      if edtHome.Text <> '' then
        case FPasswd.Lang of
          0:
            s := s + ', кв. ' + edtHome.Text;
          1:
            s := s + ', кв. ' + edtHome.Text;
          2:
            s := s + ', кв. ' + edtHome.Text;
        end;
      if edtKorp.Text <> '' then
        case FPasswd.Lang of
          0:
            s := s + ', корпус. ' + edtKorp.Text;
          1:
            s := s + ', корпус. ' + edtKorp.Text;
          2:
            s := s + ', корпус. ' + edtKorp.Text;
        end;
      if edtKv.Text <> '' then
        case FPasswd.Lang of
          0:
            s := s + ', кв. ' + edtKv.Text;
          1:
            s := s + ', кв. ' + edtKv.Text;
          2:
            s := s + ', кв. ' + edtKv.Text;
        end;
      s_memo.Text := s;
    end;
    // end;
    // if FPasswd.ID_REGION <> 0 then
    // begin
    // with QueryRegion do
    // begin
    // Close;
    // SQL.Text := 'select * from geo_regions where country_id=' +
    // IntToStr(FPasswd.id_country) + '  order by name';
    // Open;
    // edtRegion.EditValue := FPasswd.ID_REGION;
    // end;
    // end;
    // if FPasswd.id_city <> 0 then
    // begin
    // with QueryCity do
    // begin
    // Close;
    // SQL.Text := 'select * from geo_cities where socr NOT IN (:socr)';
    // ParamByName('socr').AsString := 'р-н';
    // if edtRegion.Text <> '' then
    // SQL.Add(' and region_id=' + IntToStr(FPasswd.ID_REGION));
    // Open;
    // edtCity.EditValue := FPasswd.id_city;
    // end;
    // end;
    // ShowModal;
    // if FrameSave1.id_save = true then
    // begin
    // s_memo.Clear;
    if edtCountry.Text <> '' then
    begin
      s := edtCountry.Text + ', ';
      id_country := edtCountry.EditValue;
      name_country := edtCountry.Text;
    end;
    if edtCity.Text <> '' then
    begin
      s := edtCity.Text;
      id_city := edtCity.EditValue;
      name_city := edtCity.Text;
    end;
  end;
  // if edtRegion.Text <> '' then
  // s := s + edtRegion.Text + ', ';
  // if edtCity.Text <> '' then
  // begin
  // s := s + QueryCity.FieldByName('socr').AsString + '. ' +
  // edtCity.Text + ', ';
  // id_city := edtCity.EditValue;
  // name_city := edtCity.Text;
  // end
  // else
  // begin
  // s := 'г. ' + s + edtCity.Text;
  // id_city := edtRegion.EditValue;
  // name_city := edtRegion.Text;
  // end;
  // if edtStreet.Text <> '' then
  // s := s + 'ул. ' + edtStreet.Text + ', ';
  // if edtHome.Text <> '' then
  // s := s + 'д. ' + edtHome.Text + ', ';
  // if edtKorp.Text <> '' then
  // s := s + 'корп. ' + edtKorp.Text + ', ';
  // if edtKv.Text <> '' then
  // s := s + 'кв. ' + edtKv.Text;
  // if (Copy(s, length(s) - 1, 1) = ',') or (Copy(s, length(s) - 1, 1) = ' ')
  // then
  // s := Copy(s, 1, length(s) - 2);
  // s_memo.Text := s;
  // end;
  // end;
end;

procedure AddMarkingAllPrice(s_id_marking: Integer);
var
  Query1, Query2: TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  Query2 := TUniQuery.Create(nil);
  Query2.Connection := DM1.dbUpd;
  DM1.dbUpd.Connected := true;
  { прикулинг }
  with Query2 do
  begin
    Close;
    sql.Text :=
      'INSERT INTO "прикулинг"."наценки"("код_прикулинга", "код_маркировки")' +
      ' VALUES (:код_прикулинга, :код_маркировки)';
  end;
  with Query1 do
  begin
    Close;
    sql.Text :=
      'select id from "прикулинг"."агенства" where id not in (select код_прикулинга'
      + ' from "прикулинг"."наценки" where код_маркировки=' +
      IntToStr(s_id_marking) + ') ';
    Open;
    while Not Eof do
    begin
      Query2.Close;
      Query2.ParamByName('код_маркировки').AsInteger := s_id_marking;
      Query2.ParamByName('код_прикулинга').AsInteger := Fields[0].AsInteger;
      Query2.ExecSQL;
      Next;
    end;
  end;
  { карго }
  with Query2 do
  begin
    Close;
    sql.Text := 'INSERT INTO "карго"."наценки"("код_карго", "код_маркировки")' +
      ' VALUES (:код_карго, :код_маркировки)';
  end;
  with Query1 do
  begin
    Close;
    sql.Text :=
      'select id from "карго"."агенства" where id not in (select код_карго' +
      ' from "карго"."наценки" where код_маркировки=' +
      IntToStr(s_id_marking) + ')';
    Open;
    while Not Eof do
    begin
      Query2.Close;
      Query2.ParamByName('код_маркировки').AsInteger := s_id_marking;
      Query2.ParamByName('код_карго').AsInteger := Fields[0].AsInteger;
      Query2.ExecSQL;
      Next;
    end;
  end;
end;

procedure AddMarking(table_detail, field_detail: string; value_detail: Integer);
var
  Query1, Query2: TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  Query2 := TUniQuery.Create(nil);
  Query2.Connection := DM1.dbUpd;
  DM1.dbUpd.Connected := true;
  with Query2 do
  begin
    Close;
    sql.Text := 'insert into ' + table_detail + ' (код_маркировки,' +
      field_detail + ') values (:код_маркировки, :' + field_detail + ')';
  end;
  with Query1 do
  begin
    Close;
    sql.Text :=
      'select id from маркировки.маркировки where id_group=0 and id not in(' +
      'select код_маркировки from ' + table_detail + ' where ' + field_detail +
      '=' + IntToStr(value_detail) + ')';
    Open;
    while Not Eof do
    begin
      Query2.Close;
      Query2.ParamByName('код_маркировки').AsInteger := Fields[0].AsInteger;
      Query2.ParamByName(field_detail).AsInteger := value_detail;
      Query2.ExecSQL;
      Next;
    end;
  end;
end;

function GetIDDetail(s_id: Integer): Integer;
var
  Query1: TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  DM1.dbUpd.Connected := true;
  with Query1 do
  begin
    Close;
    sql.Text := 'select код_детализации from "продукция"."продукция" where id='
      + IntToStr(s_id);
    Open;
    Result := Fields[0].AsInteger;
  end;
end;

function GetPid(s_id: Integer): Integer;
var
  Query1: TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  DM1.dbUpd.Connected := true;
  with Query1 do
  begin
    Close;
    sql.Text := 'select pid from "продукция"."продукция" where id=' +
      IntToStr(s_id);
    Open;
    Result := Fields[0].AsInteger;
  end;
end;

function GetLength(s_id: Integer): string;
var
  Query1: TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  DM1.dbUpd.Connected := true;
  with Query1 do
  begin
    Close;
    sql.Text := 'SELECT  sz.name FROM "продукция"."продукт_свойство" ps ' +
      ' INNER JOIN "продукция"."продукция" p ON (ps."код_товара" = p.id)' +
      ' INNER JOIN "продукция"."свойства_значения" sz ON (ps."код_значения_свойства" = sz.id)'
      + ' INNER JOIN "продукция"."типы_свойства" ts ON (sz."код_свойства" = ts.id) where код_товара='
      + IntToStr(s_id) + ' and ts.name=:p';
    ParamByName('p').AsString := 'Длина';
    Open;
    Result := Fields[0].AsString;
  end;
end;

procedure DelCountry(id_country: Integer; id_type: Integer);
var
  tree: string;
  id: Integer;
begin
  // DM1.dbUpd.StartTransaction;
  with DM1.QueryUpd do
  begin
    Close;
    sql.Text :=
      'SELECT  "продукция"."продукция".id, "продукция"."продукция".tree' +
      ' FROM  "продукция"."тип_страна" ts  INNER JOIN "продукция"."продукция" ON '
      + '(ts."код_товара" = "продукция"."продукция".id) where ts."код_страны"='
      + IntToStr(id_country);
    Open;
    tree := FieldByName('tree').AsString;
    id := FieldByName('id').AsInteger;
    Close;
    sql.Text := 'SELECT  pt."код_типа", pt."код_плантации" FROM' +
      ' "продукция"."продукция" p  INNER JOIN "продукция"."плантация_тип" pt ON (p.id = pt."код_товара")'
      + '  where tree like ''' + tree + '%''';
    Open;
    while not Eof do
    begin
      PGSQL.DelType(Fields[0].AsInteger, Fields[1].AsInteger);
      Next;
    end;
    Close;
    sql.Text :=
      'select код_товара from "продукция"."тип_страна" where код_страны=' +
      IntToStr(id_country) + ' and код_типа=' + IntToStr(id_type);
    Open;
    // DM1.dbUpd.StartTransaction;
    try
      Close;
      sql.Text := 'delete from "продукция"."тип_страна"  where код_типа=' +
        IntToStr(id_type) + ' and код_страны=' + IntToStr(id_country);
      ExecSQL;
      Close;
      sql.Text := 'delete from "продукция"."продукция" where id=' +
        IntToStr(id);
      ExecSQL;
      // DM1.dbUpd.Commit;
      // ShowCountry;
    except
      // DM1.dbUpd.Rollback;
    end;
  end;
end;

procedure DelSort(s_id_sort, s_id_plant: Integer);
var
  tree, id: string;
  Query1: TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  with Query1 do
  begin
    sql.Text := 'select  tree, id from продукция.продукция where id=(' +
      'select код_товара from продукция.сорт_плантация where код_плантации=' +
      IntToStr(s_id_plant) + ' and код_сорта=' + IntToStr(s_id_sort) + ')';
    Open;
    tree := Fields[0].AsString;
    id := Fields[1].AsString;
    if tree <> '' then
    begin
      DM1.dbUpd.StartTransaction;
      try
        Close;
        sql.Text :=
          'delete from "продукция"."сорт_плантация" where код_товара=' + id;
        ExecSQL;
        Close;
        sql.Text := 'delete from "продукция"."продукция" where tree like ''' +
          tree + '%''';
        ExecSQL;
        DM1.dbUpd.Commit;
      except
        DM1.dbUpd.Rollback;
      end;
    end;
  end;
end;

function ReturnSystemDate: Tdate;
var
  Query1: TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  with Query1 do
  begin
    Close;
    sql.Text := 'select now()';
    Open;
    Result := StrToDate(FormatDateTime('dd.mm.yyyy', Fields[0].AsDateTime));
  end;
end;

function GetComputerNetName: string;
var
  buffer: array [0 .. 255] of Char;
  size: Dword;
begin
  size := 256;
  if GetComputerName(buffer, size) then
    Result := buffer
  else
    Result := ''
end;

procedure DetectVersion;
begin
end;

function GetFieldFromId(s_id: Integer; s_field_name, s_table: string): string;
var
  Query1: TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  with Query1 do
  begin
    Close;
    sql.Text := 'select ' + s_field_name + ' from ' + s_table + ' where id=' +
      IntToStr(s_id);
    Open;
    Result := Fields[0].AsString;
  end;
end;

end.
