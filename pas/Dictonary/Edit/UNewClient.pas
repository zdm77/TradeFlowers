unit UNewClient;
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
  
  cxPC,
  UFrameSave,
  cxContainer,
  cxEdit,
  cxMaskEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  cxCheckBox,
  cxMemo,
  cxTextEdit,
  cxLabel,
  cxGroupBox,
  Menus,
  Vcl.StdCtrls,
  cxButtons,
  cxCalc,
  MemDS,
  DBAccess,
  Uni,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sCurrEdit,
  sTooledit,
  UFrameTopPanel,
  cxStyles,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  DB,
  cxDBData,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  cxNavigator,
  Vcl.ComCtrls,
  UFrameTypeClient,
  dxBarBuiltInMenu,
  
  dxSkinDevExpressStyle,
  
  cxButtonEdit, dxSkinsDefaultPainters, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog;
type
  TFNewClient = class(TForm)
    FrameSave1 : TFrameSave;
    Page1 : TcxPageControl;
    TabOsn : TcxTabSheet;
    TabUrInfo : TcxTabSheet;
    Group1 : TcxGroupBox;
    lblName : TcxLabel;
    edtName : TcxTextEdit;
    Label1 : TcxLabel;
    edtPhone : TcxTextEdit;
    lblAddr : TcxLabel;
    LabelEmail : TcxLabel;
    edtEmail : TcxTextEdit;
    lblStat : TcxLabel;
    edtStat : TcxLookupComboBox;
    mmoComent : TcxMemo;
    lblComment : TcxLabel;
    cxLabel2 : TcxLabel;
    edtFAX : TcxTextEdit;
    mmoAdress : TcxMemo;
    btnAdres : TcxButton;
    QueryStat : TUniQuery;
    dsStat : TDataSource;
    Query1 : TUniQuery;
    dsManager : TDataSource;
    QueryManager : TUniQuery;
    Group3 : TcxGroupBox;
    label11 : TcxLabel;
    mmoUrName : TcxMemo;
    label6 : TcxLabel;
    label9 : TcxLabel;
    mmoFactAdres : TcxMemo;
    mmoUrAdres : TcxMemo;
    label7 : TcxLabel;
    edtINN : TcxTextEdit;
    edtOGRN : TcxTextEdit;
    label8 : TcxLabel;
    edtOKPO : TcxTextEdit;
    label16 : TcxLabel;
    edtInFace : TcxTextEdit;
    cxLabel1 : TcxLabel;
    edtSign : TcxTextEdit;
    Label35 : TcxLabel;
    btnAddRegAdr : TcxButton;
    btnAddUrAdr : TcxButton;
    Group4 : TcxGroupBox;
    edtPasportCod : TcxTextEdit;
    label12 : TcxLabel;
    label13 : TcxLabel;
    edtNumberPasport : TcxTextEdit;
    label14 : TcxLabel;
    label15 : TcxLabel;
    mmoVidan : TcxMemo;
    TabДоговора : TcxTabSheet;
    FrameTopPanel1 : TFrameTopPanel;
    GridTarif : TcxGrid;
    cxGridDBTableView2 : TcxGridDBTableView;
    ColumnAirLine : TcxGridDBColumn;
    cxGridLevel2 : TcxGridLevel;
    QueryContract : TUniQuery;
    dsContract : TDataSource;
    lbl1 : TcxLabel;
    edtSkype : TcxTextEdit;
    TabContacts : TcxTabSheet;
    FrameTopPanel2 : TFrameTopPanel;
    dsContact : TDataSource;
    QueryContact : TUniQuery;
    GridContact : TcxGrid;
    cxGridDBTableView1 : TcxGridDBTableView;
    ColumnFIO : TcxGridDBColumn;
    ColumnPost : TcxGridDBColumn;
    ColumnPhone : TcxGridDBColumn;
    cxGridLevel1 : TcxGridLevel;
    chkMarking : TCheckBox;
    edtDatePasport : TDateTimePicker;
    tabType : TcxTabSheet;
    FrameTypeClient1 : TFrameTypeClient;
    tabAccess : TcxTabSheet;
    lblLogin : TLabel;
    Label4 : TLabel;
    edtLogin : TcxTextEdit;
    LabelPass : TcxLabel;
    edtPass : TcxTextEdit;
    LabelConfPass : TcxLabel;
    edtPasswdConfirm : TcxTextEdit;
    lblConfitm : TLabel;
    chkLogin : TcxCheckBox;
    chkOstatok : TcxCheckBox;
    chkZakupka : TcxCheckBox;
    chkSubClient : TcxCheckBox;
    lblSubClient : TcxLabel;
    btnSubClient : TcxButtonEdit;
    chkIP : TcxCheckBox;
    Group2 : TcxGroupBox;
    Label40 : TcxLabel;
    Label24 : TcxLabel;
    Label25 : TcxLabel;
    Label26 : TcxLabel;
    Label27 : TcxLabel;
    Label28 : TcxLabel;
    edtDayAlarm : TsCalcEdit;
    edtSrokDolg : TsCalcEdit;
    edtSumDolg : TsCalcEdit;
    lblManager : TcxLabel;
    edtManager : TcxLookupComboBox;
    mmoDostavka : TcxMemo;
    btnAddPostAdr : TcxButton;
    label10 : TcxLabel;
    procedure btnAddPostAdrClick(Sender : TObject);
    procedure btnAddRegAdrClick(Sender : TObject);
    procedure btnAddUrAdrClick(Sender : TObject);
    procedure FormShow(Sender : TObject);
    procedure btnAdresClick(Sender : TObject);
    procedure chkMarkingClick(Sender : TObject);
    procedure cxGridDBTableView1DblClick(Sender : TObject);
    procedure FrameSave1btnSaveClick(Sender : TObject);
    procedure FrameTopPanel1btnAddClick(Sender : TObject);
    procedure FrameTopPanel1btnDelClick(Sender : TObject);
    procedure FrameTopPanel1btnEditClick(Sender : TObject);
    procedure FrameTopPanel1btnRefreshClick(Sender : TObject);
    procedure FrameTopPanel2btnAddClick(Sender : TObject);
    procedure FrameTopPanel2btnDelClick(Sender : TObject);
    procedure FrameTopPanel2btnEditClick(Sender : TObject);
    procedure FrameTopPanel2btnRefreshClick(Sender : TObject);
    procedure Page1Change(Sender : TObject);
    procedure btnAddClick(Sender : TObject);
    procedure edtPassKeyUp(Sender : TObject; var Key : Word; Shift : TShiftState);
    procedure edtPasswdConfirmKeyUp(Sender : TObject; var Key : Word;
                                       Shift : TShiftState);
    procedure btnSubClientPropertiesButtonClick(Sender : TObject;
                                                   AButtonIndex : Integer);
    procedure chkSubClientClick(Sender : TObject);
  private
    // факт адрес
    IDCountryFact, IDRegionFact, IDCityFact, IDStreetFact : Integer;
    IndexFact, IDHomeFact, IDKorpusFact, IDKvartiraFact : string;
    // рег адрес
    IDCountryReg, IDRegionReg, IDCityReg, IDStreetReg : Integer;
    IndexReg, IDHomeReg, IDKorpusReg, IDKvartiraReg : string;
    { Private declarations }
    idClient : Integer;
  public
    s_id_type_for_edit : Integer;
    s_id_org : Integer;
    s_date : string;
    s_id_contact : Integer;
    idSubClient : string;
    sLogin : string;
    function DetectLogin : Boolean;
    procedure EnableSave;
    procedure InsertUpdClient(id_ins : Boolean);
    procedure InsUpdContact(id_ins : Boolean);
    procedure SetAddres(s_QueryClient : TUniQuery);
    procedure setClient(s_QueryClient : TUniQuery);
    procedure SetLang;
    procedure ShowContact(id_locate : Integer = 0);
    procedure ShowManager(s_id_manager : Integer = 0);
    procedure ShowStat(s_id_stat : Integer = 0);
    procedure ShowSubClient;
    { Public declarations }
  end;

var
  FNewClient : TFNewClient;
implementation
{$R *.dfm}

uses
  UAdress,
  PGSQL,
  UPasswd,
  UNewContactUni, USelectClient, UFrameClient;
procedure TFNewClient.btnAddClick(Sender : TObject);
begin
  FrameTypeClient1.FrameTopPanel1btnAddClick(Sender);
end;
procedure TFNewClient.btnAddPostAdrClick(Sender : TObject);
begin
  SelectAddress(mmoDostavka, 0, 0, 0, 0, '', '', '', '');
end;
procedure TFNewClient.btnAddRegAdrClick(Sender : TObject);
begin
  SelectAddress(mmoFactAdres, IDCountryFact, IDCityFact, IDRegionFact,
                 IDStreetFact, IDHomeFact, IDKorpusFact, IDKvartiraFact, IndexFact);
  if (FAddress.IDCountry <> 0) then
  begin
    IDCountryFact := FAddress.IDCountry;
    IDCityFact := FAddress.IDCity;
    IDRegionFact := FAddress.IDRegion;
    IDStreetFact := FAddress.IDStreet;
    IDHomeFact := FAddress.IDHome;
    IDKorpusFact := FAddress.IDKorpus;
    IDKvartiraFact := FAddress.IDKvartira;
    IndexFact := FAddress.IndexA;
  end;
end;
procedure TFNewClient.btnAddUrAdrClick(Sender : TObject);
begin
  SelectAddress(mmoUrAdres, IDCountryReg, IDCityReg, IDRegionReg, IDStreetReg,
                 IDHomeReg, IDKorpusReg, IDKvartiraReg, IndexReg);
  if (FAddress.IDCountry <> 0) then
  begin
    IDCountryReg := FAddress.IDCountry;
    IDCityReg := FAddress.IDCity;
    IDRegionReg := FAddress.IDRegion;
    IDStreetReg := FAddress.IDStreet;
    IDHomeReg := FAddress.IDHome;
    IDKorpusReg := FAddress.IDKorpus;
    IDKvartiraReg := FAddress.IDKvartira;
    IndexReg := FAddress.IndexA;
  end;
end;
procedure TFNewClient.btnAdresClick(Sender : TObject);
begin
  SelectAddress(mmoAdress, 0, 0, 0, 0, '', '', '', '');
end;
procedure TFNewClient.btnSubClientPropertiesButtonClick(Sender : TObject;
                                                           AButtonIndex : Integer);
begin
  Application.CreateForm(TFSelectClient, FSelectClient);
  with FSelectClient do
  begin
    FrameClient1.s_id_type := '1';
    FrameClient1.ShowOrg;
    // FrameClient1.ShowClients();
    ShowModal;
    if IDSelect = true then
    begin
      btnSubClient.Text := FrameClient1.QueryClient.FieldByName('name')
    .AsString;
      idSubClient := FrameClient1.QueryClient.FieldByName('id').AsString;
    end;
  end;
end;
procedure TFNewClient.chkMarkingClick(Sender : TObject);
begin
  tabType.Enabled := chkMarking.Checked;
end;
procedure TFNewClient.chkSubClientClick(Sender : TObject);
begin
  if chkSubClient.Checked = true then
  begin
    btnSubClient.Enabled := true;
    if idSubClient = '' then
    begin
      btnSubClientPropertiesButtonClick(Sender, 0);
    end
    else
    begin
      ShowSubClient;
    end;
  end
  else
  begin
    btnSubClient.Text := '';
    btnSubClient.Enabled := false;
  end;
end;
procedure TFNewClient.cxGridDBTableView1DblClick(Sender : TObject);
begin
  FrameTopPanel2btnEditClick(Sender);
end;
function TFNewClient.DetectLogin : Boolean;
begin
  with Query1 do
  begin
    Close;
    sql.Text := 'select id from "контрагенты"."клиенты" where login=:login';
    ParamByName('login').AsString := edtLogin.Text;
    Open;
    if Fields[0].AsString = '' then
    else
      Result := true;
  end;
  // TODO -cMM: TFNewClient.DetectLogin default body inserted
end;
procedure TFNewClient.edtPassKeyUp(Sender : TObject; var Key : Word;
                                      Shift : TShiftState);
begin
  EnableSave;
end;
procedure TFNewClient.edtPasswdConfirmKeyUp(Sender : TObject; var Key : Word;
                                               Shift : TShiftState);
begin
  EnableSave;
end;
procedure TFNewClient.EnableSave;
begin
  if (edtPass.Text <> '') and (edtPasswdConfirm.Text <> '') then
  begin
    if (edtPass.Text = edtPasswdConfirm.Text) then
      lblConfitm.Caption := 'Пароли совпадают'
    else
      lblConfitm.Caption := 'Пароли не совпадают';
  end
  else
    lblConfitm.Caption := 'Введите пароли';
end;
procedure TFNewClient.FormShow(Sender : TObject);
begin
  Page1.ActivePageIndex := 0;
  edtName.SetFocus;
  ShowContact();
  tabType.Enabled := chkMarking.Checked;
  ShowSubClient;
  sLogin := edtLogin.Text;
end;
procedure TFNewClient.FrameSave1btnSaveClick(Sender : TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  if (edtLogin.Text <> '') then
  begin
    if (sLogin <> edtLogin.Text) then
    begin
      if DetectLogin = true then
      begin
        Application.MessageBox('Логин уже существует, введите другой.',
                                'Ошибка', MB_OK + MB_ICONERROR);
        edtLogin.SetFocus;
        Abort;
      end;
    end;
  end;
  if idClient = 0 then
    InsertUpdClient(true)
  else
    InsertUpdClient(false);
  Close;
end;
procedure TFNewClient.FrameTopPanel1btnAddClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFNewClient.FrameTopPanel1btnDelClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFNewClient.FrameTopPanel1btnEditClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFNewClient.FrameTopPanel1btnRefreshClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFNewClient.FrameTopPanel2btnAddClick(Sender : TObject);
begin
  if idClient = 0 then
    InsertUpdClient(true);
  Application.CreateForm(TFNewContactUni, FNewContactUni);
  with FNewContactUni do
  begin
    // s_id_kargo_for_edit := s_id_kargo;
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      InsUpdContact(true);
      ShowContact(s_id_contact);
    end;
  end;
end;
procedure TFNewClient.FrameTopPanel2btnDelClick(Sender : TObject);
begin
  PGSQL.StandartDelete(QueryContact.FieldByName('id').AsString,
                        ' "контрагенты"."контакты"', QueryContact, '', '', '', '');
end;
procedure TFNewClient.FrameTopPanel2btnEditClick(Sender : TObject);
begin
  if QueryContact.RecordCount > 0 then
  begin
    Application.CreateForm(TFNewContactUni, FNewContactUni);
    with FNewContactUni do
    begin
      edtName.Text := QueryContact.FieldByName('name').AsString;
      edtDolgnost.Text := QueryContact.FieldByName('тип').AsString;
      edtPhone1.Text := QueryContact.FieldByName('телефон1').AsString;
      edtPhone2.Text := QueryContact.FieldByName('телефон2').AsString;
      edtPhone3.Text := QueryContact.FieldByName('телефон3').AsString;
      edtEmail.Text := QueryContact.FieldByName('почта').AsString;
      edtSkype.Text := QueryContact.FieldByName('скайп').AsString;
      edtMessenger.Text := QueryContact.FieldByName('месенджер').AsString;
      s_id_contact := QueryContact.FieldByName('id').AsInteger;
      ShowModal;
      if FrameSave1.id_save = true then
      begin
        InsUpdContact(false);
        ShowContact(s_id_contact);
      end;
    end;
  end;
end;
procedure TFNewClient.FrameTopPanel2btnRefreshClick(Sender : TObject);
begin
  ShowContact();
end;
procedure TFNewClient.InsertUpdClient(id_ins : Boolean);
begin
  with Query1 do
  begin
    Close;
    if id_ins = true then
    begin
      idClient := PGSQL.NewID('"контрагенты"."клиенты_id_seq"');
      // sql.Text :=
      // 'INSERT INTO "контрагенты"."клиенты" (код_страны_факт, id, ip, "код_типа", "код_организации", '
      // + ' код_региона_факт, код_города_факт, код_улицы_факт, индекс_факт,  ' +
      // ' дом_факт, корпус_факт,  квартира_факт, код_страны_рег,' +
      // + 'код_региона_рег, код_города_рег, код_улицы_рег, индекс_рег,  ' +
      // ' дом_рег, корпус_рег,  квартира_рег,' +
      // ' "код_пользователя", "код_статуса_работы", name, "адрес", "комментарий",'
      // + '   "почта",  "телефон",  "факс",  "макс_долг",  "макс_долг_дней",' +
      // '  "до_окончания","инн",  "огрн",  "окпо",  "в_лице",  "подпись",  "паспорт_серия",'
      // + ' "паспорт_номер",  "дата_выдачи",  "кем_выдан", "юр_адрес", "факт_адрес", '
      // + ' "почт_адрес", "юр_имя", skype , "дата" , показать, скрыт, в_маркировках, "idSubClient",'
      // + ' login, pass, вход,остатки,закупка ) VALUES (:код_страны_факт, :id, :ip, :код_типа, :код_организации,'
      // + ' :код_региона_факт, :код_города_факт, :код_улицы_факт, :индекс_факт,'
      // + ' :дом_факт, :корпус_факт, :квартира_факт,' +
      // +':код_региона_рег, :код_города_рег, :код_улицы_рег, :индекс_рег,  ' +
      // ' :дом_рег, :корпус_рег,  :квартира_рег,' +
      // '  :код_пользователя,  :код_статуса_работы,  :name,  :адрес,  :комментарий,'
      // + '    :почта,  :телефон,  :факс,  :макс_долг,  :макс_долг_дней, ' +
      // ' :до_окончания, :инн,  :огрн, :окпо,  :в_лице,  :подпись, ' +
      // '  :паспорт_серия,  :паспорт_номер,  :дата_выдачи,  :кем_выдан, :юр_адрес,'
      // + '  :факт_адрес,  :почт_адрес, :юр_имя, :skype, :дата , true, 0, :в_маркировках, :idSubClient,'
      // + ' :login, :pass, :вход, :остатки, :закупка ) ';
      sql.Clear;
      sql.Add(' INSERT INTO');
      sql.Add(' "контрагенты"."клиенты"');
      sql.Add(' (');
      sql.Add(' id,');
      sql.Add(' "код_типа",');
      sql.Add(' "код_организации",');
      sql.Add(' "код_пользователя",');
      sql.Add(' "код_статуса_работы",');
      sql.Add(' name,');
      sql.Add(' "адрес",');
      sql.Add(' "комментарий",');
      sql.Add(' "не_удалять",');
      sql.Add(' "почта",');
      sql.Add(' "телефон",');
      sql.Add(' "факс",');
      sql.Add(' "макс_долг",');
      sql.Add(' "макс_долг_дней",');
      sql.Add(' "долг",');
      sql.Add(' "до_окончания",');
      sql.Add(' "инн",');
      sql.Add(' "огрн",');
      sql.Add(' "окпо",');
      sql.Add(' "в_лице",');
      sql.Add(' "подпись",');
      sql.Add(' "паспорт_серия",');
      sql.Add(' "паспорт_номер",');
      sql.Add(' "дата_выдачи",');
      sql.Add(' "кем_выдан",');
      sql.Add(' "юр_адрес",');
      sql.Add(' "факт_адрес",');
      sql.Add(' "почт_адрес",');
      sql.Add(' "юр_имя",');
      sql.Add(' "код_страны_факт",');
      sql.Add(' "код_региона_факт",');
      sql.Add(' "код_города_факт",');
      sql.Add(' "код_улицы_факт",');
      sql.Add(' "дом_факт",');
      sql.Add(' "корпус_факт",');
      sql.Add(' "квартира_факт",');
      // sql.Add(' "скрыт",');
      sql.Add(' skype,');
      sql.Add(' "дата",');
      sql.Add(' "в_маркировках",');
      sql.Add(' "idSubClient",');
      sql.Add(' login,');
      sql.Add(' pass,');
      sql.Add(' "вход",');
      sql.Add(' "остатки",');
      sql.Add(' "закупка",');
      sql.Add(' ip,');
      sql.Add(' "индекс_факт",');
      sql.Add(' "код_страны_рег",');
      sql.Add(' "код_региона_рег",');
      sql.Add(' "код_города_рег",');
      sql.Add(' "код_улицы_рег",');
      sql.Add(' "дом_рег",');
      sql.Add(' "корпус_рег",');
      sql.Add(' "квартира_рег",');
      sql.Add(' "индекс_рег"');
      sql.Add(' )');
      sql.Add(' VALUES (');
      sql.Add(' :id,');
      sql.Add(' :код_типа,');
      sql.Add(' :код_организации,');
      sql.Add(' :код_пользователя,');
      sql.Add(' :код_статуса_работы,');
      sql.Add(' :name,');
      sql.Add(' :адрес,');
      sql.Add(' :комментарий,');
      sql.Add(' :не_удалять,');
      sql.Add(' :почта,');
      sql.Add(' :телефон,');
      sql.Add(' :факс,');
      sql.Add(' :макс_долг,');
      sql.Add(' :макс_долг_дней,');
      sql.Add(' :долг,');
      // sql.Add(' :показать,');
      sql.Add(' :до_окончания,');
      sql.Add(' :инн,');
      sql.Add(' :огрн,');
      sql.Add(' :окпо,');
      sql.Add(' :в_лице,');
      sql.Add(' :подпись,');
      sql.Add(' :паспорт_серия,');
      sql.Add(' :паспорт_номер,');
      sql.Add(' :дата_выдачи,');
      sql.Add(' :кем_выдан,');
      sql.Add(' :юр_адрес,');
      sql.Add(' :факт_адрес,');
      sql.Add(' :почт_адрес,');
      sql.Add(' :юр_имя,');
      sql.Add(' :код_страны_факт,');
      sql.Add(' :код_региона_факт,');
      sql.Add(' :код_города_факт,');
      sql.Add(' :код_улицы_факт,');
      sql.Add(' :дом_факт,');
      sql.Add(' :корпус_факт,');
      sql.Add(' :квартира_факт,');
      // sql.Add(' :скрыт,');
      sql.Add(' :skype,');
      sql.Add(' :дата,');
      sql.Add(' :в_маркировках,');
      sql.Add(' :idSubClient,');
      sql.Add(' :login,');
      sql.Add(' :pass,');
      sql.Add(' :вход,');
      sql.Add(' :остатки,');
      sql.Add(' :закупка,');
      sql.Add(' :ip,');
      sql.Add(' :индекс_факт,');
      sql.Add(' :код_страны_рег,');
      sql.Add(' :код_региона_рег,');
      sql.Add(' :код_города_рег,');
      sql.Add(' :код_улицы_рег,');
      sql.Add(' :дом_рег,');
      sql.Add(' :корпус_рег,');
      sql.Add(' :квартира_рег,');
      sql.Add(' :индекс_рег');
      sql.Add(' );');
      ParamByName('дата').Value := Now;
    end
    else
    begin
      // sql.Text :=
      // 'UPDATE "контрагенты"."клиенты" SET "код_страны_факт"=:код_страны_факт, "код_типа" = :код_типа, ip=:ip, '
      // + '"код_региона_факт"=:код_региона_факт, "код_города_факт"=:код_города_факт,'
      // + ' "код_улицы_факт"=:код_улицы_факт, "индекс_факт"=:индекс_факт,' +
      // 'дом_факт=:дом_факт, корпус_факт=:корпус_факт, квартира_факт=:квартира_факт,'
      // + 'код_страны_рег"=:код_страны_рег,' +
      // '"код_региона_рег"=:код_региона_рег, "код_города_рег"=:код_города_рег,'
      // + ' "код_улицы_рег"=:код_улицы_рег, "индекс_рег"=:индекс_рег,' +
      // 'дом_рег=:дом_рег, корпус_рег=:корпус_рег, квартира_факт=:квартира_рег,'
      // + ' "код_организации" = :код_организации,  "код_пользователя" = :код_пользователя, '
      // + ' "код_статуса_работы" = :код_статуса_работы,' +
      // ' name = :name,  "адрес" = :адрес,  "комментарий" = :комментарий,' +
      // ' "не_удалять" = :не_удалять,  "почта" = :почта,  "телефон" = :телефон,'
      // + '  "факс" = :факс,  "макс_долг" = :макс_долг,  "макс_долг_дней" = :макс_долг_дней,'
      // + '  "долг" = :долг,    "до_окончания" = :до_окончания, ' +
      // '  "инн" = :инн,  "огрн" = :огрн,  "окпо" = :окпо,  "в_лице" = :в_лице,'
      // + '  "подпись" = :подпись,  "паспорт_серия" = :паспорт_серия,' +
      // '  "паспорт_номер" = :паспорт_номер,  "дата_выдачи" = :дата_выдачи,' +
      // '  "кем_выдан" = :кем_выдан,  "юр_адрес" = :юр_адрес,  "факт_адрес" = :факт_адрес, '
      // + '  "почт_адрес" = :почт_адрес, юр_имя=:юр_имя,skype=:skype, дата=:дата, '
      // + ' показать=true, скрыт=0, в_маркировках=:в_маркировках, "idSubClient"=:idSubClient, '
      // + ' login=:login, pass=:pass, вход=:вход,остатки=:остатки,закупка=:закупка   WHERE  id = :id';
      sql.Clear;
      sql.Add(' UPDATE');
      sql.Add(' "контрагенты"."клиенты"');
      sql.Add(' SET');
      sql.Add(' "код_типа" = :код_типа,');
      sql.Add(' "код_организации" = :код_организации,');
      sql.Add(' "код_пользователя" = :код_пользователя,');
      sql.Add(' "код_статуса_работы" = :код_статуса_работы,');
      sql.Add(' name = :name,');
      sql.Add(' "адрес" = :адрес,');
      sql.Add(' "комментарий" = :комментарий,');
      sql.Add(' "не_удалять" = :не_удалять,');
      sql.Add(' "почта" = :почта,');
      sql.Add(' "телефон" = :телефон,');
      sql.Add(' "факс" = :факс,');
      sql.Add(' "макс_долг" = :макс_долг,');
      sql.Add(' "макс_долг_дней" = :макс_долг_дней,');
      sql.Add(' "долг" = :долг,');
      // sql.Add(' "показать" = :показать,');
      sql.Add(' "до_окончания" = :до_окончания,');
      sql.Add(' "инн" = :инн,');
      sql.Add(' "огрн" = :огрн,');
      sql.Add(' "окпо" = :окпо,');
      sql.Add(' "в_лице" = :в_лице,');
      sql.Add(' "подпись" = :подпись,');
      sql.Add(' "паспорт_серия" = :паспорт_серия,');
      sql.Add(' "паспорт_номер" = :паспорт_номер,');
      sql.Add(' "дата_выдачи" = :дата_выдачи,');
      sql.Add(' "кем_выдан" = :кем_выдан,');
      sql.Add(' "юр_адрес" = :юр_адрес,');
      sql.Add(' "факт_адрес" = :факт_адрес,');
      sql.Add(' "почт_адрес" = :почт_адрес,');
      sql.Add(' "юр_имя" = :юр_имя,');
      sql.Add(' "код_страны_факт" = :код_страны_факт,');
      sql.Add(' "код_региона_факт" = :код_региона_факт,');
      sql.Add(' "код_города_факт" = :код_города_факт,');
      sql.Add(' "код_улицы_факт" = :код_улицы_факт,');
      sql.Add(' "дом_факт" = :дом_факт,');
      sql.Add(' "корпус_факт" = :корпус_факт,');
      sql.Add(' "квартира_факт" = :квартира_факт,');
      // sql.Add(' "скрыт" = :скрыт,');
      sql.Add(' skype = :skype,');
      sql.Add(' "дата" = :дата,');
      sql.Add(' "в_маркировках" = :в_маркировках,');
      sql.Add(' "idSubClient" = :idSubClient,');
      sql.Add(' login = :login,');
      sql.Add(' pass = :pass,');
      sql.Add(' "вход" = :вход,');
      sql.Add(' "остатки" = :остатки,');
      sql.Add(' "закупка" = :закупка,');
      sql.Add(' ip = :ip,');
      sql.Add(' "индекс_факт" = :индекс_факт,');
      sql.Add(' "код_страны_рег" = :код_страны_рег,');
      sql.Add(' "код_региона_рег" = :код_региона_рег,');
      sql.Add(' "код_города_рег" = :код_города_рег,');
      sql.Add(' "код_улицы_рег" = :код_улицы_рег,');
      sql.Add(' "дом_рег" = :дом_рег,');
      sql.Add(' "корпус_рег" = :корпус_рег,');
      sql.Add(' "квартира_рег" = :квартира_рег,');
      sql.Add(' "индекс_рег" = :индекс_рег');
      sql.Add(' ');
      sql.Add(' WHERE');
      sql.Add(' id = :id');
    end;
    ParamByName('id').AsInteger := idClient;
    ParamByName('код_страны_факт').AsInteger := IDCountryFact;
    ParamByName('код_региона_факт').AsInteger := IDRegionFact;
    ParamByName('код_города_факт').AsInteger := IDCityFact;
    ParamByName('код_улицы_факт').AsInteger := IDStreetFact;
    ParamByName('индекс_факт').AsString := IndexFact;
    ParamByName('дом_факт').AsString := IDHomeFact;
    ParamByName('корпус_факт').AsString := IDKorpusFact;
    ParamByName('квартира_факт').AsString := IDKvartiraFact;
    ParamByName('код_страны_рег').Value := IDCountryReg;
    ParamByName('код_региона_рег').Value := IDRegionReg;
    ParamByName('код_города_рег').Value := IDCityReg;
    ParamByName('код_улицы_рег').Value := IDStreetReg;
    ParamByName('дом_рег').Value := IDHomeReg;
    ParamByName('корпус_рег').Value := IDKorpusReg;
    ParamByName('квартира_рег').Value := IDKvartiraReg;
    ParamByName('индекс_рег').Value := IndexReg;
    if chkIP.Checked = true then
      ParamByName('ip').AsInteger := 1
    else
      ParamByName('ip').AsInteger := 0;
    ParamByName('код_типа').AsInteger := s_id_type_for_edit;
    ParamByName('код_организации').AsInteger := s_id_org;
    if edtManager.Text <> '' then
      ParamByName('код_пользователя').AsInteger := edtManager.EditValue;
    ParamByName('код_статуса_работы').AsInteger := edtStat.EditValue;
    ParamByName('name').AsString := edtName.Text;
    ParamByName('адрес').AsString := mmoAdress.Text;
    ParamByName('комментарий').AsString := mmoComent.Text;
    ParamByName('почта').AsString := edtEmail.Text;
    ParamByName('телефон').AsString := edtPhone.Text;
    ParamByName('факс').AsString := edtFAX.Text;
    ParamByName('до_окончания').AsString := edtDayAlarm.Text;
    ParamByName('макс_долг').AsString := edtSumDolg.Text;
    ParamByName('макс_долг_дней').AsString := edtSrokDolg.Text;
    ParamByName('инн').AsString := edtINN.Text;
    ParamByName('огрн').AsString := edtOGRN.Text;
    ParamByName('окпо').AsString := edtOKPO.Text;
    ParamByName('в_лице').AsString := edtInFace.Text;
    ParamByName('подпись').AsString := edtSign.Text;
    ParamByName('паспорт_серия').AsString := edtPasportCod.Text;
    ParamByName('паспорт_номер').AsString := edtNumberPasport.Text;
    if edtDatePasport.Checked = true then
      ParamByName('дата_выдачи').AsDate := edtDatePasport.date
    else
      ParamByName('дата_выдачи').Value := Null;
    ParamByName('кем_выдан').AsString := mmoVidan.Text;
    ParamByName('юр_адрес').AsString := mmoUrAdres.Text;
    ParamByName('факт_адрес').AsString := mmoFactAdres.Text;
    ParamByName('почт_адрес').AsString := mmoDostavka.Text;
    ParamByName('юр_имя').AsString := mmoUrName.Text;
    ParamByName('skype').AsString := edtSkype.Text;
    ParamByName('в_маркировках').AsBoolean := chkMarking.Checked;
    if chkSubClient.Checked = true then
      ParamByName('idSubClient').Value := idSubClient
    else
      ParamByName('idSubClient').Value := Null;
    ParamByName('login').AsString := edtLogin.Text;
    ParamByName('pass').AsString := edtPass.Text;
    ParamByName('вход').Value := chkLogin.Checked;
    ParamByName('остатки').Value := chkOstatok.Checked;
    ParamByName('закупка').Value := chkZakupka.Checked;
    ExecSQL;
  end;
end;
procedure TFNewClient.InsUpdContact(id_ins : Boolean);
begin
  with Query1 do
  begin
    Close;
    if id_ins = true then
    begin
      s_id_contact := PGSQL.NewID('"контрагенты"."контакты_id_seq"');
      sql.Text :=
                 'INSERT INTO "контрагенты"."контакты" (id, "код_клиента", name, "тип",'
                 + '"телефон1", "телефон2", "телефон3", "почта", "скайп", "месенджер"' +
                 ')VALUES (:id, :код_клиента, :name, :тип, :телефон1, :телефон2, :телефон3,'
                 + ':почта, :скайп, :месенджер)';
    end
    else
    begin
      sql.Text :=
                 'UPDATE "контрагенты"."контакты" SET "код_клиента" = :код_клиента,' +
                 'name = :name, "тип" = :тип, "телефон1" = :телефон1, "телефон2" = :телефон2,'
                 + '"телефон3" = :телефон3, "почта" = :почта, "скайп" = :скайп,' +
                 '"месенджер" = :месенджер WHERE id = :id';
    end;
    ParamByName('id').AsInteger := s_id_contact;
    ParamByName('код_клиента').AsInteger := idClient;
    ParamByName('name').AsString := FNewContactUni.edtName.Text;
    ParamByName('тип').AsString := FNewContactUni.edtDolgnost.Text;
    ParamByName('телефон1').AsString := FNewContactUni.edtPhone1.Text;
    ParamByName('телефон2').AsString := FNewContactUni.edtPhone2.Text;
    ParamByName('телефон3').AsString := FNewContactUni.edtPhone3.Text;
    ParamByName('почта').AsString := FNewContactUni.edtEmail.Text;
    ParamByName('скайп').AsString := FNewContactUni.edtSkype.Text;
    ParamByName('месенджер').AsString := FNewContactUni.edtMessenger.Text;
    ExecSQL;
  end;
end;
procedure TFNewClient.Page1Change(Sender : TObject);
begin
  case Page1.ActivePageIndex of
    1 :
    begin
      if idClient = 0 then
      begin
        if Application.MessageBox('Клиент не сохранен. Сохранить?', 'Вопрос',
                                   MB_YESNO + MB_ICONQUESTION) = mrNo then
        begin
          Page1.ActivePageIndex := 0;
          Abort;
        end
        else
        begin
          // Page1.ActivePageIndex := 0;
          InsertUpdClient(true);
        end;
      end;
      FrameTypeClient1.s_id_client_for_type := idClient;
      FrameTypeClient1.ShowTypeClient();
    end;
  end;
end;
procedure TFNewClient.SetAddres(s_QueryClient : TUniQuery);
begin
  with s_QueryClient do
  begin
    try
      IDCountryFact := FieldByName('код_страны_факт').Value;
    except
    end;
    try
      IDCityFact := FieldByName('код_города_факт').Value;
    except
    end;
    try
      IDRegionFact := FieldByName('код_региона_факт').Value;
    except
    end;
    try
      IDStreetFact := FieldByName('код_улицы_факт').Value;
    except
    end;
    try
      IDHomeFact := FieldByName('дом_факт').Value;
    except
    end;
    try
      IDKorpusFact := FieldByName('корпус_факт').Value;
    except
    end;
    try
      IDKvartiraFact := FieldByName('квартира_факт').Value;
    except
    end;
    try
      IndexFact := FieldByName('индекс_факт').Value;
    except
    end;
    try
      IDCountryReg := FieldByName('код_страны_рег').Value;
    except
    end;
    //
    try
      IDCityReg := FieldByName('код_города_рег').Value;
    except
    end;
    try
      IDRegionReg := FieldByName('код_региона_рег').Value;
    except
    end;
    try
      IDStreetReg := FieldByName('код_улицы_рег').Value;
    except
    end;
    try
      IDHomeReg := FieldByName('дом_рег').Value;
    except
    end;
    //
    try
      IDKorpusReg := FieldByName('корпус_рег').Value;
    except
    end;
    try
      IDHomeReg := FieldByName('дом_рег').Value;
    except
    end;
    try
      IDKvartiraReg := FieldByName('квартира_рег').Value;
    except
    end;
    try
      IndexReg := FieldByName('индекс_рег').Value;
    except
    end;
  end;
end;
procedure TFNewClient.setClient(s_QueryClient : TUniQuery);
begin
  idClient := s_QueryClient.FieldByName('id').AsInteger;
  SetAddres(s_QueryClient);
end;
procedure TFNewClient.SetLang;
begin
  case FPasswd.Lang of
    0 :
    begin
      Caption := 'Клиент';
      if edtName.Text = '' then
        Caption := Caption + ' (Новый)'
      else
        Caption := Caption + ' - ' + edtName.Text +
      '. Дата заведения: ' + s_date;
      lblName.Caption := 'Наименование';
      lblAddr.Caption := 'Адрес';
      lblStat.Caption := 'Статус';
      lblComment.Caption := 'Комментарий';
    end;
    1 :
    begin
      Caption := 'Сlient';
      if edtName.Text = '' then
        Caption := Caption + ' (New)'
      else
        Caption := Caption + ' - ' + edtName.Text +
      '. Institution date: ' + s_date;
      lblName.Caption := 'Name';
      lblAddr.Caption := 'Address';
      lblStat.Caption := 'Status';
      lblComment.Caption := 'Comment';
    end;
    2 :
    begin
      Caption := 'El cliente';
      if edtName.Text = '' then
        Caption := Caption + ' (Nuevo)'
      else
        Caption := Caption + ' - ' + edtName.Text +
      '. La fecha del establecimiento: ' + s_date;
      lblName.Caption := 'El nombre';
      lblAddr.Caption := 'La dirección';
      lblStat.Caption := 'El estatus';
      lblComment.Caption := 'El comentario';
    end;
  end;
end;
procedure TFNewClient.ShowContact(id_locate : Integer = 0);
begin
  with QueryContact do
  begin
    Close;
    sql.Text := 'select * from "контрагенты"."контакты" where код_клиента=' +
  IntToStr(idClient);
    Open;
    Locate('id', id_locate, []);
  end;
end;
procedure TFNewClient.ShowManager(s_id_manager : Integer = 0);
begin
  with QueryManager do
  begin
    Close;
    sql.Text := 'select * from пользователи.пользователи where код_роли=9';
    if FPasswd.ID_ORG <> 1 then
    begin
      sql.Add(' where код_организации=' + IntToStr(FPasswd.ID_ORG));
      // edtManager.EditValue := FPasswd.ID_USER;
    end;
    Open;
    if s_id_manager <> 0 then
      edtManager.EditValue := s_id_manager;
  end;
end;
procedure TFNewClient.ShowStat(s_id_stat : Integer = 0);
begin
  with QueryStat do
  begin
    Close;
    sql.Text := 'select id, name from "контрагенты"."статусы"';
    Open;
    if s_id_stat = 0 then
      edtStat.EditValue := Fields[0].AsInteger
    else
      edtStat.EditValue := s_id_stat;
  end;
end;
procedure TFNewClient.ShowSubClient;
begin
  if idSubClient <> '' then
  begin
    with Query1 do
    begin
      Close;
      sql.Text := 'select name from "контрагенты"."клиенты" where id=' +
    idSubClient;
      Open;
      btnSubClient.Text := Fields[0].AsString;
      chkSubClient.Checked := true;
    end;
  end
  else
  begin
    btnSubClient.Text := '';
    chkSubClient.Checked := false;
    btnSubClient.Enabled := false;
  end;
end;
end.
