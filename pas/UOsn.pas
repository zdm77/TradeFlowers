unit UOsn;
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
  Vcl.StdCtrls,
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
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGridLevel,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  dxSkinsdxBarPainter,
  Vcl.ActnList,
  Vcl.XPStyleActnCtrls,
  Vcl.ActnMan,
  Vcl.Menus,
  AdvMenus,
  dxBar,
  Vcl.ImgList,
  
  cxPC,
  
  dxTabbedMDI,
  dxSkinsdxStatusBarPainter,
  dxStatusBar,
  AdvSmoothSplashScreen,
  MemDS,
  DBAccess,
  Uni,
  cxEditRepositoryItems,
  dxBarBuiltInMenu, dxSkinsDefaultPainters, dxSkinOffice2007Blue, System.ImageList, cxImageList;
type
  TFOsn = class(TForm)
    imgMidle : TcxImageList;
    imgSmall : TcxImageList;
    imgLarge : TcxImageList;
    bar1 : TdxBarManager;
    Bar2 : TdxBar;
    btnDict : TdxBarLargeButton;
    btnTorg : TdxBarLargeButton;
    btnSett : TdxBarLargeButton;
    dxBarSubItem1 : TdxBarSubItem;
    dxbrbtn1 : TdxBarButton;
    btnMessage : TdxBarLargeButton;
    btnReport : TdxBarLargeButton;
    btnAlarm : TdxBarLargeButton;
    btnOrg : TdxBarLargeButton;
    btnBalance : TdxBarLargeButton;
    Tab1 : TdxTabbedMDIManager;
    stat1 : TdxStatusBar;
    mm1 : TMainMenu;
    mОкна : TMenuItem;
    mResize : TMenuItem;
    mДанные : TMenuItem;
    N4 : TMenuItem;
    N5 : TMenuItem;
    Proc1 : TUniStoredProc;
    N6 : TMenuItem;
    mСправочники : TMenuItem;
    mНоменклатура : TMenuItem;
    mКлиенты : TMenuItem;
    mПоставщики : TMenuItem;
    mСтруктура : TMenuItem;
    N9 : TMenuItem;
    mСтраны : TMenuItem;
    mТипы : TMenuItem;
    mСвойства : TMenuItem;
    mПлантации : TMenuItem;
    mСорта : TMenuItem;
    EdtRepos1 : TcxEditRepository;
    Рубль : TcxEditRepositoryCurrencyItem;
    Доллар : TcxEditRepositoryCurrencyItem;
    Евро : TcxEditRepositoryCurrencyItem;
    Граммы : TcxEditRepositoryCalcItem;
    КгГр : TcxEditRepositoryCalcItem;
    Query1 : TUniQuery;
    mДлинаВес : TMenuItem;
    mУпаковка : TMenuItem;
    mЛогистика : TMenuItem;
    mМаркировки : TMenuItem;
    mАвиалинии : TMenuItem;
    mКарго : TMenuItem;
    mТраки : TMenuItem;
    mПрикулинг : TMenuItem;
    mФито : TMenuItem;
    mСтендинг : TMenuItem;
    mОрганизация : TMenuItem;
    mОрганизации : TMenuItem;
    mПрайс : TMenuItem;
    N3 : TMenuItem;
    N7 : TMenuItem;
    mКаскад : TMenuItem;
    mВертикаль : TMenuItem;
    mГоризонталь : TMenuItem;
    N12 : TMenuItem;
    mHidePanel : TMenuItem;
    N14 : TMenuItem;
    mCloseAll : TMenuItem;
    BackUp1 : TMenuItem;
    mБух : TMenuItem;
    AWB1 : TMenuItem;
    mБалансПлантаций : TMenuItem;
    mБалансКарго : TMenuItem;
    mПретензии : TMenuItem;
    mОплатаПплантаций : TMenuItem;
    N1 : TMenuItem;
    mСтатистика : TMenuItem;
    mСтатФактуры : TMenuItem;
    imgVerySmall : TcxImageList;
    btn1 : TButton;
    Query2 : TUniQuery;
    dxBarLargeButton1 : TdxBarLargeButton;
    btnChat : TdxBarLargeButton;
    procedure AWB1Click(Sender : TObject);
    procedure BackUp1Click(Sender : TObject);
    procedure btn1Click(Sender : TObject);
    procedure btnDictClick(Sender : TObject);
    procedure btnTorgClick(Sender : TObject);
    procedure FormClose(Sender : TObject; var Action : TCloseAction);
    procedure mПлантацииClick(Sender : TObject);
    procedure mСвойстваClick(Sender : TObject);
    procedure mСортаClick(Sender : TObject);
    procedure mСтраныClick(Sender : TObject);
    procedure mТипыClick(Sender : TObject);
    procedure mResizeClick(Sender : TObject);
    procedure N4Click(Sender : TObject);
    procedure N5Click(Sender : TObject);
    procedure N6Click(Sender : TObject);
    procedure btnBalanceClick(Sender : TObject);
    procedure mАвиалинииClick(Sender : TObject);
    procedure mДлинаВесClick(Sender : TObject);
    procedure mКаргоClick(Sender : TObject);
    procedure mКлиентыClick(Sender : TObject);
    procedure mМаркировкиClick(Sender : TObject);
    procedure mНоменклатураClick(Sender : TObject);
    procedure mОрганизацииClick(Sender : TObject);
    procedure mПоставщикиClick(Sender : TObject);
    procedure mПрайсClick(Sender : TObject);
    procedure mПрикулингClick(Sender : TObject);
    procedure mСтендингClick(Sender : TObject);
    procedure mТракиClick(Sender : TObject);
    procedure mУпаковкаClick(Sender : TObject);
    procedure mФитоClick(Sender : TObject);
    procedure mВертикальClick(Sender : TObject);
    procedure mГоризонтальClick(Sender : TObject);
    procedure mCloseAllClick(Sender : TObject);
    procedure mHidePanelClick(Sender : TObject);
    procedure mБалансПлантацийClick(Sender : TObject);
    procedure N3Click(Sender : TObject);
    procedure mКаскадClick(Sender : TObject);
    procedure mОкнаClick(Sender : TObject);
    procedure dxBarLargeButton1Click(Sender : TObject);
    procedure btnChatClick(Sender : TObject);
  private
    { Private declarations }
  public
    procedure Access;
    procedure LangOsn;
    { Public declarations }
  end;

var
  FOsn : TFOsn;
implementation
{$R *.dfm}

uses
  UPasswd,
  UDict,
  UDocs,
  UDataModule1,
  UFCountry,
  UFTypeStruct,
  UFProperties,
  UFPlant,
  UFSort,
  UBuh,
  UFProduct,
  UFClient,
  UTypeLengthWeight,
  UFBox,
  UFMarking,
  UFAirLines,
  UFKargo,
  UFTrack,
  UFPricooling,
  UFFITO,
  UFStanding,
  UFOrg,
  UFPrice,
  UFWareHouse,
  UBackUp,
  UFAwb,
  UBuhBalancePlant, UAuction, UChatDb;
{$IFDEF WIN32}
{$R lang.RES}
{$ELSE}
const
  LANG_ENGLISH = $09;
const
  LANG_SPANISH = $0A;
const
  LANG_SWEDISH = $1D;
{$ENDIF}

function GetLanguage : word;
{$IFDEF WIN32}
{$ELSE}
var
    s: string;
    i: integer;
{$ENDIF}
begin
{$IFDEF WIN32}
  GetLanguage := GetUserDefaultLangID and $3FF;
{$ELSE}
  s[0] := Char(GetProfileString('intl', 'sLanguage', 'none', @s[1],
  sizeof(s) - 2));
  for i := 1 to length(s) do
  s[i] := UpCase(s[i]);
  if s = 'ENU' then
  GetLanguage := LANG_ENGLISH
  else if s = 'ESN' then
  GetLanguage := LANG_SPANISH
  else if s = 'SVE' then
  GetLanguage := LANG_SWEDISH
  else
  GetLanguage := LANG_ENGLISH;
{$ENDIF}
end;
procedure TFOsn.Access;
begin
  if (FPasswd.ID_ROLE <> 1) then
  begin
    with Query1 do
    begin
      { доступ }
      Close;
      sql.Text := 'select * from "пользователи"."доступ"  where код_роли=' +
    IntToStr(FPasswd.ID_ROLE);
      Open;
      // GroupСтруктура.Visible := FieldByName('справочники_структура').AsBoolean;
      // GroupОрг.Visible := FieldByName('справочники_организация').AsBoolean;
      // GroupАдмин.Visible := FieldByName('справочники_администрирование')
      // .AsBoolean;
      mЛогистика.Visible := FieldByName('справочники_логистика').AsBoolean;
      mНоменклатура.Visible := FieldByName('номенклатура_просмотр').AsBoolean;
      mКлиенты.Visible := FieldByName('клиенты_просмотр').AsBoolean;
      mПоставщики.Visible := FieldByName('поставщики_просмотр').AsBoolean;
      mСтруктура.Visible := FieldByName('справочники_структура').AsBoolean;
      mСтраны.Visible := FieldByName('страны_просмотр').AsBoolean;
      mТипы.Visible := FieldByName('типы_просмотр').AsBoolean;
      mСвойства.Visible := FieldByName('свойства_просмотр').AsBoolean;
      mПлантации.Visible := FieldByName('плантации_просмотр').AsBoolean;
      mСорта.Visible := FieldByName('сорта_просмотр').AsBoolean;
      mДлинаВес.Visible := FieldByName('длина_вес_просмотр').AsBoolean;
      mУпаковка.Visible := FieldByName('упаковка_просмотр').AsBoolean;
      mМаркировки.Visible := FieldByName('маркировки_просмотр').AsBoolean;
      mАвиалинии.Visible := FieldByName('авиалинии_просмотр').AsBoolean;
      mКарго.Visible := FieldByName('карго_просмотр').AsBoolean;
      mТраки.Visible := FieldByName('траки_просмотр').AsBoolean;
      mПрикулинг.Visible := FieldByName('прикулинг_просмотр').AsBoolean;
      mФито.Visible := FieldByName('фито_просмотр').AsBoolean;
      mСтендинг.Visible := FieldByName('стендинг_просмотр').AsBoolean;
      mОрганизация.Visible := FieldByName('справочники_организация').AsBoolean;
      mОрганизации.Visible := FieldByName('организации_просмотр').AsBoolean;
      // ItemPrice.Visible := FieldByName('прайс_просмотр').AsBoolean;
      // ItemЦеха.Visible := FieldByName('цеха_просмотр').AsBoolean;
      // ItemПользователи.Visible := FieldByName('пользователи_просмотр')
      // .AsBoolean;
      // ItemРоль.Visible := FieldByName('роли_просмотр').AsBoolean;
      // ItemДоступ.Visible := False;
    end;
  end;
end;
procedure TFOsn.AWB1Click(Sender : TObject);
begin
  Application.CreateForm(TFAWB, FAWB);
  FAWB.FrameAWB1.ShowAWB();
  FAWB.Show;
end;
procedure TFOsn.BackUp1Click(Sender : TObject);
begin
  Application.CreateForm(TBackUp, BackUp);
  BackUp.dump1.BackupToFile('back.sql');
end;
procedure TFOsn.btn1Click(Sender : TObject);
begin
  // Query2.Close;
  // Query2.sql.Text :=
  // 'INSERT INTO "продукция"."продукция1"(pid, name, uni_name, ' +
  // ' reg_name, level, "стеблей") VALUES (:pid, :name, :uni_name, :reg_name, ' +
  // ':level, :стеблей);';
  // with Query1 do
  // begin
  // Close;
  // sql.Text := 'select * from продукция.сорта where код_типа=1';
  // Open;
  // while not Eof do
  // begin
  // Query2.ParamByName('pid').AsInteger := 2;
  // Query2.ParamByName('name').AsString := FieldByName('name').AsString;
  // Query2.ParamByName('uni_name').AsString :=
  // FieldByName('uni_name').AsString;
  // Query2.ParamByName('reg_name').AsString :=
  // FieldByName('reg_name').AsString;
  // Query2.ParamByName('level').AsInteger := 2;
  // if FieldByName('стеблей').AsString <> '' then
  // Query2.ParamByName('стеблей').AsInteger := FieldByName('стеблей')
  // .AsInteger;
  // Query2.ExecSQL;
  // Next;
  // end;
  // end;
  Query2.Close;
  Query2.sql.Text :=
                    'INSERT INTO "документы"."закупки_деталь_new" (pid, name, uni_name, ' +
                    ' reg_name, level, "стеблей") VALUES (:pid, :name, :uni_name, :reg_name, ' +
                    ':level, :стеблей);';
  with Query1 do
  begin
    Close;
    sql.Text := 'select * from продукция.сорта where код_типа=1';
    Open;
    while not Eof do
    begin
      Query2.ParamByName('pid').AsInteger := 2;
      Query2.ParamByName('name').AsString := FieldByName('name').AsString;
      Query2.ParamByName('uni_name').AsString :=
                                                FieldByName('uni_name').AsString;
      Query2.ParamByName('reg_name').AsString :=
                                                FieldByName('reg_name').AsString;
      Query2.ParamByName('level').AsInteger := 2;
      if FieldByName('стеблей').AsString <> '' then
        Query2.ParamByName('стеблей').AsInteger := FieldByName('стеблей')
      .AsInteger;
      Query2.ExecSQL;
      Next;
    end;
  end;
end;
procedure TFOsn.btnBalanceClick(Sender : TObject);
begin
  if FBuh = nil then
  begin
    Application.CreateForm(TFBuh, FBuh);
    FBuh.SetLang;
  end;
  FBuh.Show;
end;
procedure TFOsn.btnChatClick(Sender : TObject);
begin
  if FChatDB = nil then
  begin
    Application.CreateForm(TFChatDB, FChatDB);
    // FBuh.SetLang;
  end;
  FChatDB.Show;
end;
procedure TFOsn.btnDictClick(Sender : TObject);
begin
  if FDict = nil then
    Application.CreateForm(TFDict, FDict);
  FDict.Show;
end;
procedure TFOsn.btnTorgClick(Sender : TObject);
begin
  if FDocs = nil then
    Application.CreateForm(TFDocs, FDocs);
  FDocs.Show;
end;
procedure TFOsn.dxBarLargeButton1Click(Sender : TObject);
begin
  if FAuction = nil then
    Application.CreateForm(TFAuction, FAuction);
  FAuction.Show;
end;
procedure TFOsn.FormClose(Sender : TObject; var Action : TCloseAction);
begin
  try
    if FOsn.WindowState = wsMaximized then
      FPasswd.INI.WriteInteger('Settings', 'screen', 1)
    else
      FPasswd.INI.WriteInteger('Settings', 'screen', 0);
    FPasswd.INI.Free;
  except
  end;
end;
procedure TFOsn.LangOsn;
var
  a : array [0..255] of Char;
  StrTblOfs : integer;
begin
  case FPasswd.Lang of
    0 : StrTblOfs := 0;
    1 : StrTblOfs := 1000;
    2 : StrTblOfs := 2000;
  end;
  { Загружаем и устанавливаем заголовок кнопки "Yes" в соответствии с языком }
  if LoadString(hInstance, StrTblOfs + 8, @a, sizeof(a)) <> 0 then
    btnTorg.Caption := StrPas(a);
  if LoadString(hInstance, StrTblOfs + 9, @a, sizeof(a)) <> 0 then
    btnDict.Caption := StrPas(a);
  if LoadString(hInstance, StrTblOfs + 10, @a, sizeof(a)) <> 0 then
    btnBalance.Caption := StrPas(a);
  if LoadString(hInstance, StrTblOfs + 11, @a, sizeof(a)) <> 0 then
    btnReport.Caption := StrPas(a);
  if LoadString(hInstance, StrTblOfs + 12, @a, sizeof(a)) <> 0 then
    btnMessage.Caption := StrPas(a);
  if LoadString(hInstance, StrTblOfs + 13, @a, sizeof(a)) <> 0 then
    btnAlarm.Caption := StrPas(a);
  if LoadString(hInstance, StrTblOfs + 14, @a, sizeof(a)) <> 0 then
    btnSett.Caption := StrPas(a);
  case FPasswd.Lang of
    1 :
    begin
      mНоменклатура.Caption := 'Nomenclature';
      mКлиенты.Caption := 'Clients';
      mСтраны.Caption := 'Country';
      mТипы.Caption := 'Types';
      mСвойства.Caption := 'Properties';
      mПлантации.Caption := 'Plantation';
      mСорта.Caption := 'Grades';
      // ItemОрганизация.Caption := 'Organization';
      // ItemПользователи.Caption := 'Users';
      // ItemРоль.Caption := 'The role';
      // GroupОснова.Caption := 'Main';
      mСтруктура.Caption := 'Structure';
      // GroupОрг.Caption := 'Organization';
      // GroupАдмин.Caption := 'Administration';
      // ItemКарго.Caption := 'Cargo';
      // ItemАвиалинии.Caption := 'Airlines';
      mСправочники.Caption := 'Directory';
    end;
    2 :
    begin
      mНоменклатура.Caption := 'Nomenclatura';
      mКлиенты.Caption := 'Clientes';
      mСтраны.Caption := 'Países';
      mТипы.Caption := 'Tipos';
      mСвойства.Caption := 'Propiedades';
      mПлантации.Caption := 'Fincas';
      mСорта.Caption := 'Variedades';
      // ItemРоль.Caption := 'Papeles';
      // ItemОрганизация.Caption := 'Organizaciones';
      // ItemПользователи.Caption := 'Usuarios';
      // GroupОснова.Caption := 'Básicos';
      mСтруктура.Caption := 'Estructura';
      // GroupОрг.Caption := 'Organización';
      // GroupАдмин.Caption := 'Administración';
      // ItemКарго.Caption := 'Agencias cargo';
      // ItemАвиалинии.Caption := 'Aerolineas';
      mСправочники.Caption := 'Guia';
    end;
  end;
end;
procedure TFOsn.mАвиалинииClick(Sender : TObject);
begin
  if FAirLines = nil then
  begin
    Application.CreateForm(TFAirLines, FAirLines);
    FAirLines.Access;
    with FAirLines.FrameAirLine1 do
    begin
      FrameTopPanel1.SetLang;
      if QueryAirLine.Active = False then
      begin
        ShowAirLine();
      end;
    end;
  end;
  FAirLines.Show;
end;
procedure TFOsn.mДлинаВесClick(Sender : TObject);
begin
  if FTypeLengthWeight = nil then
  begin
    Application.CreateForm(TFTypeLengthWeight, FTypeLengthWeight);
    FTypeLengthWeight.Access;
    with FTypeLengthWeight.FrameTypeLengthWeight1 do
    begin
      FrameTopPanel1.SetLang;
      if QueryType.Active = False then
      begin
        ShowType();
        ShowTTH();
      end;
    end;
  end;
  FTypeLengthWeight.Show;
end;
procedure TFOsn.mКаргоClick(Sender : TObject);
begin
  if FKargo = nil then
  begin
    Application.CreateForm(TFKargo, FKargo);
    FKargo.Access;
    with FKargo.FrameKargo1 do
    begin
      FrameTopPanel1.SetLang;
      if QueryKargo.Active = False then
      begin
        ShowKargo();
      end;
    end;
  end;
  FKargo.Show;
end;
procedure TFOsn.mКлиентыClick(Sender : TObject);
begin
  Application.CreateForm(TFClient, FClient);
  FClient.Caption := 'Клиенты';
  with FClient.FrameClient1 do
  begin
    FrameTopPanel1.SetLang;
    // SetLang;
    if QueryClient.Active = False then
    begin
      s_id_type := '1';
      FClient.Access;
      ShowOrg();
      // ShowClients();
    end;
  end;
  FClient.Show;
end;
procedure TFOsn.mМаркировкиClick(Sender : TObject);
begin
  if FMarking = nil then
  begin
    Application.CreateForm(TFMarking, FMarking);
    FMarking.Access;
    with FMarking.FrameMarking1 do
    begin
      FrameTopPanel1.SetLang;
      if QueryMarking.Active = False then
      begin
        ShowMarking();
      end;
    end;
  end;
  FMarking.Show;
end;
procedure TFOsn.mНоменклатураClick(Sender : TObject);
begin
  if FProduct = nil then
  begin
    Application.CreateForm(TFProduct, FProduct);
    FProduct.Access;
    with FProduct.FrameProduct1 do
    begin
      FrameTopPanel1.SetLang;
      if QueryProduct.Active = False then
        ShowProduct();
    end;
  end;
  FProduct.Show;
end;
procedure TFOsn.mОрганизацииClick(Sender : TObject);
begin
  if FOrg = nil then
  begin
    Application.CreateForm(TFOrg, FOrg);
    FOrg.Access;
    with FOrg.FrameOrg1 do
    begin
      FrameTopPanel1.SetLang;
      SetLang;
      if QueryOrg.Active = False then
      begin
        ShowOrg();
      end;
    end;
  end;
  FOrg.Show;
end;
procedure TFOsn.mПлантацииClick(Sender : TObject);
begin
  if FPlant = nil then
  begin
    Application.CreateForm(TFPlant, FPlant);
    FPlant.Access;
    with FPlant.FramePlant1 do
    begin
      FrameTopPanel1.SetLang;
      SetLang;
      if QueryCountry.Active = False then
      begin
        ShowCountry();
        ShowPlant();
      end;
    end;
  end;
  FPlant.Show;
end;
procedure TFOsn.mПоставщикиClick(Sender : TObject);
begin
  Application.CreateForm(TFClient, FClient);
  FClient.Caption := 'Поставщики';
  with FClient.FrameClient1 do
  begin
    FrameTopPanel1.SetLang;
    // SetLang;
    if QueryClient.Active = False then
    begin
      s_id_type := '2';
      FClient.Access;
      ShowOrg();
      // ShowClients();
    end;
  end;
  FClient.Show;
end;
procedure TFOsn.mПрайсClick(Sender : TObject);
begin
  if FOrg = nil then
  begin
    Application.CreateForm(TFPrice, FPrice);
    FPrice.Access;
    with FPrice.FramePriceLength1 do
    begin
      // FrameTopPanel1.SetLang;
      // SetLang;
      if QueryPriceL.Active = False then
      begin
        ShowPriceL();
      end;
    end;
  end;
  FPrice.Show;
end;
procedure TFOsn.mПрикулингClick(Sender : TObject);
begin
  if FPricooling = nil then
  begin
    Application.CreateForm(TFPricooling, FPricooling);
    FPricooling.Access;
    with FPricooling.FrameProcooling1 do
    begin
      FrameTopPanel1.SetLang;
      if QueryPricooling.Active = False then
        ShowPricooling();
    end;
  end;
  FPricooling.Show;
end;
procedure TFOsn.mСвойстваClick(Sender : TObject);
begin
  if FProperties = nil then
  begin
    Application.CreateForm(TFProperties, FProperties);
    FProperties.Access;
    with FProperties.FrameProperties1 do
    begin
      FrameTopPanel1.SetLang;
      SetLang;
      if QueryProperties.Active = False then
      begin
        ShowType;
        ShowPropeties();
      end;
    end;
  end;
  FProperties.Show;
end;
procedure TFOsn.mСортаClick(Sender : TObject);
begin
  if FSort = nil then
  begin
    Application.CreateForm(TFSort, FSort);
    FSort.Access;
    with FSort.FrameSort1 do
    begin
      FrameTopPanel1.SetLang;
      SetLang;
      if QueryCountry.Active = False then
      begin
        ShowCountry();
        ShowSort();
      end;
    end;
  end;
  FSort.Show;
end;
procedure TFOsn.mСтендингClick(Sender : TObject);
begin
  if FStanding = nil then
  begin
    Application.CreateForm(TFStanding, FStanding);
    FStanding.Access;
    with FStanding.FrameStanding1 do
    begin
      FrameTopPanel1.SetLang;
      if QueryStanding.Active = False then
        ShowStanding();
    end;
  end;
  FStanding.Show;
end;
procedure TFOsn.mСтраныClick(Sender : TObject);
begin
  if FCountry = nil then
  begin
    Application.CreateForm(TFCountry, FCountry);
    with FCountry.FrameCountry1 do
    begin
      FrameTopPanel1.SetLang;
      SetLang;
      if QueryCountry.Active = False then
        ShowCountry();
    end;
  end;
  FCountry.Show;
end;
procedure TFOsn.mТипыClick(Sender : TObject);
begin
  if FTypeStruct = nil then
  begin
    Application.CreateForm(TFTypeStruct, FTypeStruct);
    FTypeStruct.Access;
    with FTypeStruct.FrameType1 do
    begin
      FrameTopPanel1.SetLang;
      SetLang;
      if QueryType.Active = False then
        ShowType();
    end;
  end;
  FTypeStruct.Show;
end;
procedure TFOsn.mТракиClick(Sender : TObject);
begin
  if FTrack = nil then
  begin
    Application.CreateForm(TFTrack, FTrack);
    FTrack.Access;
    with FTrack.FrameTrack1 do
    begin
      FrameTopPanel1.SetLang;
      if QueryTrack.Active = False then
      begin
        ShowTrack();
      end;
    end;
  end;
  FTrack.Show;
end;
procedure TFOsn.mResizeClick(Sender : TObject);
begin
  if mResize.Tag = 0 then
  begin
    mResize.Caption := 'Объеденить';
    mResize.Tag := 1;
    Tab1.Active := False;
    ActiveMDIChild.WindowState := wsNormal;
    mКаскад.Enabled := True;
    mГоризонталь.Enabled := True;
    mВертикаль.Enabled := True;
  end
  else
  begin
    mResize.Caption := 'Разъеденить';
    mResize.Tag := 0;
    Tab1.Active := True;
    mКаскад.Enabled := False;
    mГоризонталь.Enabled := False;
    mВертикаль.Enabled := False;
  end;
end;
procedure TFOsn.N4Click(Sender : TObject);
begin
  if Application.MessageBox('Вы действительно хотиет удалить все закупки?',
                             'Вопрос', MB_YESNO) = mrYes then
  begin
    Proc1.StoredProcName := '"документы".del_all_zakupka';
    Proc1.ExecProc;
  end;
end;
procedure TFOsn.N5Click(Sender : TObject);
begin
  if Application.MessageBox('Вы действительно хотиет удалить все закупки?',
                             'Вопрос', MB_YESNO) = mrYes then
  begin
    Proc1.StoredProcName := '"документы".del_all_zakaz';
    Proc1.ExecProc;
  end;
end;
procedure TFOsn.N6Click(Sender : TObject);
begin
  if Application.MessageBox('Вы действительно хотиет удалить все закупки?',
                             'Вопрос', MB_YESNO) = mrYes then
  begin
    Proc1.StoredProcName := '"продукция".удалить_продукцию';
    Proc1.ExecProc;
  end;
end;
procedure TFOsn.mУпаковкаClick(Sender : TObject);
begin
  if FBox = nil then
  begin
    Application.CreateForm(TFBox, FBox);
    FBox.Access;
    with FBox.FrameBox1 do
    begin
      FrameTopPanel1.SetLang;
      if QueryBox.Active = False then
      begin
        ShowBox();
      end;
    end;
  end;
  FBox.Show;
end;
procedure TFOsn.mФитоClick(Sender : TObject);
begin
  if FFITO = nil then
  begin
    Application.CreateForm(TFFITO, FFITO);
    FFITO.Access;
    with FFITO.FrameFITO1 do
    begin
      FrameTopPanel1.SetLang;
      if QueryFITO.Active = False then
        ShowFito();
    end;
  end;
  FFITO.Show;
end;
procedure TFOsn.mВертикальClick(Sender : TObject);
begin
  TileMode := tbVertical;
  Tile;
end;
procedure TFOsn.mГоризонтальClick(Sender : TObject);
begin
  TileMode := tbHorizontal;
  Tile;
end;
procedure TFOsn.mCloseAllClick(Sender : TObject);
var
  i : integer;
begin
  for i := 0 to MDIChildCount - 1 do
    MDIChildren[i].Close;
end;
procedure TFOsn.mHidePanelClick(Sender : TObject);
begin
  if mHidePanel.Tag = 0 then
  begin
    mHidePanel.Tag := 1;
    mHidePanel.Caption := 'Показать панель';
    Bar2.Visible := False;
  end
  else
  begin
    mHidePanel.Tag := 0;
    mHidePanel.Caption := 'Скрыть панель';
    Bar2.Visible := True;
  end;
end;
procedure TFOsn.mБалансПлантацийClick(Sender : TObject);
begin
  Application.CreateForm(TFBuhBalancePlant, FBuhBalancePlant);
  FBuhBalancePlant.FrameBalance1.ShowBalance();
  FBuhBalancePlant.Show;
end;
procedure TFOsn.N3Click(Sender : TObject);
begin
  if FWareHouse = nil then
  begin
    Application.CreateForm(TFWareHouse, FWareHouse);
    FWareHouse.Access;
    with FWareHouse.FrameWarehouse1 do
    begin
      FrameTopPanel1.SetLang;
      if QueryWarehouse.Active = False then
      begin
        ShowWarehouse();
      end;
    end;
  end;
  FWareHouse.Show;
end;
procedure TFOsn.mКаскадClick(Sender : TObject);
begin
  Cascade;
end;
procedure TFOsn.mОкнаClick(Sender : TObject);
begin
  if MDIChildCount <> 0 then
  begin
    mResize.Enabled := True;
    mCloseAll.Enabled := True;
  end
  else
  begin
    mResize.Enabled := False;
    mCloseAll.Enabled := False;
  end;
end;
end.
