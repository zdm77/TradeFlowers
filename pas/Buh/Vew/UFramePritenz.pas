unit UFramePritenz;
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
  cxNavigator,
  Data.DB,
  cxDBData,
  cxCurrencyEdit,
  cxLabel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGridLevel,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  UFrameTopPanel,
  MemDS,
  DBAccess,
  Uni,
  cxGridExportLink,
  shellapi,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue, dxSkinOffice2007Blue, dxSkinsDefaultPainters;
type
  TFramePritenz = class(TFrame)
    QueryPritenz : TUniQuery;
    dsPritenz : TDataSource;
    FrameTopPanel1 : TFrameTopPanel;
    GridPritenz : TcxGrid;
    ViewAWB : TcxGridDBTableView;
    LevelOrg : TcxGridLevel;
    ViewAWB_3 : TcxGridDBColumn;
    ViewAWBname : TcxGridDBColumn;
    ViewAWB_6 : TcxGridDBColumn;
    ViewAWB_7 : TcxGridDBColumn;
    ViewAWB__ : TcxGridDBColumn;
    ViewAWB_8 : TcxGridDBColumn;
    ColumnPlant : TcxGridDBColumn;
    Query1 : TUniQuery;
    ColumnНомер : TcxGridDBColumn;
    procedure btnExportClick(Sender : TObject);
    procedure btnEditClick(Sender : TObject);
    procedure ViewAWBDblClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure btnRefreshClick(Sender : TObject);
    procedure FrameTopPanel1btnArchPropertiesEditValueChanged(Sender : TObject);
  private
    { Private declarations }
  public
    procedure ShowPritenz(id_locate : Integer = 0);
    procedure UpdatePritenz(id_del : Boolean = False);
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  UPasswd,
  UFEditPitenz;
procedure TFramePritenz.btnDelClick(Sender : TObject);
begin
  if (QueryPritenz.FieldByName('статус_притензии').AsString <> 'ok') then
  begin
    if Application.MessageBox('Вы действительно хотите удалить притенцию?',
                               'Вопрос.', MB_YESNO + MB_ICONQUESTION) = mrYes then
    begin
      UpdatePritenz(true);
    end;
  end
  else
  begin
    Application.MessageBox
      ('С данным статусом удаление и редактирование запрещено. Обратесь к админстратору.',
        'Ошибка', MB_OK + MB_ICONERROR);
  end;
end;
procedure TFramePritenz.btnEditClick(Sender : TObject);
begin
  if QueryPritenz.RecordCount > 0 then
  begin
    Application.CreateForm(TFEditPritenz, FEditPritenz);
    with FEditPritenz do
    begin
      with FramePretenzEdit1 do
      begin
        s_id_manager := QueryPritenz.FieldByName('код_менеджера_притензии')
      .AsInteger;
        s_marking := QueryPritenz.FieldByName('name').AsString;
        s_user := QueryPritenz.FieldByName('u_name').AsString;
        s_date_fly := QueryPritenz.FieldByName('дата_вылета').AsString;
        s_num_awb := QueryPritenz.FieldByName('номер_awb').AsString;
        s_plant := QueryPritenz.FieldByName('name_plant').AsString;
        s_numFact := QueryPritenz.FieldByName('номер_фактуры').AsString;
        s_manager := QueryPritenz.FieldByName('u_name').AsString;
        if QueryPritenz.FieldByName('photo1').AsString <> '' then
          edtphoto1.Text := QueryPritenz.FieldByName('photo1').AsString;
        if QueryPritenz.FieldByName('photo2').AsString <> '' then
          edtphoto2.Text := QueryPritenz.FieldByName('photo2').AsString;
        if QueryPritenz.FieldByName('photo3').AsString <> '' then
          edtphoto3.Text := QueryPritenz.FieldByName('photo3').AsString;
        s_date := QueryPritenz.FieldByName('дата_притензии').AsString;
        edtNum.Text := QueryPritenz.FieldByName('номер_притензии').AsString;
        edtDatePrit.Date := QueryPritenz.FieldByName('дата_притензии')
      .AsDateTime;
        edtСуммаПретензии.Text := QueryPritenz.FieldByName
        ('сумма_притензии').AsString;
        edtSumGoodPrit.Text := QueryPritenz.FieldByName
        ('одобренная_сумма_притензии').AsString;
        mmoПритензияРус.Text := QueryPritenz.FieldByName
        ('текст_притензии_рус').AsString;
        mmoПритензияИсп.Text := QueryPritenz.FieldByName
        ('текст_притензии_исп').AsString;
        mmoОдобреннаяСумма.Text := QueryPritenz.FieldByName
        ('текст_одобренной_суммы').AsString;
        if QueryPritenz.FieldByName('статус_притензии').AsString = 'ok' then
        begin
          chkExePrit.Checked := true;
          if FPasswd.ID_ROLE <> 1 then
          begin
            edtDatePrit.Enabled := False;
            edtСуммаПретензии.Enabled := False;
            edtSumGoodPrit.Enabled := False;
            chkExePrit.Enabled := False;
            mmoПритензияРус.Enabled := False;
            mmoПритензияИсп.Enabled := False;
            mmoОдобреннаяСумма.Enabled := False;
          end;
        end;
        s_id_sub_awb := QueryPritenz.FieldByName('id').AsInteger;
        s_id_plant := QueryPritenz.FieldByName('код_плантации').AsInteger;
        ShowProductsW;
        ShowManager;
        ShowSostav();
        ShowModal;
        if FrameSave1.id_save = true then
        begin
          UpdatePritenz();
        end;
      end;
    end;
  end;
end;
procedure TFramePritenz.btnExportClick(Sender : TObject);
var
  s : string;
begin
  s := FPasswd.GetVar('TEMP') + '\Притензии';
  ExportGridToExcel(s, GridPritenz, true, true, true, 'xls');
  ShellExecute(Handle, nil, PChar(s + '.xls'), nil, nil, SW_RESTORE);
end;
procedure TFramePritenz.btnRefreshClick(Sender : TObject);
begin
  ShowPritenz(QueryPritenz.FieldByName('id').AsInteger);
end;
procedure TFramePritenz.FrameTopPanel1btnArchPropertiesEditValueChanged
  (Sender : TObject);
begin
  ShowPritenz();
end;
procedure TFramePritenz.ShowPritenz(id_locate : Integer = 0);
begin
{$REGION 'MyRegion'}
  with QueryPritenz do
  begin
    // SQL.Clear;
    // SQL.Add(' SELECT sum(sp."цена" * sp."стеблей" + sp."стоимость_транспорта")');
    // SQL.Add(' "сумма_притензии",');
    // SQL.Add(' a.id id_awb,');
    // SQL.Add(' a.номер_awb,');
    // SQL.Add(' sad.id,');
    // SQL.Add(' sa.id sa_id,');
    // SQL.Add(' sa."код_маркировки",');
    // SQL.Add(' sad."дата_фактуры",');
    // SQL.Add(' sad."номер_фактуры",');
    // SQL.Add(' sad."сумма_фактуры",');
    // SQL.Add(' a.дата_вылета,');
    // SQL.Add(' m.name,');
    // SQL.Add(' sad."дата_притензии",');
    // SQL.Add(' sad."одобренная_сумма_притензии",');
    // SQL.Add(' sad."статус_притензии",');
    // SQL.Add(' pl.name name_plant,');
    // SQL.Add(' sad."код_плантации",');
    // SQL.Add(' sad."текст_притензии_исп",');
    // SQL.Add(' sad."текст_притензии_рус",');
    // SQL.Add(' sad."текст_одобренной_суммы",');
    // SQL.Add(' sad."номер_притензии",');
    // SQL.Add(' u.name as u_name,');
    // SQL.Add(' sad.код_менеджера_притензии,');
    // SQL.Add(' sad.photo1,');
    // SQL.Add(' sad.photo2,');
    // SQL.Add(' sad.photo3');
    // SQL.Add(' FROM "бух".sub_awb_detail sad');
    // SQL.Add(' INNER JOIN "бух".sub_awb sa ON (sad."код_sub_awb" = sa.id)');
    // SQL.Add(' INNER JOIN "бух".awb a ON (sa."код_AWB" = a.id)');
    // SQL.Add(' INNER JOIN "маркировки"."маркировки" m ON (sa."код_маркировки" = m.id)');
    // SQL.Add(' inner join "продукция"."плантации" pl on (pl.id = sad."код_плантации")');
    // SQL.Add(' left join "пользователи"."пользователи" u on (u.id =');
    // SQL.Add(' sad."код_менеджера_притензии")');
    // SQL.Add(' left join "бух"."состав_претензии" sp on sp."код_sub_awb_detail" = sad.id');
    // SQL.Add(' where sad."дата_притензии" is not null');
    // SQL.Add(' group by a.id,');
    // SQL.Add(' a.номер_awb,');
    // SQL.Add(' sad.id,');
    // SQL.Add(' sa.id,');
    // SQL.Add(' sa."код_маркировки",');
    // SQL.Add(' sad."дата_фактуры",');
    // SQL.Add(' sad."номер_фактуры",');
    // SQL.Add(' sad."сумма_фактуры",');
    // SQL.Add(' a.дата_вылета,');
    // SQL.Add(' m.name,');
    // SQL.Add(' sad."дата_притензии",');
    // SQL.Add(' sad."сумма_притензии",');
    // SQL.Add(' sad."одобренная_сумма_притензии",');
    // SQL.Add(' sad."статус_притензии",');
    // SQL.Add(' pl.name,');
    // SQL.Add(' sad."код_плантации",');
    // SQL.Add(' sad."текст_притензии_исп",');
    // SQL.Add(' sad."текст_притензии_рус",');
    // SQL.Add(' sad."текст_одобренной_суммы",');
    // SQL.Add(' sad."номер_притензии",');
    // SQL.Add(' u.name,');
    // SQL.Add(' sad.код_менеджера_притензии,');
    // SQL.Add(' sad.photo1,');
    // SQL.Add(' sad.photo2,');
    // SQL.Add(' sad.photo3');
    SQL.Clear;
    SQL.Add(' SELECT a.id id_awb, a.номер_awb,');
    SQL.Add(' sad.id,');
    SQL.Add(' sa.id sa_id,');
    SQL.Add(' sa."код_маркировки",');
    SQL.Add(' sad."дата_фактуры",');
    SQL.Add(' sad."номер_фактуры",');
    SQL.Add(' sad."сумма_фактуры", a.дата_вылета,');
    SQL.Add(' m.name,');
    SQL.Add(' sad."дата_притензии",');
    SQL.Add(' sad."сумма_притензии",');
    SQL.Add(' sad."одобренная_сумма_притензии",');
    SQL.Add(' sad."статус_притензии",');
    SQL.Add(' pl.name name_plant, sad."код_плантации",');
    SQL.Add('  sad."текст_притензии_исп",');
    SQL.Add(' sad."текст_притензии_рус",');
    SQL.Add(' sad."текст_одобренной_суммы",');
    SQL.Add(' sad."номер_притензии", u.name as u_name, sad.код_менеджера_притензии,');
    SQL.Add(' sad.photo1, sad.photo2, sad.photo3');
    SQL.Add(' FROM "бух".sub_awb_detail sad');
    SQL.Add(' INNER JOIN "бух".sub_awb sa ON (sad."код_sub_awb" = sa.id)');
    SQL.Add(' INNER JOIN "бух".awb a ON (sa."код_AWB" = a.id)');
    SQL.Add(' INNER JOIN "маркировки"."маркировки" m ON (sa."код_маркировки" = m.id)');
    SQL.Add(' inner join "продукция"."плантации" pl on (pl.id = sad."код_плантации")');
    SQL.Add(' left join "пользователи"."пользователи" u on (u.id = sad."код_менеджера_притензии")');
    SQL.Add(' where sad."дата_притензии" is not null ');
    if FrameTopPanel1.btnArch.EditValue = true then
      SQL.Add(' and a."архив_awb"=1')
    else
      SQL.Add(' and a."архив_awb"=0');
    SQL.Add(' order by дата_притензии DESC');
    Open;
    Locate('id', id_locate, []);
  end;
{$ENDREGION};
end;
procedure TFramePritenz.UpdatePritenz(id_del : Boolean = False);
begin
  with FEditPritenz do
  begin
    with FramePretenzEdit1 do
    begin
      with Query1 do
      begin
        SQL.Clear;
        SQL.Add(' UPDATE "бух"."sub_awb_detail"');
        SQL.Add(' SET "дата_притензии" = :дата_притензии,');
        SQL.Add(' "сумма_притензии" = :сумма_притензии,');
        SQL.Add(' "номер_притензии" = :номер_притензии,');
        SQL.Add(' "одобренная_сумма_притензии" = :одобренная_сумма_притензии,');
        SQL.Add(' "статус_притензии" = :статус_притензии,');
        SQL.Add(' "текст_притензии_рус" = :текст_притензии_рус,');
        SQL.Add(' "текст_притензии_исп" = :текст_притензии_исп,');
        SQL.Add(' "текст_одобренной_суммы" = :текст_одобренной_суммы,');
        if edtManager.Text <> '' then
          SQL.Add(' "код_менеджера_притензии" = :код_менеджера_притензии');
        if edtphoto1.Text <> '' then
          SQL.Add(' ,"photo1" = :photo1');
        if edtphoto2.Text <> '' then
          SQL.Add(', "photo2" = :photo2');
        if edtphoto3.Text <> '' then
          SQL.Add(', "photo3" = :photo3');
        SQL.Add(' WHERE id = :id');
        if id_del = False then
        begin
          if chkExePrit.Checked = true then
            ParamByName('статус_притензии').AsString := 'ok';
          ParamByName('дата_притензии').AsDate := edtDatePrit.DateTime;
          ParamByName('сумма_притензии').AsString := edtСуммаПретензии.Text;
          ParamByName('одобренная_сумма_притензии').AsString :=
                                                               edtSumGoodPrit.Text;
          ParamByName('текст_притензии_рус').AsString := mmoПритензияРус.Text;
          ParamByName('текст_притензии_исп').AsString := mmoПритензияИсп.Text;
          ParamByName('текст_одобренной_суммы').AsString :=
                                                           mmoОдобреннаяСумма.Text;
          ParamByName('номер_притензии').AsString := edtNum.Text;
          if edtManager.Text <> '' then
            ParamByName('код_менеджера_притензии').AsInteger :=
                                                               edtManager.EditValue;
          if edtphoto1.Text <> '' then
            ParamByName('photo1').AsString := edtphoto1.Text;
          if edtphoto2.Text <> '' then
            ParamByName('photo2').AsString := edtphoto2.Text;
          if edtphoto3.Text <> '' then
            ParamByName('photo3').AsString := edtphoto3.Text;
        end;
        ParamByName('id').AsInteger := QueryPritenz.FieldByName('id').AsInteger;
        ExecSQL;
      end;
      ShowPritenz(QueryPritenz.FieldByName('id').AsInteger);
    end;
  end;
end;
procedure TFramePritenz.ViewAWBDblClick(Sender : TObject);
begin
  btnEditClick(Sender);
end;
end.
