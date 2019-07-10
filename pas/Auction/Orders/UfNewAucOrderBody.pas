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
    FrameSave1 : TFrameSave;
    lbl1 : TcxLabel;
    edtNum : TcxTextEdit;
    lbl2 : TcxLabel;
    edtDateOut : TsDateEdit;
    cxLabel1 : TcxLabel;
    edtClient : TcxButtonEdit;
    Query1 : TUniQuery;
    dsAucOrder : TDataSource;
    edtMarking : TcxButtonEdit;
    lbl3 : TcxLabel;
    edtCountry : TcxButtonEdit;
    cxLabel2 : TcxLabel;
    edtStatClient : TcxLookupComboBox;
    cxLabel3 : TcxLabel;
    edtStatManager : TcxLookupComboBox;
    cxLabel4 : TcxLabel;
    chkClose : TcxCheckBox;
    cxLabel5 : TcxLabel;
    edtManager : TcxLookupComboBox;
    procedure FormShow(Sender : TObject);
    procedure edtMarkingPropertiesButtonClick(Sender : TObject;
                                                 AButtonIndex : Integer);
    procedure edtClientPropertiesButtonClick(Sender : TObject;
                                                AButtonIndex : Integer);
    procedure edtCountryPropertiesButtonClick(Sender : TObject;
                                                 AButtonIndex : Integer);
    procedure FrameSave1btnSaveClick(Sender : TObject);
  private
    { Private declarations }
  public
    IdClientOrder, IDMarkingOrder, IDCountryOrder : Integer;
    idOrder : Integer;
    procedure DetectOneMarking;
    procedure ShowDict(id_locate_user : Integer = 0;
                          id_locate_stat_manager : Integer = 0; id_locate_manager : Integer = 0);
    procedure Validate;
    { Public declarations }
  end;

var
  fNewAucOrderBody : TfNewAucOrderBody;
implementation
{$R *.dfm}

uses USelectClient, ULogin, USelect, UDataModule1, UfNewAucOrder, PGSQL;
procedure TfNewAucOrderBody.DetectOneMarking;
begin
  with Query1 do
  begin
    Close;
    sql.Text := 'select * from "����������"."����������" where ���_�������=' +
  IntToStr(IdClientOrder);
    Open;
    if RecordCount = 1 then
    begin
      edtMarking.Text := FieldByName('name').AsString;
      IDMarkingOrder := FieldByName('id').AsInteger;
    end;
  end;
end;
procedure TfNewAucOrderBody.edtClientPropertiesButtonClick(Sender : TObject;
                                                              AButtonIndex : Integer);
begin
  Application.CreateForm(TFSelect, FSelect);
  with FSelect do
  begin
    ShowSelect('"�����������"."�������"', 'where �_�����������=true', false);
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
procedure TfNewAucOrderBody.edtCountryPropertiesButtonClick(Sender : TObject;
                                                               AButtonIndex : Integer);
begin
  Application.CreateForm(TFSelect, FSelect);
  with FSelect do
  begin
    ShowSelect('"���������"."������"', '', false);
    ShowModal;
    if FrameTopPanel1.id_select = true then
    begin
      edtCountry.Text := QuerySelect.FieldByName('name').AsString;
      IDCountryOrder := QuerySelect.FieldByName('id').AsInteger;
    end;
  end;
end;
procedure TfNewAucOrderBody.edtMarkingPropertiesButtonClick(Sender : TObject;
                                                               AButtonIndex : Integer);
begin
  Application.CreateForm(TFSelect, FSelect);
  with FSelect do
  begin
    ShowSelect('"����������"."����������"', 'where ���_�������=' +
    IntToStr(IdClientOrder), false);
    ShowModal;
    if FrameTopPanel1.id_select = true then
    begin
      edtMarking.Text := QuerySelect.FieldByName('name').AsString;
      IDMarkingOrder := QuerySelect.FieldByName('id').AsInteger;
    end;
  end;
end;
procedure TfNewAucOrderBody.FormShow(Sender : TObject);
begin
  edtDateOut.MinDate := now;
  with Query1 do
  begin
    Close;
    sql.Text := 'select * from "���������"."������" where "code"=:c';
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
procedure TfNewAucOrderBody.FrameSave1btnSaveClick(Sender : TObject);
begin
  if edtDateOut.Date < now then
  begin
    Application.MessageBox('���� ������ �� ����� ���� ������ ������� ����.',
                            '������', MB_OK + MB_ICONERROR);
    edtDateOut.SetFocus;
    edtDateOut.SelectAll;
    Abort;
  end;
  if (edtClient.Text <> '') and (edtDateOut.Text <> '  .  .    ') and
  (edtMarking.Text <> '') then
  begin
    with Query1 do
    begin
      idOrder := PGSQL.NewID('"�������"."���������_id_seq"');
      Close;
      sql.Clear;
      sql.Add(' INSERT INTO');
      sql.Add(' "�������"."���������"');
      sql.Add(' (');
      sql.Add(' id,');
      sql.Add(' "����_������",');
      sql.Add(' "���_����������",');
      sql.Add(' "���_�������",');
      sql.Add(' "����_������",');
      sql.Add(' "���_������",');
      sql.Add(' "������_��������",');
      sql.Add(' "������_������",');
      sql.Add(' "������",');
      sql.Add(' "���_���������",');
      sql.Add(' "�����"');
      sql.Add(' )');
      sql.Add(' VALUES (');
      sql.Add(' :id,');
      sql.Add(' :����_������,');
      sql.Add(' :���_����������,');
      sql.Add(' :���_�������,');
      sql.Add(' :����_������,');
      sql.Add(' :���_������,');
      sql.Add(' :������_��������,');
      sql.Add(' :������_������,');
      sql.Add(' :������,');
      sql.Add(' :���_���������,');
      sql.Add(' :�����');
      sql.Add(' );');
      ParamByName('id').Value := idOrder;
      ParamByName('����_������').Value := now;
      ParamByName('���_����������').Value := IDMarkingOrder;
      ParamByName('���_�������').Value := IdClientOrder;
      ParamByName('����_������').Value := edtDateOut.Date;
      ParamByName('���_������').Value := IDCountryOrder;
      ParamByName('������_��������').Value := edtStatManager.EditValue;
      ParamByName('������_������').Value := edtStatClient.EditValue;
      ParamByName('������').Value := false;
      if edtManager.Text <> '' then
        ParamByName('���_���������').Value := edtManager.EditValue;
      ParamByName('�����').Value := edtNum.Text;
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
    Application.MessageBox('�� ��������� ������������ ����', '������', MB_OK + MB_ICONERROR);
    if (edtClient.Text = '') then
  end;
end;
procedure TfNewAucOrderBody.ShowDict(id_locate_user : Integer = 0;
                                        id_locate_stat_manager : Integer = 0; id_locate_manager : Integer = 0);
var
  QueryStatClient : TUniQuery;
  DataSourceStatClient : TDataSource;
  QueryStatManager : TUniQuery;
  DataSourceStatManager : TDataSource;
  QueryManager : TUniQuery;
  DataSourceManager : TDataSource;
begin
  QueryStatClient := TUniQuery.Create(nil);
  QueryStatClient.Connection := DM1.dbUpd;
  DataSourceStatClient := TDataSource.Create(nil);
  DataSourceStatClient.DataSet := QueryStatClient;
  with QueryStatClient do
  begin
    Close;
    sql.Text := 'select * from "�������"."������������"';
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
    sql.Text := 'select * from "�������"."��������������"';
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
    sql.Text := 'select * from "������������"."������������" where ���_����=9';
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
