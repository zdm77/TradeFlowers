unit UDict;
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
  Vcl.ExtCtrls,
  AdvNavBar,
  Vcl.StdCtrls,
  Vcl.ComCtrls,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  dxSkinsCore,
  
  dxSkinscxPCPainter,
  
  cxPC,
  cxSplitter,
  UFrameCountry,
  UFrameType,
  UFrameProduct,
  UFramePlant,
  UFrameSort,
  UFrameLength,
  UFrameProperties,
  dxSkinsdxNavBarPainter,
  dxNavBarCollns,
  cxClasses,
  dxNavBarBase,
  dxNavBar,
  UFrameOrg,
  UFrameUsers,
  UFrameClient,
  UFrameRole,
  UFrameKargo,
  UFrameAirLine,
  UFrameTrack,
  UFramePricooling,
  UFrameMarking,
  UFrameStanding,
  UFramePriceLength,
  UFrameWarehouse,
  UFrameFito,
  UFrameTypeLengthWeight,
  UFrameBox,
  UFrameAccess,
  Data.DB,
  MemDS,
  DBAccess,
  Uni,
  dxBarBuiltInMenu, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient,
  
  dxSkinDevExpressStyle,
  
  UFrameProductNew, dxSkinsDefaultPainters, dxSkinOffice2007Blue;
type
  TFDict = class(TForm)
    PageDict : TcxPageControl;
    TabCountry : TcxTabSheet;
    TabType : TcxTabSheet;
    cxspltr1 : TcxSplitter;
    FrameCountry1 : TFrameCountry;
    FrameType1 : TFrameType;
    TabPlant : TcxTabSheet;
    TabSort : TcxTabSheet;
    TabStract : TcxTabSheet;
    TabProduct : TcxTabSheet;
    FrameProduct1 : TFrameProduct;
    FramePlant1 : TFramePlant;
    TabLength : TcxTabSheet;
    FrameLength1 : TFrameLength;
    TabProperties : TcxTabSheet;
    FrameProperties1 : TFrameProperties;
    dxnvbr1 : TdxNavBar;
    GroupОснова : TdxNavBarGroup;
    ItemТовары : TdxNavBarItem;
    GroupСтруктура : TdxNavBarGroup;
    ItemСтраны : TdxNavBarItem;
    ItemТипы : TdxNavBarItem;
    ItemСвойства : TdxNavBarItem;
    ItemПлантации : TdxNavBarItem;
    ItemСорта : TdxNavBarItem;
    GroupОрг : TdxNavBarGroup;
    ItemОрганизация : TdxNavBarItem;
    TabOrg : TcxTabSheet;
    FrameOrg1 : TFrameOrg;
    GroupАдмин : TdxNavBarGroup;
    ItemПользователи : TdxNavBarItem;
    TabUsers : TcxTabSheet;
    FrameUsers1 : TFrameUsers;
    ItemКлиент : TdxNavBarItem;
    TabClient : TcxTabSheet;
    FrameClient1 : TFrameClient;
    TabРоли : TcxTabSheet;
    FrameRole1 : TFrameRole;
    ItemРоль : TdxNavBarItem;
    ItemКарго : TdxNavBarItem;
    TabКарго : TcxTabSheet;
    FrameKargo1 : TFrameKargo;
    ItemАвиалинии : TdxNavBarItem;
    TabАвиалинии : TcxTabSheet;
    FrameAirLine1 : TFrameAirLine;
    ItemТраки : TdxNavBarItem;
    TabТраки : TcxTabSheet;
    FrameTrack1 : TFrameTrack;
    TabPricooling : TcxTabSheet;
    FrameProcooling1 : TFrameProcooling;
    ItemPricooling : TdxNavBarItem;
    ItemМаркировки : TdxNavBarItem;
    TabМаркировки : TcxTabSheet;
    FrameMarking1 : TFrameMarking;
    GroupТорг : TdxNavBarGroup;
    ItemСтендинг : TdxNavBarItem;
    TabСтендинг : TcxTabSheet;
    FrameStanding1 : TFrameStanding;
    FrameSort1 : TFrameSort;
    ItemПоставщики : TdxNavBarItem;
    TabПоставщики : TcxTabSheet;
    FrameSupplier : TFrameClient;
    ItemPrice : TdxNavBarItem;
    TabPrice : TcxTabSheet;
    FramePriceLength1 : TFramePriceLength;
    ItemЦеха : TdxNavBarItem;
    TabЦеха : TcxTabSheet;
    FrameWarehouse1 : TFrameWarehouse;
    ItemFITO : TdxNavBarItem;
    TabFITO : TcxTabSheet;
    FrameFITO1 : TFrameFITO;
    ItemДлинаВес : TdxNavBarItem;
    PageДлинаВес : TcxTabSheet;
    FrameTypeLengthWeight1 : TFrameTypeLengthWeight;
    tabКоробки : TcxTabSheet;
    FrameBox1 : TFrameBox;
    ItemУпаковка : TdxNavBarItem;
    ItemДоступ : TdxNavBarItem;
    tabДоступ : TcxTabSheet;
    FrameAccess1 : TFrameAccess;
    Query1 : TUniQuery;
    dsPr2 : TDataSource;
    dset1 : TClientDataSet;
    Button1 : TButton;
    UniQuery1 : TUniQuery;
    ItemНоменкл2 : TdxNavBarItem;
    tabНоменкл2 : TcxTabSheet;
    FrameProductNew1 : TFrameProductNew;
    procedure Button1Click(Sender : TObject);
    procedure FormClose(Sender : TObject; var Action : TCloseAction);
    procedure FormCreate(Sender : TObject);
    procedure FormShow(Sender : TObject);
    procedure FrameSort1ViewUsersDblClick(Sender : TObject);
    procedure FrameTopPanel1btnDelClick(Sender : TObject);
    procedure ItemКлиентClick(Sender : TObject);
    procedure ItemСтраныClick(Sender : TObject);
    procedure ItemОрганизацияClick(Sender : TObject);
    procedure ItemПлантацииClick(Sender : TObject);
    procedure ItemТоварыClick(Sender : TObject);
    procedure ItemСвойстваClick(Sender : TObject);
    procedure ItemСортаClick(Sender : TObject);
    procedure ItemТипыClick(Sender : TObject);
    procedure ItemПользователиClick(Sender : TObject);
    procedure FrameClient1edtOrgPropertiesEditValueChanged(Sender : TObject);
    procedure FrameClient1ViewStatWorkDblClick(Sender : TObject);
    procedure FrameOrg1ViewStatWorkDblClick(Sender : TObject);
    procedure FrameRole1ViewUsersDblClick(Sender : TObject);
    procedure FrameStanding1ViewUsersDblClick(Sender : TObject);
    procedure FrameTypeLengthWeight1ViewUsersDblClick(Sender : TObject);
    procedure FrameUsers1ViewStatWorkDblClick(Sender : TObject);
    procedure ItemFITOClick(Sender : TObject);
    procedure ItemPriceClick(Sender : TObject);
    procedure ItemPricoolingClick(Sender : TObject);
    procedure ItemАвиалинииClick(Sender : TObject);
    procedure ItemДлинаВесClick(Sender : TObject);
    procedure ItemДоступClick(Sender : TObject);
    procedure ItemКаргоClick(Sender : TObject);
    procedure ItemУпаковкаClick(Sender : TObject);
    procedure ItemМаркировкиClick(Sender : TObject);
    procedure ItemНоменкл2Click(Sender : TObject);
    procedure ItemПоставщикиClick(Sender : TObject);
    procedure ItemРольClick(Sender : TObject);
    procedure ItemСтендингClick(Sender : TObject);
    procedure ItemТракиClick(Sender : TObject);
    procedure ItemЦехаClick(Sender : TObject);
    procedure PageDictTcxPageControlPropertiesTcxPCCustomButtonsButtons0Click
        (Sender : TObject);
  private
    { Private declarations }
  public
    procedure Access;
    { Public declarations }
  end;

var
  FDict : TFDict;
implementation
{$R *.dfm}

uses
  UPasswd,
  UOsn,
  USplash;
procedure TFDict.Access;
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
      GroupОснова.Visible := FieldByName('справочники_основные').AsBoolean;
      GroupСтруктура.Visible := FieldByName('справочники_структура').AsBoolean;
      GroupОрг.Visible := FieldByName('справочники_организация').AsBoolean;
      GroupАдмин.Visible := FieldByName('справочники_администрирование')
    .AsBoolean;
      GroupТорг.Visible := FieldByName('справочники_логистика').AsBoolean;
      ItemТовары.Visible := FieldByName('номенклатура_просмотр').AsBoolean;
      ItemКлиент.Visible := FieldByName('клиенты_просмотр').AsBoolean;
      ItemПоставщики.Visible := FieldByName('поставщики_просмотр').AsBoolean;
      ItemСтраны.Visible := FieldByName('страны_просмотр').AsBoolean;
      ItemТипы.Visible := FieldByName('типы_просмотр').AsBoolean;
      ItemСвойства.Visible := FieldByName('свойства_просмотр').AsBoolean;
      ItemПлантации.Visible := FieldByName('плантации_просмотр').AsBoolean;
      ItemСорта.Visible := FieldByName('сорта_просмотр').AsBoolean;
      ItemДлинаВес.Visible := FieldByName('длина_вес_просмотр').AsBoolean;
      ItemУпаковка.Visible := FieldByName('упаковка_просмотр').AsBoolean;
      ItemМаркировки.Visible := FieldByName('маркировки_просмотр').AsBoolean;
      ItemАвиалинии.Visible := FieldByName('авиалинии_просмотр').AsBoolean;
      ItemКарго.Visible := FieldByName('карго_просмотр').AsBoolean;
      ItemТраки.Visible := FieldByName('траки_просмотр').AsBoolean;
      ItemPricooling.Visible := FieldByName('прикулинг_просмотр').AsBoolean;
      ItemFITO.Visible := FieldByName('фито_просмотр').AsBoolean;
      ItemСтендинг.Visible := FieldByName('стендинг_просмотр').AsBoolean;
      ItemОрганизация.Visible := FieldByName('организации_просмотр').AsBoolean;
      ItemPrice.Visible := FieldByName('прайс_просмотр').AsBoolean;
      ItemЦеха.Visible := FieldByName('цеха_просмотр').AsBoolean;
      ItemПользователи.Visible := FieldByName('пользователи_просмотр')
    .AsBoolean;
      ItemРоль.Visible := FieldByName('роли_просмотр').AsBoolean;
      ItemДоступ.Visible := False;
      // товары
      FrameProduct1.FrameTopPanel1.btnAdd.Enabled :=
                                                    FieldByName('номенклатура_добавление').AsBoolean;
      FrameProduct1.FrameTopPanel1.btnEdit.Enabled :=
                                                     FieldByName('номенклатура_редактирование').AsBoolean;
      FrameProduct1.FrameTopPanel1.btnDel.Enabled :=
                                                    FieldByName('номенклатура_удаление').AsBoolean;
      // клиенты
      FrameClient1.FrameTopPanel1.btnAdd.Enabled :=
                                                   FieldByName('клиенты_добавление').AsBoolean;
      FrameClient1.FrameTopPanel1.btnEdit.Enabled :=
                                                    FieldByName('клиенты_редактирование').AsBoolean;
      FrameClient1.FrameTopPanel1.btnDel.Enabled :=
                                                   FieldByName('клиенты_удаление').AsBoolean;
      // поставщики
      FrameSupplier.FrameTopPanel1.btnAdd.Enabled :=
                                                    FieldByName('поставщики_добавление').AsBoolean;
      FrameSupplier.FrameTopPanel1.btnEdit.Enabled :=
                                                     FieldByName('поставщики_редактирование').AsBoolean;
      FrameSupplier.FrameTopPanel1.btnDel.Enabled :=
                                                    FieldByName('поставщики_удаление').AsBoolean;
      // страны
      FrameCountry1.FrameTopPanel1.btnAdd.Enabled :=
                                                    FieldByName('поставщики_добавление').AsBoolean;
      FrameCountry1.FrameTopPanel1.btnEdit.Enabled :=
                                                     FieldByName('поставщики_редактирование').AsBoolean;
      FrameCountry1.FrameTopPanel1.btnDel.Enabled :=
                                                    FieldByName('поставщики_удаление').AsBoolean;
      // типы
      FrameType1.FrameTopPanel1.btnAdd.Enabled := FieldByName('типы_добавление')
    .AsBoolean;
      FrameType1.FrameTopPanel1.btnEdit.Enabled :=
                                                  FieldByName('типы_редактирование').AsBoolean;
      FrameType1.FrameTopPanel1.btnDel.Enabled := FieldByName('типы_удаление')
    .AsBoolean;
      // свойства
      FrameProperties1.FrameTopPanel1.btnAdd.Enabled :=
                                                       FieldByName('свойства_добавление').AsBoolean;
      FrameProperties1.FrameTopPanel1.btnEdit.Enabled :=
                                                        FieldByName('свойства_редактирование').AsBoolean;
      FrameProperties1.FrameTopPanel1.btnDel.Enabled :=
                                                       FieldByName('свойства_удаление').AsBoolean;
      // плантации
      FramePlant1.FrameTopPanel1.btnAdd.Enabled :=
                                                  FieldByName('плантации_добавление').AsBoolean;
      FramePlant1.FrameTopPanel1.btnEdit.Enabled :=
                                                   FieldByName('плантации_редактирование').AsBoolean;
      FramePlant1.FrameTopPanel1.btnDel.Enabled :=
                                                  FieldByName('плантации_удаление').AsBoolean;
      // сорта
      FrameSort1.FrameTopPanel1.btnAdd.Enabled :=
                                                 FieldByName('сорта_добавление').AsBoolean;
      FrameSort1.FrameTopPanel1.btnEdit.Enabled :=
                                                  FieldByName('сорта_редактирование').AsBoolean;
      FrameSort1.FrameTopPanel1.btnDel.Enabled := FieldByName('сорта_удаление')
    .AsBoolean;
      // длина-вес
      FrameTypeLengthWeight1.FrameTopPanel1.btnAdd.Enabled :=
                                                             FieldByName('длина_вес_добавление').AsBoolean;
      FrameTypeLengthWeight1.FrameTopPanel1.btnEdit.Enabled :=
                                                              FieldByName('длина_вес_редактирование').AsBoolean;
      FrameTypeLengthWeight1.FrameTopPanel1.btnDel.Enabled :=
                                                             FieldByName('длина_вес_удаление').AsBoolean;
      // упаковка
      FrameBox1.FrameTopPanel1.btnAdd.Enabled :=
                                                FieldByName('упаковка_добавление').AsBoolean;
      FrameBox1.FrameTopPanel1.btnEdit.Enabled :=
                                                 FieldByName('упаковка_редактирование').AsBoolean;
      FrameBox1.FrameTopPanel1.btnDel.Enabled :=
                                                FieldByName('упаковка_удаление').AsBoolean;
      // маркировки
      FrameMarking1.FrameTopPanel1.btnAdd.Enabled :=
                                                    FieldByName('маркировки_добавление').AsBoolean;
      FrameMarking1.FrameTopPanel1.btnEdit.Enabled :=
                                                     FieldByName('маркировки_редактирование').AsBoolean;
      FrameMarking1.FrameTopPanel1.btnDel.Enabled :=
                                                    FieldByName('маркировки_удаление').AsBoolean;
      // авиалинии
      FrameAirLine1.FrameTopPanel1.btnAdd.Enabled :=
                                                    FieldByName('авиалинии_добавление').AsBoolean;
      FrameAirLine1.FrameTopPanel1.btnEdit.Enabled :=
                                                     FieldByName('авиалинии_редактирование').AsBoolean;
      FrameAirLine1.FrameTopPanel1.btnDel.Enabled :=
                                                    FieldByName('авиалинии_удаление').AsBoolean;
      // карго
      FrameKargo1.FrameTopPanel1.btnAdd.Enabled :=
                                                  FieldByName('карго_добавление').AsBoolean;
      FrameKargo1.FrameTopPanel1.btnEdit.Enabled :=
                                                   FieldByName('карго_редактирование').AsBoolean;
      FrameKargo1.FrameTopPanel1.btnDel.Enabled := FieldByName('карго_удаление')
    .AsBoolean;
      // траки
      FrameTrack1.FrameTopPanel1.btnAdd.Enabled :=
                                                  FieldByName('траки_добавление').AsBoolean;
      FrameTrack1.FrameTopPanel1.btnEdit.Enabled :=
                                                   FieldByName('траки_редактирование').AsBoolean;
      FrameTrack1.FrameTopPanel1.btnDel.Enabled := FieldByName('траки_удаление')
    .AsBoolean;
      // прикулинг
      FrameProcooling1.FrameTopPanel1.btnAdd.Enabled :=
                                                       FieldByName('прикулинг_добавление').AsBoolean;
      FrameProcooling1.FrameTopPanel1.btnEdit.Enabled :=
                                                        FieldByName('прикулинг_редактирование').AsBoolean;
      FrameProcooling1.FrameTopPanel1.btnDel.Enabled :=
                                                       FieldByName('прикулинг_удаление').AsBoolean;
      // фито
      FrameFITO1.FrameTopPanel1.btnAdd.Enabled := FieldByName('фито_добавление')
    .AsBoolean;
      FrameFITO1.FrameTopPanel1.btnEdit.Enabled :=
                                                  FieldByName('фито_редактирование').AsBoolean;
      FrameFITO1.FrameTopPanel1.btnDel.Enabled := FieldByName('фито_удаление')
    .AsBoolean;
      // стендинг
      FrameStanding1.FrameTopPanel1.btnAdd.Enabled :=
                                                     FieldByName('стендинг_добавление').AsBoolean;
      FrameStanding1.FrameTopPanel1.btnEdit.Enabled :=
                                                      FieldByName('стендинг_редактирование').AsBoolean;
      FrameStanding1.FrameTopPanel1.btnDel.Enabled :=
                                                     FieldByName('стендинг_удаление').AsBoolean;
      // организации
      FrameOrg1.FrameTopPanel1.btnAdd.Enabled :=
                                                FieldByName('организации_добавление').AsBoolean;
      FrameOrg1.FrameTopPanel1.btnEdit.Enabled :=
                                                 FieldByName('организации_редактирование').AsBoolean;
      FrameOrg1.FrameTopPanel1.btnDel.Enabled :=
                                                FieldByName('организации_удаление').AsBoolean;
      // // прайс
      // FramePriceLength1.FrameTopPanel1.btnAdd.Enabled :=
      // FieldByName('прайс_добавление').AsBoolean;
      // FrameOrg1.FrameTopPanel1.btnEdit.Enabled :=
      // FieldByName('прайс_редатктирование').AsBoolean;
      // FrameOrg1.FrameTopPanel1.btnDel.Enabled :=
      // FieldByName('прайс_удаление').AsBoolean;
      // цеха
      FrameWarehouse1.FrameTopPanel1.btnAdd.Enabled :=
                                                      FieldByName('цеха_добавление').AsBoolean;
      FrameWarehouse1.FrameTopPanel1.btnEdit.Enabled :=
                                                       FieldByName('цеха_редактирование').AsBoolean;
      FrameWarehouse1.FrameTopPanel1.btnDel.Enabled :=
                                                      FieldByName('цеха_удаление').AsBoolean;
      // пользователи
      FrameUsers1.FrameTopPanel1.btnAdd.Enabled :=
                                                  FieldByName('пользователи_добавление').AsBoolean;
      FrameUsers1.FrameTopPanel1.btnEdit.Enabled :=
                                                   FieldByName('пользователи_редактирование').AsBoolean;
      FrameUsers1.FrameTopPanel1.btnDel.Enabled :=
                                                  FieldByName('пользователи_удаление').AsBoolean;
      // роли
      FrameRole1.FrameTopPanel1.btnAdd.Enabled := FieldByName('роли_добавление')
    .AsBoolean;
      FrameRole1.FrameTopPanel1.btnEdit.Enabled :=
                                                  FieldByName('роли_редактирование').AsBoolean;
      FrameRole1.FrameTopPanel1.btnDel.Enabled := FieldByName('роли_удаление')
    .AsBoolean;
    end;
  end;
end;
procedure TFDict.Button1Click(Sender : TObject);
begin
  // dset1.SetProvider(UniQuery1);
  FPasswd.MStream.seek(0, 0);
  dset1.LoadFromStream(FPasswd.MStream);
  // dset1.LoadFromFile('1.xml');
end;
procedure TFDict.FormClose(Sender : TObject; var Action : TCloseAction);
begin
  Action := caFree;
  FDict := nil;
end;
procedure TFDict.FormCreate(Sender : TObject);
var
  a : array [0..255] of Char;
  StrTblOfs : Integer;
  I : Integer;
begin
  for I := 0 to PageDict.PageCount - 1 do
  begin
    PageDict.Pages[I].TabVisible := False;
  end;
  //
  case FPasswd.Lang of
    1 :
    begin
      Caption := 'Directories';
      ItemТовары.Caption := 'Nomenclature';
      ItemКлиент.Caption := 'Clients';
      ItemСтраны.Caption := 'Country';
      ItemТипы.Caption := 'Types';
      ItemСвойства.Caption := 'Properties';
      ItemПлантации.Caption := 'Plantation';
      ItemСорта.Caption := 'Grades';
      ItemОрганизация.Caption := 'Organization';
      ItemПользователи.Caption := 'Users';
      ItemРоль.Caption := 'The role';
      GroupОснова.Caption := 'Main';
      GroupСтруктура.Caption := 'Structure';
      GroupОрг.Caption := 'Organization';
      GroupАдмин.Caption := 'Administration';
      ItemКарго.Caption := 'Cargo';
      ItemАвиалинии.Caption := 'Airlines';
    end;
    2 :
    begin
      Caption := 'Guías';
      ItemТовары.Caption := 'Nomenclatura';
      ItemКлиент.Caption := 'Clientes';
      ItemСтраны.Caption := 'Países';
      ItemТипы.Caption := 'Tipos';
      ItemСвойства.Caption := 'Propiedades';
      ItemПлантации.Caption := 'Fincas';
      ItemСорта.Caption := 'Variedades';
      ItemРоль.Caption := 'Papeles';
      ItemОрганизация.Caption := 'Organizaciones';
      ItemПользователи.Caption := 'Usuarios';
      GroupОснова.Caption := 'Básicos';
      GroupСтруктура.Caption := 'Estructura';
      GroupОрг.Caption := 'Organización';
      GroupАдмин.Caption := 'Administración';
      ItemКарго.Caption := 'Agencias cargo';
      ItemАвиалинии.Caption := 'Aerolineas';
    end;
  end;
  // case FPasswd.Lang of
  // 0:
  // StrTblOfs := 0;
  // 1:
  // StrTblOfs := 1000;
  // 2:
  // StrTblOfs := 2000;
  // end;
  // if LoadString(hInstance, StrTblOfs + 9, @a, sizeof(a)) <> 0 then
  // Caption := StrPas(a);
  // if LoadString(hInstance, StrTblOfs + 15, @a, sizeof(a)) <> 0 then
  // PanelOsn.Caption := StrPas(a);
  // if LoadString(hInstance, StrTblOfs + 16, @a, sizeof(a)) <> 0 then
  // PanelStruct.Caption := StrPas(a);
  // if LoadString(hInstance, StrTblOfs + 17, @a, sizeof(a)) <> 0 then
  // lstStruct.Items[0] := StrPas(a);
  // if LoadString(hInstance, StrTblOfs + 18, @a, sizeof(a)) <> 0 then
  // lstStruct.Items[1] := StrPas(a);
  // if LoadString(hInstance, StrTblOfs + 19, @a, sizeof(a)) <> 0 then
  // lstStruct.Items[2] := StrPas(a);
  // if LoadString(hInstance, StrTblOfs + 20, @a, sizeof(a)) <> 0 then
  // lstStruct.Items[3] := StrPas(a);
  // if LoadString(hInstance, StrTblOfs + 16, @a, sizeof(a)) <> 0 then
  // lstStruct.Items[4] := StrPas(a);
  // if LoadString(hInstance, StrTblOfs + 16, @a, sizeof(a)) <> 0 then
  // lstStruct.Items[4] := StrPas(a);
  Access;
end;
procedure TFDict.FormShow(Sender : TObject);
begin
  PageDict.ActivePageIndex := 0;
  // PageDict.HideTabs := True;
  // if FPasswd.ID_ROLE <> 1 then
  // GroupАдмин.Visible := false;
end;
procedure TFDict.FrameClient1edtOrgPropertiesEditValueChanged(Sender : TObject);
begin
  FrameClient1.ShowClients();
end;
procedure TFDict.FrameClient1ViewStatWorkDblClick(Sender : TObject);
begin
  FrameClient1.ViewStatWorkDblClick(Sender);
end;
procedure TFDict.FrameOrg1ViewStatWorkDblClick(Sender : TObject);
begin
  FrameOrg1.ViewStatWorkDblClick(Sender);
end;
procedure TFDict.FrameRole1ViewUsersDblClick(Sender : TObject);
begin
  FrameRole1.btnEditClick(Sender);
end;
procedure TFDict.FrameSort1ViewUsersDblClick(Sender : TObject);
begin
  FrameSort1.ViewUsersDblClick(Sender);
end;
procedure TFDict.FrameStanding1ViewUsersDblClick(Sender : TObject);
begin
  FrameStanding1.FrameTopPanel1.btnEdit.Click;
end;
procedure TFDict.FrameTopPanel1btnDelClick(Sender : TObject);
begin
  FrameProduct1.btnDelClick(Sender);
end;
procedure TFDict.FrameTypeLengthWeight1ViewUsersDblClick(Sender : TObject);
begin
  FrameTypeLengthWeight1.btnEditClick(Sender);
end;
procedure TFDict.FrameUsers1ViewStatWorkDblClick(Sender : TObject);
begin
  FrameUsers1.ViewStatWorkDblClick(Sender);
end;
procedure TFDict.ItemFITOClick(Sender : TObject);
begin
  { ФИТО }
  PageDict.Visible := True;
  PageDict.ActivePageIndex := 21;
  PageDict.Pages[21].TabVisible := True;
  with FrameFITO1 do
  begin
    // SetLang;
    if QueryFITO.Active = False then
    begin
      ShowFito();
    end;
  end;
end;
procedure TFDict.ItemPriceClick(Sender : TObject);
begin
  { прайс }
  PageDict.Visible := True;
  PageDict.ActivePageIndex := 19;
  PageDict.Pages[19].TabVisible := True;
  with FramePriceLength1 do
  begin
    // SetLang;
    if QueryPriceL.Active = False then
    begin
      ShowPriceL();
    end;
  end;
end;
procedure TFDict.ItemPricoolingClick(Sender : TObject);
begin
  { прикулинг }
  PageDict.Visible := True;
  PageDict.ActivePageIndex := 15;
  PageDict.Pages[15].TabVisible := True;
  with FrameProcooling1 do
  begin
    FrameTopPanel1.SetLang;
    // SetLang;
    if QueryPricooling.Active = False then
    begin
      ShowPricooling();
    end;
  end;
end;
procedure TFDict.ItemАвиалинииClick(Sender : TObject);
begin
  { авиалинии }
  PageDict.Visible := True;
  PageDict.ActivePageIndex := 13;
  PageDict.Pages[13].TabVisible := True;
  with FrameAirLine1 do
  begin
    FrameTopPanel1.SetLang;
    SetLang;
    if QueryAirLine.Active = False then
    begin
      ShowAirLine();
    end;
  end;
end;
procedure TFDict.ItemДлинаВесClick(Sender : TObject);
begin
  { Длина-Вес }
  PageDict.Visible := True;
  PageDict.ActivePageIndex := 22;
  PageDict.Pages[22].TabVisible := True;
  with FrameTypeLengthWeight1 do
  begin
    // SetLang;
    if QueryType.Active = False then
    begin
      ShowType();
      ShowTTH();
    end;
  end;
end;
procedure TFDict.ItemДоступClick(Sender : TObject);
begin
  { Коробки }
  PageDict.Visible := True;
  PageDict.ActivePageIndex := 24;
  PageDict.Pages[24].TabVisible := True;
  with FrameAccess1 do
  begin
    PageDictAccess.ActivePageIndex := 0;
    PageAccess.ActivePageIndex := 0;
    // SetLang;
    if QueryRole.Active = False then
    begin
      ShowAccess();
    end;
  end;
end;
procedure TFDict.ItemКаргоClick(Sender : TObject);
begin
  { карго }
  PageDict.Visible := True;
  PageDict.ActivePageIndex := 12;
  PageDict.Pages[12].TabVisible := True;
  with FrameKargo1 do
  begin
    FrameTopPanel1.SetLang;
    // SetLang;
    if QueryKargo.Active = False then
    begin
      ShowKargo();
    end;
  end;
end;
procedure TFDict.ItemКлиентClick(Sender : TObject);
begin
  { клиенты }
  PageDict.Visible := True;
  PageDict.ActivePageIndex := 10;
  PageDict.Pages[10].TabVisible := True;
  // PageDict.Pages[ 10 ].PageIndex := 0;
  // TabClient.Tag := 0;
  with FrameClient1 do
  begin
    FrameTopPanel1.SetLang;
    // SetLang;
    if QueryClient.Active = False then
    begin
      s_id_type := '1';
      ShowOrg();
      // ShowClients();
    end;
  end;
end;
procedure TFDict.ItemУпаковкаClick(Sender : TObject);
begin
  { Коробки }
  PageDict.Visible := True;
  PageDict.ActivePageIndex := 23;
  PageDict.Pages[23].TabVisible := True;
  with FrameBox1 do
  begin
    // SetLang;
    if QueryBox.Active = False then
    begin
      ShowBox();
    end;
  end;
end;
procedure TFDict.ItemМаркировкиClick(Sender : TObject);
begin
  { маркировки }
  PageDict.Visible := True;
  PageDict.ActivePageIndex := 16;
  PageDict.Pages[16].TabVisible := True;
  with FrameMarking1 do
  begin
    FrameTopPanel1.SetLang;
    // SetLang;
    if QueryMarking.Active = False then
    begin
      ShowMarking();
    end;
  end;
end;
procedure TFDict.ItemНоменкл2Click(Sender : TObject);
begin
  PageDict.Visible := True;
  PageDict.ActivePageIndex := 25;
  PageDict.Pages[25].TabVisible := True;
  // PageDict.Pages[ 18 ].PageIndex := 0;
  with FrameProductNew1 do
  begin
    FrameTopPanel1.SetLang;
    // SetLang;
    if QueryProduct.Active = False then
    begin
      ShowTree;
      ShowProduct();
      // ShowClients();
    end;
  end;
end;
procedure TFDict.ItemСтраныClick(Sender : TObject);
begin
  { страны }
  PageDict.Visible := True;
  PageDict.ActivePageIndex := 0;
  PageDict.Pages[0].TabVisible := True;
  with FrameCountry1 do
  begin
    FrameTopPanel1.SetLang;
    SetLang;
    if QueryCountry.Active = False then
      ShowCountry();
  end;
end;
procedure TFDict.ItemОрганизацияClick(Sender : TObject);
begin
  { организации }
  PageDict.Visible := True;
  PageDict.ActivePageIndex := 8;
  PageDict.Pages[8].TabVisible := True;
  PageDict.Pages[PageDict.ActivePageIndex].PageIndex := 0;
  with FrameOrg1 do
  begin
    FrameTopPanel1.SetLang;
    SetLang;
    if QueryOrg.Active = False then
    begin
      ShowOrg();
    end;
  end;
end;
procedure TFDict.ItemПлантацииClick(Sender : TObject);
begin
  { плантации }
  PageDict.Visible := True;
  PageDict.ActivePageIndex := 2;
  PageDict.Pages[2].TabVisible := True;
  with FramePlant1 do
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
procedure TFDict.ItemТоварыClick(Sender : TObject);
begin
  { товары }
  PageDict.Visible := True;
  PageDict.ActivePageIndex := 5;
  PageDict.Pages[5].TabVisible := True;
  // PageDict.Pages[ 5 ].PageIndex := 0;
  with FrameProduct1 do
  begin
    FrameTopPanel1.SetLang;
    // SetLang;
    if QueryProduct.Active = False then
      ShowProduct();
    case FPasswd.edtLangData.ItemIndex of
      0 : ColumnName.DataBinding.FieldName := 'name';
      1 : ColumnName.DataBinding.FieldName := 'uni_name';
      2 : ColumnName.DataBinding.FieldName := 'reg_name';
    end;
  end;
end;
procedure TFDict.ItemСвойстваClick(Sender : TObject);
begin
  { свойства }
  PageDict.Visible := True;
  PageDict.ActivePageIndex := 7;
  PageDict.Pages[7].TabVisible := True;
  with FrameProperties1 do
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
procedure TFDict.ItemСортаClick(Sender : TObject);
begin
  { сорта }
  PageDict.Visible := True;
  PageDict.ActivePageIndex := 3;
  PageDict.Pages[3].TabVisible := True;
  with FrameSort1 do
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
procedure TFDict.ItemТипыClick(Sender : TObject);
begin
  { типы }
  PageDict.Visible := True;
  PageDict.ActivePageIndex := 1;
  PageDict.Pages[1].TabVisible := True;
  with FrameType1 do
  begin
    FrameTopPanel1.SetLang;
    SetLang;
    if QueryType.Active = False then
      ShowType();
  end;
end;
procedure TFDict.ItemПользователиClick(Sender : TObject);
begin
  { пользователи }
  PageDict.Visible := True;
  PageDict.ActivePageIndex := 9;
  PageDict.Pages[9].TabVisible := True;
  with FrameUsers1 do
  begin
    FrameTopPanel1.SetLang;
    // SetLang;
    if QueryOrg.Active = False then
      ShowOrg();
  end;
end;
procedure TFDict.ItemПоставщикиClick(Sender : TObject);
begin
  { поставщики }
  PageDict.Visible := True;
  PageDict.ActivePageIndex := 18;
  PageDict.Pages[18].TabVisible := True;
  // PageDict.Pages[ 18 ].PageIndex := 0;
  with FrameSupplier do
  begin
    FrameTopPanel1.SetLang;
    // SetLang;
    if QueryClient.Active = False then
    begin
      s_id_type := '2';
      ShowOrg();
      // ShowClients();
    end;
  end;
end;
procedure TFDict.ItemРольClick(Sender : TObject);
begin
  { роли }
  PageDict.Visible := True;
  PageDict.ActivePageIndex := 11;
  PageDict.Pages[11].TabVisible := True;
  with FrameRole1 do
  begin
    FrameTopPanel1.SetLang;
    SetLang;
    if QueryRole.Active = False then
    begin
      ShowRole();
    end;
  end;
end;
procedure TFDict.ItemСтендингClick(Sender : TObject);
begin
  { стендинг }
  PageDict.Visible := True;
  PageDict.ActivePageIndex := 17;
  PageDict.Pages[17].TabVisible := True;
  with FrameStanding1 do
  begin
    FrameTopPanel1.SetLang;
    SetLang;
    if QueryStanding.Active = False then
    begin
      ShowStanding();
    end;
  end;
end;
procedure TFDict.ItemТракиClick(Sender : TObject);
begin
  { траки }
  PageDict.Visible := True;
  PageDict.ActivePageIndex := 14;
  PageDict.Pages[14].TabVisible := True;
  with FrameTrack1 do
  begin
    FrameTopPanel1.SetLang;
    // SetLang;
    if QueryTrack.Active = False then
    begin
      ShowTrack();
    end;
  end;
end;
procedure TFDict.ItemЦехаClick(Sender : TObject);
begin
  { цеха }
  PageDict.Visible := True;
  PageDict.ActivePageIndex := 20;
  PageDict.Pages[20].TabVisible := True;
  with FrameWarehouse1 do
  begin
    // SetLang;
    if QueryWarehouse.Active = False then
    begin
      ShowWarehouse();
    end;
  end;
end;
procedure TFDict.PageDictTcxPageControlPropertiesTcxPCCustomButtonsButtons0Click
  (Sender : TObject);
var
  I : Integer;
begin
  PageDict.ActivePage.TabVisible := False;
  for I := 0 to PageDict.PageCount - 1 do
  begin
    if (PageDict.Pages[I].TabVisible = True) then
    begin
      PageDict.ActivePageIndex := I;
      Abort;
    end;
  end;
end;
end.
