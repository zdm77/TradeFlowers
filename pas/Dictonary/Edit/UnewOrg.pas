unit UnewOrg;
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
  
  dxSkinscxPCPainter,
  
  cxContainer,
  cxEdit,
  cxStyles,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  DB,
  cxDBData,
  cxCheckBox,
  MemDS,
  DBAccess,
  Uni,
  cxGridDBTableView,
  UFrameTopPanel,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridBandedTableView,
  cxGridDBBandedTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  cxDropDownEdit,
  cxCalendar,
  cxMaskEdit,
  cxTextEdit,
  cxMemo,
  cxLabel,
  cxGroupBox,
  cxPC,
  UFrameSave,
  Vcl.ComCtrls,
  Menus,
  Vcl.StdCtrls,
  cxButtons,
  cxNavigator,
  dxBarBuiltInMenu,
  
  dxSkinDevExpressStyle,
  
  dxSkinsDefaultPainters, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog;
type
  TFNewOrg = class(TForm)
    FrameSave1 : TFrameSave;
    page1 : TcxPageControl;
    tab1 : TcxTabSheet;
    Group3 : TcxGroupBox;
    label6 : TcxLabel;
    mmoUrAdres : TcxMemo;
    label9 : TcxLabel;
    mmoFactAdres : TcxMemo;
    mmoDostavka : TcxMemo;
    label10 : TcxLabel;
    Label1 : TcxLabel;
    edtPhone1 : TcxTextEdit;
    Label3 : TcxLabel;
    edtPhone2 : TcxTextEdit;
    Label4 : TcxLabel;
    edtEmail : TcxTextEdit;
    Label5 : TcxLabel;
    edtFax : TcxTextEdit;
    Label8 : TcxLabel;
    edtSite : TcxTextEdit;
    Group4 : TcxGroupBox;
    Group2 : TcxGroupBox;
    cxlbl1 : TcxLabel;
    edtName : TcxTextEdit;
    cxlbl3 : TcxLabel;
    memoFullName : TcxMemo;
    cbbTypeBank : TcxComboBox;
    cxLabel8 : TcxLabel;
    chkInvoice : TcxCheckBox;
    cxGroupBox2 : TcxGroupBox;
    cxLabel3 : TcxLabel;
    edtINN : TcxTextEdit;
    cxLabel4 : TcxLabel;
    edtOGRN : TcxTextEdit;
    Group5 : TcxGroupBox;
    cxGroupBox3 : TcxGroupBox;
    cxLabel2 : TcxLabel;
    edtGosReg : TcxTextEdit;
    cxLabel5 : TcxLabel;
    cxGroupBox5 : TcxGroupBox;
    cxLabel6 : TcxLabel;
    edtOKATO : TcxTextEdit;
    cxLabel7 : TcxLabel;
    edtOKPO : TcxTextEdit;
    tab3 : TcxTabSheet;
    cxGroupBox6 : TcxGroupBox;
    cxGrid2 : TcxGrid;
    cxGridDBBandedTableView1 : TcxGridDBBandedTableView;
    cxGridDBBandedTableView1answ : TcxGridDBBandedColumn;
    cxGridDBBandedTableView1client_name : TcxGridDBBandedColumn;
    cxGridLevel2 : TcxGridLevel;
    TabAccount : TcxTabSheet;
    PageAccount : TcxPageControl;
    TabRussia : TcxTabSheet;
    cxGroupBox1 : TcxGroupBox;
    Label2 : TcxLabel;
    edtNameInContract : TcxTextEdit;
    edtInFace : TcxTextEdit;
    edtSign : TcxTextEdit;
    cxLabel1 : TcxLabel;
    Label7 : TcxLabel;
    Group1 : TcxGroupBox;
    cxGrid1 : TcxGrid;
    ViewOrg : TcxGridDBBandedTableView;
    ColumnViewOrgColumn1 : TcxGridDBBandedColumn;
    ColumnViewOrgColumn2 : TcxGridDBBandedColumn;
    ColumnViewOrgColumn3 : TcxGridDBBandedColumn;
    ColumnViewOrgColumn4 : TcxGridDBBandedColumn;
    ColumnViewOrgColumn5 : TcxGridDBBandedColumn;
    ColumnViewOrgColumn7 : TcxGridDBBandedColumn;
    ColumnViewOrgColumn6 : TcxGridDBBandedColumn;
    ColumnViewOrgColumn8 : TcxGridDBBandedColumn;
    cxGridLevel1 : TcxGridLevel;
    TabBankOut : TcxTabSheet;
    FrameTopPanel1 : TFrameTopPanel;
    GridAcc : TcxGrid;
    GridAccount : TcxGridDBTableView;
    GridAccountname : TcxGridDBColumn;
    GridAccountColumn1 : TcxGridDBColumn;
    GridAccountColumn2 : TcxGridDBColumn;
    GridLevelGrid1Level1 : TcxGridLevel;
    TabAccess : TcxTabSheet;
    PageControlAccess : TcxPageControl;
    TabDict : TcxTabSheet;
    GroupOsn : TcxGroupBox;
    chkOsn : TcxCheckBox;
    chkProduct : TcxCheckBox;
    chkClient : TcxCheckBox;
    chkPlant : TcxCheckBox;
    cxGroupBox8 : TcxGroupBox;
    chkOrgGr : TcxCheckBox;
    chkOrg : TcxCheckBox;
    chkStoreloc : TcxCheckBox;
    chkPost : TcxCheckBox;
    chkUsers : TcxCheckBox;
    cxGroupBox9 : TcxGroupBox;
    chkAvia : TcxCheckBox;
    chkMarking : TcxCheckBox;
    chkKargo : TcxCheckBox;
    chkAirlines : TcxCheckBox;
    chkTrack : TcxCheckBox;
    chkFreeC : TcxCheckBox;
    cxGroupBox10 : TcxGroupBox;
    chkDop : TcxCheckBox;
    chkStatusClient : TcxCheckBox;
    chkVidDogovor : TcxCheckBox;
    chkBank : TcxCheckBox;
    chkTypeDogovor : TcxCheckBox;
    chkCurrency : TcxCheckBox;
    chkAddress : TcxCheckBox;
    chkRegName : TcxCheckBox;
    TabDoc : TcxTabSheet;
    GroupOsnTorg : TcxGroupBox;
    chkGrOsnTorg : TcxCheckBox;
    chkIn : TcxCheckBox;
    chkOut : TcxCheckBox;
    GroupReturn : TcxGroupBox;
    chkGrReturn : TcxCheckBox;
    chkReturnClient : TcxCheckBox;
    chkReturnSupplier : TcxCheckBox;
    GroupZakaz : TcxGroupBox;
    chkGrZakaz : TcxCheckBox;
    chkZakazClient : TcxCheckBox;
    chkZakazSupplier : TcxCheckBox;
    GroupInvoice : TcxGroupBox;
    chkGrInvoice : TcxCheckBox;
    chkInvoiceFactPlant : TcxCheckBox;
    chkAirDoc : TcxCheckBox;
    Query1 : TUniQuery;
    QueryRch : TUniQuery;
    dsRch : TDataSource;
    Query2 : TUniQuery;
    QueryAnsw : TUniQuery;
    dsAnsw : TDataSource;
    QueryRchOut : TUniQuery;
    dsRchOut : TDataSource;
    FrameTopPanel2 : TFrameTopPanel;
    FrameTopPanel3 : TFrameTopPanel;
    edtDateReg : TDateTimePicker;
    TabКЛАДР : TcxTabSheet;
    mmoAdressDefault : TcxMemo;
    btnAdres : TcxButton;
    lblAdrDefault : TLabel;
    QueryAddress : TUniQuery;
    btnAdrReg : TcxButton;
    btnAdrFact : TcxButton;
    btnAdrPost : TcxButton;
    procedure FormShow(Sender : TObject);
    procedure FrameSave1btnSaveClick(Sender : TObject);
    procedure btnAdresClick(Sender : TObject);
    procedure btnAdrRegClick(Sender : TObject);
    procedure btnAdrFactClick(Sender : TObject);
    procedure btnAdrPostClick(Sender : TObject);
    procedure FrameTopPanel3btnAddClick(Sender : TObject);
    procedure btnAddClick(Sender : TObject);
  private
    { Private declarations }
  public
    s_id_org : Integer;
    s_id_country, s_id_region, s_id_city : Integer;
    procedure InsUpdOrg(id_ins : boolean);
    procedure SetAddres;
    procedure ShowAnsw;
    { Public declarations }
  end;

var
  FNewOrg : TFNewOrg;
implementation
{$R *.dfm}

uses
  UDataModule1,
  PGSQL,
  UAdress,
  UPasswd,
  UNewContactUni,
  UNewInAccount;
procedure TFNewOrg.btnAddClick(Sender : TObject);
begin
  // Application.CreateForm(TFNewContactUni, FNewContactUni);
  // with FNewContactUni do
  // begin
  // // s_id_kargo_for_edit := s_id_kargo;
  // ShowModal;
  // if FrameSave1.id_save = true then
  // begin
  // InsUpdContact(true);
  // ShowContact(s_id_contact);
  // end;
  // end;
end;
procedure TFNewOrg.btnAdresClick(Sender : TObject);
var
  s : string;
begin
  Application.CreateForm(TFAddress, FAddress);
  with FAddress do
  begin
    ShowCountry(FPasswd.ID_COUNTRY);
    ShowCity(FPasswd.ID_CITY);
    // if FPasswd.ID_REGION <> 0 then
    // begin
    // with QueryRegion do
    // begin
    // Close;
    // SQL.Text := 'select * from geo_regions where country_id=' +
    // IntToStr(FPasswd.ID_COUNTRY) + '  order by name';
    // Open;
    // edtRegion.EditValue := FPasswd.ID_REGION;
    // end;
    // end;
    // if FPasswd.ID_CITY <> 0 then
    // begin
    // with QueryCity do
    // begin
    // Close;
    // SQL.Text := 'select * from geo_cities where socr NOT IN (:socr)';
    // ParamByName('socr').AsString := 'р-н';
    // if edtRegion.Text <> '' then
    // SQL.Add(' and region_id=' + IntToStr(FPasswd.ID_REGION));
    // Open;
    // edtCity.EditValue := FPasswd.ID_CITY;
    // end;
    // end;
    ShowModal;
    s_id_country := QueryCountry.Fields[0].AsInteger;
    // if (QueryRegion.Active = True) and (edtRegion.Text <> '') then
    // s_id_region := QueryRegion.Fields[0].AsInteger
    // else
    // s_id_region := 0;
    if (QueryCity.Active = true) and (edtCity.Text <> '') then
      s_id_city := QueryCity.Fields[0].AsInteger
    else
      s_id_city := 0;
    if FrameSave1.id_save = true then
    begin
      mmoAdressDefault.Clear;
      if edtCountry.Text <> '' then
        s := edtCountry.Text + ', ';
      // if edtRegion.Text <> '' then
      // s := s + edtRegion.Text + ', ';
      if edtCity.Text <> '' then
        s := s + edtCity.Text + ', ';
      // else
      // s := 'г. ' + s + edtCity.Text;
      // if edtStreet.Text <> '' then
      // s := s + 'ул. ' + edtStreet.Text + ', ';
      // if edtHome.Text <> '' then
      // s := s + 'д. ' + edtHome.Text + ', ';
      // if edtKorp.Text <> '' then
      // s := s + 'корп. ' + edtKorp.Text + ', ';
      // if edtKv.Text <> '' then
      // s := s + 'кв. ' + edtKv.Text;
      if (Copy(s, length(s) - 1, 1) = ',') or (Copy(s, length(s) - 1, 1) = ' ')
      then
        s := Copy(s, 1, length(s) - 2);
      mmoAdressDefault.Text := s;
    end;
  end;
end;
procedure TFNewOrg.btnAdrFactClick(Sender : TObject);
begin
  SelectAddress(mmoFactAdres, 0, 0, 0, 0, '', '', '', '');
end;
procedure TFNewOrg.btnAdrPostClick(Sender : TObject);
begin
  SelectAddress(mmoDostavka, 0, 0, 0, 0, '', '', '', '');
end;
procedure TFNewOrg.btnAdrRegClick(Sender : TObject);
begin
  SelectAddress(mmoUrAdres, 0, 0, 0, 0, '', '', '', '');
end;
procedure TFNewOrg.FormShow(Sender : TObject);
begin
  page1.ActivePageIndex := 0;
  PageAccount.ActivePageIndex := 0;
  edtName.SetFocus;
end;
procedure TFNewOrg.FrameSave1btnSaveClick(Sender : TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  if s_id_org = 0 then
    InsUpdOrg(true)
  else
    InsUpdOrg(false);
  Close;
end;
procedure TFNewOrg.FrameTopPanel3btnAddClick(Sender : TObject);
var
  id : Integer;
  QueryA : TUniQuery;
begin
  // case PageAccount.ActivePageIndex of
  // 1:
  // begin
  // Application.CreateForm(TFNewInAccount, FNewInAccount);
  // with FNewInAccount do
  // begin
  // ShowModal;
  // if FrameSave1.id_save = true then
  // begin
  // QueryA := TUniQuery.Create(nil);
  // QueryA.Connection := DM1.dbUpd;
  //
  // with QueryA do
  // begin
  // Close;
  // id := PGSQL.NewID('"траки"."счета_иностр_id_seq"');
  // sql.Text := 'INSERT INTO "траки"."счета_иностр"(id, "код_банка",'
  // + '"код_трака", "счет", "основной") VALUES (:id, :код_банка,' +
  // ':код_трака, :счет, :основной)';
  // ParamByName('id').AsInteger := id;
  // ParamByName('код_банка').AsInteger := o_id_bank;
  // ParamByName('код_трака').AsInteger := s_id_track;
  // ParamByName('счет').AsString := edtAccount.Text;
  // ExecSQL;
  // ShowAccount(id);
  // FNewTrack.EnableSave;
  // end;
  // end;
  // end;
  // end;
  // 0:
  // begin
  // Application.CreateForm(TFNewAccountRus, FNewAccountRus);
  // with FNewAccountRus do
  // begin
  // ShowModal;
  // if FrameSave1.id_save = true then
  // begin
  // QueryA := TUniQuery.Create(nil);
  // QueryA.Connection := DM1.dbUpd;
  // if s_id_track = 0 then
  // InsUpdTrack(true);
  // with QueryA do
  // begin
  // Close;
  // id := PGSQL.NewID('"траки"."счета_рус_id_seq"');
  // sql.Text := 'INSERT INTO "траки"."счета_рус"(id, "код_банка",' +
  // '"код_трака", "счет", "основной") VALUES (:id, :код_банка,' +
  // ':код_трака, :счет, :основной)';
  // ParamByName('id').AsInteger := id;
  // ParamByName('код_банка').AsString := o_id_bank;
  // ParamByName('код_трака').AsInteger := s_id_track;
  // ParamByName('счет').AsString := edtAccount.Text;
  // ExecSQL;
  // ShowAccountRus(id);
  // FNewTrack.EnableSave;
  // end;
  // end;
  // end;
  // end;
  // // конец выбора
  // end;
end;
procedure TFNewOrg.InsUpdOrg(id_ins : boolean);
var
  Query1 : TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.db1;
  with Query1 do
  begin
    Close;
    if id_ins = true then
    begin
      s_id_org := PGSQL.NewID('продукция.типы_id_seq');
      SQL.Text :=
                 'INSERT INTO "организация"."организации"(id, name, "полное_имя_оргнаизации",'
                 + '"в_лице", "инн", "имя_в_договоре", "гос_регистрация", "дата_гос_регистрации", '
                 + '"огрн", "подпись", "адрес_регистрации", "фактическй_адрес", "почтоввый_адрес", '
                 + ' "телефон1", "телефон2", "телефон3",  "почта",  "факс",  "сайт",  "в_инвойсе" '
                 + ' ,"окато", "окпо", код_страны, код_региона, код_города ' +
                 ') VALUES (:id, :name, :полное_имя_оргнаизации, :в_лице, :инн, :имя_в_договоре, '
                 + ' :гос_регистрация, :дата_гос_регистрации, :огрн, :подпись, :адрес_регистрации,'
                 + ' :фактическй_адрес, :почтоввый_адрес, :телефон1, :телефон2, :телефон3, :почта,'
                 + ' :факс, :сайт, :в_инвойсе,:окато, :окпо, :код_страны, :код_региона, :код_города ); ';
    end
    else
    begin
      SQL.Text :=
                 'UPDATE "организация"."организации" SET name = :name, "полное_имя_оргнаизации" = :полное_имя_оргнаизации,'
                 + ' "в_лице" = :в_лице, "инн" = :инн, "имя_в_договоре" = :имя_в_договоре, '
                 + '  "гос_регистрация" = :гос_регистрация, "дата_гос_регистрации" = :дата_гос_регистрации,'
                 + '  "огрн" = :огрн, "подпись" = :подпись, "адрес_регистрации" = :адрес_регистрации, '
                 + ' "фактическй_адрес" = :фактическй_адрес, "почтоввый_адрес" = :почтоввый_адрес,'
                 + ' "телефон1" = :телефон1, "телефон2" = :телефон2, "телефон3" = :телефон3, '
                 + '  "почта" = :почта, "факс" = :факс, "сайт" = :сайт, "в_инвойсе" = :в_инвойсе,'
                 + '  "окато" = :окато, "окпо" = :окпо, код_страны=:код_страны, ' +
                 ' код_региона=:код_региона, код_города=:код_города WHERE id = :id';
    end;
    ParamByName('id').AsInteger := s_id_org;
    ParamByName('name').AsString := edtName.Text;
    ParamByName('полное_имя_оргнаизации').AsString := memoFullName.Text;
    ParamByName('в_лице').AsString := edtInFace.Text;
    ParamByName('инн').AsString := edtINN.Text;
    ParamByName('имя_в_договоре').AsString := edtNameInContract.Text;
    ParamByName('гос_регистрация').AsString := edtGosReg.Text;
    ParamByName('дата_гос_регистрации').AsDateTime := edtDateReg.Date;
    ParamByName('огрн').AsString := edtOGRN.Text;
    ParamByName('окато').AsString := edtOKATO.Text;
    ParamByName('окпо').AsString := edtOKPO.Text;
    ParamByName('подпись').AsString := edtSign.Text;
    ParamByName('адрес_регистрации').AsString := mmoUrAdres.Text;
    ParamByName('фактическй_адрес').AsString := mmoFactAdres.Text;
    ParamByName('почтоввый_адрес').AsString := mmoDostavka.Text;
    ParamByName('телефон1').AsString := edtPhone1.Text;
    ParamByName('телефон2').AsString := edtPhone2.Text;
    // ParamByName('телефон3').AsString:=edtName.Text;
    ParamByName('почта').AsString := edtEmail.Text;
    ParamByName('факс').AsString := edtFax.Text;
    ParamByName('сайт').AsString := edtSite.Text;
    ParamByName('в_инвойсе').AsBoolean := chkInvoice.Checked;
    ParamByName('код_страны').AsInteger := s_id_country;
    // ParamByName('код_региона').AsInteger := s_id_region;
    ParamByName('код_города').AsInteger := s_id_city;
    ExecSQL;
  end;
end;
procedure TFNewOrg.SetAddres;
var
  s : string;
begin
  if s_id_country <> 0 then
  begin
    mmoAdressDefault.Clear;
    // with DM1.db2 do
    // begin
    // Database := ExtractFileDir(Application.ExeName) + '.\db\kladr.accdb';
    // Connected := True;
    // end;
    with QueryAddress do
    begin
      Close;
      SQL.Text := 'select name from страны where id=' + IntToStr(s_id_country);
      Open;
      s := Fields[0].AsString + ', ';
      Close;
      // SQL.Text := 'select name from geo_regions where rid=' +
      // IntToStr(s_id_region);
      // Open;
      // if Fields[0].AsString <> '' then
      // s := s + Fields[0].AsString + ', ';
      // Close;
      SQL.Text := 'select name from города where id=' + IntToStr(s_id_city);
      Open;
      if Fields[0].AsString <> '' then
        s := s + Fields[0].AsString;
      mmoAdressDefault.Text := s;
    end;
  end;
  // TODO -cMM: TFNewOrg.SetAddres default body inserted
end;
procedure TFNewOrg.ShowAnsw;
begin
  // with QueryAnsw do
  // begin
  // Close;
  // ParamByName('').AsInteger := s_id_org;
  // Open;
  // end;
end;
end.
