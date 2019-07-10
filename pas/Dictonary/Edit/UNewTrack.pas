unit UNewTrack;
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
  Menus,
  cxStyles,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  DB,
  cxDBData,
  MemDS,
  DBAccess,
  Uni,
  Vcl.StdCtrls,
  AdvEdit,
  cxMaskEdit,
  cxSpinEdit,
  cxCheckBox,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  UFrameTopPanel,
  cxButtons,
  cxMemo,
  cxTextEdit,
  cxLabel,
  cxPC,
  UFrameSave,
  cxCurrencyEdit,
  cxGroupBox,
  cxNavigator,
  dxBarBuiltInMenu,
  
  dxSkinDevExpressStyle,
  
  dxSkinsDefaultPainters, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog;
type
  TFNewTrack = class(TForm)
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
    btnAdres : TcxButton;
    btn1 : TcxButton;
    btn2 : TcxButton;
    TabKontakt : TcxTabSheet;
    FrameTopPanelContact : TFrameTopPanel;
    GridContact : TcxGrid;
    cxGridDBTableView1 : TcxGridDBTableView;
    ColumnFIO : TcxGridDBColumn;
    ColumnPost : TcxGridDBColumn;
    ColumnPhone : TcxGridDBColumn;
    cxGridLevel1 : TcxGridLevel;
    TabBank : TcxTabSheet;
    TabTarif : TcxTabSheet;
    TabAlarm : TcxTabSheet;
    lblMaxDayDolg : TcxLabel;
    lblDay1 : TcxLabel;
    lblAlarmDay : TcxLabel;
    lblDay2 : TcxLabel;
    chkUse : TcxCheckBox;
    edtMaxSrokDolg : TcxSpinEdit;
    edtDayAlarm : TcxSpinEdit;
    edtMaxDolg : TAdvEdit;
    edtSumAlarm : TAdvEdit;
    lblMaxDolg : TcxLabel;
    lblSumAlarm : TcxLabel;
    Query1 : TUniQuery;
    QueryContact : TUniQuery;
    dsContact : TDataSource;
    dsAccount : TDataSource;
    QueryAccount : TUniQuery;
    QueryTarif : TUniQuery;
    dsTarif : TDataSource;
    FrameTopPanelBank : TFrameTopPanel;
    PageBank : TcxPageControl;
    TabInostr : TcxTabSheet;
    TabRus : TcxTabSheet;
    GridAcc : TcxGrid;
    GridAccount : TcxGridDBTableView;
    ColumnBank : TcxGridDBColumn;
    ColumnAccount : TcxGridDBColumn;
    GridLevelGrid1Level1 : TcxGridLevel;
    QueryAccountRus : TUniQuery;
    dsAccountRus : TDataSource;
    cxGrid1 : TcxGrid;
    cxGridDBTableView3 : TcxGridDBTableView;
    cxGridDBColumn1 : TcxGridDBColumn;
    cxGridDBColumn2 : TcxGridDBColumn;
    cxGridLevel3 : TcxGridLevel;
    PageTarif : TcxPageControl;
    TabVes : TcxTabSheet;
    cxGroupBox2 : TcxGroupBox;
    FrameTopPanelTarif : TFrameTopPanel;
    TabOb : TcxTabSheet;
    cxGroupBox1 : TcxGroupBox;
    cxGrid3 : TcxGrid;
    cxGridDBTableView4 : TcxGridDBTableView;
    ColumnNameSt2 : TcxGridDBColumn;
    ColumnPalet : TcxGridDBColumn;
    cxGridLevel4 : TcxGridLevel;
    TabPriceMarking : TcxTabSheet;
    FrameTopPanelPriceMarking : TFrameTopPanel;
    PagePriceMarking : TcxPageControl;
    TabPriceMarkV : TcxTabSheet;
    cxGroupBox3 : TcxGroupBox;
    cxGrid4 : TcxGrid;
    cxGridDBTableView5 : TcxGridDBTableView;
    cxGridDBColumn3 : TcxGridDBColumn;
    cxGridDBColumn4 : TcxGridDBColumn;
    cxGridLevel5 : TcxGridLevel;
    TabPriceOb : TcxTabSheet;
    cxGroupBox4 : TcxGroupBox;
    cxGrid5 : TcxGrid;
    cxGridDBTableView6 : TcxGridDBTableView;
    cxGridDBColumn5 : TcxGridDBColumn;
    cxGridDBColumn6 : TcxGridDBColumn;
    cxGridLevel6 : TcxGridLevel;
    cxGrid2 : TcxGrid;
    cxGridDBTableView2 : TcxGridDBTableView;
    ColumnNameT1 : TcxGridDBColumn;
    ColumnKg : TcxGridDBColumn;
    cxGridLevel2 : TcxGridLevel;
    QueryPriceMarkVes : TUniQuery;
    dsPriceMarkVes : TDataSource;
    QueryPriceMarkOb : TUniQuery;
    dsPriceMarkOb : TDataSource;
    chkPrikul : TCheckBox;
    procedure FormShow(Sender : TObject);
    procedure btnAdresClick(Sender : TObject);
    procedure btn1Click(Sender : TObject);
    procedure btn2Click(Sender : TObject);
    procedure cxGridDBTableView1DblClick(Sender : TObject);
    procedure cxGridDBTableView3DblClick(Sender : TObject);
    procedure edtNameKeyUp(Sender : TObject; var Key : Word; Shift : TShiftState);
    procedure FrameSave1btnSaveClick(Sender : TObject);
    procedure edtNamePropertiesEditValueChanged(Sender : TObject);
    procedure edtUrNameKeyUp(Sender : TObject; var Key : Word;
                                Shift : TShiftState);
    procedure edtUrNamePropertiesEditValueChanged(Sender : TObject);
    procedure FrameTopPanelBankbtnAddClick(Sender : TObject);
    procedure FrameTopPanelContactbtnAddClick(Sender : TObject);
    procedure FrameTopPanelContactbtnDelClick(Sender : TObject);
    procedure FrameTopPanelContactbtnEditClick(Sender : TObject);
    procedure FrameTopPanelBankbtnEditClick(Sender : TObject);
    procedure GridAccountDblClick(Sender : TObject);
    procedure FrameTopPanelBankbtnDelClick(Sender : TObject);
    procedure PageBankChange(Sender : TObject);
    procedure FrameTopPanelTarifbtnAddClick(Sender : TObject);
    procedure PageTarifChange(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
  private
    { Private declarations }
  public
    s_id_track : Integer;
    s_id_contact : Integer;
    procedure EnableSave;
    procedure InsUpdContact(id_ins : boolean);
    procedure InsUpdTarif(id_ins : boolean);
    procedure InsUpdTrack(id_ins : boolean);
    procedure SetLang;
    procedure ShowAccount(id_locate : Integer = 0);
    procedure ShowAccountRus(id_locate : Integer = 0);
    procedure ShowContact(id_locate : Integer = 0);
    procedure ShowTarif(id_locate : Integer = 0);
    { Public declarations }
  end;

var
  FNewTrack : TFNewTrack;
implementation
{$R *.dfm}

uses
  UPasswd,
  PGSQL,
  UNewContactUni,
  UNewInAccount,
  UDataModule1,
  UNewAccountRus,
  UNewTarifTrack;
procedure TFNewTrack.btn1Click(Sender : TObject);
begin
  SelectAddress(mmoAdrOffice, 0, 0, 0, 0, '', '', '', '');
end;
procedure TFNewTrack.btn2Click(Sender : TObject);
begin
  SelectAddress(mmoAdrSklad, 0, 0, 0, 0, '', '', '', '');
end;
procedure TFNewTrack.btnAdresClick(Sender : TObject);
begin
  SelectAddress(mmoAdrReg, 0, 0, 0, 0, '', '', '', '');
end;
procedure TFNewTrack.btnDelClick(Sender : TObject);
begin
  PGSQL.StandartDelete(QueryTarif.FieldByName('id').AsString,
                        '"траки"."тарифы"', QueryTarif, '', '', '', '');
  EnableSave;
end;
procedure TFNewTrack.cxGridDBTableView1DblClick(Sender : TObject);
begin
  FrameTopPanelContactbtnEditClick(Sender);
end;
procedure TFNewTrack.cxGridDBTableView3DblClick(Sender : TObject);
begin
  FrameTopPanelBankbtnEditClick(Sender);
end;
procedure TFNewTrack.edtNameKeyUp(Sender : TObject; var Key : Word;
                                     Shift : TShiftState);
begin
  EnableSave;
end;
procedure TFNewTrack.edtNamePropertiesEditValueChanged(Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewTrack.edtUrNameKeyUp(Sender : TObject; var Key : Word;
                                       Shift : TShiftState);
begin
  EnableSave;
end;
procedure TFNewTrack.edtUrNamePropertiesEditValueChanged(Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewTrack.EnableSave;
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
  case PageBank.ActivePageIndex of
    0 :
    begin
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
    end;
    1 :
    begin
      if QueryAccountRus.RecordCount <> 0 then
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
    end;
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
end;
procedure TFNewTrack.FormShow(Sender : TObject);
begin
  SetLang;
  FrameTopPanelContact.SetLang;
  FrameTopPanelBank.SetLang;
  FrameTopPanelTarif.SetLang;
  EnableSave;
  Page1.ActivePageIndex := 0;
  PageBank.ActivePageIndex := 0;
  PageTarif.ActivePageIndex := 0;
  PagePriceMarking.ActivePageIndex := 0;
  edtName.SetFocus;
end;
procedure TFNewTrack.FrameSave1btnSaveClick(Sender : TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  if s_id_track = 0 then
    InsUpdTrack(true)
  else
    InsUpdTrack(false);
  Close;
end;
procedure TFNewTrack.FrameTopPanelBankbtnAddClick(Sender : TObject);
var
  id : Integer;
  QueryA : TUniQuery;
begin
  case PageBank.ActivePageIndex of
    0 :
    begin
      Application.CreateForm(TFNewInAccount, FNewInAccount);
      with FNewInAccount do
      begin
        ShowModal;
        if FrameSave1.id_save = true then
        begin
          QueryA := TUniQuery.Create(nil);
          QueryA.Connection := DM1.dbUpd;
          if s_id_track = 0 then
            InsUpdTrack(true);
          with QueryA do
          begin
            Close;
            id := PGSQL.NewID('"траки"."счета_иностр_id_seq"');
            sql.Text := 'INSERT INTO "траки"."счета_иностр"(id, "код_банка",'
          + '"код_трака", "счет", "основной") VALUES (:id, :код_банка,' +
          ':код_трака, :счет, :основной)';
            ParamByName('id').AsInteger := id;
            ParamByName('код_банка').AsInteger := o_id_bank;
            ParamByName('код_трака').AsInteger := s_id_track;
            ParamByName('счет').AsString := edtAccount.Text;
            ExecSQL;
            ShowAccount(id);
            FNewTrack.EnableSave;
          end;
        end;
      end;
    end;
    1 :
    begin
      Application.CreateForm(TFNewAccountRus, FNewAccountRus);
      with FNewAccountRus do
      begin
        ShowModal;
        if FrameSave1.id_save = true then
        begin
          QueryA := TUniQuery.Create(nil);
          QueryA.Connection := DM1.dbUpd;
          if s_id_track = 0 then
            InsUpdTrack(true);
          with QueryA do
          begin
            Close;
            id := PGSQL.NewID('"траки"."счета_рус_id_seq"');
            sql.Text := 'INSERT INTO "траки"."счета_рус"(id, "код_банка",' +
          '"код_трака", "счет", "основной") VALUES (:id, :код_банка,' +
          ':код_трака, :счет, :основной)';
            ParamByName('id').AsInteger := id;
            ParamByName('код_банка').AsString := o_id_bank;
            ParamByName('код_трака').AsInteger := s_id_track;
            ParamByName('счет').AsString := edtAccount.Text;
            ExecSQL;
            ShowAccountRus(id);
            FNewTrack.EnableSave;
          end;
        end;
      end;
    end;
      // конец выбора
  end;
end;
procedure TFNewTrack.FrameTopPanelBankbtnDelClick(Sender : TObject);
begin
  case PageBank.ActivePageIndex of
    0 : PGSQL.StandartDelete(QueryAccount.FieldByName('id').AsString,
                              ' "траки"."счета_иностр"', QueryAccount, '', '', '', '');
    1 : PGSQL.StandartDelete(QueryAccountRus.FieldByName('id').AsString,
                              ' "траки"."счета_рус"', QueryAccountRus, '', '', '', '');
  end;
  EnableSave;
end;
procedure TFNewTrack.FrameTopPanelBankbtnEditClick(Sender : TObject);
var
  QueryA : TUniQuery;
begin
  case PageBank.ActivePageIndex of
    0 :
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
                       'UPDATE "траки"."счета_иностр" SET "код_банка" = :код_банка,' +
                       ' "код_трака" = :код_трака, "счет" = :счет, "основной" = :основной'
                       + ' WHERE  id = :id';
            ParamByName('id').AsInteger := QueryAccount.FieldByName('id')
          .AsInteger;
            ParamByName('код_банка').AsInteger := o_id_bank;
            ParamByName('код_трака').AsInteger := s_id_track;
            ParamByName('счет').AsString := edtAccount.Text;
            ExecSQL;
            ShowAccount(QueryAccount.FieldByName('id').AsInteger);
          end;
        end;
      end;
    end;
    1 :
    begin
      Application.CreateForm(TFNewAccountRus, FNewAccountRus);
      with FNewAccountRus do
      begin
        o_id_bank := QueryAccountRus.FieldByName('код_банка').AsString;
        edtKch.Text := QueryAccountRus.FieldByName('кор_счет').AsString;
        mmoAddress.Text := QueryAccountRus.FieldByName('адрес').AsString;
        edtAccount.Text := QueryAccountRus.FieldByName('счет').AsString;
        edtName.Text := QueryAccountRus.FieldByName('name').AsString;
        ShowModal;
        if FrameSave1.id_save = true then
        begin
          QueryA := TUniQuery.Create(nil);
          QueryA.Connection := DM1.dbUpd;
          with QueryA do
          begin
            Close;
            sql.Text :=
                       'UPDATE "траки"."счета_рус" SET "код_банка" = :код_банка,' +
                       ' "код_трака" = :код_трака, "счет" = :счет, "основной" = :основной'
                       + ' WHERE  id = :id';
            ParamByName('id').AsInteger := QueryAccountRus.FieldByName('id')
          .AsInteger;
            ParamByName('код_банка').AsString := o_id_bank;
            ParamByName('код_трака').AsInteger := s_id_track;
            ParamByName('счет').AsString := edtAccount.Text;
            ExecSQL;
            ShowAccountRus(QueryAccountRus.FieldByName('id').AsInteger);
          end;
        end;
      end;
    end;
  end;
end;
procedure TFNewTrack.FrameTopPanelContactbtnAddClick(Sender : TObject);
begin
  s_id_contact := 0;
  if s_id_track = 0 then
    InsUpdTrack(true);
  Application.CreateForm(TFNewContactUni, FNewContactUni);
  with FNewContactUni do
  begin
    // s_id_kargo_for_edit := s_id_kargo;
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      InsUpdContact(true);
      ShowContact(s_id_contact);
      FNewTrack.EnableSave;
    end;
  end;
end;
procedure TFNewTrack.FrameTopPanelContactbtnDelClick(Sender : TObject);
begin
  PGSQL.StandartDelete(QueryContact.FieldByName('id').AsString,
                        ' "траки"."контакты"', QueryContact, '', '', '', '');
  EnableSave;
end;
procedure TFNewTrack.FrameTopPanelContactbtnEditClick(Sender : TObject);
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
        FNewTrack.EnableSave;
      end;
    end;
  end;
end;
procedure TFNewTrack.FrameTopPanelTarifbtnAddClick(Sender : TObject);
begin
  if s_id_track = 0 then
    InsUpdTrack(true);
  Application.CreateForm(TFNewTarifTrack, FNewTarifTrack);
  with FNewTarifTrack do
  begin
    case PageTarif.ActivePageIndex of
      0 : lblSum.Caption := 'Cтоимость за 1 кг.:';
      1 : lblSum.Caption := 'Cтоимость за 1 палет:';
    end;
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      InsUpdTarif(true);
    end;
  end;
end;
procedure TFNewTrack.GridAccountDblClick(Sender : TObject);
begin
  FrameTopPanelBankbtnEditClick(Sender);
end;
procedure TFNewTrack.InsUpdContact(id_ins : boolean);
begin
  with Query1 do
  begin
    Close;
    if id_ins = true then
    begin
      s_id_contact := PGSQL.NewID('"траки"."контакты_id_seq"');
      sql.Text := 'INSERT INTO "траки"."контакты"(id, "код_трака", name, "тип",'
    + '"телефон1", "телефон2", "телефон3", "почта", "скайп", "месенджер"' +
    ')VALUES (:id, :код_трака, :name, :тип, :телефон1, :телефон2, :телефон3,'
    + ':почта, :скайп, :месенджер)';
    end
    else
    begin
      sql.Text := 'UPDATE "траки"."контакты" SET "код_трака" = :код_трака,' +
    'name = :name, "тип" = :тип, "телефон1" = :телефон1, "телефон2" = :телефон2,'
    + '"телефон3" = :телефон3, "почта" = :почта, "скайп" = :скайп,' +
    '"месенджер" = :месенджер WHERE id = :id';
    end;
    ParamByName('id').AsInteger := s_id_contact;
    ParamByName('код_трака').AsInteger := s_id_track;
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
procedure TFNewTrack.InsUpdTarif(id_ins : boolean);
var
  id : Integer;
begin
  with Query1 do
  begin
    Close;
    if id_ins = true then
    begin
      id := PGSQL.NewID('"траки"."тарифы_id_seq"');
      sql.Text :=
                 'INSERT INTO "траки"."тарифы"(id, name, "код_трака", "код_типа",' +
                 ' "тариф")VALUES (:id, :name, :код_трака, :код_типа, :тариф)';
    end
    else
    begin
      id := QueryTarif.FieldByName('id').AsInteger;
      sql.Text :=
                 'UPDATE "траки"."тарифы" SET name = :name, "код_трака" = :код_трака,' +
                 '"код_типа" = :код_типа, "тариф" = :тариф WHERE id = :id';
    end;
    ParamByName('id').Value := id;
    ParamByName('name').Value := FNewTarifTrack.edtName.Text;
    ParamByName('код_трака').Value := s_id_track;
    ParamByName('код_типа').Value := PageTarif.ActivePageIndex;
    ParamByName('тариф').Value := FNewTarifTrack.edtSumTarif.Value;
    ExecSQL;
    ShowTarif(id);
    EnableSave;
  end;
end;
procedure TFNewTrack.InsUpdTrack(id_ins : boolean);
begin
  with Query1 do
  begin
    Close;
    if id_ins = true then
    begin
      s_id_track := PGSQL.NewID('"траки"."траки_id_seq"');
      sql.Text :=
                 'INSERT INTO "траки"."траки"(id, name, "адрес_офиса", "адрес_регистрации",'
                 + '"адрес_склада", "примечание", "макс_срок_долг", "оповещать_дней",' +
                 ' "макс_сумма_долга", "оповещать_сумма", "долг",юр_имя, uni_name, reg_name, учет_прикулинг) '
                 + 'VALUES (:id, :name, :адрес_офиса, :адрес_регистрации, :адрес_склада,'
                 + ':примечание, :макс_срок_долг, :оповещать_дней, :макс_сумма_долга,' +
                 ' :оповещать_сумма, :долг, :юр_имя, :uni_name, :reg_name, :учет_прикулинг)';
    end
    else
    begin
      sql.Text :=
                 'UPDATE  "траки"."траки" SET  name = :name, "адрес_офиса" = :адрес_офиса,'
                 + ' "адрес_регистрации" = :адрес_регистрации, "адрес_склада" = :адрес_склада,'
                 + '  "примечание" = :примечание,  "макс_срок_долг" = :макс_срок_долг,' +
                 '  "оповещать_дней" = :оповещать_дней,  "макс_сумма_долга" = :макс_сумма_долга,'
                 + '  "оповещать_сумма" = :оповещать_сумма,  "долг" = :долг, юр_имя=:юр_имя, '
                 + ' uni_name=:uni_name, reg_name=:reg_name, учет_прикулинг=:учет_прикулинг WHERE id = :id';
    end;
    ParamByName('id').Value := s_id_track;
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
    ParamByName('учет_прикулинг').Value := chkPrikul.Checked;
    try
      ExecSQL;
    except
      if id_ins = true then
        s_id_track := 0;
    end;
  end;
end;
procedure TFNewTrack.PageBankChange(Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewTrack.PageTarifChange(Sender : TObject);
begin
  ShowTarif();
  EnableSave;
end;
procedure TFNewTrack.SetLang;
begin
  case FPasswd.Lang of
    0 :
    begin
      Caption := 'Трак';
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
      ColumnNameT1.Caption := 'Название страны/груза';
      ColumnNameSt2.Caption := 'Название страны/груза';
      ColumnKg.Caption := 'Стоимость за 1 кг.';
      ColumnPalet.Caption := 'Стоимость за 1 палет';
      lblMaxDayDolg.Caption := 'Макс. срок задолженности:';
      lblAlarmDay.Caption := 'Начать оповещать за:';
      lblMaxDolg.Caption := 'Макс. сумма задолженности:';
      lblSumAlarm.Caption := 'Начать оповещать после:';
      lblDay1.Caption := 'дней';
      lblDay2.Caption := 'дней';
      TabVes.Caption := 'Весовой тариф';
      TabOb.Caption := 'Объемный тариф';
    end;
    1 :
    begin
      Caption := 'Truck';
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
      ColumnNameT1.Caption := 'The name of the country/cargo';
      ColumnNameSt2.Caption := 'The name of the country/cargo';
      ColumnKg.Caption := 'The cost for 1 kg.';
      ColumnPalet.Caption := 'The cost for 1 pallet';
      lblMaxDayDolg.Caption := 'The maximum term debt:';
      lblAlarmDay.Caption := 'Start notify the:';
      lblMaxDolg.Caption := 'The maximum amount of indebtedness:';
      lblSumAlarm.Caption := 'Start notify after:';
      lblDay1.Caption := 'days';
      lblDay2.Caption := 'days';
      TabVes.Caption := 'Weight tariff';
      TabOb.Caption := 'Volumetric tariff';
    end;
    2 :
    begin
      Caption := 'Eslabón';
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
      ColumnNameT1.Caption := 'El nombre del país/carga';
      ColumnNameSt2.Caption := 'El nombre del país/carga';
      ColumnKg.Caption := 'El coste por 1 kg.';
      ColumnPalet.Caption := 'El coste por 1 pallet';
      lblMaxDayDolg.Caption := 'El plazo máximo de la deuda:';
      lblAlarmDay.Caption := 'Comenzar informar por:';
      lblMaxDolg.Caption := 'La suma máxima de deuda:';
      lblSumAlarm.Caption := 'Comenzar informar después de:';
      lblDay1.Caption := 'días';
      lblDay2.Caption := 'días';
      TabVes.Caption := 'La tarifa a peso';
      TabOb.Caption := 'La tarifa volumétrica';
    end;
  end;
end;
procedure TFNewTrack.ShowAccount(id_locate : Integer = 0);
begin
  with QueryAccount do
  begin
    Close;
    ParamByName('id_track').AsInteger := s_id_track;
    Open;
    Locate('id', id_locate, []);
  end;
end;
procedure TFNewTrack.ShowAccountRus(id_locate : Integer = 0);
begin
  with QueryAccountRus do
  begin
    Close;
    ParamByName('id_track').AsInteger := s_id_track;
    Open;
    Locate('id', id_locate, []);
  end;
end;
procedure TFNewTrack.ShowContact(id_locate : Integer = 0);
begin
  with QueryContact do
  begin
    Close;
    sql.Text := 'select * from "траки"."контакты" where код_трака=' +
  IntToStr(s_id_track);
    Open;
    Locate('id', id_locate, []);
  end;
end;
procedure TFNewTrack.ShowTarif(id_locate : Integer = 0);
begin
  with QueryTarif do
  begin
    Close;
    sql.Text := 'SELECT * from "траки"."тарифы" where код_трака=' +
  IntToStr(s_id_track) + ' and код_типа=' +
  IntToStr(PageTarif.ActivePageIndex);
    Open;
  end;
end;
end.
