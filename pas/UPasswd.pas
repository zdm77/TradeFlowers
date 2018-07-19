unit UPasswd;

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
  UNI,
  System.IniFiles,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  dxSkinsCore,
  dxSkinsdxBarPainter,
  cxLabel,
  dxBar,
  cxBarEditItem,
  cxClasses,
  cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  cxGroupBox,

  Data.DB,
  DBAccess,
  MemDS,
  cxLocalization,
  cxButtonEdit,
  cxDBEdit,
  Vcl.StdCtrls, DALoader, UniLoader, Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids,
  cxCustomData, cxStyles, cxTL, cxTLdxBarBuiltInMenu, cxInplaceContainer,
  cxDBTL, cxTLData,

  dxSkinDevExpressStyle,

  cxCheckBox, dxSkinsDefaultPainters, dxSkinOffice2007Blue;

type
  TFPasswd = class(TForm)
    Group1: TcxGroupBox;
    lblUser: TcxLabel;
    edtName: TcxLookupComboBox;
    lblPasswd: TcxLabel;
    edtPasswd: TcxTextEdit;
    lblOrg: TcxLabel;
    edtOrg: TcxLookupComboBox;
    dxbrmngr1: TdxBarManager;
    Bardxbrmngr1Bar1: TdxBar;
    btnCancel: TdxBarLargeButton;
    btnOk: TdxBarLargeButton;
    chk1: TcxBarEditItem;
    QueryUsers: TUniQuery;
    dsUsers: TUniDataSource;
    dsOrg: TUniDataSource;
    QueryOrg: TUniQuery;
    lblLang: TcxLabel;
    edtLang: TcxComboBox;
    cxlclzr1: TcxLocalizer;
    Query1: TUniQuery;
    lbl1: TcxLabel;
    edtLangData: TcxComboBox;
    chkSync: TCheckBox;
    edt1: TEdit;
    cxLabel1: TcxLabel;
    edtDB: TcxComboBox;
    QueryProduct: TUniQuery;
    dset1: TClientDataSet;
    dsPr1: TDataSource;
    chkAdmin: TcxCheckBox;
    procedure btnCancelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure chkAdminClick(Sender: TObject);
    procedure edtLangPropertiesEditValueChanged(Sender: TObject);
    procedure edtOrgPropertiesEditValueChanged(Sender: TObject);
    procedure edtNamePropertiesEditValueChanged(Sender: TObject);
    procedure edtNamePropertiesChange(Sender: TObject);
    procedure edtPasswdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPasswdKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtNamePropertiesCloseUp(Sender: TObject);
    procedure QueryUsersAfterScroll(DataSet: TDataSet);
    procedure edtOrgPropertiesCloseUp(Sender: TObject);
    procedure edtDBPropertiesChange(Sender: TObject);
  private
    Counter: SmallInt;
    procedure EnableSave;
    function GetRoleId(id_locate: Integer = 0): Integer;
    function GetUserName(id_locate: Integer = 0): string;
    procedure LangPasswd;
    { Private declarations }
  public
    INI: TIniFile;
    DefaulPath: string;
    Lang: Integer;
    ID_USER: Integer;
    ID_ORG: Integer;
    ID_ROLE: Integer;
    ID_COUNTRY, ID_REGION, ID_CITY: Integer;
    ID_MAIN_ORG: SmallInt;
    Version: string;
    procedure Access;
    function GetVar(const VarName: string): string;
    procedure InsNewPC(pc_name, pc_hard, pc_mac, pc_user: string);
    /// <summary>
    /// Отобразить пользователей в выпадающем меню
    /// </summary>
  public
    MStream: TStream;
    procedure ConnectDb;
    procedure ShowUsers;
    procedure Sync(SyncALL: Boolean = False);
    { Public declarations }
  end;

var
  FPasswd: TFPasswd;

implementation

{$R *.dfm}

uses
  USplash,
  UDataModule1,
  UOsn,
  UDialogMy,
  USync,
  PGSQL;

procedure TFPasswd.Access;
var
  pc_name, pc_mac, pc_user, pc_hard: string;
begin
  if (ID_ROLE <> 1) then
  begin
    with Query1 do
    begin

      { доступ }
      // глобальный параметр компа
      // проверяем предыдущие данные
      pc_name := PGSQL.GetComputerNetName;
      pc_hard := PGSQL.GetHDDSn;
      pc_user := PGSQL.GetUserFromWindows;
      pc_mac := PGSQL.GetMACAddress;
      Close;
      SQL.Text := 'select * from "пользователи"."безопасность" where id_user=' +
        IntToStr(ID_USER) +
        ' and name_pc=:name_pc and id_hard=:id_hard and mac=:mac and account=:account ';
      ParamByName('name_pc').AsString := pc_name;
      ParamByName('id_hard').AsString := pc_hard;
      ParamByName('mac').AsString := pc_mac;
      ParamByName('account').AsString := pc_user;
      open;
      if Fields[0].AsString = '' then
        InsNewPC(pc_name, pc_hard, pc_mac, pc_user)
      else
      begin
        Close;
        SQL.Text := 'select * from "пользователи"."безопасность" where id_user='
          + IntToStr(ID_USER) +
          ' and name_pc=:name_pc and id_hard=:id_hard and mac=:mac and account=:account '
          + ' and разрешить=false';
        ParamByName('name_pc').AsString := pc_name;
        ParamByName('id_hard').AsString := pc_hard;
        ParamByName('mac').AsString := pc_mac;
        ParamByName('account').AsString := pc_user;
        open;
        if Fields[0].AsString <> '' then
        begin
          Application.MessageBox
            ('Зафиксирован несанкционированный вход в систему. Приложение бует закрыто. Обратитесь к администратору.',
            'Ошибка', MB_OK + MB_ICONWARNING);
          Application.Terminate;
        end;
      end;
      Close;
      SQL.Text := 'select * from "пользователи"."доступ"  where код_роли=' +
        IntToStr(ID_ROLE);
      open;
      FOsn.btnDict.Enabled := FieldByName('Справочники').AsBoolean;
      FOsn.btnTorg.Enabled := FieldByName('Закупка_и_реализация').AsBoolean;
      FOsn.btnBalance.Enabled := FieldByName('Бухгалтерия').AsBoolean;
      FOsn.btnReport.Enabled := FieldByName('Отчеты').AsBoolean;
      FOsn.btnMessage.Enabled := FieldByName('Сообщения_клиентов').AsBoolean;
      FOsn.btnAlarm.Enabled := FieldByName('Оповещения').AsBoolean;
      FOsn.btnSett.Enabled := FieldByName('Настройки').AsBoolean;
    end;
  end;
end;

procedure TFPasswd.btnCancelClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFPasswd.btnOkClick(Sender: TObject);
var
  s: string;
begin
  try
    with DM1.QueryGlobalUser do
    begin
      FSplash.Show();
      FSplash.Update;
      Close;
      SQL.Text :=
        'select пароль, id from пользователи.пользователи where пароль=md5(''' +
        edtPasswd.Text + ''') ';
      if chkAdmin.Checked = False then
        SQL.Add('  and id=' + IntToStr(edtName.EditValue))
      else
        SQL.Add('and id=1');
      open;
      FSplash.Update;
      if RecordCount > 0 then
      begin
        if chkAdmin.Checked = False then
        begin
          ID_USER := edtName.EditValue;
          ID_ORG := edtOrg.EditValue;
          ID_ROLE := GetRoleId(FieldByName('id').AsInteger);
          ID_MAIN_ORG := QueryOrg.FieldByName('id_main').AsInteger;
          Access;
        end
        else
        begin
          ID_USER := 1;
          ID_ORG := 1;
          ID_ROLE := 1;
        end;
        Close;
        SQL.Text :=
          'select "код_страны", "код_региона" , "код_города" from "организация"."организации" where id='
          + IntToStr(ID_ORG);
        FSplash.Update;
        open;
        FSplash.Update;
        ID_COUNTRY := FieldByName('код_страны').AsInteger;
        ID_REGION := FieldByName('код_региона').AsInteger;
        ID_CITY := FieldByName('код_города').AsInteger;
        FSplash.Close;
        if chkSync.Checked = true then
          FPasswd.Sync(true);
        FOsn.Bar2.Visible := true;
        // FOsn.mДанные.Visible := true;
        FOsn.mОкна.Visible := true;
        FOsn.mСправочники.Visible := true;
        FOsn.mБух.Visible := true;
        FPasswd.Close;
        FOsn.Enabled := true;
        FOsn.Access;
        s := 'TradeFlowers. ';
        cxlclzr1.LoadFromFile(ExtractFileDir(Application.ExeName) +
          '\..\ini\LanguagesUnicode.ini');
        cxlclzr1.Active := true;
        case edtLang.ItemIndex of
          0:
            begin
              s := s + 'Пользователь: ' + edtName.Text + '. Версия: ';
              cxlclzr1.Locale := 1049;
            end;
          1:
            begin
              s := s + 'User: ' + edtName.Text + '. Version:';
            end;
          2:
            begin
              s := s + 'El usuario: ' + edtName.Text + '. La versión: ';
              cxlclzr1.Locale := 1034;
            end;
        end;
        s := s + Version + '. Database->' + edtDB.Text + '.';
        FOsn.Caption := s;
        INI.WriteInteger('Settings', 'org', edtOrg.EditValue);
        INI.WriteInteger('Settings', 'login', edtName.EditValue);
        INI.WriteInteger('Settings', 'lang', edtLang.ItemIndex);
        INI.WriteInteger('Settings', 'langData', edtLangData.ItemIndex);
        if ID_ROLE = 1 then
          FOsn.mДанные.Visible := true;
        { проверяем клиентов для сообщений }
      end
      else
      begin
        FSplash.Close;
        edtPasswd.SelectAll;
        Counter := Counter + 1;
        s := 'Не правильный пароль. Осталось попыток - ' + IntToStr(4 - Counter)
          + '. Попробуете снова?';
        if (Counter = 4) or (Application.MessageBox(PChar(s), 'Ошибка',
          MB_YESNO + MB_ICONERROR) = mrNo) then
        begin
          Application.Terminate
        end;
      end;
    end;
  except
    Application.Terminate;
  end;
  edtPasswd.SetFocus;
end;

procedure TFPasswd.Button1Click(Sender: TObject);
begin
  // QueryProduct.Close;
  // QueryProduct.Open;
  // dset1.SetProvider(QueryProduct);
  // dset1.Active:=true;
  // MStream:=TMemoryStream.Create;
  // dset1.SaveToStream(MStream,dfXML);
  // MStream.seek(0, 0);
end;

procedure TFPasswd.Button2Click(Sender: TObject);
begin
  /// /  ShowMessage(dset1.FieldByName('id').AsString);
  // dset2.LoadFromStream(MStream);
  /// /dset1.Filter:='id=5 and pid=1';
  /// /dset1.Filtered:=true;
end;

procedure TFPasswd.chkAdminClick(Sender: TObject);
begin
  edtOrg.Enabled := not chkAdmin.Checked;
  edtName.Enabled := not chkAdmin.Checked;
  edtOrg.Enabled := not chkAdmin.Checked;
  if chkAdmin.Checked then
  begin
    edtOrg.EditValue := 0;
    edtName.EditValue := 0;
  end;
  edtPasswd.SetFocus;
  EnableSave;
end;

procedure TFPasswd.ConnectDb;
begin
  DM1.db1.Connected := False;
  case edtDB.ItemIndex of
    0:
      begin
        DM1.db1.Server := 'pgsql.uniflora.mass.hc.ru';
        DM1.db1.Password := 'Kkd37Ckqfm';
        DM1.db1.Username := 'uniflora_trade';
        DM1.dbUpd.Server := 'pgsql.uniflora.mass.hc.ru';
        DM1.dbUpd.Password := 'Kkd37Ckqfm';
        DM1.dbUpd.Username := 'uniflora_trade';
      end;
    1:
      begin
        DM1.db1.Server := 'zdm.myftp.biz';
        DM1.db1.Password := 'Kkd37CkqfmDm';
        DM1.db1.Username := 'postgres';
        DM1.dbUpd.Server := 'zdm.myftp.biz';
        DM1.dbUpd.Password := 'Kkd37CkqfmDm';
        DM1.dbUpd.Username := 'postgres';
      end;
    2:
      begin
        DM1.db1.Server := 'localhost';
        DM1.db1.Password := 'Kkd37CkqfmDm';
        DM1.db1.Username := 'postgres';
        DM1.dbUpd.Server := 'localhost';
        DM1.dbUpd.Password := 'Kkd37CkqfmDm';
        DM1.dbUpd.Username := 'postgres';
      end;
  end;
  DM1.db1.Connected := true;
end;

procedure TFPasswd.edtDBPropertiesChange(Sender: TObject);
begin
  ConnectDb;
  with QueryOrg do
  begin
    Close;
    SQL.Text :=
      'select * from "организация"."организации" where id<>1 and id_del=0';
    open;
  end;
  ShowUsers;
end;

procedure TFPasswd.edtLangPropertiesEditValueChanged(Sender: TObject);
begin
  LangPasswd;
end;

procedure TFPasswd.edtNamePropertiesChange(Sender: TObject);
begin
  EnableSave;
end;

procedure TFPasswd.edtNamePropertiesCloseUp(Sender: TObject);
begin
  edtPasswd.SetFocus;
end;

procedure TFPasswd.edtNamePropertiesEditValueChanged(Sender: TObject);
begin
  EnableSave;
end;

procedure TFPasswd.edtOrgPropertiesCloseUp(Sender: TObject);
begin
  edtName.SetFocus;
end;

procedure TFPasswd.edtOrgPropertiesEditValueChanged(Sender: TObject);
begin
  ShowUsers;
  EnableSave;
end;

procedure TFPasswd.edtPasswdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (btnOk.Enabled = true) and (Key = VK_RETURN) then
    btnOkClick(Sender);
end;

procedure TFPasswd.edtPasswdKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (edtName.EditValue = 0) and (edtOrg.EditValue = 0) then
  begin
    if edtPasswd.Text <> '' then
      chkAdmin.Checked := true
    else
      chkAdmin.Checked := False;
  end;
  EnableSave;
end;

procedure TFPasswd.EnableSave;
begin
  if chkAdmin.Checked = False then
  begin
    if (edtName.Text <> '') and (edtPasswd.Text <> '') and (edtOrg.Text <> '')
    then
      btnOk.Enabled := true
    else
      btnOk.Enabled := False;
  end
  else
  begin
    if (edtPasswd.Text <> '') then
      btnOk.Enabled := true
    else
      btnOk.Enabled := False;
  end;
end;

procedure TFPasswd.FormShow(Sender: TObject);
begin
  FOsn.Show;
  FOsn.Bar2.Visible := False;
  FOsn.mДанные.Visible := False;
  FOsn.mОкна.Visible := False;
  FOsn.mСправочники.Visible := False;
  FOsn.mБух.Visible := False;
  // FOsn.Enabled := False;
  DefaulPath := ExtractFileDir(Application.ExeName);
  try
    INI := TIniFile.Create(DefaulPath + '\..\ini\set.ini');
    edtOrg.EditValue := INI.ReadInteger('Settings', 'org', 0);
    edtName.EditValue := INI.ReadInteger('Settings', 'login', 0);
    edtLang.ItemIndex := INI.ReadInteger('Settings', 'lang', 0);
    edtLangData.ItemIndex := INI.ReadInteger('Settings', 'langData', 0);
    if INI.ReadInteger('Settings', 'screen', 0) = 1 then
      FOsn.WindowState := wsMaximized
    else
      FOsn.WindowState := wsNormal;
  except
  end;
  FSplash.Show();
  FSplash.lblComment.Caption := 'Загрузка данных: Пользователи';
  FSplash.Update;
  edtDBPropertiesChange(Sender);
  // DM1.db1.Connected := true;
  FSplash.Update;
  { открываем сорта }
//  with Query1 do
//  begin
//    Close;
//    SQL.Text := 'select * from продукция.сорта order by uni_name';
//    open;
//    DM1.dxMemData1.Active := true;
//    while not Eof do
//    begin
//      FSplash.lblComment.Caption := 'Загрузка данных: Сорта';
//      FSplash.Update;
//      DM1.dxMemData1.Append;
//      DM1.dxMemData1.FieldByName('id').AsInteger := FieldByName('id').AsInteger;
//      DM1.dxMemData1.FieldByName('uni_name').AsString :=
//        FieldByName('uni_name').AsString;
//      DM1.dxMemData1.FieldByName('код_типа').AsInteger :=
//        FieldByName('код_типа').AsInteger;
//      DM1.dxMemData1.Post;
//      Next;
//    end;
//    // DM1.dxMemData1.Active := False;
//  end;
  { открываем номенклатуру }
  // with DM1.QueryProductG do
  // begin
  // Close;
  // SQL.Text := 'select * from продукция.продукция where скрыт=0 ' +
  // ' order by id';
  // Open;
  // end;
  // Sync;
  { открываем категории }
  // with DM1.QueryProductCategory do
  // begin
  // Close;
  /// /    sql.Text :=
  /// /        'select * from "продукция"."продукция" where id_group=1 and id not in ('
  /// /        + ' SELECT p.id FROM ';
  /// /      sql.Add('"маркировки"."постоянный_запрет_плантаций"');
  /// /      sql.Add('zp INNER JOIN "продукция"."продукция" p ON (zp."код_плантации" = p."код_детализации")'
  /// /        + ' AND (p."код_структуры" = 4) and (zp."код_маркировки"=' +
  /// /        IntToStr(s_id_marking) + ')' + ') and pid not in (SELECT p.id FROM ');
  /// /      sql.Add('"маркировки"."постоянный_запрет_плантаций"');
  /// /      sql.Add(' zp INNER JOIN "продукция"."продукция" p ON (zp."код_плантации" = p."код_детализации")'
  /// /        + ' AND (p."код_структуры" = 4) and (zp."код_маркировки"=' +
  /// /        IntToStr(s_id_marking) + '))');
  // Open;
  // end;
  // FSplash.lblComment.Caption := 'Загрузка данных: Номенклатура';
  // FSplash.Update;
  // QueryProduct.Close;
  // QueryProduct.Open;
  // dset1.SetProvider(QueryProduct);
  // dset1.Active:=true;
  // MStream:=TMemoryStream.Create;
  // dset1.SaveToStream(MStream,dfXML);
  // MStream.seek(0, 0);
  FSplash.Update;
  FSplash.lblComment.Caption := 'Загрузка данных';
  { проверяем не закрыта -ли БД }
  with Query1 do
  begin
    Close;
    SQL.Text := 'select * from "бд"."настройки"';
    open;
    if FieldByName('закрыта').AsBoolean = true then
    begin
      case Lang of
        0:
          ErrorDialog('База данных закрыта на техническое обслуживание. ', '',
            ' Дата/Время окончания работ: ' + FieldByName('дата_открытия')
            .AsString);
        1:
          ErrorDialog('Database is closed for maintenance.', '',
            'Date/Time of end of works: ' + FieldByName('дата_открытия')
            .AsString);
        2:
          ErrorDialog('Base de datos es cerrada al mantenimiento técnico.', '',
            'La Fecha/tiempo de la terminación de los trabajos: ' +
            FieldByName('дата_открытия').AsString);
      end;
      Application.Terminate;
    end;
    { версия }
    Version := '2.0.0.1';
    if FieldByName('версия_базы').AsString <> Version then
    begin
      case Lang of
        0:
          ErrorDialog('Версия программы и базы данных не совпадают. ', '',
            'Обновите приложение.');
        1:
          ErrorDialog
            ('Version of the program and the database are not the same. ', '',
            'Update the application.');
        2:
          ErrorDialog('Versión del programa y la base de datos no coincide.',
            '', 'Renueven la aplicación.');
      end;
      Application.Terminate;
    end;
  end;
  QueryOrg.Close;
  QueryOrg.open;
  QueryOrg.Locate('id', edtOrg.EditValue, []);
  FSplash.Hide;
  // edtPasswd.Text := '';
  // Passwd.SetFocus;
  edtPasswd.SetFocus;
end;

function TFPasswd.GetRoleId(id_locate: Integer = 0): Integer;
var
  Query1: TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.db1;
  with Query1 do
  begin
    Close;
    SQL.Text := 'select код_роли from пользователи.пользователи where id=' +
      IntToStr(id_locate);
    open;
    Result := Fields[0].AsInteger;
  end;
end;

function TFPasswd.GetUserName(id_locate: Integer = 0): string;
var
  Query1: TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.db1;
  with Query1 do
  begin
    Close;
    SQL.Text := 'select name from пользователи.пользователи where id=' +
      IntToStr(id_locate);
    open;
    Result := Fields[0].AsString;
  end;
end;

function TFPasswd.GetVar(const VarName: string): string;
var
  r: array [0 .. 255] of char;
begin
  r := '';
  GetEnvironmentVariable(PChar(VarName), r, 255);
  Result := r
end;

procedure TFPasswd.InsNewPC(pc_name, pc_hard, pc_mac, pc_user: string);
begin
  with Query1 do
  begin
    Close;
    SQL.Text := 'INSERT INTO  "пользователи"."безопасность"(id_user,  name_pc,'
      + '  id_hard,  mac,  account) VALUES (:id_user,  :name_pc,' +
      '  :id_hard,  :mac,  :account);';
    ParamByName('id_user').AsInteger := ID_USER;
    ParamByName('name_pc').AsString := pc_name;
    ParamByName('id_hard').AsString := pc_hard;
    ParamByName('mac').AsString := pc_mac;
    ParamByName('account').AsString := pc_user;
    ExecSQL;
    Application.MessageBox
      ('Зафиксирован несанкционированный вход в систему. Приложение бует закрыто. Обратитесь к администратору.',
      'Ошибка', MB_OK + MB_ICONWARNING);
    Application.Terminate;
  end;
end;

procedure TFPasswd.LangPasswd;
var
  a: array [0 .. 255] of char;
  StrTblOfs: Integer;
begin
  { Получаем текущий язык системы и начало соответствующих строк в таблице }
  // case GetLanguage of
  // LANG_ENGLISH:
  // StrTblOfs := 0;
  // LANG_SPANISH:
  // StrTblOfs := 16;
  // LANG_SWEDISH:
  // StrTblOfs := 32;
  // else
  // StrTblOfs := 0;
  // end;
  Lang := edtLang.ItemIndex;
  case Lang of
    0:
      StrTblOfs := 0;
    1:
      StrTblOfs := 1000;
    2:
      StrTblOfs := 2000;
  end;
  { Загружаем и устанавливаем заголовок кнопки "Yes" в соответствии с языком }
  if LoadString(hInstance, StrTblOfs + 1, @a, sizeof(a)) <> 0 then
    lblOrg.Caption := StrPas(a);
  if LoadString(hInstance, StrTblOfs + 2, @a, sizeof(a)) <> 0 then
    lblUser.Caption := StrPas(a);
  if LoadString(hInstance, StrTblOfs + 3, @a, sizeof(a)) <> 0 then
    lblPasswd.Caption := StrPas(a);
  if LoadString(hInstance, StrTblOfs + 4, @a, sizeof(a)) <> 0 then
    lblLang.Caption := StrPas(a);
  if LoadString(hInstance, StrTblOfs + 5, @a, sizeof(a)) <> 0 then
    Group1.Caption := StrPas(a);
  if LoadString(hInstance, StrTblOfs + 6, @a, sizeof(a)) <> 0 then
    btnOk.Caption := StrPas(a);
  if LoadString(hInstance, StrTblOfs + 7, @a, sizeof(a)) <> 0 then
    btnCancel.Caption := StrPas(a);
  FOsn.LangOsn;
end;

procedure TFPasswd.QueryUsersAfterScroll(DataSet: TDataSet);
begin
  edtPasswd.SetFocus;
end;

procedure TFPasswd.ShowUsers;
begin
  if DM1.db1.Connected then
  begin
    with QueryUsers do
    begin
      Close;
      SQL.Text := 'select * from пользователи.пользователи ' +
        'where код_организации=' + IntToStr(edtOrg.EditValue);
      open;
    end;
  end;
end;

procedure TFPasswd.Sync(SyncALL: Boolean = False);
var
  max_time: TDateTime;
begin
  // FSync.ProgresAll.Max := 20;
  // FSync.lblOne.Caption := 'Текущий прогресс - Подготовка';
  // DM1.dbLocal.Connected := False;
  // DM1.dbLocal.Database := 'trade2012.db';
  // DM1.dbLocal.Connected := true;
  // FSync.lblOne.Caption := 'Синхронизация - маркировки ';
  // FSync.Update;
  // if SyncALL = true then
  // begin
  // with DM1.QueryProductLocal do
  // begin
  // { синхронизация маркировок }
  // {$REGION 'Маркировки'}
  // { определяем последние изменения }
  // DM1.Query1.Close;
  // DM1.Query1.SQL.Text :=
  // 'select изменен from "бд"."изменения" where таблица = ''маркировки''';
  // DM1.Query1.open;
  // Close;
  // SQL.Text :=
  // 'select * from изменения where (изменен <:d and таблица=''маркировки'') or изменен is null  ';
  // ParamByName('d').Value := DM1.Query1.Fields[0].AsDateTime;
  // open;
  // if Fields[0].AsString <> '' then
  // begin
  // FSync.Show;
  // FSync.Update;
  // max_time := DM1.Query1.Fields[0].Value;
  // DM1.Query1.Close;
  // DM1.Query1.SQL.Text :=
  // 'select count(id) from  "маркировки"."маркировки" ';
  // DM1.Query1.open;
  // FSync.ProgresOne.Max := DM1.Query1.Fields[0].AsInteger;
  // DM1.Query1.Close;
  // DM1.Query1.SQL.Text := 'select * from  "маркировки"."маркировки"';
  // DM1.Query1.open;
  // Close;
  // SQL.Text := 'delete from маркировки';
  // ExecSQL;
  // Close;
  // SQL.Text :=
  // 'INSERT INTO маркировки (id,  pid,  id_group,  "код_клиента",' +
  // '  "код_карго",  "код_трака",  "код_прикулинга",  name,' +
  // '  uni_name,  reg_name,  "адрес",  "страна",  "телефон",' +
  // '  "факс",  "код_страны",  "код_города",  "город",  "коды_запрет_плантаций",'
  // + '  "коды_желаемые_плантации",  "желаемые_плантации",  "запрет_плантаций",'
  // + '  "скрыт",  "адрес_клиента",  "код_фито") VALUES (  :id,  :pid,' +
  // '  :id_group,  :код_клиента,  :код_карго,  :код_трака,  :код_прикулинга,'
  // + '  :name,  :uni_name,  :reg_name,  :адрес,  :страна,  :телефон,' +
  // '  :факс,  :код_страны,  :код_города,  :город,  :коды_запрет_плантаций,'
  // + '  :коды_желаемые_плантации,  :желаемые_плантации,  :запрет_плантаций,'
  // + '  :скрыт,  :адрес_клиента,  :код_фито);';
  // while not DM1.Query1.eof do
  // begin
  // FSync.Update;
  // ParamByName('id').Value := DM1.Query1.FieldByName('id').Value;
  // ParamByName('pid').Value := DM1.Query1.FieldByName('pid').Value;
  // ParamByName('id_group').Value :=
  // DM1.Query1.FieldByName('id_group').Value;
  // ParamByName('код_клиента').Value :=
  // DM1.Query1.FieldByName('код_клиента').Value;
  // ParamByName('код_карго').Value :=
  // DM1.Query1.FieldByName('код_карго').Value;
  // ParamByName('код_трака').Value :=
  // DM1.Query1.FieldByName('код_трака').Value;
  // ParamByName('код_прикулинга').Value :=
  // DM1.Query1.FieldByName('код_прикулинга').Value;
  // ParamByName('name').Value := DM1.Query1.FieldByName('name').Value;
  // ParamByName('uni_name').Value :=
  // DM1.Query1.FieldByName('uni_name').Value;
  // ParamByName('reg_name').Value :=
  // DM1.Query1.FieldByName('reg_name').Value;
  // ParamByName('адрес').Value := DM1.Query1.FieldByName('адрес').Value;
  // ParamByName('страна').Value := DM1.Query1.FieldByName('страна').Value;
  // ParamByName('телефон').Value :=
  // DM1.Query1.FieldByName('телефон').Value;
  // ParamByName('факс').Value := DM1.Query1.FieldByName('факс').Value;
  // ParamByName('код_страны').Value :=
  // DM1.Query1.FieldByName('код_страны').Value;
  // ParamByName('код_города').Value :=
  // DM1.Query1.FieldByName('код_города').Value;
  // ParamByName('город').Value := DM1.Query1.FieldByName('город').Value;
  // ParamByName('коды_запрет_плантаций').Value :=
  // DM1.Query1.FieldByName('коды_запрет_плантаций').Value;
  // ParamByName('коды_желаемые_плантации').Value :=
  // DM1.Query1.FieldByName('коды_желаемые_плантации').Value;
  // ParamByName('желаемые_плантации').Value :=
  // DM1.Query1.FieldByName('желаемые_плантации').Value;
  // ParamByName('запрет_плантаций').Value :=
  // DM1.Query1.FieldByName('запрет_плантаций').Value;
  // ParamByName('скрыт').Value := DM1.Query1.FieldByName('скрыт').Value;
  // ParamByName('адрес_клиента').Value :=
  // DM1.Query1.FieldByName('адрес_клиента').Value;
  // ParamByName('код_фито').Value :=
  // DM1.Query1.FieldByName('код_фито').Value;
  // FSync.Update;
  // ExecSQL;
  // FSync.Update;
  // FSync.ProgresOne.Position := FSync.ProgresOne.Position + 1;
  // FSync.Update;
  // DM1.Query1.Next;
  // FSync.Update;
  // end;
  // Close;
  // SQL.Text :=
  // 'update изменения set изменен=:d where таблица = ''маркировки''';
  // ParamByName('d').Value := max_time;
  // ExecSQL;
  // end;
  // FSync.Update;
  // FSync.ProgresAll.Position := FSync.ProgresAll.Position + 10;
  // FSync.Update;
  // FSync.lblOne.Caption := 'Синхронизация - продукция';
  // FSync.Update;
  // {$ENDREGION}
  // {$REGION 'Продукция'}
  // // FSync.ProgresAll.Position := FSync.ProgresAll.Position + 1;
  // { определяем последние изменения }
  // FSync.Update;
  // DM1.Query1.Close;
  // DM1.Query1.SQL.Text :=
  // 'select изменен from "бд"."изменения" where таблица = ''продукция''';
  // DM1.Query1.open;
  // Close;
  // SQL.Text :=
  // 'select * from изменения where (изменен <:d and таблица=''продукция'') '
  // + ' or изменен is null  ';
  // ParamByName('d').Value := DM1.Query1.Fields[0].AsDateTime;
  // open;
  // if Fields[0].AsString <> '' then
  // begin
  // FSync.Show;
  // FSync.Update;
  // max_time := DM1.Query1.Fields[0].Value;
  // Close;
  // SQL.Text := 'delete from продукция';
  // ExecSQL;
  // FSync.Update;
  // Close;
  // SQL.Text :=
  // 'INSERT INTO продукция (id, pid, "код_структуры", "код_детализации", '
  // + ' name, id_group, uni_name, reg_name, name_in_tree, "цена", tree, level_val, '
  // + '  "код_типа", "код_плантации", "код_сорта", "скрыт") ' +
  // ' VALUES (:id, :pid,  :код_структуры,  :код_детализации,  :name,  :id_group, '
  // + ' :uni_name, :reg_name,  :name_in_tree,  :цена,  :tree,  :level_val,  :код_типа,'
  // + ' :код_плантации,  :код_сорта,  :скрыт);';
  // DM1.Query1.Close;
  // DM1.Query1.SQL.Text := 'select count(id) from  "продукция"."продукция"';
  // DM1.Query1.open;
  // FSync.ProgresOne.Max := DM1.Query1.Fields[0].AsInteger;
  // DM1.Query1.Close;
  // DM1.Query1.SQL.Text := 'select * from  "продукция"."продукция"';
  // DM1.Query1.open;
  // FSync.Update;
  // while not DM1.Query1.eof do
  // begin
  // FSync.Update;
  // ParamByName('id').Value := DM1.Query1.FieldByName('id').Value;
  // ParamByName('pid').Value := DM1.Query1.FieldByName('pid').Value;
  // ParamByName('код_структуры').Value :=
  // DM1.Query1.FieldByName('код_структуры').Value;
  // ParamByName('код_детализации').Value :=
  // DM1.Query1.FieldByName('код_детализации').Value;
  // ParamByName('name').Value := DM1.Query1.FieldByName('name').Value;
  // ParamByName('id_group').Value :=
  // DM1.Query1.FieldByName('id_group').Value;
  // ParamByName('uni_name').Value :=
  // DM1.Query1.FieldByName('uni_name').Value;
  // ParamByName('reg_name').Value :=
  // DM1.Query1.FieldByName('reg_name').Value;
  // ParamByName('name_in_tree').Value :=
  // DM1.Query1.FieldByName('name_in_tree').Value;
  // ParamByName('цена').Value := DM1.Query1.FieldByName('цена').Value;
  // ParamByName('tree').Value := DM1.Query1.FieldByName('tree').Value;
  // ParamByName('level_val').Value :=
  // DM1.Query1.FieldByName('level_val').Value;
  // ParamByName('код_типа').Value :=
  // DM1.Query1.FieldByName('код_типа').Value;
  // ParamByName('код_плантации').Value :=
  // DM1.Query1.FieldByName('id').Value;
  // ParamByName('код_сорта').Value :=
  // DM1.Query1.FieldByName('код_сорта').Value;
  // ParamByName('скрыт').Value := DM1.Query1.FieldByName('скрыт').Value;
  // ExecSQL;
  // FSync.ProgresOne.Position := FSync.ProgresOne.Position + 1;
  // FSync.Update;
  // DM1.Query1.Next;
  // FSync.Update;
  // end;
  // Close;
  // SQL.Text :=
  // 'update изменения set изменен=:d where таблица = ''продукция''';
  // ParamByName('d').Value := max_time;
  // ExecSQL;
  // end;
  // FSync.ProgresAll.Position := FSync.ProgresAll.Position + 10;
  // {$ENDREGION}
  // end;
  // FSync.Hide;
  // end;
end;

end.
