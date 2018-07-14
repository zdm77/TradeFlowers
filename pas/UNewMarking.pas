unit UNewMarking;

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
  cxContainer,
  cxEdit,
  dxSkinsCore,

  Menus,
  MemDS,
  DBAccess,
  Uni,
  cxMaskEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  Vcl.StdCtrls,
  cxButtons,
  cxMemo,
  cxTextEdit,
  cxLabel,
  cxGroupBox,
  UFrameSave,
  UFrameUniName,
  dxSkinscxPCPainter,
  cxPCdxBarPopupMenu,
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
  UFrameTopPanel,
  cxPC,
  cxNavigator,
  cxCheckBox,
  dxBarBuiltInMenu,

  dxSkinDevExpressStyle,

   dxSkinsDefaultPainters;

type
  TFNewMarking = class(TForm)
    FrameSave1: TFrameSave;
    Group1: TcxGroupBox;
    QueryPricooling: TUniQuery;
    dsPricooling: TDataSource;
    QueryClient: TUniQuery;
    dsClient: TDataSource;
    QueryKargo: TUniQuery;
    dsKargo: TDataSource;
    QueryTrack: TUniQuery;
    dsTrack: TDataSource;
    FrameUniName1: TFrameUniName;
    Group2: TcxGroupBox;
    label6: TcxLabel;
    edtPhone1: TcxTextEdit;
    cxLabel5: TcxLabel;
    edtFax: TcxTextEdit;
    lblFax: TcxLabel;
    Page1: TcxPageControl;
    TabOsn: TcxTabSheet;
    Query1: TUniQuery;
    TabLockPlant: TcxTabSheet;
    FrameTopPanelLock: TFrameTopPanel;
    QueryLockMark: TUniQuery;
    dsLockMark: TDataSource;
    PageLock: TcxPageControl;
    TabLock: TcxTabSheet;
    TabGood: TcxTabSheet;
    GridUsers: TcxGrid;
    ViewUsers: TcxGridDBTableView;
    ColumnUniName: TcxGridDBColumn;
    ColumnName: TcxGridDBColumn;
    ColumnRegName: TcxGridDBColumn;
    LevelOrg: TcxGridLevel;
    QueryGoodMark: TUniQuery;
    dsGoodMark: TDataSource;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    ColumnUni1: TcxGridDBColumn;
    ColumnName1: TcxGridDBColumn;
    ColumnReg1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    TabConnect: TcxTabSheet;
    cxLabel2: TcxLabel;
    edtKargo: TcxLookupComboBox;
    edtTrack: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    edtPreecooling: TcxLookupComboBox;
    cxLabel4: TcxLabel;
    chkAddrClient: TcxCheckBox;
    cxLabel1: TcxLabel;
    edtClient: TcxLookupComboBox;
    btnClientDetail: TcxButton;
    lbl1: TcxLabel;
    edtFITO: TcxLookupComboBox;
    QueryFITO: TUniQuery;
    dsFITO: TDataSource;
    TabContact: TcxTabSheet;
    FrameTopPanel1: TFrameTopPanel;
    dsContact: TDataSource;
    QueryContact: TUniQuery;
    GridContact: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    ColumnFIO: TcxGridDBColumn;
    ColumnPost: TcxGridDBColumn;
    ColumnPhone: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    mmoAddress: TMemo;
    edtСкайп: TcxTextEdit;
    cxLabel6: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure FrameUniName1edtNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrameUniName1edtUniNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrameUniName1edtUniNamePropertiesEditValueChanged
      (Sender: TObject);
    procedure FrameUniName1edtNamePropertiesEditValueChanged(Sender: TObject);
    procedure FrameUniName1edtRegNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrameUniName1edtRegNamePropertiesEditValueChanged
      (Sender: TObject);
    procedure btnAdrRegClick(Sender: TObject);
    procedure edtClientKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrameSave1btnSaveClick(Sender: TObject);
    procedure edtClientPropertiesEditValueChanged(Sender: TObject);
    procedure edtKargoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtKargoPropertiesEditValueChanged(Sender: TObject);
    procedure edtPreecoolingKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtTrackPropertiesEditValueChanged(Sender: TObject);
    procedure edtPreecoolingPropertiesEditValueChanged(Sender: TObject);
    procedure edtTrackKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure mmoAdresKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure QueryLockMarkAfterFetch(DataSet: TCustomDADataSet);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnClientDetailClick(Sender: TObject);
    procedure chkAddrClientClick(Sender: TObject);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FrameTopPanel1btnAddClick(Sender: TObject);
    procedure FrameTopPanel1btnDelClick(Sender: TObject);
    procedure FrameTopPanel1btnEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    s_id_marking, id_client, id_kargo, id_track, id_pricooling,
      id_fito: Integer;
    adr_client: Boolean;
    o_id_country, o_id_city: Integer;
    o_name_country, o_name_city: string;
    s_lock_plant, s_good_plant: string;
    s_id_contact: Integer;
    procedure AddLockGood(id_loock: Boolean);
    procedure EnableSave;
    procedure GetAdres;
    procedure InsUpdContact(id_ins: Boolean);
    procedure SetLang;
    procedure ShowContact(id_locate: Integer = 0);
    procedure ShowDict;
    procedure ShowPlantLock;
    procedure ShowPlantGood;
    { Public declarations }
  end;

var
  FNewMarking: TFNewMarking;

implementation

uses
  PGSQL,
  USelect,
  ULang,
  USplash,
  UMultiSelect,
  UPasswd,
  UNewClient,
  UDialogMy,
  UNewContactUni;
{$R *.dfm}

procedure TFNewMarking.AddLockGood(id_loock: Boolean);
var
  s, s1: string;
begin
  Application.CreateForm(TFMultiSelect, FMultiSelect);
  with FMultiSelect do
  begin
    table_name := 'продукция.плантации';
    // s_lock_plant:='';
    // s_good_plant:='';
    // id_not:='';
    // id_never_not:='';
    if id_loock = true then
    begin
      if s_lock_plant <> '' then
        id_not := s_lock_plant;
      if s_good_plant <> '' then
        id_never_not := s_good_plant;
    end
    else
    begin
      if s_good_plant <> '' then
        id_not := s_good_plant;
      if s_lock_plant <> '' then
        id_never_not := s_lock_plant;
    end;
    // s_id_not :=
    // ' and id not in (select код_плантации from "маркировки"."запрет_плантаций" where код_позиции_заказа='
    // + QueryOrderDetail.FieldByName('id').AsString + ')';
    id_clear := true;
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      // if (QueryDist.Active = true) and (QueryDist.Fields[0].AsString <> '') then
      // begin
      with Query1 do
      begin
        { удаляем старые }
        // Close;
        // if id_loock = true then
        // sql.Text :=
        // 'delete from "маркировки"."постоянный_запрет_плантаций" where код_маркировки='
        // + IntToStr(s_id_marking)
        // else
        // sql.Text :=
        // 'delete from "маркировки"."постоянные_желаемые_плантации" where код_маркировки='
        // + IntToStr(s_id_marking);
        // ExecSQL;
        // Close;
        // if id_loock = true then
        // sql.Text :=
        // 'INSERT INTO  "маркировки"."постоянный_запрет_плантаций"("код_маркировки",'
        // + '"код_плантации") VALUES (:код_маркировки, :код_плантации)'
        // else
        // sql.Text :=
        // 'INSERT INTO  "маркировки"."постоянные_желаемые_плантации"("код_маркировки",'
        // + '"код_плантации") VALUES (:код_маркировки, :код_плантации)';
        if (QueryDist.Active = true) and (QueryDist.Fields[0].AsString <> '')
        then
        begin
          QueryDist.First;
          while not QueryDist.eof do
          begin
            // ParamByName('код_маркировки').Value := s_id_marking;
            // ParamByName('код_плантации').Value := QueryDist.FieldByName('id')
            // .AsInteger;
            // ExecSQL;
            s := s + Trim(QueryDist.FieldByName('name').AsString) + ', ';
            s1 := s1 + Trim(QueryDist.FieldByName('id').AsString) + ',';
            QueryDist.Next;
          end;
          s := Copy(s, 1, Length(s) - 2);
          s1 := Copy(s1, 1, Length(s1) - 1);
          Close;
          if id_loock = true then
          begin
            s_lock_plant := s1;
            sql.Text :=
              'update "маркировки"."маркировки" set  запрет_плантаций=:p, ' +
              ' коды_запрет_плантаций=:p1 where id=' + IntToStr(s_id_marking)
          end
          else
          begin
            s_good_plant := s1;
            sql.Text :=
              'update "маркировки"."маркировки" set желаемые_плантации=:p, ' +
              ' коды_желаемые_плантации=:p1 where id=' + IntToStr(s_id_marking);
          end;
          ParamByName('p').AsString := s;
          ParamByName('p1').AsString := s1;
          ExecSQL;
        end
        else
        begin
          if id_loock = true then
          begin
            sql.Text :=
              'update "маркировки"."маркировки" set коды_запрет_плантаций=null, запрет_плантаций=null where id='
              + IntToStr(s_id_marking);
            s_lock_plant := '';
          end
          else
          begin
            sql.Text :=
              'update "маркировки"."маркировки" set коды_желаемые_плантации=null, желаемые_плантации=null where id='
              + IntToStr(s_id_marking);
            s_good_plant := '';
          end;
          ExecSQL;
        end;
      end;
    end;
    if id_loock = true then
    begin
      ShowPlantLock;
    end
    else
      ShowPlantGood;
  end;
  // end;
end;

procedure TFNewMarking.btnAddClick(Sender: TObject);
begin
  if PageLock.ActivePageIndex = 0 then
    AddLockGood(true)
  else
    AddLockGood(false);
end;

procedure TFNewMarking.btnAdrRegClick(Sender: TObject);
begin
  // SelectAddress(mmoAdres);
  // o_id_country := PGSQL.id_country;
  // o_name_country := PGSQL.name_country;
  // o_id_city := PGSQL.id_city;
  // o_name_city := PGSQL.name_city;
end;

procedure TFNewMarking.btnEditClick(Sender: TObject);
begin
  if PageLock.ActivePageIndex = 0 then
    AddLockGood(true)
  else
    AddLockGood(false);
end;

procedure TFNewMarking.btnClientDetailClick(Sender: TObject);
begin
  Application.CreateForm(TFNewClient, FNewClient);
  with FNewClient do
  begin
    SetLang;
    with Query1 do
    begin
      Close;
      sql.Text :=
        'SELECT c.*, s.id id_stat, s.name status, u.id id_manager, u.name user_name, c.скрыт  '
        + ' FROM "контрагенты"."клиенты" c' +
        '  INNER JOIN "контрагенты"."статусы" s ON (c."код_статуса_работы" = s.id)  '
        + ' LEFT OUTER JOIN "пользователи"."пользователи" u ON (c."код_пользователя" = u.id)';
      sql.Add(' where c.id=' + IntToStr(edtClient.EditValue));
      Open;
      // s_id_type_for_edit := StrToInt(s_id_type);
      s_id_org := FPasswd.ID_ORG;
      // s_id_client := Query1.FieldByName('id').AsInteger;
      setClient(Query1);
      ShowManager(Query1.FieldByName('id_manager').AsInteger);
      ShowStat(Query1.FieldByName('id_stat').AsInteger);
      edtName.Text := Query1.FieldByName('name').AsString;
      mmoAdress.Text := Query1.FieldByName('адрес').AsString;
      mmoComent.Text := Query1.FieldByName('комментарий').AsString;
      edtEmail.Text := Query1.FieldByName('почта').AsString;
      edtPhone.Text := Query1.FieldByName('телефон').AsString;
      edtFax.Text := Query1.FieldByName('факс').AsString;
      edtDayAlarm.Text := Query1.FieldByName('до_окончания').AsString;
      edtSumDolg.Text := Query1.FieldByName('макс_долг').AsString;
      edtSrokDolg.Text := Query1.FieldByName('макс_долг_дней').AsString;
      edtINN.Text := Query1.FieldByName('инн').AsString;
      edtOGRN.Text := Query1.FieldByName('огрн').AsString;
      edtOKPO.Text := Query1.FieldByName('окпо').AsString;
      edtInFace.Text := Query1.FieldByName('в_лице').AsString;
      edtSign.Text := Query1.FieldByName('подпись').AsString;
      edtPasportCod.Text := Query1.FieldByName('паспорт_серия').AsString;
      edtNumberPasport.Text := Query1.FieldByName('паспорт_номер').AsString;
      edtDatePasport.Date := Query1.FieldByName('дата_выдачи').AsDateTime;
      mmoVidan.Text := Query1.FieldByName('кем_выдан').AsString;
      mmoUrAdres.Text := Query1.FieldByName('юр_адрес').AsString;
      mmoFactAdres.Text := Query1.FieldByName('факт_адрес').AsString;
      mmoDostavka.Text := Query1.FieldByName('почт_адрес').AsString;
      mmoUrName.Text := Query1.FieldByName('юр_имя').AsString;
      ShowModal;
    end;
    // if FrameSave1.id_save = true then
    // ShowClients(s_id_client);
  end;
end;

procedure TFNewMarking.chkAddrClientClick(Sender: TObject);
begin
  if chkAddrClient.Checked = false then
  begin
    mmoAddress.Enabled := true;
    mmoAddress.Text := '';
    edtPhone1.Enabled := true;
    edtPhone1.Text := '';
    edtFax.Enabled := true;
    edtFax.Text := '';
    edtСкайп.Text := '';
    edtСкайп.Enabled := true;
  end
  else
  begin
    GetAdres;
    mmoAddress.Enabled := false;
    edtPhone1.Enabled := false;
    edtFax.Enabled := false;
    mmoAddress.Enabled := false;
    edtСкайп.Enabled := true;
  end;
end;

procedure TFNewMarking.cxGridDBTableView2DblClick(Sender: TObject);
begin
  FrameTopPanel1btnEditClick(Sender);
end;

procedure TFNewMarking.edtClientKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if edtClient.Text = '' then
    id_client := 0;
  EnableSave;
end;

procedure TFNewMarking.edtClientPropertiesEditValueChanged(Sender: TObject);
begin
  if id_client <> edtClient.EditValue then
    if Application.MessageBox('Использовать адрес клиента?', 'Вопрос',
      MB_YESNO + MB_ICONQUESTION) = mrYes then
      GetAdres;
  if edtClient.Text <> '' then
    id_client := edtClient.EditValue
  else
    id_client := 0;
  EnableSave;
end;

procedure TFNewMarking.edtKargoKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if edtKargo.Text = '' then
    id_kargo := 0;
  EnableSave;
end;

procedure TFNewMarking.edtKargoPropertiesEditValueChanged(Sender: TObject);
begin
  if edtKargo.Text <> '' then
    id_kargo := edtKargo.EditValue
  else
    id_kargo := 0;
  EnableSave;
end;

procedure TFNewMarking.edtPreecoolingKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if edtPreecooling.Text = '' then
    id_pricooling := 0;
  EnableSave;
end;

procedure TFNewMarking.edtPreecoolingPropertiesEditValueChanged
  (Sender: TObject);
begin
  if edtPreecooling.Text <> '' then
    id_pricooling := edtPreecooling.EditValue
  else
    id_pricooling := 0;
end;

procedure TFNewMarking.edtTrackKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if edtTrack.Text = '' then
    id_track := 0;
  EnableSave;
end;

procedure TFNewMarking.edtTrackPropertiesEditValueChanged(Sender: TObject);
begin
  if edtTrack.Text <> '' then
    id_track := edtTrack.EditValue
  else
    id_track := 0;
end;

procedure TFNewMarking.EnableSave;
begin
  with FrameUniName1 do
  begin
    if (edtUniName.Text <> '') and (edtRegName.Text <> '') and
      (edtName.Text <> '') and (id_kargo <> 0) and (id_client <> 0) and
      (mmoAddress.Text <> '') then
    begin
      FrameSave1.btnSave.Enabled := true;
      FrameTopPanelLock.btnAdd.Enabled := true;
    end
    else
    begin
      FrameSave1.btnSave.Enabled := false;
      FrameTopPanelLock.btnAdd.Enabled := false;
    end;
  end;
end;

procedure TFNewMarking.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FSplash.Hide;
end;

procedure TFNewMarking.FormShow(Sender: TObject);
begin
  // mmoAdres.Enabled := not adr_client;
  edtPhone1.Enabled := not adr_client;
  edtFax.Enabled := not adr_client;
  mmoAddress.Enabled := not adr_client;
  chkAddrClient.Checked := adr_client;
  edtСкайп.Enabled := not adr_client;
  EnableSave;
  FrameSave1.SetLang;
  FrameUniName1.SetLang;
  Page1.ActivePageIndex := 0;
  PageLock.ActivePageIndex := 0;
  SetLang;
  FrameUniName1.edtUniName.SetFocus;
end;

procedure TFNewMarking.FrameSave1btnSaveClick(Sender: TObject);
begin
  FrameSave1.id_save := true;
  Close;
end;

procedure TFNewMarking.FrameTopPanel1btnAddClick(Sender: TObject);
begin
  if s_id_marking = 0 then
  begin
    case FPasswd.Lang of
      0:
        ErrorDialog
          ('Маркировка еще не сохранена. Добавление контактов не возможно.', '',
          '');
      1:
        ErrorDialog
          ('Marking isn''t kept yet. Addition of contacts not possibly.', '',
          ' ');
      2:
        ErrorDialog
          ('La marca no es conservada. La adición de los contactos no es posible.',
          '', '');
    end;
  end
  else
  begin
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
end;

procedure TFNewMarking.FrameTopPanel1btnDelClick(Sender: TObject);
begin
  PGSQL.StandartDelete(QueryContact.FieldByName('id').AsString,
    '"маркировки"."контакты"', QueryContact, '', '', '', '');
end;

procedure TFNewMarking.FrameTopPanel1btnEditClick(Sender: TObject);
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

procedure TFNewMarking.FrameUniName1edtNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFNewMarking.FrameUniName1edtNamePropertiesEditValueChanged
  (Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewMarking.FrameUniName1edtRegNameKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFNewMarking.FrameUniName1edtRegNamePropertiesEditValueChanged
  (Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewMarking.FrameUniName1edtUniNameKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFNewMarking.FrameUniName1edtUniNamePropertiesEditValueChanged
  (Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewMarking.GetAdres;
begin
  with Query1 do
  begin
    Close;
    sql.Text := 'SELECT  * FROM  "контрагенты"."клиенты"  where id=' +
      IntToStr(edtClient.EditValue);
    Open;
    mmoAddress.Text := FieldByName('адрес').AsString;
    edtPhone1.Text := FieldByName('телефон').AsString;
    edtFax.Text := FieldByName('факс').AsString;
    edtСкайп.Text := FieldByName('skype').AsString;
  end;
end;

procedure TFNewMarking.InsUpdContact(id_ins: Boolean);
begin
  with Query1 do
  begin
    Close;
    if id_ins = true then
    begin
      s_id_contact := PGSQL.NewID('"маркировки"."контакты_id_seq"');
      sql.Text :=
        'INSERT INTO "маркировки"."контакты" (id, "код_маркировки", name, "тип",'
        + '"телефон1", "телефон2", "телефон3", "почта", "скайп", "месенджер"' +
        ')VALUES (:id, :код_маркировки, :name, :тип, :телефон1, :телефон2, :телефон3,'
        + ':почта, :скайп, :месенджер)';
    end
    else
    begin
      sql.Text :=
        'UPDATE "маркировки"."контакты" SET "код_маркировки" = :код_маркировки,'
        + 'name = :name, "тип" = :тип, "телефон1" = :телефон1, "телефон2" = :телефон2,'
        + '"телефон3" = :телефон3, "почта" = :почта, "скайп" = :скайп,' +
        '"месенджер" = :месенджер WHERE id = :id';
    end;
    ParamByName('id').AsInteger := s_id_contact;
    ParamByName('код_маркировки').AsInteger := s_id_marking;
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

procedure TFNewMarking.mmoAdresKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  btnAdrRegClick(Sender);
end;

procedure TFNewMarking.QueryLockMarkAfterFetch(DataSet: TCustomDADataSet);
begin
  FSplash.Close;
end;

procedure TFNewMarking.SetLang;
begin
  ULang.TranslateGridCaption(ColumnUniName, ColumnRegName, ColumnName);
  ULang.TranslateGridCaption(ColumnUni1, ColumnReg1, ColumnName1);
  FrameTopPanelLock.SetLang;
  case FPasswd.Lang of
    0:
      begin
      end;
    1:
      begin
      end;
    2:
      begin
      end;
  end;
end;

procedure TFNewMarking.ShowContact(id_locate: Integer = 0);
begin
  with QueryContact do
  begin
    Close;
    sql.Text := 'select * from "маркировки"."контакты" where код_маркировки=' +
      IntToStr(s_id_marking);
    Open;
    Locate('id', id_locate, []);
  end;
end;

procedure TFNewMarking.ShowDict;
begin
  QueryPricooling.Close;
  QueryPricooling.Open;
  edtPreecooling.EditValue := id_pricooling;
  QueryClient.Close;
  QueryClient.Open;
  edtClient.EditValue := id_client;
  QueryKargo.Close;
  QueryKargo.Open;
  edtKargo.EditValue := id_kargo;
  QueryTrack.Close;
  QueryTrack.Open;
  edtTrack.EditValue := id_track;
  QueryFITO.Close;
  QueryFITO.Open;
  edtFITO.EditValue := id_fito;
  ShowContact();
  GetAdres;
end;

procedure TFNewMarking.ShowPlantLock;
begin
  with QueryLockMark do
  begin
    Close;
    // ParamByName('id').AsInteger := s_id_marking;
    if s_lock_plant <> '' then
    begin
      sql.Text := 'SELECT  pl.name,  pl.uni_name,  pl.reg_name FROM' +
        '  "продукция"."плантации" pl  where id IN (' + s_lock_plant + ')';
      Open;
    end;
  end;
end;

procedure TFNewMarking.ShowPlantGood;
begin
  with QueryGoodMark do
  begin
    Close;
    if s_good_plant <> '' then
    begin
      // ParamByName('id').AsInteger := s_id_marking;
      sql.Text := 'SELECT  pl.name,  pl.uni_name,  pl.reg_name FROM' +
        '  "продукция"."плантации" pl  where id IN (' + s_good_plant + ')';
      Open;
    end;
  end;
end;

end.
