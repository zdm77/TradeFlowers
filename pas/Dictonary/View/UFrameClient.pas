unit UFrameClient;

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
  MemDS,
  DBAccess,
  Uni,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  UFrameTopPanel,
  cxContainer,
  cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  Vcl.StdCtrls,
  cxGroupBox,
  cxNavigator,
  cxCheckBox,
  cxCurrencyEdit,
  frxClass,
  cxButtonEdit,
  cxDBEdit,

  dxSkinDevExpressStyle,

   dxSkinsDefaultPainters, dxSkinOffice2007Blue;

type
  TFrameClient = class(TFrame)
    FrameTopPanel1: TFrameTopPanel;
    GridStatWork: TcxGrid;
    ViewStatWork: TcxGridDBTableView;
    ColumnName: TcxGridDBColumn;
    LevelStatWork: TcxGridLevel;
    Query1: TUniQuery;
    QueryOrg: TUniQuery;
    dsOrg: TDataSource;
    Group1: TcxGroupBox;
    lbl1: TLabel;
    edtOrg: TcxLookupComboBox;
    QueryClient: TUniQuery;
    dsClient: TDataSource;
    ColumnPhone: TcxGridDBColumn;
    ColumnStat: TcxGridDBColumn;
    ColumnManager: TcxGridDBColumn;
    chkDel: TcxCheckBox;
    Style1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    ColumnDel: TcxGridDBColumn;
    Report1: TfrxReport;
    ColumnMark: TcxGridDBColumn;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure edtOrgPropertiesEditValueChanged(Sender: TObject);
    procedure QueryClientAfterFetch(DataSet: TCustomDADataSet);
    procedure QueryClientBeforeFetch(DataSet: TCustomDADataSet;
      var Cancel: Boolean);
    procedure QueryOrgBeforeFetch(DataSet: TCustomDADataSet;
      var Cancel: Boolean);
    procedure ViewStatWorkDblClick(Sender: TObject);
    procedure chkDelClick(Sender: TObject);
    procedure ViewStatWorkStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure btnRestClick(Sender: TObject);
    procedure btnReportClientsClick(Sender: TObject);
    procedure cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private
    { Private declarations }

  public
    s_id_type: string;
    procedure ShowClients(id_locate: Integer = 0);
    procedure ShowOrg;
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  UPasswd,
  UNewClient,
  USplash,
  UDialogMy,
  UDataModule1,
  UReport,
  UReportClients,
  USelectSort;

procedure TFrameClient.btnAddClick(Sender: TObject);
begin
  Application.CreateForm(TFNewClient, FNewClient);
  with FNewClient do
  begin
    SetLang;
    s_id_type_for_edit := StrToInt(s_id_type);
    s_id_org := edtOrg.EditValue;
    ShowManager(FPasswd.ID_USER);
    ShowStat;
    ShowModal;
    if FrameSave1.id_save = true then
      ShowClients(QueryClient.FieldByName('id').AsInteger);
  end;
end;

procedure TFrameClient.btnDelClick(Sender: TObject);
begin
  if QueryClient.FieldByName('скрыт').AsInteger = 0 then
  begin
    case FPasswd.edtLang.ItemIndex of
      0:
        QuestionDialog('Удаление', 'Вы действительно хотите удалить позицию?');
      1:
        QuestionDialog('Removal', 'You really want to remove a position? ');
      2:
        QuestionDialog('Desaparición', 'Queréis quitar realmente la posición?');
    end;
    if UDialogMy.Dlg.Execute = 100 then
    begin
      with DM1.QueryUpd do
      begin
        Close;
        sql.Text := 'delete from "контрагенты"."клиенты" where id=' +
          QueryClient.FieldByName('id').AsString;
        try
          ExecSQL;
          QueryClient.Refresh;
        except
          case FPasswd.edtLang.ItemIndex of
            0:
              QuestionDialog('Полное удаление не возможно',
                'Вы хотите скрыть позицию?');
            1:
              QuestionDialog('Removal is impossible',
                'You want to hide a position? ');
            2:
              QuestionDialog('a desaparición es imposible',
                'Queréis esconder la posición?');
          end;
          if UDialogMy.Dlg.Execute = 100 then
          begin
            Close;
            sql.Text := 'update "контрагенты"."клиенты" set скрыт=1 where id=' +
              QueryClient.FieldByName('id').AsString;
            ExecSQL;
            Close;
            sql.Text :=
              'update "маркировки"."маркировки" set код_клиента=null where код_клиента='
              + QueryClient.FieldByName('id').AsString;
            ExecSQL;
            QueryClient.Refresh;
          end;
        end;
      end;
    end;
  end
  else
  begin
    case FPasswd.edtLang.ItemIndex of
      0:
        ErrorDialog
          ('Скрытую позицию резрешено только восстанавливать. ', '', '');
      1:
        ErrorDialog('Rezresheno only to restore the hidden position.', '', '');
      2:
        ErrorDialog
          ('La posición escondida резрешено restablecer solamente.', '', '');
    end;
  end;
end;

procedure TFrameClient.btnEditClick(Sender: TObject);
begin
  Application.CreateForm(TFNewClient, FNewClient);
  with FNewClient do
  begin
    s_date := QueryClient.FieldByName('дата').AsString;
    s_id_type_for_edit := StrToInt(s_id_type);
    s_id_org := edtOrg.EditValue;
    // s_id_client := QueryClient.FieldByName('id').AsInteger;
    setClient(QueryClient);
    ShowManager(QueryClient.FieldByName('id_manager').AsInteger);
    ShowStat(QueryClient.FieldByName('id_stat').AsInteger);
    edtName.Text := QueryClient.FieldByName('name').AsString;
    mmoAdress.Text := QueryClient.FieldByName('адрес').AsString;
    mmoComent.Text := QueryClient.FieldByName('комментарий').AsString;
    edtEmail.Text := QueryClient.FieldByName('почта').AsString;
    edtPhone.Text := QueryClient.FieldByName('телефон').AsString;
    edtFAX.Text := QueryClient.FieldByName('факс').AsString;
    edtDayAlarm.Text := QueryClient.FieldByName('до_окончания').AsString;
    edtSumDolg.Text := QueryClient.FieldByName('макс_долг').AsString;
    edtSrokDolg.Text := QueryClient.FieldByName('макс_долг_дней').AsString;
    edtINN.Text := QueryClient.FieldByName('инн').AsString;
    edtOGRN.Text := QueryClient.FieldByName('огрн').AsString;
    edtOKPO.Text := QueryClient.FieldByName('окпо').AsString;
    edtInFace.Text := QueryClient.FieldByName('в_лице').AsString;
    edtSign.Text := QueryClient.FieldByName('подпись').AsString;
    edtPasportCod.Text := QueryClient.FieldByName('паспорт_серия').AsString;
    edtNumberPasport.Text := QueryClient.FieldByName('паспорт_номер').AsString;
    if QueryClient.FieldByName('дата_выдачи').AsString <> '' then
      edtDatePasport.Date := QueryClient.FieldByName('дата_выдачи').AsDateTime;
    mmoVidan.Text := QueryClient.FieldByName('кем_выдан').AsString;
    mmoUrAdres.Text := QueryClient.FieldByName('юр_адрес').AsString;
    mmoFactAdres.Text := QueryClient.FieldByName('факт_адрес').AsString;
    mmoDostavka.Text := QueryClient.FieldByName('почт_адрес').AsString;
    mmoUrName.Text := QueryClient.FieldByName('юр_имя').AsString;
    edtSkype.Text := QueryClient.FieldByName('skype').AsString;
    chkMarking.Checked := QueryClient.FieldByName('в_маркировках').AsBoolean;
    SetLang;
    idSubClient := QueryClient.FieldByName('idSubClient').AsString;
    edtLogin.Text := QueryClient.FieldByName('login').AsString;
    edtPass.Text := QueryClient.FieldByName('pass').AsString;
    edtPasswdConfirm.Text := QueryClient.FieldByName('pass').AsString;
    chkLogin.Checked := QueryClient.FieldByName('вход').Value;
    chkOstatok.Checked := QueryClient.FieldByName('остатки').Value;
    chkZakupka.Checked := QueryClient.FieldByName('закупка').Value;

    if QueryClient.FieldByName('ip').AsInteger = 1 then
      chkIP.Checked := true
    else
      chkIP.Checked := false;
    ShowModal;
    if FrameSave1.id_save = true then
      ShowClients(QueryClient.FieldByName('id').AsInteger);
  end;
end;

procedure TFrameClient.btnRefreshClick(Sender: TObject);
begin
  ShowClients(QueryClient.FieldByName('id').AsInteger);
end;

procedure TFrameClient.btnReportClientsClick(Sender: TObject);
begin
  Application.CreateForm(TFReportClients, FReportClients);
  with FReportClients do
  begin
    ShowModal;
    if id_exe = true then
    begin
      if chkStat.Checked = true then
        ОтчетКонтрагенты(1, edtOrder.ItemIndex, edtStat.EditValue)
      else
        ОтчетКонтрагенты(1, edtOrder.ItemIndex, 0);
    end;
  end;
end;

procedure TFrameClient.btnRestClick(Sender: TObject);
begin
  if QueryClient.FieldByName('скрыт').AsInteger = 1 then
  begin
    case FPasswd.edtLang.ItemIndex of
      0:
        QuestionDialog('Восстановление',
          'Вы действительно хотите восстановить позицию?');
      1:
        QuestionDialog('Restitution', 'You really want to restore a position?');
      2:
        QuestionDialog('Reconstitución',
          'Queréis restablecer realmente la posición?');
    end;
    if UDialogMy.Dlg.Execute = 100 then
    begin
      with DM1.QueryUpd do
      begin
        Close;
        sql.Text := 'update "контрагенты"."клиенты" set скрыт=0 where id=' +
          QueryClient.FieldByName('id').AsString;
        ExecSQL;
        ShowClients(QueryClient.FieldByName('id').AsInteger);
      end;
    end;
  end
  else
  begin
    case FPasswd.edtLang.ItemIndex of
      0:
        ErrorDialog('Позиция не скрыта. Восстановление не возможно.', '', '');
      1:
        ErrorDialog
          ('The position isn''t hidden. Restoration isn''t possible.', '', '');
      2:
        ErrorDialog
          ('La posición no es escondida. La reconstitución no es posible.', '',
          '');
    end;
  end;
end;

procedure TFrameClient.chkDelClick(Sender: TObject);
begin
  FrameTopPanel1.btnRest.Enabled := chkDel.Checked;
  ShowClients(QueryClient.FieldByName('id').AsInteger);
end;

procedure TFrameClient.cxDBButtonEdit1PropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.CreateForm(TFSelectSort, FSelectSort);
  with FSelectSort do
  begin
    ShowModal;
  end;
end;

procedure TFrameClient.edtOrgPropertiesEditValueChanged(Sender: TObject);
begin
  ShowClients();
end;

procedure TFrameClient.QueryClientAfterFetch(DataSet: TCustomDADataSet);
begin
  FSplash.Close;
end;

procedure TFrameClient.QueryClientBeforeFetch(DataSet: TCustomDADataSet;
  var Cancel: Boolean);
begin
  FSplash.Show;
  FSplash.Update;
end;

procedure TFrameClient.QueryOrgBeforeFetch(DataSet: TCustomDADataSet;
  var Cancel: Boolean);
begin
  FSplash.Show;
  FSplash.Update;
end;

procedure TFrameClient.ShowClients(id_locate: Integer = 0);
begin
  with QueryClient do
  begin
    Close;
    sql.Text :=
      'SELECT  c.*, s.id id_stat, s.name status, u.id id_manager, u.name user_name, c.скрыт  '
      + ' FROM "контрагенты"."клиенты" c' +
      '  INNER JOIN "контрагенты"."статусы" s ON (c."код_статуса_работы" = s.id)  '
      + ' LEFT OUTER JOIN "пользователи"."пользователи" u ON (c."код_пользователя" = u.id) '
      + ' where c.код_типа=' + s_id_type +
      ' and показать=true and c.код_организации=' + IntToStr(edtOrg.EditValue);
    if chkDel.Checked = false then
      sql.Add(' and c.скрыт=0');
    sql.Add('  order by name');
    // ShowMessage(sql.Text);
    Open;
    Locate('id', id_locate, []);
  end;
end;

procedure TFrameClient.ShowOrg;
begin
  with QueryOrg do
  begin
    Close;
    sql.Text :=
      'select id, name from   "организация"."организации" where id<>1 and id_del=0 '
      + ' order by name';
    Open;
    if FPasswd.ID_ORG <> 1 then
      edtOrg.EditValue := FPasswd.ID_ORG
    else
    begin
      Query1.Close;
      Query1.sql.Text :=
        'select id from "организация"."организации" where id<>1 LIMIT 1';
      Query1.Open;
      edtOrg.EditValue := Query1.fields[0].AsInteger;
    end;
  end;
end;

procedure TFrameClient.ViewStatWorkDblClick(Sender: TObject);
begin
  if FrameTopPanel1.btnEdit.Enabled = true then
    btnEditClick(Sender);
end;

procedure TFrameClient.ViewStatWorkStylesGetContentStyle
  (Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if ARecord.Values[4] = 1 then
    AStyle := cxStyle1
  else
    AStyle := cxStyle2;
end;

end.
