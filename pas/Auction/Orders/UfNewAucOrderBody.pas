unit UfNewAucOrderBody;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, 
   Vcl.StdCtrls, Vcl.Mask, sMaskEdit, sCustomComboEdit,
  sToolEdit, cxTextEdit, cxLabel, UFrameSave, cxMaskEdit, cxButtonEdit, Data.DB,
  MemDS, DBAccess, Uni, cxDBEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCheckBox;

type
  TfNewAucOrderBody = class(TForm)
    FrameSave1: TFrameSave;
    lbl1: TcxLabel;
    edtNum: TcxTextEdit;
    lbl2: TcxLabel;
    edtDateOut: TsDateEdit;
    cxLabel1: TcxLabel;
    edtClient: TcxButtonEdit;
    Query1: TUniQuery;
    dsAucOrder: TDataSource;
    edtMarking: TcxButtonEdit;
    lbl3: TcxLabel;
    edtCountry: TcxButtonEdit;
    cxLabel2: TcxLabel;
    edtStatClient: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    edtStatManager: TcxLookupComboBox;
    cxLabel4: TcxLabel;
    chkClose: TcxCheckBox;
    cxLabel5: TcxLabel;
    edtManager: TcxLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure edtMarkingPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtClientPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtCountryPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FrameSave1btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    IdClientOrder, IDMarkingOrder, IDCountryOrder: Integer;
    idOrder: Integer;
    procedure DetectOneMarking;
    procedure ShowDict(id_locate_user: Integer = 0;
      id_locate_stat_manager: Integer = 0; id_locate_manager: Integer = 0);
    procedure Validate;
    { Public declarations }
  end;

var
  fNewAucOrderBody: TfNewAucOrderBody;

implementation

{$R *.dfm}

uses USelectClient, ULogin, USelect, UDataModule1, UfNewAucOrder, PGSQL;

procedure TfNewAucOrderBody.DetectOneMarking;
begin
  with Query1 do
  begin
    Close;
    sql.Text := 'select * from "маркировки"."маркировки" where код_клиента=' +
      IntToStr(IdClientOrder);
    Open;
    if RecordCount = 1 then
    begin
      edtMarking.Text := FieldByName('name').AsString;
      IDMarkingOrder := FieldByName('id').AsInteger;
    end;
  end;
end;

procedure TfNewAucOrderBody.edtClientPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.CreateForm(TFSelect, FSelect);
  with FSelect do
  begin
    ShowSelect('"контрагенты"."клиенты"', 'where в_маркировках=true', false);
    ShowModal;
    if FrameTopPanel1.id_select = true then
    begin
      edtClient.Text := QuerySelect.FieldByName('name').AsString;
      IdClientOrder := QuerySelect.FieldByName('id').AsInteger;
      edtMarking.Enabled := true;
      DetectOneMarking;
    end;
  end;
end;

procedure TfNewAucOrderBody.edtCountryPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.CreateForm(TFSelect, FSelect);
  with FSelect do
  begin
    ShowSelect('"продукция"."страны"', '', false);
    ShowModal;
    if FrameTopPanel1.id_select = true then
    begin
      edtCountry.Text := QuerySelect.FieldByName('name').AsString;
      IDCountryOrder := QuerySelect.FieldByName('id').AsInteger;
    end;
  end;
end;

procedure TfNewAucOrderBody.edtMarkingPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.CreateForm(TFSelect, FSelect);
  with FSelect do
  begin
    ShowSelect('"маркировки"."маркировки"', 'where код_клиента=' +
      IntToStr(IdClientOrder), false);
    ShowModal;
    if FrameTopPanel1.id_select = true then
    begin
      edtMarking.Text := QuerySelect.FieldByName('name').AsString;
      IDMarkingOrder := QuerySelect.FieldByName('id').AsInteger;
    end;
  end;
end;

procedure TfNewAucOrderBody.FormShow(Sender: TObject);
begin
  edtDateOut.MinDate := now;
  with Query1 do
  begin
    Close;
    sql.Text := 'select * from "продукция"."страны" where "code"=:c';
    ParamByName('c').AsString := 'NL';
    Open;
    IDCountryOrder := FieldByName('id').AsInteger;
    edtCountry.Text := FieldByName('name').AsString;
    ShowDict();
  end;
  with FLogin do
  begin
    if clientName <> '' then
    begin
      edtClient.Text := clientName;
      IdClientOrder := IDClient;
      edtClient.Enabled := false;
      edtMarking.Enabled := true;
      DetectOneMarking;
    end
    else
      edtMarking.Enabled := false;
  end;
end;

procedure TfNewAucOrderBody.FrameSave1btnSaveClick(Sender: TObject);
begin
  if edtDateOut.Date < now then
  begin
    Application.MessageBox('Дата выхода не может быть меньше текущей даты.',
      'Ошибка', MB_OK + MB_ICONERROR);
    edtDateOut.SetFocus;
    edtDateOut.SelectAll;
    Abort;
  end;
  if (edtClient.Text <> '') and (edtDateOut.Text <> '  .  .    ') and
    (edtMarking.Text <> '') then
  begin
    with Query1 do
    begin
      idOrder := PGSQL.NewID('"аукцион"."ЗаказТело_id_seq"');
      Close;
      sql.Clear;
      sql.Add(' INSERT INTO');
      sql.Add(' "аукцион"."ЗаказТело"');
      sql.Add(' (');
      sql.Add(' id,');
      sql.Add(' "дата_заказа",');
      sql.Add(' "код_маркировки",');
      sql.Add(' "код_клиента",');
      sql.Add(' "дата_выхода",');
      sql.Add(' "код_страны",');
      sql.Add(' "статус_менеджер",');
      sql.Add(' "статус_клиент",');
      sql.Add(' "закрыт",');
      sql.Add(' "код_менеджера",');
      sql.Add(' "номер"');
      sql.Add(' )');
      sql.Add(' VALUES (');
      sql.Add(' :id,');
      sql.Add(' :дата_заказа,');
      sql.Add(' :код_маркировки,');
      sql.Add(' :код_клиента,');
      sql.Add(' :дата_выхода,');
      sql.Add(' :код_страны,');
      sql.Add(' :статус_менеджер,');
      sql.Add(' :статус_клиент,');
      sql.Add(' :закрыт,');
      sql.Add(' :код_менеджера,');
      sql.Add(' :номер');
      sql.Add(' );');
      ParamByName('id').Value := idOrder;
      ParamByName('дата_заказа').Value := now;
      ParamByName('код_маркировки').Value := IDMarkingOrder;
      ParamByName('код_клиента').Value := IdClientOrder;
      ParamByName('дата_выхода').Value := edtDateOut.Date;
      ParamByName('код_страны').Value := IDCountryOrder;
      ParamByName('статус_менеджер').Value := edtStatManager.EditValue;
      ParamByName('статус_клиент').Value := edtStatClient.EditValue;
      ParamByName('закрыт').Value := false;
      if edtManager.Text <> '' then
        ParamByName('код_менеджера').Value := edtManager.EditValue;
      ParamByName('номер').Value := edtNum.Text;
      ExecSQL;
    end;
    FrameSave1.btnSaveClick(Sender);
    Close;
    Application.CreateForm(TfNewAucOrder, fNewAucOrder);
    fNewAucOrder.S_IdOrder := idOrder;
    fNewAucOrder.ShowStatsNewAuc(edtStatClient.EditValue,
      edtStatManager.EditValue);
    fNewAucOrder.Show;
  end
  else
  begin
    Application.MessageBox('Не заполнены обязательные поля','Ошибка',MB_OK+MB_ICONERROR);
    if (edtClient.Text='') then


  end;
end;

procedure TfNewAucOrderBody.ShowDict(id_locate_user: Integer = 0;
  id_locate_stat_manager: Integer = 0; id_locate_manager: Integer = 0);
var
  QueryStatClient: TUniQuery;
  DataSourceStatClient: TDataSource;
  QueryStatManager: TUniQuery;
  DataSourceStatManager: TDataSource;
  QueryManager: TUniQuery;
  DataSourceManager: TDataSource;
begin
  QueryStatClient := TUniQuery.Create(nil);
  QueryStatClient.Connection := DM1.dbUpd;
  DataSourceStatClient := TDataSource.Create(nil);
  DataSourceStatClient.DataSet := QueryStatClient;
  with QueryStatClient do
  begin
    Close;
    sql.Text := 'select * from "аукцион"."СтатусКлиент"';
    Open;
    edtStatClient.Properties.ListSource := DataSourceStatClient;
    if id_locate_user = 0 then
      edtStatClient.EditValue := fields[0].AsInteger;
  end;
  QueryStatManager := TUniQuery.Create(nil);
  QueryStatManager.Connection := DM1.dbUpd;
  DataSourceStatManager := TDataSource.Create(nil);
  DataSourceStatManager.DataSet := QueryStatManager;
  with QueryStatManager do
  begin
    Close;
    sql.Text := 'select * from "аукцион"."СтатусМенеджер"';
    Open;
    edtStatManager.Properties.ListSource := DataSourceStatManager;
    if id_locate_stat_manager = 0 then
      edtStatManager.EditValue := fields[0].AsInteger;
  end;
  QueryManager := TUniQuery.Create(nil);
  QueryManager.Connection := DM1.dbUpd;
  DataSourceManager := TDataSource.Create(nil);
  DataSourceManager.DataSet := QueryManager;
  with QueryManager do
  begin
    Close;
    sql.Text := 'select * from "пользователи"."пользователи" where код_роли=9';
    Open;
    edtManager.Properties.ListSource := DataSourceManager;
    // if id_locate_user = 0 then
    // edtManager.EditValue := fields[0].AsInteger;
  end;
end;

procedure TfNewAucOrderBody.Validate;
begin
  // TODO -cMM: TfNewAucOrder.Validate default body inserted
end;

end.
