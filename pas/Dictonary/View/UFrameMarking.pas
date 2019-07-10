unit UFrameMarking;
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
  cxCustomData,
  cxStyles,
  cxTL,
  cxLabel,
  cxTLdxBarBuiltInMenu,
  dxSkinsCore,
  UFrameTopPanel,
  cxInplaceContainer,
  cxDBTL,
  cxTLData,
  Vcl.ImgList,
  Data.DB,
  MemDS,
  DBAccess,
  Uni,
  cxMaskEdit,
  cxClasses,
  dxSkinDevExpressStyle,
  dxSkinsDefaultPainters, dxSkinOffice2007Blue;
type
  TFrameMarking = class(TFrame)
    QueryMarking : TUniQuery;
    dsMarking : TDataSource;
    il1 : TImageList;
    lstTreeProducts : TcxDBTreeList;
    ColumnName : TcxDBTreeListColumn;
    FrameTopPanel1 : TFrameTopPanel;
    Query1 : TUniQuery;
    Style1 : TcxStyleRepository;
    cxStyle1 : TcxStyle;
    cxStyle2 : TcxStyle;
    ColumnClient : TcxDBTreeListColumn;
    ColumnGroup : TcxDBTreeListColumn;
    procedure btnAddGroupClick(Sender : TObject);
    procedure btnAddClick(Sender : TObject);
    procedure btnEditClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure btnRefreshClick(Sender : TObject);
    procedure FrameTopPanel1btnSelClick(Sender : TObject);
    procedure lstTreeProductsDblClick(Sender : TObject);
    procedure lstTreeProductsStylesGetContentStyle(Sender : TcxCustomTreeList;
                                                      AColumn : TcxTreeListColumn; ANode : TcxTreeListNode; var AStyle : TcxStyle);
  private
    { Private declarations }
  public
    procedure InsUpdMarking(id_ins : boolean);
    procedure ShowMarking(id_locate : integer = 0);
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  UNewGroupMarking,
  PGSQL,
  UPasswd,
  UDialogMy,
  UNewMarking,
  USplash;
procedure TFrameMarking.btnAddClick(Sender : TObject);
begin
  Application.CreateForm(TFNewMarking, FNewMarking);
  with FNewMarking do
  begin
    ShowDict;
    ShowModal;
    if FrameSave1.id_save = true then
      InsUpdMarking(true);
  end;
end;
procedure TFrameMarking.btnAddGroupClick(Sender : TObject);
var
  id : integer;
begin
  Application.CreateForm(TFNewGroupMarking, FNewGroupMarking);
  with FNewGroupMarking do
  begin
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      id := PGSQL.NewID('маркировки.маркировки_id_seq');
      with Query1 do
      begin
        Close;
        sql.Text :=
                   'insert into "маркировки"."маркировки" (id, pid, name, uni_name, reg_name, id_group) ' +
                   ' values (:id, 1, :name, :uni_name, :reg_name, 1)';
        ParamByName('id').AsInteger := id;
        with FrameUniName1 do
        begin
          ParamByName('name').AsString := edtName.Text;
          ParamByName('uni_name').AsString := edtUniName.Text;
          ParamByName('reg_name').AsString := edtRegName.Text;
        end;
        ExecSQL;
        ShowMarking(id);
      end;
    end;
  end;
end;
procedure TFrameMarking.btnDelClick(Sender : TObject);
var
  s : string;
begin
  if QueryMarking.FieldByName('pid').AsInteger <> 0 then
  begin
    case QueryMarking.FieldByName('id_group').AsInteger of
      0 :
      begin
        PGSQL.StandartDelete(QueryMarking.FieldByName('id').AsString, '"маркировки"."маркировки"',
                              QueryMarking, '', '', '', '');
      end;
      1 :
      begin
        { TODO -oOwner -cGeneral : Удаление маркировок после документов вернуться'','', }
        if Application.MessageBox('Вы действительно хотите удалить группу маркировок?', 'Вопрос',
                                   MB_YESNO) = mrYes then
        begin
          with Query1 do
          begin
            Close;
            sql.Text := 'delete from "маркировки"."маркировки" where pid=' +
          QueryMarking.FieldByName('id').AsString + ' or id=' +
          QueryMarking.FieldByName('id').AsString;
            ExecSQL;
            QueryMarking.Refresh;
          end;
        end;
        // case FPasswd.edtLang.ItemIndex of
        // 0:
        // s := 'Связанные пользователи';
        // 1:
        // s := 'Associated users';
        // 2:
        // s := 'Los usuarios vinculados';
        // end;
        // if QueryRole.FieldByName('id').AsInteger <> 1 then
        // PGSQL.StandartDelete(QueryRole.FieldByName('id').AsString,
        // '"пользователи"."роли"', QueryRole, 'код_роли',
        // '"пользователи"."пользователи"', 'name', s);
      end;
    end;
  end
  else
  begin
    case FPasswd.Lang of
      0 : ErrorDialog('Данную запись удалять запрещено.', '', '');
      1 : ErrorDialog('This entry delete prohibited.', '', ' ');
      2 : ErrorDialog('Se prohíbe quitar la anotación dada.', '', '');
    end;
  end;
end;
procedure TFrameMarking.btnEditClick(Sender : TObject);
begin
  if QueryMarking.FieldByName('pid').AsInteger <> 0 then
  begin
    // case QueryMarking.FieldByName('id_group').AsInteger of
    // 0:
{$REGION 'Маркировки'}
  begin
    FSplash.Show();
    FSplash.Update;
    Application.CreateForm(TFNewMarking, FNewMarking);
    with FNewMarking do
    begin
      if QueryMarking.FieldByName('адрес_клиента').AsInteger = 0 then
        adr_client := False
      else
        adr_client := true;
      id_client := QueryMarking.FieldByName('код_клиента').AsInteger;
      id_kargo := QueryMarking.FieldByName('код_карго').AsInteger;
      id_track := QueryMarking.FieldByName('код_трака').AsInteger;
      id_pricooling := QueryMarking.FieldByName('код_прикулинга').AsInteger;
      s_id_marking := QueryMarking.FieldByName('id').AsInteger;
      id_fito := QueryMarking.FieldByName('код_фито').AsInteger;
      with FrameUniName1 do
      begin
        edtName.Text := QueryMarking.FieldByName('name').AsString;
        edtUniName.Text := QueryMarking.FieldByName('uni_name').AsString;
        edtRegName.Text := QueryMarking.FieldByName('reg_name').AsString;
      end;
      // mmoAdres.Text := QueryMarking.FieldByName('адрес').AsString;
      edtPhone1.Text := QueryMarking.FieldByName('телефон').AsString;
      edtFax.Text := QueryMarking.FieldByName('факс').AsString;
      o_id_country := QueryMarking.FieldByName('код_страны').AsInteger;
      o_id_city := QueryMarking.FieldByName('код_города').AsInteger;
      s_lock_plant := QueryMarking.FieldByName('коды_запрет_плантаций').AsString;
      s_good_plant := QueryMarking.FieldByName('коды_желаемые_плантации').AsString;
      ShowDict;
      ShowPlantLock;
      ShowPlantGood;
      ShowModal;
      if FrameSave1.id_save = true then
        InsUpdMarking(False);
    end;
  end;
    // {$ENDREGION}
    // 1:
    // {$REGION 'Группы'}
    // begin
    // Application.CreateForm(TFNewGroupMarking, FNewGroupMarking);
    // with FNewGroupMarking do
    // begin
    // with FrameUniName1 do
    // begin
    // edtName.Text := QueryMarking.FieldByName('name').AsString;
    // edtUniName.Text := QueryMarking.FieldByName('uni_name').AsString;
    // edtRegName.Text := QueryMarking.FieldByName('reg_name').AsString;
    // end;
    // ShowModal;
    // if FrameSave1.id_save = true then
    // begin
    // with Query1 do
    // begin
    // Close;
    // sql.Text := 'update "маркировки"."маркировки" set name=:name, '
    // + ' uni_name=:uni_name, reg_name=:reg_name where id=' +
    // QueryMarking.FieldByName('id').AsString;
    // with FrameUniName1 do
    // begin
    // ParamByName('name').AsString := edtName.Text;
    // ParamByName('uni_name').AsString := edtUniName.Text;
    // ParamByName('reg_name').AsString := edtRegName.Text;
    // end;
    // ExecSQL;
    // QueryMarking.Refresh;
    // end;
    // end;
    // end;
    // end;
    // end;
{$ENDREGION}
  end
  else
  begin
{$REGION 'Запрет редактирования ВСЕХ'}
    case FPasswd.Lang of
      0 : ErrorDialog('Данную запись редактировать запрещено.', '', '');
      1 : ErrorDialog('The record edit prohibited.', '', ' ');
      2 : ErrorDialog('Se prohíbe redactar la anotación dada.', '', '');
    end;
{$ENDREGION}
  end;
end;
procedure TFrameMarking.btnRefreshClick(Sender : TObject);
begin
  QueryMarking.Refresh;
end;
procedure TFrameMarking.FrameTopPanel1btnSelClick(Sender : TObject);
begin
  FrameTopPanel1.btnSelClick(Sender);
end;
procedure TFrameMarking.InsUpdMarking(id_ins : boolean);
var
  id : integer;
begin
  with FNewMarking do
  begin
    with Query1 do
    begin
      Close;
      if id_ins = true then
      begin
        id := PGSQL.NewID('маркировки.маркировки_id_seq');
        sql.Text := 'INSERT INTO "маркировки"."маркировки"(id, pid, id_group,' +
      '"код_клиента", "код_карго", "код_трака", "код_прикулинга",' +
      'name, uni_name, reg_name, "адрес", "страна", "город", "телефон",' +
      ' "факс", "код_страны", "код_города", адрес_клиента, код_фито,изменен) VALUES (:id, :pid, 0,'
      + ' :код_клиента, :код_карго, :код_трака, :код_прикулинга, :name,' +
      ' :uni_name, :reg_name, :адрес, :страна, :город, :телефон, :факс,' +
      ' :код_страны, :код_города, :адрес_клиента, :код_фито, :изменен)';
      end
      else
      begin
        id := QueryMarking.FieldByName('id').AsInteger;
        sql.Text := 'UPDATE "маркировки"."маркировки" SET  pid = :pid,  id_group = :id_group,' +
      '"код_клиента" = :код_клиента, "код_карго" = :код_карго,' +
      ' "код_трака" = :код_трака,  "код_прикулинга" = :код_прикулинга,' +
      '  name = :name,  uni_name = :uni_name,  reg_name = :reg_name,' +
      '  "адрес" = :адрес,  "страна" = :страна, "город"=:город,  "телефон" = :телефон,' +
      '  "факс" = :факс,  "код_страны" = :код_страны,  "код_города" = :код_города' +
      ',адрес_клиента=:адрес_клиента, код_фито=:код_фито,изменен=:изменен WHERE  id = :id';
      end;
      if chkAddrClient.Checked = true then
        ParamByName('адрес_клиента').AsInteger := 1
      else
        ParamByName('адрес_клиента').AsInteger := 0;
      ParamByName('id').AsInteger := id;
      if (id_ins = False) then
        ParamByName('id_group').AsInteger := QueryMarking.FieldByName('id_group').AsInteger;
      if QueryMarking.FieldByName('id_group').AsInteger = 1 then
        ParamByName('pid').AsInteger := 1
      else
        ParamByName('pid').AsInteger := QueryMarking.FieldByName('pid').AsInteger;
      with FrameUniName1 do
      begin
        ParamByName('name').AsString := edtName.Text;
        ParamByName('uni_name').AsString := edtUniName.Text;
        ParamByName('reg_name').AsString := edtRegName.Text;
      end;
      ParamByName('адрес').AsString := mmoAddress.Text;
      ParamByName('телефон').AsString := edtPhone1.Text;
      ParamByName('факс').AsString := edtFax.Text;
      if edtClient.Text <> '' then
        ParamByName('код_клиента').AsInteger := edtClient.EditValue;
      if edtKargo.Text <> '' then
        ParamByName('код_карго').AsInteger := edtKargo.EditValue;
      if edtTrack.Text <> '' then
        ParamByName('код_трака').AsInteger := edtTrack.EditValue;
      if edtPreecooling.Text <> '' then
        ParamByName('код_прикулинга').AsInteger := edtPreecooling.EditValue;
      if edtFITO.Text <> '' then
        ParamByName('код_фито').AsInteger := edtFITO.EditValue;
      ParamByName('код_страны').AsInteger := o_id_country;
      ParamByName('код_города').AsInteger := o_id_city;
      ParamByName('страна').AsString := o_name_country;
      ParamByName('город').AsString := o_name_city;
      ParamByName('изменен').AsInteger := FPasswd.ID_USER;
      ExecSQL;
      { добавить все наценки на маркировки }
      if id_ins = true then
      begin
        PGSQL.AddMarkingAllPrice(id);
      end;
      ShowMarking(id);
    end;
  end;
end;
procedure TFrameMarking.lstTreeProductsDblClick(Sender : TObject);
begin
  if FrameTopPanel1.btnEdit.Enabled = true then
    btnEditClick(Sender);
end;
procedure TFrameMarking.lstTreeProductsStylesGetContentStyle(Sender : TcxCustomTreeList;
                                                                AColumn : TcxTreeListColumn; ANode : TcxTreeListNode; var AStyle : TcxStyle);
begin
  if ANode.Values[ColumnGroup.ItemIndex] = 0 then
  begin
    if ANode.Values[ColumnClient.ItemIndex] = Null then
      AStyle := cxStyle1
    else
      AStyle := cxStyle2;
  end;
end;
procedure TFrameMarking.ShowMarking(id_locate : integer = 0);
begin
  with QueryMarking do
  begin
    Close;
    sql.Text := 'select m.*, k.name k_name from "маркировки"."маркировки"  m  ' +
  ' left join "контрагенты"."клиенты" k on k.id=m."код_клиента" ' + ' order by id';
    Open;
    Locate('id', id_locate, []);
  end;
end;
end.
