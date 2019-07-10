unit UNewKargo;
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
  cxMaskEdit,
  cxDropDownEdit,
  cxCalc,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  UFrameTopPanel,
  cxMemo,
  cxTextEdit,
  cxLabel,
  cxPC,
  UFrameSave,
  Menus,
  Vcl.StdCtrls,
  cxButtons,
  MemDS,
  DBAccess,
  Uni,
  cxSpinEdit,
  AdvEdit,
  AdvMoneyEdit,
  cxNavigator,
  dxBarBuiltInMenu,
  
  dxSkinDevExpressStyle,
  
  dxSkinsDefaultPainters, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog;
type
  TFNewKargo = class(TForm)
    FrameSave1 : TFrameSave;
    Page1 : TcxPageControl;
    TabOsn : TcxTabSheet;
    lblName : TcxLabel;
    edtName : TcxTextEdit;
    edtUrName : TcxTextEdit;
    lblUrName : TcxLabel;
    lblAdrReg : TcxLabel;
    lblAdrOffice : TcxLabel;
    lblAdrSklad : TcxLabel;
    mmoAdrReg : TcxMemo;
    mmoAdrOffice : TcxMemo;
    mmoAdrSklad : TcxMemo;
    lblRemark : TcxLabel;
    mmoRemark : TcxMemo;
    TabKontakt : TcxTabSheet;
    FrameTopPanelContact : TFrameTopPanel;
    GridContact : TcxGrid;
    cxGridDBTableView1 : TcxGridDBTableView;
    ColumnFIO : TcxGridDBColumn;
    ColumnPost : TcxGridDBColumn;
    cxGridLevel1 : TcxGridLevel;
    TabBank : TcxTabSheet;
    FrameTopPanelBank : TFrameTopPanel;
    TabTarif : TcxTabSheet;
    FrameTopPanelTarif : TFrameTopPanel;
    GridTarif : TcxGrid;
    cxGridDBTableView2 : TcxGridDBTableView;
    ColumnAirLine : TcxGridDBColumn;
    cxGridLevel2 : TcxGridLevel;
    TabAlarm : TcxTabSheet;
    lblMaxDayDolg : TcxLabel;
    lblDay1 : TcxLabel;
    lblAlarmDay : TcxLabel;
    lblDay2 : TcxLabel;
    chkUse : TcxCheckBox;
    btnAdres : TcxButton;
    btn1 : TcxButton;
    btn2 : TcxButton;
    Query1 : TUniQuery;
    edtMaxSrokDolg : TcxSpinEdit;
    edtDayAlarm : TcxSpinEdit;
    edtMaxDolg : TAdvEdit;
    edtSumAlarm : TAdvEdit;
    QueryContact : TUniQuery;
    dsContact : TDataSource;
    ColumnPhone : TcxGridDBColumn;
    GridAcc : TcxGrid;
    GridAccount : TcxGridDBTableView;
    ColumnBank : TcxGridDBColumn;
    ColumnAccount : TcxGridDBColumn;
    GridLevelGrid1Level1 : TcxGridLevel;
    dsAccount : TDataSource;
    QueryAccount : TUniQuery;
    QueryTarif : TUniQuery;
    dsTarif : TDataSource;
    lblMaxDolg : TcxLabel;
    lblSumAlarm : TcxLabel;
    TabTarifMarking : TcxTabSheet;
    FrameTopPanelPriceMark : TFrameTopPanel;
    QueryPriceMark : TUniQuery;
    dsPriceMark : TDataSource;
    cxGrid1 : TcxGrid;
    cxGridDBTableView3 : TcxGridDBTableView;
    ColumnMarking : TcxGridDBColumn;
    GridAccountDBColumn : TcxGridDBColumn;
    cxGridLevel3 : TcxGridLevel;
    procedure btnAdresClick(Sender : TObject);
    procedure btn1Click(Sender : TObject);
    procedure btn2Click(Sender : TObject);
    procedure edtNameKeyUp(Sender : TObject; var Key : Word; Shift : TShiftState);
    procedure FormShow(Sender : TObject);
    procedure FrameSave1btnSaveClick(Sender : TObject);
    procedure FrameTopPanel2btnAddClick(Sender : TObject);
    procedure edtNamePropertiesEditValueChanged(Sender : TObject);
    procedure edtUrNameKeyUp(Sender : TObject; var Key : Word;
                                Shift : TShiftState);
    procedure edtUrNamePropertiesEditValueChanged(Sender : TObject);
    procedure cxGridDBTableView1DblClick(Sender : TObject);
    procedure FrameTopPanelBankbtnAddClick(Sender : TObject);
    procedure FrameTopPanelBankbtnDelClick(Sender : TObject);
    procedure FrameTopPanelContactbtnEditClick(Sender : TObject);
    procedure FrameTopPanelBankbtnEditClick(Sender : TObject);
    procedure FrameTopPanelContactbtnDelClick(Sender : TObject);
    procedure GridAccountDblClick(Sender : TObject);
    procedure btnAddClick(Sender : TObject);
    procedure cxGridDBTableView2DblClick(Sender : TObject);
    procedure FrameTopPanelTarifbtnEditClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure cxGridDBTableView3DblClick(Sender : TObject);
    procedure FrameTopPanelPriceMarkbtnAddClick(Sender : TObject);
    procedure FrameTopPanelPriceMarkbtnEditClick(Sender : TObject);
    procedure FrameTopPanelPriceMarkbtnRefreshClick(Sender : TObject);
  private
    { Private declarations }
  public
    s_id_kargo : integer;
    procedure EnableSave;
    procedure InsUpdKargo(id_ins : boolean);
    procedure SetLang;
    procedure ShowAccount(id_locate : integer = 0);
    procedure ShowContact(id_locate : integer = 0);
    procedure ShowTarif(id_locate : integer = 0);
    procedure ShowTarifMarking(id_locate : integer = 0);
    { Public declarations }
  end;

var
  FNewKargo : TFNewKargo;
implementation
{$R *.dfm}

uses
  PGSQL,
  UNewContactKargo,
  UNewInAccount,
  UDataModule1,
  UNewTarifKargo,
  UPasswd,
  UNewPriceMarking;
procedure TFNewKargo.btn1Click(Sender : TObject);
begin
  SelectAddress(mmoAdrOffice, 0, 0, 0, 0, '', '', '', '');
end;
procedure TFNewKargo.btn2Click(Sender : TObject);
begin
  SelectAddress(mmoAdrSklad, 0, 0, 0, 0, '', '', '', '');
end;
procedure TFNewKargo.btnAddClick(Sender : TObject);
begin
  Application.CreateForm(TFNewTarifKargo, FNewTarifKargo);
  with FNewTarifKargo do
  begin
    s_id_kargo_for_tarif := s_id_kargo;
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      ShowTarif(s_id_tarif);
      FNewKargo.EnableSave;
    end;
  end;
end;
procedure TFNewKargo.btnAdresClick(Sender : TObject);
begin
  SelectAddress(mmoAdrReg, 0, 0, 0, 0, '', '', '', '');
end;
procedure TFNewKargo.btnDelClick(Sender : TObject);
begin
  PGSQL.StandartDelete(QueryTarif.FieldByName('t_id').AsString,
                        '"карго"."тарифы"', QueryTarif, '', '', '', '');
  EnableSave;
end;
procedure TFNewKargo.cxGridDBTableView1DblClick(Sender : TObject);
begin
  FrameTopPanelContactbtnEditClick(Sender);
end;
procedure TFNewKargo.cxGridDBTableView2DblClick(Sender : TObject);
begin
  FrameTopPanelTarifbtnEditClick(Sender);
end;
procedure TFNewKargo.cxGridDBTableView3DblClick(Sender : TObject);
begin
  FrameTopPanelPriceMarkbtnEditClick(Sender);
end;
procedure TFNewKargo.edtNameKeyUp(Sender : TObject; var Key : Word;
                                     Shift : TShiftState);
begin
  EnableSave;
end;
procedure TFNewKargo.edtNamePropertiesEditValueChanged(Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewKargo.edtUrNameKeyUp(Sender : TObject; var Key : Word;
                                       Shift : TShiftState);
begin
  EnableSave;
end;
procedure TFNewKargo.edtUrNamePropertiesEditValueChanged(Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewKargo.EnableSave;
begin
  if (edtName.Text <> '') and (edtUrName.Text <> '') then
  begin
    FrameSave1.btnSave.Enabled := true;
    FrameTopPanelContact.btnAdd.Enabled := true;
    FrameTopPanelBank.btnAdd.Enabled := true;
    FrameTopPanelTarif.btnAdd.Enabled := true;
  end
  else
  begin
    FrameSave1.btnSave.Enabled := false;
    FrameTopPanelContact.btnAdd.Enabled := false;
    FrameTopPanelBank.btnAdd.Enabled := false;
    FrameTopPanelTarif.btnAdd.Enabled := false;
  end;
  if QueryContact.RecordCount <> 0 then
  begin
    FrameTopPanelContact.btnEdit.Enabled := true;
    FrameTopPanelContact.btnDel.Enabled := true;
    FrameTopPanelContact.btnRefresh.Enabled := true;
  end
  else
  begin
    FrameTopPanelContact.btnEdit.Enabled := false;
    FrameTopPanelContact.btnDel.Enabled := false;
    FrameTopPanelContact.btnRefresh.Enabled := false;
  end;
  if QueryAccount.RecordCount <> 0 then
  begin
    FrameTopPanelBank.btnEdit.Enabled := true;
    FrameTopPanelBank.btnDel.Enabled := true;
    FrameTopPanelBank.btnRefresh.Enabled := true;
  end
  else
  begin
    FrameTopPanelBank.btnEdit.Enabled := false;
    FrameTopPanelBank.btnDel.Enabled := false;
    FrameTopPanelBank.btnRefresh.Enabled := false;
  end;
  if QueryTarif.RecordCount <> 0 then
  begin
    FrameTopPanelTarif.btnEdit.Enabled := true;
    FrameTopPanelTarif.btnDel.Enabled := true;
    FrameTopPanelTarif.btnRefresh.Enabled := true;
  end
  else
  begin
    FrameTopPanelTarif.btnEdit.Enabled := false;
    FrameTopPanelTarif.btnDel.Enabled := false;
    FrameTopPanelTarif.btnRefresh.Enabled := false;
  end;
  if QueryPriceMark.RecordCount <> 0 then
  begin
    FrameTopPanelPriceMark.btnEdit.Enabled := true;
    FrameTopPanelPriceMark.btnDel.Enabled := true;
    FrameTopPanelPriceMark.btnRefresh.Enabled := true;
  end
  else
  begin
    FrameTopPanelPriceMark.btnEdit.Enabled := false;
    FrameTopPanelPriceMark.btnDel.Enabled := false;
    FrameTopPanelPriceMark.btnRefresh.Enabled := false;
  end;
end;
procedure TFNewKargo.FormShow(Sender : TObject);
begin
  SetLang;
  FrameTopPanelContact.SetLang;
  FrameTopPanelBank.SetLang;
  FrameTopPanelTarif.SetLang;
  EnableSave;
  Page1.ActivePageIndex := 0;
  edtName.SetFocus;
end;
procedure TFNewKargo.FrameSave1btnSaveClick(Sender : TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  if s_id_kargo = 0 then
    InsUpdKargo(true)
  else
    InsUpdKargo(false);
  Close;
end;
procedure TFNewKargo.FrameTopPanel2btnAddClick(Sender : TObject);
begin
  if s_id_kargo = 0 then
    InsUpdKargo(true);
  Application.CreateForm(TFNewContactKargo, FNewContactKargo);
  with FNewContactKargo do
  begin
    s_id_kargo_for_edit := s_id_kargo;
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      ShowContact(s_id_contact);
      FNewKargo.EnableSave;
    end;
  end;
end;
procedure TFNewKargo.FrameTopPanelBankbtnAddClick(Sender : TObject);
var
  id : integer;
  QueryA : TUniQuery;
begin
  Application.CreateForm(TFNewInAccount, FNewInAccount);
  with FNewInAccount do
  begin
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      QueryA := TUniQuery.Create(nil);
      QueryA.Connection := DM1.dbUpd;
      if s_id_kargo = 0 then
        InsUpdKargo(true);
      with QueryA do
      begin
        Close;
        id := PGSQL.NewID('"карго"."счета_иностр_id_seq"');
        sql.Text := 'INSERT INTO "карго"."счета_иностр"(id, "код_банка",' +
      '"код_карго", "счет", "основной") VALUES (:id, :код_банка,' +
      ':код_карго, :счет, :основной)';
        ParamByName('id').AsInteger := id;
        ParamByName('код_банка').AsInteger := o_id_bank;
        ParamByName('код_карго').AsInteger := s_id_kargo;
        ParamByName('счет').AsString := edtAccount.Text;
        ExecSQL;
        ShowAccount(id);
        FNewKargo.EnableSave;
      end;
    end;
  end;
end;
procedure TFNewKargo.FrameTopPanelBankbtnDelClick(Sender : TObject);
begin
  PGSQL.StandartDelete(QueryAccount.FieldByName('id').AsString,
                        ' "карго"."счета_иностр"', QueryAccount, '', '', '', '');
  EnableSave;
end;
procedure TFNewKargo.FrameTopPanelBankbtnEditClick(Sender : TObject);
var
  QueryA : TUniQuery;
begin
  Application.CreateForm(TFNewInAccount, FNewInAccount);
  with FNewInAccount do
  begin
    o_id_bank := QueryAccount.FieldByName('код_банка').AsInteger;
    edtSWIFT.Text := QueryAccount.FieldByName('swift').AsString;
    mmoAddress.Text := QueryAccount.FieldByName('адрес').AsString;
    edtAccount.Text := QueryAccount.FieldByName('счет').AsString;
    edtName.Text := QueryAccount.FieldByName('name').AsString;
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      QueryA := TUniQuery.Create(nil);
      QueryA.Connection := DM1.dbUpd;
      with QueryA do
      begin
        Close;
        sql.Text :=
                   'UPDATE "карго"."счета_иностр" SET "код_банка" = :код_банка,' +
                   ' "код_карго" = :код_карго, "счет" = :счет, "основной" = :основной' +
                   ' WHERE  id = :id';
        ParamByName('id').AsInteger := QueryAccount.FieldByName('id').AsInteger;
        ParamByName('код_банка').AsInteger := o_id_bank;
        ParamByName('код_карго').AsInteger := s_id_kargo;
        ParamByName('счет').AsString := edtAccount.Text;
        ExecSQL;
        ShowAccount(QueryAccount.FieldByName('id').AsInteger);
      end;
    end;
  end;
end;
procedure TFNewKargo.FrameTopPanelContactbtnDelClick(Sender : TObject);
begin
  PGSQL.StandartDelete(QueryContact.FieldByName('id').AsString,
                        ' "карго"."контакты"', QueryContact, '', '', '', '');
  EnableSave;
end;
procedure TFNewKargo.FrameTopPanelContactbtnEditClick(Sender : TObject);
begin
  Application.CreateForm(TFNewContactKargo, FNewContactKargo);
  with FNewContactKargo do
  begin
    edtName.Text := QueryContact.FieldByName('name').AsString;
    edtDolgnost.Text := QueryContact.FieldByName('тип').AsString;
    edtPhone1.Text := QueryContact.FieldByName('телефон1').AsString;
    edtPhone2.Text := QueryContact.FieldByName('телефон2').AsString;
    edtPhone3.Text := QueryContact.FieldByName('телефон3').AsString;
    edtEmail.Text := QueryContact.FieldByName('почта').AsString;
    edtSkype.Text := QueryContact.FieldByName('скайп').AsString;
    edtMessenger.Text := QueryContact.FieldByName('месенджер').AsString;
    s_id_kargo_for_edit := s_id_kargo;
    s_id_contact := QueryContact.FieldByName('id').AsInteger;
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      ShowContact(s_id_contact);
      FNewKargo.EnableSave;
    end;
  end;
end;
procedure TFNewKargo.FrameTopPanelPriceMarkbtnAddClick(Sender : TObject);
begin
  if s_id_kargo = 0 then
    InsUpdKargo(true);
  PGSQL.AddMarking('"карго"."наценки"', 'код_карго', s_id_kargo);
  ShowTarifMarking;
end;
procedure TFNewKargo.FrameTopPanelPriceMarkbtnEditClick(Sender : TObject);
begin
  Application.CreateForm(TFNewPriceMarking, FNewPriceMarking);
  with FNewPriceMarking do
  begin
    edtSum.Value := QueryPriceMark.FieldByName('тариф').Value;
    case FPasswd.Lang of
      0 : lblMarking.Caption := 'Маркировка: ' + QueryPriceMark.FieldByName
        ('name').AsString;
      1 : lblMarking.Caption := 'Marking: ' + QueryPriceMark.FieldByName
        ('uni_name').AsString;
      2 : lblMarking.Caption := 'Marca: ' + QueryPriceMark.FieldByName
        ('reg_name').AsString;
    end;
    s_id := QueryPriceMark.FieldByName('id').AsInteger;
    s_table_name := '"карго"."наценки"';
    ShowModal;
    if FrameSave1.id_save = true then
      QueryPriceMark.Refresh;
  end;
end;
procedure TFNewKargo.FrameTopPanelPriceMarkbtnRefreshClick(Sender : TObject);
begin
  QueryPriceMark.Refresh;
end;
procedure TFNewKargo.FrameTopPanelTarifbtnEditClick(Sender : TObject);
begin
  Application.CreateForm(TFNewTarifKargo, FNewTarifKargo);
  with FNewTarifKargo do
  begin
    o_id_AirLine_for_tarif := QueryTarif.FieldByName('a_id').AsInteger;
    s_id_kargo_for_tarif := s_id_kargo;
    s_id_tarif := QueryTarif.FieldByName('t_id').AsInteger;
    case FPasswd.Lang of
      0 : edtAirline.Text := QueryTarif.FieldByName('name').AsString;
      1 : edtAirline.Text := QueryTarif.FieldByName('uni_name').AsString;
      2 : edtAirline.Text := QueryTarif.FieldByName('reg_name').AsString;
    end;
    edtSumTarif.Value := QueryTarif.FieldByName('общая_стоимость').Value;
    edtFITO.Value := QueryTarif.FieldByName('фито').Value;
    edtAWB.Value := QueryTarif.FieldByName('awb').Value;
    edtDopSbor.Value := QueryTarif.FieldByName('доп_сборы').Value;
    edtTermo.Value := QueryTarif.FieldByName('термодатчик').Value;
    ShowAirDays;
    ShowModal;
    if FrameSave1.id_save = true then
      ShowTarif(s_id_tarif);
  end;
end;
procedure TFNewKargo.GridAccountDblClick(Sender : TObject);
begin
  FrameTopPanelBankbtnEditClick(Sender);
end;
procedure TFNewKargo.InsUpdKargo(id_ins : boolean);
begin
  with Query1 do
  begin
    Close;
    if id_ins = true then
    begin
      s_id_kargo := PGSQL.NewID('"карго"."агенства_id_seq"');
      sql.Text :=
                 'INSERT INTO "карго"."агенства"(id, name, "адрес_офиса", "адрес_регистрации",'
                 + '"адрес_склада", "примечание", "макс_срок_долг", "оповещать_дней",' +
                 ' "макс_сумма_долга", "оповещать_сумма", "долг",юр_имя, uni_name, reg_name) '
                 + 'VALUES (:id, :name, :адрес_офиса, :адрес_регистрации, :адрес_склада,'
                 + ':примечание, :макс_срок_долг, :оповещать_дней, :макс_сумма_долга,' +
                 ' :оповещать_сумма, :долг, :юр_имя, :uni_name, :reg_name)';
    end
    else
    begin
      sql.Text :=
                 'UPDATE  "карго"."агенства" SET  name = :name, "адрес_офиса" = :адрес_офиса,'
                 + ' "адрес_регистрации" = :адрес_регистрации, "адрес_склада" = :адрес_склада,'
                 + '  "примечание" = :примечание,  "макс_срок_долг" = :макс_срок_долг,' +
                 '  "оповещать_дней" = :оповещать_дней,  "макс_сумма_долга" = :макс_сумма_долга,'
                 + '  "оповещать_сумма" = :оповещать_сумма,  "долг" = :долг, юр_имя=:юр_имя, '
                 + ' uni_name=:uni_name, reg_name=:reg_name WHERE id = :id';
    end;
    ParamByName('id').Value := s_id_kargo;
    ParamByName('name').Value := edtName.Text;
    ParamByName('uni_name').Value := edtName.Text;
    ParamByName('reg_name').Value := edtName.Text;
    ParamByName('юр_имя').Value := edtUrName.Text;
    ParamByName('адрес_офиса').Value := mmoAdrOffice.Text;
    ParamByName('адрес_регистрации').Value := mmoAdrReg.Text;
    ParamByName('адрес_склада').Value := mmoAdrSklad.Text;
    ParamByName('примечание').Value := mmoRemark.Text;
    ParamByName('макс_срок_долг').Value := edtMaxSrokDolg.Value;
    ParamByName('оповещать_дней').Value := edtDayAlarm.Value;
    ParamByName('макс_сумма_долга').Value := edtMaxDolg.FloatValue;
    ParamByName('оповещать_сумма').Value := edtMaxDolg.FloatValue;
    try
      ExecSQL;
    except
      if id_ins = true then
        s_id_kargo := 0;
    end;
  end;
end;
procedure TFNewKargo.SetLang;
begin
  case FPasswd.Lang of
    0 :
    begin
      Caption := 'Карго';
      TabOsn.Caption := 'Основные сведения';
      TabKontakt.Caption := 'Контакты';
      TabBank.Caption := 'Счета';
      TabTarif.Caption := 'Тарифы и сборы';
      TabAlarm.Caption := 'Оповещения';
      lblName.Caption := 'Наименование:*';
      lblUrName.Caption := 'Юридическое наименование:*';
      lblAdrReg.Caption := 'Адрес регистрации:';
      lblAdrOffice.Caption := 'Адрес офиса:';
      lblAdrSklad.Caption := 'Адрес склада:';
      lblRemark.Caption := 'Примечание:';
      ColumnFIO.Caption := 'Ф.И.О.';
      ColumnPost.Caption := 'Должность';
      ColumnPhone.Caption := 'Телефон';
      ColumnBank.Caption := 'Банк';
      ColumnAccount.Caption := 'Счет';
      ColumnAirLine.Caption := 'Авиалиния';
      ColumnAirLine.DataBinding.FieldName := 'name';
      lblMaxDayDolg.Caption := 'Макс. срок задолженности:';
      lblAlarmDay.Caption := 'Начать оповещать за:';
      lblMaxDolg.Caption := 'Макс. сумма задолженности:';
      lblSumAlarm.Caption := 'Начать оповещать после:';
      lblDay1.Caption := 'дней';
      lblDay2.Caption := 'дней';
    end;
    1 :
    begin
      Caption := 'Cargo';
      TabOsn.Caption := 'Basic information';
      TabKontakt.Caption := 'Contacts';
      TabBank.Caption := 'Account';
      TabTarif.Caption := 'Rates and charges';
      TabAlarm.Caption := 'Alerts';
      lblName.Caption := 'Name:*';
      lblUrName.Caption := 'Legal name:*';
      lblAdrReg.Caption := 'Registration address:';
      lblAdrOffice.Caption := 'Office address:';
      lblAdrSklad.Caption := 'The address of the warehouse:';
      lblRemark.Caption := 'Note:';
      ColumnFIO.Caption := 'Name';
      ColumnPost.Caption := 'Post';
      ColumnPhone.Caption := 'Phone';
      ColumnBank.Caption := 'Bank';
      ColumnAccount.Caption := 'Account';
      ColumnAirLine.Caption := 'Airline';
      ColumnAirLine.DataBinding.FieldName := 'uni_name';
      lblMaxDayDolg.Caption := 'The maximum term debt:';
      lblAlarmDay.Caption := 'Start notify the:';
      lblMaxDolg.Caption := 'The maximum amount of indebtedness:';
      lblSumAlarm.Caption := 'Start notify after:';
      lblDay1.Caption := 'days';
      lblDay2.Caption := 'days';
    end;
    2 :
    begin
      Caption := 'Cargo';
      TabOsn.Caption := 'Las noticias básicas';
      TabKontakt.Caption := 'Los contactos';
      TabBank.Caption := 'Las cuentas';
      TabTarif.Caption := 'Las tarifas y las recogidas';
      TabAlarm.Caption := 'Los avisos';
      lblName.Caption := 'El nombre:*';
      lblUrName.Caption := 'El nombre jurídico:*';
      lblAdrReg.Caption := 'La dirección del registro:';
      lblAdrOffice.Caption := 'La dirección de la oficina:';
      lblAdrSklad.Caption := 'La dirección del almacén:';
      lblRemark.Caption := 'La nota:';
      ColumnFIO.Caption := 'El nombre';
      ColumnPost.Caption := 'El puesto';
      ColumnPhone.Caption := 'Teléfono';
      ColumnBank.Caption := 'El banco';
      ColumnAccount.Caption := 'La cuenta';
      ColumnAirLine.Caption := 'La línea aérea';
      ColumnAirLine.DataBinding.FieldName := 'reg_name';
      lblMaxDayDolg.Caption := 'El plazo máximo de la deuda:';
      lblAlarmDay.Caption := 'Comenzar informar por:';
      lblMaxDolg.Caption := 'La suma máxima de deuda:';
      lblSumAlarm.Caption := 'Comenzar informar después de:';
      lblDay1.Caption := 'días';
      lblDay2.Caption := 'días';
    end;
  end;
end;
procedure TFNewKargo.ShowAccount(id_locate : integer = 0);
begin
  with QueryAccount do
  begin
    Close;
    ParamByName('id_kargo').AsInteger := s_id_kargo;
    Open;
    Locate('id', id_locate, []);
  end;
end;
procedure TFNewKargo.ShowContact(id_locate : integer = 0);
begin
  with QueryContact do
  begin
    Close;
    sql.Text := 'select * from "карго"."контакты" where код_карго=' +
  IntToStr(s_id_kargo);
    Open;
    Locate('id', id_locate, []);
  end;
end;
procedure TFNewKargo.ShowTarif(id_locate : integer = 0);
begin
  with QueryTarif do
  begin
    Close;
    sql.Text :=
               'SELECT a.id a_id, a.name, a.uni_name, a.reg_name,  t.id t_id,  t."код_карго",  t."код_авиалинии",'
               + '  t."общая_стоимость",  t."фито",  t.awb,  t."доп_сборы",' +
               '  t."термодатчик" FROM  "авиалинии"."авиалинии" a' +
               '  INNER JOIN "карго"."тарифы" t ON (a.id = t."код_авиалинии")' +
               ' where код_карго=' + IntToStr(s_id_kargo);
    Open;
    Locate('t_id', id_locate, []);
  end;
end;
procedure TFNewKargo.ShowTarifMarking(id_locate : integer = 0);
begin
  with QueryPriceMark do
  begin
    Close;
    ParamByName('id').AsInteger := s_id_kargo;
    Open;
    Locate('id', id_locate, []);
  end;
end;
end.
