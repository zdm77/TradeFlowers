unit UFEditFact;

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
  
  cxGroupBox,
  UFrameSave,
  AdvEdit,
  Vcl.StdCtrls,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sTooledit,
  Data.DB,
  UFrameTopPanel,
  cxStyles,
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxNavigator,
  cxDBData,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGridLevel,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  MemDS,
  DBAccess,
  Uni,
  cxCalc,
  cxPCdxBarPopupMenu,
  cxPC,
  Vcl.ComCtrls,
  sCurrEdit,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue;

type
  TFEditFact = class(TForm)
    FrameSave1: TFrameSave;
    Group1: TcxGroupBox;
    lblDate: TLabel;
    lblNum: TLabel;
    lblSum: TLabel;
    lblFB: TLabel;
    lblBOX: TLabel;
    edtNum: TEdit;
    edtFB: TAdvEdit;
    edtBox: TAdvEdit;
    QueryOpl: TUniQuery;
    dsOpl: TDataSource;
    QueryOpl1: TUniQuery;
    Query1: TUniQuery;
    Query2: TUniQuery;
    edtDateFact: TDateTimePicker;
    GroupПретензия: TcxGroupBox;
    FrameTopPanel1: TFrameTopPanel;
    QueryПретензия: TUniQuery;
    dsПретензия: TDataSource;
    GridUsers: TcxGrid;
    ViewUsers: TcxGridDBTableView;
    LevelOrg: TcxGridLevel;
    ViewUsers_7: TcxGridDBColumn;
    ViewUsers_8: TcxGridDBColumn;
    ViewUsers__: TcxGridDBColumn;
    ViewUsers_9: TcxGridDBColumn;
    ViewUsers_10: TcxGridDBColumn;
    ColumnМенеджер: TcxGridDBColumn;
    edtSumFact: TsCalcEdit;
    procedure edtDateFactKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtFBKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtNumKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtSumOplKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrameSave1btnSaveClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure chkExePritClick(Sender: TObject);
    procedure edtBoxChange(Sender: TObject);
    procedure edtDateFactChange(Sender: TObject);
    procedure edtDateFactCloseUp(Sender: TObject);
    procedure edtDatePritChange(Sender: TObject);
    procedure edtDatePritCloseUp(Sender: TObject);
    procedure edtFBChange(Sender: TObject);
    procedure edtNumChange(Sender: TObject);
    procedure edtSumFactChange(Sender: TObject);
    procedure edtSumFactKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtSumGoodPritChange(Sender: TObject);
    procedure edtSumPritChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FrameTopPanel1btnAddClick(Sender: TObject);
    procedure FrameTopPanel1btnDelClick(Sender: TObject);
    procedure FrameTopPanel1btnEditClick(Sender: TObject);
    procedure mmoОдобреннаяСуммаChange(Sender: TObject);
    procedure mmoПритензияРусChange(Sender: TObject);
    procedure ViewAWBDblClick(Sender: TObject);
    procedure ViewUsersDblClick(Sender: TObject);
    procedure edtWeightChange(Sender: TObject);
    procedure edtWeightKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    ID_CHANGE: Boolean;
    s_id_detail: Integer;
    sum_fact: string;
    idPlant: Integer;
    procedure Access;
    procedure EdtAddПретензия;
    procedure SetLang;
    procedure ShowOpl(id_locate: Integer = 0);
    procedure ShowPretenz;
    procedure UpdateAfterOpl(s_v: Double);
    procedure UpdateOpl;
    procedure UpdatePritenz(id_del: Boolean = False);
    { Public declarations }
  end;

var
  FEditFact: TFEditFact;

implementation

{$R *.dfm}

uses
  UNewOpl,
  UFacturPlant,
  PGSQL,
  UPasswd,
  UFEditPitenz;

procedure TFEditFact.Access;
begin
  with FPasswd do
  begin
    { доступ }
    if (ID_ROLE <> 1) and (ID_ROLE <> 12) then
    begin
      // FrameTopPanel1.btnEdit.Enabled := False;
      // FrameTopPanel1.btnDel.Enabled := False;
    end;
    if (ID_ROLE <> 1) then
    begin
      with Query1 do
      begin
        { доступ }
        Close;
        sql.Text := 'select * from "пользователи"."доступ"  where код_роли=' +
          IntToStr(FPasswd.ID_ROLE);
        Open;
        // if FieldByName('бух_фактуры_редактирование').AsBoolean = False then
        // begin
        // Page1.ActivePageIndex := 1;
        // TabОплаты.Enabled := False;
        // edtDateFact.Enabled := False;
        // edtNum.Enabled := False;
        // edtSumFact.Enabled := False;
        // edtFB.Enabled := False;
        // edtBox.Enabled := False;
        // end;
        // if FieldByName('бух_притензии_просмотр').AsBoolean = False then
        // begin
        // Page1.ActivePageIndex := 0;
        // TabПритензии.Enabled := False;
        // end;
        // if (FieldByName('бух_притензии_редактирование').AsBoolean = False) or
        // (chkExePrit.Checked = true) then
        // begin
        // edtDatePrit.Enabled := False;
        // edtSumPrit.Enabled := False;
        // edtSumGoodPrit.Enabled := False;
        // chkExePrit.Enabled := False;
        // mmoПритензияРус.Enabled := False;
        // mmoПритензияИсп.Enabled := False;
        // mmoОдобреннаяСумма.Enabled := False;
        // end;
      end;
    end;
  end;
end;

procedure TFEditFact.btnAddClick(Sender: TObject);
var
  v: Double;
begin
  Application.CreateForm(TFNewOpl, FNewOpl);
  with FNewOpl do
  begin
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      // проверяем промежуточные данные
      // сумма
      with QueryOpl1 do
      begin
        if QueryOpl.Fields[0].AsString <> '' then
        begin
          // определяем предыдущий
          Close;
          sql.Text := 'select разница from "бух"."оплата"' +
            ' where код_детали_awb=' + IntToStr(s_id_detail) + ' and дата<=:d '
            + ' order by дата DESC,  ID  LIMIT 1';
          ParamByName('d').AsString := FNewOpl.edtDateOpl.Text;
          Open;
          if Fields[0].AsString <> '' then
            v := Fields[0].AsFloat + StrToFloat(FNewOpl.edtSumOpl.Text)
          else
            v := StrToFloat(FNewOpl.edtSumOpl.Text) -
              StrToFloat(edtSumFact.Text);
          Close;
          sql.Text :=
            'select * from "бух"."оплата" where дата>:d and код_детали_awb=' +
            IntToStr(s_id_detail) + ' order by дата';
          Open;
          if Fields[0].AsString <> '' then
          begin
            UpdateAfterOpl(v);
          end;
        end
        else
          v := StrToFloat(FNewOpl.edtSumOpl.Text) - StrToFloat(edtSumFact.Text);
{$REGION 'Вставка'}
        sql.Clear;
        sql.Add(' INSERT INTO');
        sql.Add(' "бух"."оплата"');
        sql.Add(' (');
        sql.Add(' "код_детали_awb",');
        sql.Add(' "дата",');
        sql.Add(' "сумма",');
        sql.Add(' "разница",номер_пп ');
        sql.Add(' )');
        sql.Add(' VALUES (');
        sql.Add(' :код_детали_awb,');
        sql.Add(' :дата,');
        sql.Add(' :сумма,');
        sql.Add(' :разница, :номер_пп');
        sql.Add(' );');
        ParamByName('код_детали_awb').AsInteger := s_id_detail;
        ParamByName('дата').AsString := FNewOpl.edtDateOpl.Text;
        ParamByName('сумма').AsString := FNewOpl.edtSumOpl.Text;
        ParamByName('номер_пп').AsString := edtNumPP.Text;
        ParamByName('разница').AsFloat := v;
        ExecSQL;
        ShowOpl();
      end;
{$ENDREGION};
    end;
  end;
end;

procedure TFEditFact.btnDelClick(Sender: TObject);
begin
  PGSQL.StandartDelete(QueryOpl.FieldByName('id').AsString, '"бух"."оплата"',
    QueryOpl, '', '', '', '');
  with QueryOpl1 do
  begin
    Close;
    sql.Text := QueryOpl.sql.Text;
    Open;
    UpdateAfterOpl(-StrToFloat(edtSumFact.Text));
    ShowOpl();
  end;
end;

procedure TFEditFact.btnEditClick(Sender: TObject);
begin
  Application.CreateForm(TFNewOpl, FNewOpl);
  with FNewOpl do
  begin
    edtSumOpl.Text := QueryOpl.FieldByName('сумма').AsString;
    edtDateOpl.Text := QueryOpl.FieldByName('дата').AsString;
    edtNumPP.Text := QueryOpl.FieldByName('номер_пп').AsString;
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      with QueryOpl1 do
      begin
        sql.Clear;
        sql.Add(' UPDATE');
        sql.Add(' "бух"."оплата"');
        sql.Add(' SET');
        sql.Add(' "дата" = :дата,');
        sql.Add(' "сумма" = :сумма,');
        sql.Add(' "номер_пп" = :номер_пп');
        sql.Add(' WHERE');
        sql.Add(' id = :id');
        ParamByName('id').AsInteger := QueryOpl.FieldByName('id').AsInteger;
        ParamByName('дата').AsString := edtDateOpl.Text;
        ParamByName('сумма').AsString := edtSumOpl.Text;
        ParamByName('номер_пп').AsString := edtNumPP.Text;
        ExecSQL;
        Close;
        sql.Text := QueryOpl.sql.Text;
        Open;
        UpdateAfterOpl(-StrToFloat(edtSumFact.Text));
        ShowOpl(QueryOpl.FieldByName('id').AsInteger);
      end;
    end;
  end;
end;

procedure TFEditFact.chkExePritClick(Sender: TObject);
begin
  ID_CHANGE := true;
end;

procedure TFEditFact.EdtAddПретензия;
begin
  Application.CreateForm(TFEditPritenz, FEditPritenz);
  with FEditPritenz do
  begin
    with FramePretenzEdit1 do
    begin
      s_id_manager := QueryПретензия.FieldByName('код_менеджера_притензии')
        .AsInteger;
      s_marking := QueryПретензия.FieldByName('name').AsString;
      s_user := QueryПретензия.FieldByName('u_name').AsString;
      s_date_fly := QueryПретензия.FieldByName('дата_вылета').AsString;
      s_num_awb := QueryПретензия.FieldByName('номер_awb').AsString;
      s_plant := QueryПретензия.FieldByName('name_plant').AsString;
      s_numFact := QueryПретензия.FieldByName('номер_фактуры').AsString;
      s_manager := QueryПретензия.FieldByName('u_name').AsString;
      if QueryПретензия.FieldByName('photo1').AsString <> '' then
        edtphoto1.Text := QueryПретензия.FieldByName('photo1').AsString;
      if QueryПретензия.FieldByName('photo2').AsString <> '' then
        edtphoto2.Text := QueryПретензия.FieldByName('photo2').AsString;
      if QueryПретензия.FieldByName('photo3').AsString <> '' then
        edtphoto3.Text := QueryПретензия.FieldByName('photo3').AsString;
      s_date := QueryПретензия.FieldByName('дата_притензии').AsString;
      edtNum.Text := QueryПретензия.FieldByName('номер_притензии').AsString;
      if QueryПретензия.FieldByName('дата_притензии').AsString <> '' then
        edtDatePrit.Date := QueryПретензия.FieldByName('дата_притензии')
          .AsDateTime
      else
        edtDatePrit.Date := Now;
      edtСуммаПретензии.Text := QueryПретензия.FieldByName
        ('сумма_притензии').AsString;
      edtSumGoodPrit.Text := QueryПретензия.FieldByName
        ('одобренная_сумма_притензии').AsString;
      mmoПритензияРус.Text := QueryПретензия.FieldByName
        ('текст_притензии_рус').AsString;
      mmoПритензияИсп.Text := QueryПретензия.FieldByName
        ('текст_притензии_исп').AsString;
      mmoОдобреннаяСумма.Text := QueryПретензия.FieldByName
        ('текст_одобренной_суммы').AsString;
      if QueryПретензия.FieldByName('статус_притензии').AsString = 'ok' then
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
      s_id_sub_awb := s_id_detail;
      s_id_plant := idPlant;
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

procedure TFEditFact.edtBoxChange(Sender: TObject);
begin
  ID_CHANGE := true;
end;

procedure TFEditFact.edtDateFactChange(Sender: TObject);
begin
  ID_CHANGE := true;
end;

procedure TFEditFact.edtDateFactCloseUp(Sender: TObject);
begin
  edtNum.SetFocus;
end;

procedure TFEditFact.edtDateFactKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    edtNum.SetFocus;
end;

procedure TFEditFact.edtDatePritChange(Sender: TObject);
begin
  ID_CHANGE := true;
end;

procedure TFEditFact.edtDatePritCloseUp(Sender: TObject);
begin
  // edtSumPrit.SetFocus;
end;

procedure TFEditFact.edtFBChange(Sender: TObject);
begin
  ID_CHANGE := true;
end;

procedure TFEditFact.edtFBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    edtBox.SetFocus;
    edtBox.SelectAll;
  end;
end;

procedure TFEditFact.edtNumChange(Sender: TObject);
begin
  ID_CHANGE := true;
end;

procedure TFEditFact.edtNumKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    edtSumFact.SetFocus;
end;

procedure TFEditFact.edtSumFactChange(Sender: TObject);
begin
  ID_CHANGE := true;
end;

procedure TFEditFact.edtSumFactKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    edtFB.SetFocus;
    edtFB.SelectAll;
  end;
end;

procedure TFEditFact.edtSumGoodPritChange(Sender: TObject);
begin
  ID_CHANGE := true;
end;

procedure TFEditFact.edtSumOplKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    edtFB.SetFocus;
end;

procedure TFEditFact.edtSumPritChange(Sender: TObject);
begin
  ID_CHANGE := true;
end;

procedure TFEditFact.edtWeightChange(Sender: TObject);
begin
  ID_CHANGE := true;
end;

procedure TFEditFact.edtWeightKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    edtFB.SetFocus;
    edtFB.SelectAll;
  end;
end;

procedure TFEditFact.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  id_upd: Boolean;
begin
  if FrameSave1.id_save = False then
  begin
    if ID_CHANGE = true then
    begin
      if Application.MessageBox('Обнаружены изменения. Сохранить?', 'Вопрос',
        MB_YESNO + MB_ICONQUESTION) = mrYes then
      begin
        id_upd := true;
      end;
    end;
  end
  else
    id_upd := true;
  if id_upd = true then
  begin
    UpdateOpl;
    if (sum_fact <> edtSumFact.Text) and (QueryOpl.Fields[0].AsString <> '')
    then
    begin
      with QueryOpl1 do
      begin
        Close;
        sql.Text := QueryOpl.sql.Text;
        Open;
        UpdateAfterOpl(-StrToFloat(edtSumFact.Text));
      end;
    end;
  end;
  FrameSave1.id_save := id_upd;
end;

procedure TFEditFact.FormShow(Sender: TObject);
begin
  SetLang;
  // Page1.ActivePageIndex := 0;
  sum_fact := edtSumFact.Text;
  Access;
  // ShowMessage(IntToStr(s_id_detail));
end;

procedure TFEditFact.FrameSave1btnSaveClick(Sender: TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  Close;
end;

procedure TFEditFact.FrameTopPanel1btnAddClick(Sender: TObject);
begin
  EdtAddПретензия;
end;

procedure TFEditFact.FrameTopPanel1btnDelClick(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите удалить претензию?',
    'Вопрос', MB_YESNO + MB_ICONQUESTION) = mrYes then
  begin
    UpdatePritenz(true);
  end;
end;

procedure TFEditFact.FrameTopPanel1btnEditClick(Sender: TObject);
begin
  EdtAddПретензия;
end;

procedure TFEditFact.mmoОдобреннаяСуммаChange(Sender: TObject);
begin
  ID_CHANGE := true;
end;

procedure TFEditFact.mmoПритензияРусChange(Sender: TObject);
begin
  ID_CHANGE := true;
end;

procedure TFEditFact.SetLang;
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
        Caption := 'La factura de la plantación';
        FrameSave1.SetLang;
        lblDate.Caption := 'La fecha';
        lblNum.Caption := 'El número';
        lblSum.Caption := 'La suma de factura';
        lblFB.Caption := 'FB';
        lblBOX.Caption := 'De las cajas';
        // lblДатаПритензии.Caption := 'La fecha';
        // lblСуммаПритензии.Caption := 'La suma de reclamación';
        // lblОдобреннаяСумма.Caption := 'La suma aprobada';
        // lblОписаниеРус.Caption := 'La descripción de la reclamación en ruso';
        // lblОписаниеИсп.Caption := 'La descripción de la reclamación en español';
        // lblОписаниеСуммы.Caption := 'La descripción de la suma aprobada';
        // chkExePrit.Caption := 'La realización definitiva de la reclamación';
        GroupПретензия.Caption := 'La reclamación';
      end;
  end;
  FrameTopPanel1.SetLang;
end;

procedure TFEditFact.ShowOpl(id_locate: Integer = 0);
begin
  with QueryOpl do
  begin
    sql.Clear;
    sql.Add(' SELECT');
    sql.Add(' id,');
    sql.Add(' "код_детали_awb",');
    sql.Add(' "дата",');
    sql.Add(' "сумма",');
    sql.Add(' "разница", номер_пп');
    sql.Add(' FROM');
    sql.Add(' "бух"."оплата"');
    sql.Add(' where код_детали_awb=' + IntToStr(s_id_detail));
    sql.Add(' order by дата, id');
    Open;
    Locate('id', id_locate, []);
  end;
end;

procedure TFEditFact.ShowPretenz;
begin
  with QueryПретензия do
  begin
    sql.Clear;
    sql.Add(' SELECT a.id id_awb, a.номер_awb,');
    sql.Add(' sad.id,');
    sql.Add(' sa.id sa_id,');
    sql.Add(' sa."код_маркировки",');
    sql.Add(' sad."дата_фактуры",');
    sql.Add(' sad."номер_фактуры",');
    sql.Add(' sad."сумма_фактуры", a.дата_вылета,');
    sql.Add(' m.name,');
    sql.Add(' sad."дата_притензии",');
    sql.Add(' sad."сумма_притензии",');
    sql.Add(' sad."одобренная_сумма_притензии",');
    sql.Add(' sad."статус_притензии",');
    sql.Add(' pl.name name_plant, sad."код_плантации",');
    sql.Add('  sad."текст_притензии_исп",');
    sql.Add(' sad."текст_притензии_рус",');
    sql.Add(' sad."текст_одобренной_суммы",');
    sql.Add(' sad."номер_притензии", u.name as u_name, sad.код_менеджера_притензии,');
    sql.Add(' sad.photo1, sad.photo2, sad.photo3');
    sql.Add(' FROM "бух".sub_awb_detail sad');
    sql.Add(' INNER JOIN "бух".sub_awb sa ON (sad."код_sub_awb" = sa.id)');
    sql.Add(' INNER JOIN "бух".awb a ON (sa."код_AWB" = a.id)');
    sql.Add(' INNER JOIN "маркировки"."маркировки" m ON (sa."код_маркировки" = m.id)');
    sql.Add(' inner join "продукция"."плантации" pl on (pl.id = sad."код_плантации")');
    sql.Add(' left join "пользователи"."пользователи" u on (u.id = sad."код_менеджера_притензии")');
    sql.Add(' where sad."дата_притензии" is not null ');
    sql.Add(' and sad.id=' + IntToStr(s_id_detail));
    Open;
    if Fields[0].AsString = '' then
    begin
      FrameTopPanel1.btnAdd.Enabled := true;
      FrameTopPanel1.btnDel.Enabled := False;
      FrameTopPanel1.btnEdit.Enabled := False;
    end
    else
    begin
      FrameTopPanel1.btnAdd.Enabled := False;
      FrameTopPanel1.btnDel.Enabled := true;
      FrameTopPanel1.btnEdit.Enabled := true;
    end;
  end;
end;

procedure TFEditFact.UpdateAfterOpl(s_v: Double);
begin
  // with Query1 do
  // begin
  // Close;
  // sql.Text := 'update "бух"."оплата" set разница=:разница where id=:id';
  // while not QueryOpl1.Eof do
  // begin
  // s_v := s_v + QueryOpl1.FieldByName('сумма').AsFloat;
  // Close;
  // ParamByName('разница').AsFloat := s_v;
  // ParamByName('id').AsInteger := QueryOpl1.FieldByName('id').AsInteger;
  // ExecSQL;
  // QueryOpl1.Next;
  // end;
  // end;
end;

procedure TFEditFact.UpdateOpl;
begin
{$REGION 'Обновляем данные'}
  with QueryOpl1 do
  begin
    sql.Clear;
    sql.Add(' UPDATE');
    sql.Add(' "бух"."sub_awb_detail"');
    sql.Add(' SET');
    sql.Add(' "дата_фактуры" = :дата_фактуры,');
    sql.Add(' "номер_фактуры" = :номер_фактуры,');
    sql.Add(' "сумма_фактуры" = :сумма_фактуры,');
    sql.Add(' "дата_оплаты" = :дата_оплаты,');
    sql.Add(' "сумма_оплаты" = :сумма_оплаты,');
    sql.Add(' "FB_фактура" = :FB_фактура,');
    sql.Add(' "BOX_фактура" = :BOX_фактура');
    // sql.Add(' "дата_притензии" = :дата_притензии');
    // sql.Add(' "сумма_притензии" = :сумма_притензии,');
    // sql.Add(' "одобренная_сумма_притензии" = :одобренная_сумма_притензии,');
    // sql.Add(' "статус_притензии" = :статус_притензии,');
    // sql.Add(' "текст_притензии_исп" = :текст_притензии_исп,');
    // sql.Add(' "текст_притензии_рус" = :текст_притензии_рус,');
    // sql.Add(' "текст_одобренной_суммы" = :текст_одобренной_суммы');
    sql.Add(' ');
    sql.Add(' WHERE');
    sql.Add(' id=:id');
    // if chkExePrit.Checked = true then
    // ParamByName('статус_притензии').AsString := 'ok';
    // if edtDatePrit.Checked = true then
    // ParamByName('дата_притензии').AsDate := edtDatePrit.DateTime;
    // ParamByName('сумма_притензии').AsString := edtSumPrit.Text;
    // ParamByName('одобренная_сумма_притензии').AsString := edtSumGoodPrit.Text;
    ParamByName('id').AsInteger := s_id_detail;
    if edtDateFact.Checked = true then
      ParamByName('дата_фактуры').AsDate := edtDateFact.DateTime;
    ParamByName('номер_фактуры').AsString := edtNum.Text;
    ParamByName('сумма_фактуры').AsString := edtSumFact.Text;
    // ParamByName('текст_притензии_рус').AsString := mmoПритензияРус.Text;
    // ParamByName('текст_притензии_исп').AsString := mmoПритензияИсп.Text;
    // ParamByName('текст_одобренной_суммы').AsString := mmoОдобреннаяСумма.Text;
    // if edtDateOpl.Text <> '  .  .    ' then
    // ParamByName('дата_оплаты').AsString := edtDateOpl.Text;
    // ParamByName('сумма_оплаты').AsString := edtSumOpl.Text;
    ParamByName('FB_фактура').AsString := edtFB.Text;
    ParamByName('BOX_фактура').AsString := edtBox.Text;
    ExecSQL;
    if Assigned(FFacturPlant) then
      FFacturPlant.ShowFact(s_id_detail);
  end;
{$ENDREGION};
end;

procedure TFEditFact.UpdatePritenz(id_del: Boolean = False);
begin
  with FEditPritenz do
  begin
    with FramePretenzEdit1 do
    begin
      with Query1 do
      begin
        sql.Clear;
        sql.Add(' UPDATE "бух"."sub_awb_detail"');
        sql.Add(' SET "дата_притензии" = :дата_притензии,');
        sql.Add(' "сумма_притензии" = :сумма_притензии,');
        sql.Add(' "номер_притензии" = :номер_притензии,');
        sql.Add(' "одобренная_сумма_притензии" = :одобренная_сумма_притензии,');
        sql.Add(' "статус_притензии" = :статус_притензии,');
        sql.Add(' "текст_притензии_рус" = :текст_притензии_рус,');
        sql.Add(' "текст_притензии_исп" = :текст_притензии_исп,');
        sql.Add(' "текст_одобренной_суммы" = :текст_одобренной_суммы,');
        if edtManager.Text <> '' then
          sql.Add(' "код_менеджера_притензии" = :код_менеджера_притензии');
        if edtphoto1.Text <> '' then
          sql.Add(' ,"photo1" = :photo1');
        if edtphoto2.Text <> '' then
          sql.Add(', "photo2" = :photo2');
        if edtphoto3.Text <> '' then
          sql.Add(', "photo3" = :photo3');
        sql.Add(' WHERE id = ' + IntToStr(s_id_detail));
        if id_del = False then
        begin
          if chkExePrit.Checked = true then
            ParamByName('статус_притензии').AsString := 'ok';
          ParamByName('дата_притензии').AsDate := edtDatePrit.Date;
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
        // ParamByName('id').AsInteger := s_id_detail;
        ExecSQL;
      end;
      ShowPretenz();
    end;
  end;
end;

procedure TFEditFact.ViewAWBDblClick(Sender: TObject);
begin
  btnEditClick(Sender);
end;

procedure TFEditFact.ViewUsersDblClick(Sender: TObject);
begin
  EdtAddПретензия;
end;

end.
