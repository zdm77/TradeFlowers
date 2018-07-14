unit UBuh;

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
  dxSkinsCore,

  dxSkinsdxNavBarPainter,
  dxSkinscxPCPainter,
  cxPCdxBarPopupMenu,
  cxPC,
  dxNavBarCollns,
  cxClasses,
  dxNavBarBase,
  dxNavBar,
  UFrameAWB,
  UFrameBalance,
  UBalanceKargo,
  Data.DB,
  MemDS,
  DBAccess,
  Uni,
  UFramePritenz,
  UFrameOplataPlant,
  UFrameStatFacturPlant,
  UFramePrikulingBuh,
  dxBarBuiltInMenu,

  dxSkinDevExpressStyle,

  dxSkinXmas2008Blue, dxSkinOffice2007Blue, dxSkinsDefaultPainters;

type
  TFBuh = class(TForm)
    dxnvbr1: TdxNavBar;
    GroupОснова: TdxNavBarGroup;
    ItemAWB: TdxNavBarItem;
    PageDict: TcxPageControl;
    TabAWB: TcxTabSheet;
    FrameAWB1: TFrameAWB;
    ItemБаланс: TdxNavBarItem;
    TabБаланс: TcxTabSheet;
    FrameBalance1: TFrameBalance;
    ItemБалансКарго: TdxNavBarItem;
    tabБалансКарго: TcxTabSheet;
    FrameBalanceKargo1: TFrameBalanceKargo;
    Query1: TUniQuery;
    ItemПритензии: TdxNavBarItem;
    TabПритензии: TcxTabSheet;
    ItemОплаты: TdxNavBarItem;
    TabОплаты: TcxTabSheet;
    GroupСтатистика: TdxNavBarGroup;
    ItemФактурыПлантаций: TdxNavBarItem;
    TabСтатФактуры: TcxTabSheet;
    FrameStatFacturPlant1: TFrameStatFacturPlant;
    FramePritenz1: TFramePritenz;
    FrameOplataPlant1: TFrameOplataPlant;
    TabПрикул: TcxTabSheet;
    ItemПрикулинг: TdxNavBarItem;
    FramePrikulingBuh1: TFramePrikulingBuh;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FramePritenz1ViewAWBDblClick(Sender: TObject);
    procedure FrameTopPanel1btnDelClick(Sender: TObject);
    procedure FrameTopPanel1btnEditClick(Sender: TObject);
    procedure FrameTopPanel1btnRefreshClick(Sender: TObject);
    procedure ItemAWBClick(Sender: TObject);
    procedure ItemБалансClick(Sender: TObject);
    procedure ItemБалансКаргоClick(Sender: TObject);
    procedure ItemОплатыClick(Sender: TObject);
    procedure ItemПрикулингClick(Sender: TObject);
    procedure ItemПритензииClick(Sender: TObject);
    procedure ItemФактурыПлантацийClick(Sender: TObject);
    procedure PageDictTcxPageControlPropertiesTcxPCCustomButtonsButtons0Click
      (Sender: TObject);
  private
    { Private declarations }
  public
    procedure Access;
    procedure SetLang;
    { Public declarations }
  end;

var
  FBuh: TFBuh;

implementation

{$R *.dfm}

uses
  UPasswd,
  UOsn;

procedure TFBuh.FormCreate(Sender: TObject);
begin
  TabAWB.TabVisible := False;
  TabБаланс.TabVisible := False;
  tabБалансКарго.TabVisible := False;
  TabПритензии.TabVisible := False;
  TabОплаты.TabVisible := False;
  TabСтатФактуры.TabVisible := False;
  TabПрикул.TabVisible := False;
end;

procedure TFBuh.Access;
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
      GroupОснова.Visible := FieldByName('бух_основные').AsBoolean;
      // бухгалтерия AWB
      ItemAWB.Visible := FieldByName('бух_awb_просмотр').AsBoolean;
      ItemБаланс.Visible := FieldByName('бух_баланс_плантаций_просмотр')
        .AsBoolean;
      ItemБалансКарго.Visible := FieldByName('бух_баланс_карго_просмотр')
        .AsBoolean;
      ItemПритензии.Visible := FieldByName('бух_притензии_просмотр').AsBoolean;
      ItemОплаты.Visible := FieldByName('бух_оплата_просмотр').AsBoolean;
      // AWb
      FrameAWB1.FrameTopPanel1.btnAdd.Enabled :=
        FieldByName('бух_awb_добавление').AsBoolean;
      FrameAWB1.FrameTopPanel1.btnEdit.Enabled :=
        FieldByName('бух_awb_редактирование').AsBoolean;
      FrameAWB1.FrameTopPanel1.btnDel.Enabled := FieldByName('бух_awb_удаление')
        .AsBoolean;
      // Баланс плантаций
      FrameBalance1.FrameTopPanel1.btnAdd.Enabled :=
        FieldByName('бух_баланс_плантаций_добавление').AsBoolean;
      FrameBalance1.FrameTopPanel1.btnEdit.Enabled :=
        FieldByName('бух_баланс_плантаций_редактирован').AsBoolean;
      FrameBalance1.FrameTopPanel1.btnDel.Enabled :=
        FieldByName('бух_баланс_плантаций_удаление').AsBoolean;
      // Баланс Карго
      FrameBalanceKargo1.FrameTopPanel1.btnAdd.Enabled :=
        FieldByName('бух_баланс_карго_добавление').AsBoolean;
      FrameBalanceKargo1.FrameTopPanel1.btnEdit.Enabled :=
        FieldByName('бух_баланс_карго_редактирование').AsBoolean;
      FrameBalanceKargo1.FrameTopPanel1.btnDel.Enabled :=
        FieldByName('бух_баланс_карго_удаление').AsBoolean;
      // притензии
      FramePritenz1.FrameTopPanel1.btnEdit.Enabled :=
        FieldByName('бух_притензии_редактирование').AsBoolean;
      FramePritenz1.FrameTopPanel1.btnDel.Enabled :=
        FieldByName('бух_притензии_удаление').AsBoolean;
      // Оплаты плантаций
      FrameBalanceKargo1.FrameTopPanel1.btnAdd.Enabled :=
        FieldByName('бух_оплата_добавление').AsBoolean;
      FrameBalanceKargo1.FrameTopPanel1.btnEdit.Enabled :=
        FieldByName('бух_оплата_редактирование').AsBoolean;
      FrameBalanceKargo1.FrameTopPanel1.btnDel.Enabled :=
        FieldByName('бух_оплата_удаление').AsBoolean;
    end;
  end;
end;

procedure TFBuh.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FBuh := nil;
end;

procedure TFBuh.FormShow(Sender: TObject);
begin
  PageDict.ActivePageIndex := 0;
  // PageDict.HideTabs := True;
  Access;
end;

procedure TFBuh.FramePritenz1ViewAWBDblClick(Sender: TObject);
begin
  FramePritenz1.ViewAWBDblClick(Sender);
end;

procedure TFBuh.FrameTopPanel1btnDelClick(Sender: TObject);
begin
  FramePritenz1.btnDelClick(Sender);
end;

procedure TFBuh.FrameTopPanel1btnEditClick(Sender: TObject);
begin
  FramePritenz1.btnEditClick(Sender);
end;

procedure TFBuh.FrameTopPanel1btnRefreshClick(Sender: TObject);
begin
  FramePritenz1.btnRefreshClick(Sender);
end;

procedure TFBuh.ItemAWBClick(Sender: TObject);
begin
  { AWB }
  PageDict.Visible := True;
  TabAWB.TabVisible := True;
  PageDict.ActivePageIndex := 0;
  with FrameAWB1 do
  begin
    FrameTopPanel1.SetLang;
    SetLang;
    if QueryAWB.Active = False then
      ShowAWB();
  end;
end;

procedure TFBuh.ItemБалансClick(Sender: TObject);
begin
  { Баланс }
  PageDict.Visible := True;
  PageDict.ActivePageIndex := 1;
  TabБаланс.TabVisible := True;
  with FrameBalance1 do
  begin
    FrameTopPanel1.SetLang;
    SetLang;
    if QueryBalance.Active = False then
      ShowBalance();
  end;
end;

procedure TFBuh.ItemБалансКаргоClick(Sender: TObject);
begin
  { Баланс Карго }
  PageDict.Visible := True;
  PageDict.ActivePageIndex := 2;
  tabБалансКарго.TabVisible := True;
  with FrameBalanceKargo1 do
  begin
    FrameTopPanel1.SetLang;
    SetLang;
    if QueryBalanceKargo.Active = False then
      ShowBalance();
  end;
end;

procedure TFBuh.ItemОплатыClick(Sender: TObject);
begin
  { Оплаты }
  PageDict.Visible := True;
  PageDict.ActivePageIndex := 4;
  TabОплаты.TabVisible := True;
  with FrameOplataPlant1 do
  begin
    FrameTopPanel1.SetLang;
    // SetLang;
    if QueryOplataPlant.Active = False then
      ShowOpl();
  end;
end;

procedure TFBuh.ItemПрикулингClick(Sender: TObject);
begin
  { Баланс }
  PageDict.Visible := True;
  PageDict.ActivePageIndex := 6;
  TabПрикул.TabVisible := True;
  with FramePrikulingBuh1 do
  begin
    FrameTopPanel1.SetLang;
    SetLang;
    if QueryPrik.Active = False then
      ShowPrikul();
  end;
end;

procedure TFBuh.ItemПритензииClick(Sender: TObject);
begin
  { Притензии }
  PageDict.Visible := True;
  PageDict.ActivePageIndex := 3;
  TabПритензии.TabVisible := True;
  with FramePritenz1 do
  begin
    FrameTopPanel1.SetLang;
    // SetLang;
    if QueryPritenz.Active = False then
      ShowPritenz();
  end;
end;

procedure TFBuh.ItemФактурыПлантацийClick(Sender: TObject);
begin
  { Стат фактур }
  PageDict.Visible := True;
  PageDict.ActivePageIndex := 5;
  TabСтатФактуры.TabVisible := True;
  with FrameStatFacturPlant1 do
  begin
    // FrameTopPanel1.SetLang;
    // SetLang;
    if QueryStatFactur.Active = False then
      ShowStatFact();
  end;
end;

procedure TFBuh.PageDictTcxPageControlPropertiesTcxPCCustomButtonsButtons0Click
  (Sender: TObject);
var
  I: Integer;
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
  // PageDict.ActivePage.SetFocus;
end;

procedure TFBuh.SetLang;
begin
  case FPasswd.Lang of
    1:
      begin
        // // Caption := 'Directories';
        // ItemТовары.Caption := 'Nomenclature';
        // ItemКлиент.Caption := 'Clients';
        // ItemСтраны.Caption := 'Country';
        // ItemТипы.Caption := 'Types';
        // ItemСвойства.Caption := 'Properties';
        // ItemПлантации.Caption := 'Plantation';
        // ItemСорта.Caption := 'Grades';
        // ItemОрганизация.Caption := 'Organization';
        // ItemПользователи.Caption := 'Users';
        // ItemРоль.Caption := 'The role';
        // GroupОснова.Caption := 'Main';
        // GroupСтруктура.Caption := 'Structure';
        // GroupОрг.Caption := 'Organization';
        // GroupАдмин.Caption := 'Administration';
        // ItemКарго.Caption := 'Cargo';
        // ItemАвиалинии.Caption := 'Airlines';
      end;
    2:
      begin
        // Caption := 'Guías';
        GroupОснова.Caption := 'Básicos';
        GroupСтатистика.Caption := 'La estadística';
        ItemAWB.Caption := 'AWB';
        ItemБаланс.Caption := 'El equilibrio de las plantaciones';
        ItemБалансКарго.Caption := 'El equilibrio del Cargo';
        ItemПритензии.Caption := 'Las reclamaciones';
        ItemОплаты.Caption := 'Las pagas a las plantaciones';
        ItemФактурыПлантаций.Caption := 'Las facturas de las plantaciones';
      end;
  end;
end;

end.
