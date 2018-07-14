unit UNewPlant;

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
  cxPCdxBarPopupMenu,
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
  cxGroupBox,
  MemDS,
  DBAccess,
  Uni,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  UFrameUniName,
  Menus,
  Vcl.StdCtrls,
  cxButtons,
  UFramePlantSort,
  cxNavigator,
  dxBarBuiltInMenu,

  dxSkinDevExpressStyle,

   dxSkinsDefaultPainters;

type
  TFNewPlant = class(TForm)
    PageControl1: TcxPageControl;
    TabOsn: TcxTabSheet;
    TabContact: TcxTabSheet;
    FrameTopPanel1: TFrameTopPanel;
    GridTarif: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    ColumnFIO: TcxGridDBColumn;
    ColumnPhone: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    TabAccounts: TcxTabSheet;
    FrameTopPanel2: TFrameTopPanel;
    GridAcc: TcxGrid;
    GridAccount: TcxGridDBTableView;
    ColumnBank: TcxGridDBColumn;
    ColumnAccount: TcxGridDBColumn;
    GridLevelGrid1Level1: TcxGridLevel;
    TabAlarm: TcxTabSheet;
    lbl2: TcxLabel;
    edtDayAlarm: TcxCalcEdit;
    edtSrokDolg: TcxCalcEdit;
    lbl1: TcxLabel;
    edtSumDolg: TcxCalcEdit;
    lbl3: TcxLabel;
    Label28: TcxLabel;
    lbl6: TcxLabel;
    lbl5: TcxLabel;
    lbl4: TcxLabel;
    edtSumAlarm: TcxCalcEdit;
    Label3: TcxLabel;
    chkUse: TcxCheckBox;
    Group1: TcxGroupBox;
    mmoRemark: TcxMemo;
    lblDescr: TcxLabel;
    FrameSave1: TFrameSave;
    QueryType: TUniQuery;
    dsType: TDataSource;
    FrameUniName1: TFrameUniName;
    edtBrand: TcxTextEdit;
    lblBrand: TcxLabel;
    ColumnPhoneMobile: TcxGridDBColumn;
    mmoAdres: TcxMemo;
    btnAdrReg: TcxButton;
    label6: TcxLabel;
    cxLabel5: TcxLabel;
    edtPhone1: TcxTextEdit;
    lblFax: TcxLabel;
    edtFax: TcxTextEdit;
    lblEmail: TcxLabel;
    edtEmail: TcxTextEdit;
    TabSort: TcxTabSheet;
    TabType: TcxTabSheet;
    GroupType: TcxGroupBox;
    GridType: TcxGrid;
    ViewType: TcxGridDBTableView;
    ColumnUniName: TcxGridDBColumn;
    ColumnName: TcxGridDBColumn;
    ColumnRegName: TcxGridDBColumn;
    LevelOrg: TcxGridLevel;
    FrameTopPanel3: TFrameTopPanel;
    FramePlantSort1: TFramePlantSort;
    Query1: TUniQuery;
    QueryContact: TUniQuery;
    dsContact: TDataSource;
    procedure edtBrandKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtNameKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FrameSave1btnSaveClick(Sender: TObject);
    procedure FrameTopPanel1btnAddClick(Sender: TObject);
    procedure FrameTopPanel1btnDelClick(Sender: TObject);
    procedure FrameTopPanel1btnEditClick(Sender: TObject);
    procedure FrameTopPanel3btnAddClick(Sender: TObject);
    procedure FrameTopPanel3btnRefreshClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure FrameUniName1btnTranslitClick(Sender: TObject);
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
    procedure edtBrandPropertiesEditValueChanged(Sender: TObject);
    procedure btnAdrRegClick(Sender: TObject);
    procedure cxGridDBTableView2DblClick(Sender: TObject);
    procedure FramePlantSort1edtTypePropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    s_id_plant: Integer;
    s_id_country: Integer;
    o_id_country, o_id_city: Integer;
    o_name_country, o_name_city: string;
    s_id_contact: Integer;
    procedure AddPlantSort;
    procedure AddType;
    procedure AddTypeNew;
    procedure DelType(s_id_type: Integer);
    procedure DropTmp;
    procedure EnableButton;
    function GetPID: string;
    procedure InsertPlant;
    procedure InsUpdContact(id_ins: boolean);
    procedure SetLang;
    procedure ShowContact(id_locate: Integer = 0);
    procedure ShowType;
    procedure UpdatePlant;
    { Public declarations }
  end;

var
  FNewPlant: TFNewPlant;

implementation

{$R *.dfm}

uses
  UPasswd,
  UDataModule1,
  PGSQL,
  USelect,
  UDialogMy,
  ULang,
  UMultiSelect,
  USplash,
  USelectSortInPlant,
  UNewContactUni;

procedure TFNewPlant.AddPlantSort;
var
  Query1, Query2, Query3, Query4: TUniQuery;
  id_in: string;
  pid: string;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.db1;
  Query2 := TUniQuery.Create(nil);
  Query2.Connection := DM1.db1;
  Query3 := TUniQuery.Create(nil);
  Query3.Connection := DM1.db1;
  // выбираем только те котрых нет уже но есть в выбранном в продукции
  Query1.Close;
  Query1.SQL.Text :=
    'select id from "продукция"."сорт_плантация" where "код_сорта" = :s' +
    ' and "код_плантации"=' + IntToStr(s_id_plant);
  Query2.Close;
  Query2.SQL.Text := 'INSERT INTO "продукция"."сорт_плантация" ("код_сорта",' +
    ' "код_плантации") VALUES (' + ' :код_сорта,  ' +
    IntToStr(s_id_plant) + ');';
  // продукция
  Query3.Close;
  Query3.SQL.Text := 'insert into "продукция"."продукция" (pid, код_структуры, '
    + ' код_детализации, name, uni_name, reg_name, id_group) values ( ' +
    ':pid, 5, :код_детализации, :name, :uni_name, :reg_name, 1)';
  // родители сорта (плантации)
  // против дублирования
  FSelectSortInPlant.QueryDist.First;
  while not FSelectSortInPlant.QueryDist.Eof do
  begin
    Query1.Close;
    Query1.ParamByName('s').Value :=
      FSelectSortInPlant.QueryDist.Fields[0].Value;
    Query1.Open;
    if Query1.Fields[0].AsString = '' then
    begin
      Query2.Close;
      Query2.ParamByName('код_сорта').Value :=
        FSelectSortInPlant.QueryDist.Fields[0].Value;
      Query2.ExecSQL;
      if pid = '' then
        pid := GetPID;
      Query3.Close;
      Query3.ParamByName('pid').AsString := pid;
      Query3.ParamByName('код_детализации').Value :=
        FSelectSortInPlant.QueryDist.Fields[0].Value;
      Query3.ParamByName('name').AsString :=
        FSelectSortInPlant.QueryDist.FieldByName('name').AsString;
      Query3.ParamByName('uni_name').AsString :=
        FSelectSortInPlant.QueryDist.FieldByName('uni_name').AsString;
      Query3.ParamByName('reg_name').AsString :=
        FSelectSortInPlant.QueryDist.FieldByName('reg_name').AsString;
      Query3.ExecSQL;
    end;
    FSelectSortInPlant.QueryDist.Next;
  end;
  FramePlantSort1.ShowSortPlant;
  // продукция
end;

procedure TFNewPlant.AddType;
var
  Query1, Query2, Query3: TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.db1;
  Query2 := TUniQuery.Create(nil);
  Query2.Connection := DM1.db1;
  Query3 := TUniQuery.Create(nil);
  Query3.Connection := DM1.db1;
  Query2.Close;
  Query2.SQL.Text := 'insert into продукция.продукция (pid, код_структуры, ' +
    ' код_детализации, name, uni_name, reg_name, id_group) values ' +
    ' (:pid, 4, :код_детализации, :name, :uni_name, :reg_name,1)';
  Query3.Close;
  Query3.SQL.Text := ' select id from "продукция"."продукция" where ' +
    ' код_детализации=:код_детализации and код_структуры=3  ' +
    '  and pid = (select id from "продукция"."продукция" where    ' +
    '  код_детализации=' + IntToStr(s_id_country) + ' and код_структуры=2) ';
  with FSelect.QuerySelect do
  begin
    First;
    while not Eof do
    begin
      if FieldByName('id_sel').AsInteger = 1 then
      begin
        Query3.Close;
        Query3.ParamByName('код_детализации').AsInteger := FieldByName('id')
          .AsInteger;
        Query3.Open;
        if Query3.Fields[0].AsInteger <> 0 then
        begin
          Query2.Close;
          Query2.ParamByName('pid').AsInteger := Query3.Fields[0].AsInteger;
          Query2.ParamByName('код_детализации').AsInteger := s_id_plant;
          Query2.ParamByName('name').AsString := FrameUniName1.edtName.Text;
          Query2.ParamByName('uni_name').AsString :=
            FrameUniName1.edtUniName.Text;
          Query2.ParamByName('reg_name').AsString :=
            FrameUniName1.edtRegName.Text;
          Query2.ExecSQL;
          Query1.Close;
          Query1.SQL.Text :=
            'insert into продукция.плантация_тип (код_плантации, код_типа) values '
            + ' (:код_плантации, :код_типа)';
          Query1.ParamByName('код_плантации').AsInteger := s_id_plant;
          Query1.ParamByName('код_типа').AsInteger := FieldByName('id')
            .AsInteger;
          Query1.ExecSQL;
        end;
      end;
      Next;
    end;
  end;
end;

procedure TFNewPlant.AddTypeNew;
var
  Query1, Query2, Query3, Query4: TUniQuery;
  id: Integer;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.db1;
  Query2 := TUniQuery.Create(nil);
  Query2.Connection := DM1.db1;
  Query3 := TUniQuery.Create(nil);
  Query3.Connection := DM1.db1;
  Query2.Close;
  Query2.SQL.Text :=
    'select id from  "продукция"."плантация_тип" where "код_типа"=' +
    IntToStr(FramePlantSort1.edtType.EditValue) + ' and "код_плантации"=' +
    IntToStr(s_id_plant);
  Query2.Open;
  if Query2.Fields[0].AsString = '' then
  begin
    Query2.Close;
    Query2.SQL.Text := 'insert into продукция.продукция (pid, код_структуры, ' +
      ' код_детализации, name, uni_name, reg_name, id_group) values ' +
      ' (:pid, 4, :код_детализации, :name, :uni_name, :reg_name,1)';
    Query3.Close;
    Query3.SQL.Text := ' select id from "продукция"."продукция" where ' +
      ' код_детализации=:код_детализации and код_структуры=3  ' +
      '  and pid = (select id from "продукция"."продукция" where    ' +
      '  код_детализации=' + IntToStr(s_id_country) + ' and код_структуры=2) ';
    Query3.Close;
    Query3.ParamByName('код_детализации').AsInteger :=
      FramePlantSort1.edtType.EditValue;
    Query3.Open;
    if Query3.Fields[0].AsInteger <> 0 then
    begin
      Query2.Close;
      Query2.ParamByName('pid').AsInteger := Query3.Fields[0].AsInteger;
      Query2.ParamByName('код_детализации').AsInteger := s_id_plant;
      Query2.ParamByName('name').AsString := FrameUniName1.edtName.Text;
      Query2.ParamByName('uni_name').AsString := FrameUniName1.edtUniName.Text;
      Query2.ParamByName('reg_name').AsString := FrameUniName1.edtRegName.Text;
      Query2.ExecSQL;
      Query1.Close;
      Query1.SQL.Text :=
        'insert into продукция.плантация_тип (код_плантации, код_типа) values '
        + ' (:код_плантации, :код_типа)';
      Query1.ParamByName('код_плантации').AsInteger := s_id_plant;
      Query1.ParamByName('код_типа').AsInteger :=
        FramePlantSort1.edtType.EditValue;
      Query1.ExecSQL;
    end;
  end;
  // Query1 := TUniQuery.Create(nil);
  // Query1.Connection := DM1.db1;
  // Query2 := TUniQuery.Create(nil);
  // Query2.Connection := DM1.db1;
  // Query3 := TUniQuery.Create(nil);
  // Query3.Connection := DM1.db1;
  // Query4 := TUniQuery.Create(nil);
  // Query4.Connection := DM1.db1;
  // Query2.Close;
  // Query2.SQL.Text :=
  // 'select id from  "продукция"."плантация_тип" where "код_типа"=' +
  // inttostr(FramePlantSort1.edtType.EditValue) + ' and "код_плантации"=' +
  // inttostr(s_id_plant);
  // Query2.Open;
  // if Query2.Fields[0].AsString = '' then
  // begin
  // FSplash.Show();
  // FSplash.Update;
  // Query2.Close;
  // Query2.SQL.Text :=
  // 'insert into продукция.продукция (id, pid, код_структуры, ' +
  // ' код_детализации, name, uni_name, reg_name, id_group, tree, level_val) values '
  // + ' (:id, :pid, 4, :код_детализации, :name, :uni_name, :reg_name,1, :tree, :level_val)';
  // Query3.Close;
  // Query3.SQL.Text := 'select id, tree from "продукция"."продукция" where ' +
  // ' код_детализации=:код_детализации and код_структуры=3  ' +
  // '  and pid = (select id from "продукция"."продукция" where    ' +
  // '  код_детализации=' + inttostr(s_id_country) + ' and код_структуры=2) ';
  // { проверка существования }
  // Query4.Close;
  // Query4.SQL.Text :=
  // 'select id from "продукция"."продукция" where код_структуры = 3 and' +
  // ' id in (select pid from "продукция"."продукция"  where код_структуры = 4 and'
  // + ' код_детализации = ' + inttostr(s_id_plant) +
  // ') and код_детализации=:id_type   ';
  // with FMultiSelect.QueryDist do
  // begin
  // First;
  // while not Eof do
  // begin
  // Query4.Close;
  // Query4.ParamByName('id_type').AsInteger := FieldByName('id').AsInteger;
  // Query4.Open;
  //
  // if Query4.Fields[0].AsString = '' then
  // begin
  // Query3.Close;
  // Query3.ParamByName('код_детализации').AsInteger := FieldByName('id')
  // .AsInteger;
  // Query3.Open;
  // if Query3.Fields[0].AsInteger <> 0 then
  // begin
  // Query2.Close;
  // id := PGSQL.NewID('"продукция"."продукция_id_seq"');
  // Query2.ParamByName('id').AsInteger := id;
  // Query2.ParamByName('pid').AsInteger := Query3.Fields[0].AsInteger;
  // Query2.ParamByName('код_детализации').AsInteger := s_id_plant;
  // Query2.ParamByName('name').AsString := FrameUniName1.edtName.Text;
  // Query2.ParamByName('uni_name').AsString :=
  // FrameUniName1.edtUniName.Text;
  // Query2.ParamByName('reg_name').AsString :=
  // FrameUniName1.edtRegName.Text;
  // Query2.ParamByName('tree').AsString :=
  // PGSQL.GetNewTree(Query3.Fields[0].AsInteger,
  // Query3.Fields[1].AsString);
  // Query2.ParamByName('level_val').AsInteger := PGSQL.Level_Val;
  // Query2.ExecSQL;
  // Query1.Close;
  // Query1.SQL.Text :=
  // 'insert into продукция.плантация_тип (код_плантации, код_типа, код_товара) values '
  // + ' (:код_плантации, :код_типа, :код_товара)';
  // Query1.ParamByName('код_плантации').AsInteger := s_id_plant;
  // Query1.ParamByName('код_типа').AsInteger := FieldByName('id')
  // .AsInteger;
  // Query1.ParamByName('код_товара').AsInteger := id;
  // Query1.ExecSQL;
  // end;
  // end;
  // Next;
  // end;
  // end;
  // with FMultiSelect.QuerySource do
  // begin
  // First;
  // if RecordCount > 0 then
  // begin
  // while not Eof do
  // begin
  // PGSQL.DelType(FieldByName('id').AsInteger, s_id_plant);
  // Next;
  // end;
  // end;
  // end;
  // ShowType;
  // FSplash.Close;
  // end;
end;

procedure TFNewPlant.btnAdrRegClick(Sender: TObject);
begin
  SelectAddress(mmoAdres, 0, 0, 0, 0, '', '', '', '');
  o_id_country := PGSQL.id_country;
  o_name_country := PGSQL.name_country;
  o_id_city := PGSQL.id_city;
  o_name_city := PGSQL.name_city;
end;

procedure TFNewPlant.btnDelClick(Sender: TObject);
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
    PGSQL.DelType(QueryType.FieldByName('id').AsInteger, s_id_plant);
    ShowType;
    // DelType(QueryType.FieldByName('id').AsInteger);
  end;
end;

procedure TFNewPlant.cxGridDBTableView2DblClick(Sender: TObject);
begin
  FrameTopPanel1btnEditClick(Sender);
end;

procedure TFNewPlant.DelType(s_id_type: Integer);
var
  pid: string;
begin
  with DM1.QueryUpd do
  begin
    Close;
    SQL.Text :=
      'select код_товара from продукция.плантация_тип where код_плантации=' +
      IntToStr(s_id_plant) + ' and код_типа=' + IntToStr(s_id_type);
    Open;
    pid := Fields[0].AsString;
    if pid <> '' then
    begin
      DM1.dbUpd.StartTransaction;
      { отвязываем плантацию от сорта с этим типом }
      try
        Close;
        SQL.Text := 'delete from продукция.сорт_плантация where код_плантации='
          + IntToStr(s_id_plant) +
          ' and код_сорта in(select id from продукция.сорта where код_типа=' +
          IntToStr(s_id_type) + ')';
        ExecSQL;
        { отвязываем тип от плантации }
        Close;
        SQL.Text := 'delete from продукция.плантация_тип where код_плантации=' +
          IntToStr(s_id_plant) + ' and код_типа=' + IntToStr(s_id_type);
        ExecSQL;
        { удаляем детей из номенклатуры }
        Close;
        SQL.Text := 'delete from "продукция"."продукция" where pid in(' + pid +
          ') or id=' + pid;
        ExecSQL;
        DM1.dbUpd.Commit;
        ShowType;
      except
        DM1.dbUpd.Rollback;
      end;
    end;
  end;
end;

procedure TFNewPlant.DropTmp;
var
  Query1: TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.db1;
  Query1.Close;
  Query1.SQL.Text := 'drop table tmp';
  Query1.ExecSQL;
end;

procedure TFNewPlant.edtBrandKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  EnableButton;
end;

procedure TFNewPlant.edtBrandPropertiesEditValueChanged(Sender: TObject);
begin
  EnableButton;
end;

procedure TFNewPlant.edtNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  EnableButton;
end;

procedure TFNewPlant.EnableButton;
begin
  with FrameUniName1 do
  begin
    if (edtBrand.Text <> '') and (edtName.Text <> '') then
    begin
      FrameTopPanel3.btnAdd.Enabled := true;
      FrameTopPanel3.btnDel.Enabled := true;
      FrameSave1.btnSave.Enabled := true;
    end
    else
    begin
      FrameTopPanel3.btnAdd.Enabled := false;
      FrameTopPanel3.btnDel.Enabled := false;
      FrameSave1.btnSave.Enabled := false;
    end;
    if QueryType.RecordCount > 0 then
      FrameTopPanel3.btnDel.Enabled := true
    else
      FrameTopPanel3.btnDel.Enabled := false;
  end;
end;

procedure TFNewPlant.FormShow(Sender: TObject);
begin
  FSplash.Close;
  FrameSave1.SetLang;
  PageControl1.ActivePageIndex := 0;
  FrameUniName1.edtUniName.SetFocus;
  FrameTopPanel1.SetLang;
  FrameTopPanel2.SetLang;
  FrameTopPanel3.SetLang;
  FramePlantSort1.FrameTopPanel1.SetLang;
  TranslateGridCaption(ColumnUniName, ColumnRegName, ColumnName);
  TranslateGridCaption(FramePlantSort1.ColumnUniName,
    FramePlantSort1.ColumnRegName, FramePlantSort1.ColumnName);
  FramePlantSort1.s_id_plant_ps := s_id_plant;
  FramePlantSort1.ShowTypeSort;
  FramePlantSort1.ShowSortPlant;
  ShowContact();
end;

procedure TFNewPlant.FramePlantSort1edtTypePropertiesEditValueChanged
  (Sender: TObject);
begin
  FramePlantSort1.edtTypePropertiesEditValueChanged(Sender);
end;

procedure TFNewPlant.FrameSave1btnSaveClick(Sender: TObject);
begin
  if s_id_plant = 0 then
    InsertPlant
  else
    UpdatePlant;
  FrameSave1.btnSaveClick(Sender);
  Close;
end;

procedure TFNewPlant.FrameTopPanel1btnAddClick(Sender: TObject);
var
  i: Integer;
begin
  if PageControl1.ActivePageIndex = 2 then
  begin
    i := 0;
    if s_id_plant = 0 then
    begin
      if Application.MessageBox('Плантация еще не сохранена. Сохранить?',
        'Вопрос', MB_YESNO + MB_ICONQUESTION) = mrYes then
      begin
        InsertPlant;
      end
      else
      begin
        Abort;
      end;
    end;
    Application.CreateForm(TFSelectSortInPlant, FSelectSortInPlant);
    with FSelectSortInPlant do
    begin
      btnDelAll.Visible := false;
      with QuerySelOsnDb do
      begin
        Close;
        SQL.Text :=
          'select count(id) from "продукция"."сорта" where "код_типа" =' +
          IntToStr(FramePlantSort1.edtType.EditValue) + ' and ' +
          ' "id" not in (select код_сорта from "продукция"."сорт_плантация"' +
          ' where "код_плантации"=' + IntToStr(s_id_plant) + ')';
        Open;
        // SetLength(id_dist, RecordCount);
        SQL.Text := 'select * from "продукция"."сорта" where "код_типа" =' +
          IntToStr(FramePlantSort1.edtType.EditValue) + ' and ' +
          ' "id" not in (select код_сорта from "продукция"."сорт_плантация"' +
          ' where "код_плантации"=' + IntToStr(s_id_plant) + ')';
        Open;
        if RecordCount <> 0 then
        begin
          DM1.dbLocal.Connected := false;
          DM1.dbLocal.Database := 'trade2012.db';
          DM1.dbLocal.Connected := true;
          QueryDist.Close;
          QueryDist.SQL.Text := 'delete from Источник';
          QueryDist.ExecSQL;
          QueryDist.Close;
          QueryDist.SQL.Text := 'delete from Назначение';
          QueryDist.ExecSQL;
          QueryDist.Close;
          QueryDist.SQL.Text :=
            'insert into Источник (id, name, uni_name, reg_name) ' +
            ' values (:id, :name, :uni_name, :reg_name)';
          while not Eof do
          begin
            QueryDist.ParamByName('id').Value := Fields[0].AsInteger;
            QueryDist.ParamByName('name').Value := FieldByName('name').AsString;
            QueryDist.ParamByName('uni_name').Value :=
              FieldByName('uni_name').AsString;
            QueryDist.ParamByName('reg_name').Value :=
              FieldByName('reg_name').AsString;
            QueryDist.ExecSQL;
            QueryDist.Close;
            Next;
          end;
          case FPasswd.Lang of
            0:
              ColumnName.DataBinding.FieldName := 'name';
            1:
              ColumnName.DataBinding.FieldName := 'uni_name';
            2:
              ColumnName.DataBinding.FieldName := 'reg_name';
          end;
          ShowSource;
          ShowModal;
          if FSelectSortInPlant.FrameSave1.id_save = true then
          begin
            FSplash.Show;
            FSplash.Update;
            AddTypeNew;
            FSplash.Update;
            AddPlantSort;
            FSplash.Close;
          end;
        end;
      end;
    end;
  end;
  if PageControl1.ActivePageIndex = 3 then
  begin
    if s_id_plant = 0 then
    begin
      if Application.MessageBox('Плантация еще не сохранена. Сохранить?',
        'Вопрос', MB_YESNO + MB_ICONQUESTION) = mrYes then
      begin
        InsertPlant;
      end
      else
      begin
        Abort;
      end;
    end;
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
  // Application.CreateForm(TFMultiSelect, FMultiSelect);
  // with FMultiSelect do
  // begin
  // btnDelAll.Visible := false;
  // //btnDel.Visible := false;
  // table_name := '"продукция"."сорта"';
  // id_type := 1;
  // with Query1 do
  // begin
  // Close;
  // SQL.Text := 'select * from "продукция"."сорта" where "код_типа" =' +
  // IntToStr(FramePlantSort1.edtType.EditValue) + ' and ' +
  // ' "id" in (select код_сорта from "продукция"."сорт_плантация"' +
  // ' where "код_плантации"=' + IntToStr(s_id_plant) + ')';
  // Open;
  // while not Eof do
  // begin
  // id_not := id_not + FieldByName('id').AsString + ',';
  // Next;
  // end;
  // id_not := Copy(id_not, 1, length(id_not) - 1);
  // Close;
  // SQL.Text := 'select * from "продукция"."сорта" where код_типа<> ' +
  // IntToStr(FramePlantSort1.edtType.EditValue);
  // Open;
  // while not Eof do
  // begin
  // id_never_not := id_never_not + FieldByName('id').AsString + ',';
  // Next;
  // end;
  // id_never_not := Copy(id_never_not, 1, length(id_never_not) - 1);
  // end;
  // id_clear := true;
  // ShowModal;
  // if FrameSave1.id_save = true then
  // begin
  // FSplash.Show;
  // FSplash.Update;
  // AddTypeNew;
  // FSplash.Update;
  // AddPlantSort;
  // FSplash.Close;
  // end;
  // end;
{$REGION 'Старый выбор'}
  // Application.CreateForm(TFSelect, FSelect);
  // with FSelect do
  // begin
  // ShowSelect('"продукция"."сорта"', ' where id not in  (' +
  // ' SELECT  sp."код_сорта" FROM  "продукция"."сорт_плантация" sp' +
  // '  INNER JOIN "продукция"."сорта" s ON (sp."код_сорта" = s.id) and   s."код_типа"='
  // + inttostr(FramePlantSort1.edtType.EditValue) + ' )');
  // ShowModal;
  // if FrameTopPanel1.id_select = true then
  // begin
  // // AddType;
  // // ShowType;
  // // DM1.db1.Commit;
  // // DropTmp;
  // end
  // else
  // begin
  // // DM1.db1.Rollback;
  // end;
  // end;
  // DropTmp;
{$ENDREGION}
end;

procedure TFNewPlant.FrameTopPanel1btnDelClick(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 3 then
  begin
    if QueryContact.RecordCount > 0 then
    begin
      PGSQL.StandartDelete(QueryContact.FieldByName('id').AsString,
        '  "продукция"."контакты_плантации"', QueryContact, '', '', '', '');
    end;
  end;
end;

procedure TFNewPlant.FrameTopPanel1btnEditClick(Sender: TObject);
begin
  if PageControl1.ActivePageIndex = 3 then
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
end;

procedure TFNewPlant.FrameTopPanel3btnAddClick(Sender: TObject);
var
  s, s1: string;
begin
  if s_id_plant = 0 then
  begin
    if Application.MessageBox('Плантация еще не сохранена. Сохранить?',
      'Вопрос', MB_YESNO + MB_ICONQUESTION) = mrYes then
    begin
      InsertPlant;
    end
    else
    begin
      Abort;
    end;
  end;
  // Application.CreateForm(TFMultiSelect, FMultiSelect);
  // with FMultiSelect do
  // begin
  // table_name := 'продукция.типы';
  // with Query1 do
  // begin
  // Close;
  // SQL.Text := 'select * from продукция.типы where id  in (select код_типа' +
  // ' from продукция.плантация_тип  where код_плантации = ' +
  // inttostr(s_id_plant) +
  // ' ) and id in (SELECT t.id FROM "продукция"."тип_страна" s' +
  // ' INNER JOIN "продукция"."типы" t ON (s."код_типа" = t.id)' +
  // ' where s.код_страны = ' + inttostr(s_id_country) + ')';
  // Open;
  // while not Eof do
  // begin
  // id_not := id_not + FieldByName('id').AsString + ',';
  // Next;
  // end;
  // id_not := Copy(id_not, 1, length(id_not) - 1);
  // Close;
  // SQL.Text := 'select id from "продукция"."типы" where id  not in ' +
  // ' (SELECT DISTINCT t.id FROM "продукция"."тип_страна" s' +
  // ' INNER JOIN "продукция"."типы" t ON (s."код_типа" = t.id)' +
  // ' where s.код_страны <> ' + inttostr(s_id_country) + ')';
  // Open;
  // while not Eof do
  // begin
  // id_never_not := id_never_not + FieldByName('id').AsString + ',';
  // Next;
  // end;
  // id_never_not := Copy(id_never_not, 1, length(id_never_not) - 1);
  // end;
  // id_clear := true;
  // ShowModal;
  // if FrameSave1.id_save = true then
  // AddTypeNew;
  // end;
{$REGION 'Старый выбор'}
  Application.CreateForm(TFSelect, FSelect);
  with FSelect do
  begin
    ShowSelect('продукция.типы', 'where id not in ' +
      ' (select код_типа from продукция.плантация_тип where код_плантации=' +
      IntToStr(s_id_plant) + ') and id in (SELECT t.id FROM ' +
      ' "продукция"."тип_страна" s INNER JOIN "продукция"."типы" ' +
      ' t ON (s."код_типа" = t.id) where s.код_страны=' + IntToStr(s_id_country)
      + ') order by id');
    ShowModal;
    if FrameTopPanel1.id_select = true then
    begin
      AddType;
      ShowType;
      // DM1.db1.Commit;
      // DropTmp;
    end
    else
    begin
      // DM1.db1.Rollback;
    end;
  end;
  DropTmp;
{$ENDREGION}
end;

procedure TFNewPlant.FrameTopPanel3btnRefreshClick(Sender: TObject);
begin
  ShowType;
end;

procedure TFNewPlant.FrameUniName1btnTranslitClick(Sender: TObject);
begin
  FrameUniName1.btnTranslitClick(Sender);
  edtBrand.Text := FrameUniName1.edtUniName.Text;
end;

procedure TFNewPlant.FrameUniName1edtNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  EnableButton;
end;

procedure TFNewPlant.FrameUniName1edtNamePropertiesEditValueChanged
  (Sender: TObject);
begin
  EnableButton;
end;

procedure TFNewPlant.FrameUniName1edtRegNameKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  EnableButton;
end;

procedure TFNewPlant.FrameUniName1edtRegNamePropertiesEditValueChanged
  (Sender: TObject);
begin
  EnableButton;
end;

procedure TFNewPlant.FrameUniName1edtUniNameKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  EnableButton;
end;

procedure TFNewPlant.FrameUniName1edtUniNamePropertiesEditValueChanged
  (Sender: TObject);
begin
  EnableButton;
end;

function TFNewPlant.GetPID: string;
var
  Query1: TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.db1;
  Query1.Close;
  Query1.SQL.Text :=
    'select id from "продукция"."продукция" where "код_структуры"=4' +
    ' and "код_детализации"=' + IntToStr(s_id_plant) +
    '  and pid in (select id from "продукция"."продукция" where код_структуры=3 and код_детализации='
    + IntToStr(FramePlantSort1.edtType.EditValue) + ')';
  Query1.Open;
  Result := Query1.Fields[0].AsString;
end;

procedure TFNewPlant.InsertPlant;
var
  Query1: TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.db1;
  with Query1 do
  begin
    // DM1.db1.StartTransaction;
    s_id_plant := PGSQL.NewID('продукция.плантации_id_seq');
    Close;
    SQL.Text :=
      'insert into продукция.плантации (id, name, brand, uni_name, reg_name, ' +
      ' код_страны, примечание, адрес, телефон1,телефон2,email,код_страны_факт, '
      + ' код_города, факс) values ' +
      ' (:id, :name, :brand, :uni_name, :reg_name, :код_страны, :примечание, ' +
      ' :адрес, :телефон1, :телефон2, :email, :код_страны_факт, :код_города, :факс)';
    ParamByName('id').AsInteger := s_id_plant;
    ParamByName('name').AsString := FrameUniName1.edtName.Text;
    ParamByName('uni_name').AsString := FrameUniName1.edtUniName.Text;
    ParamByName('reg_name').AsString := FrameUniName1.edtRegName.Text;
    ParamByName('brand').AsString := edtBrand.Text;
    ParamByName('код_страны').AsInteger := s_id_country;
    ParamByName('примечание').AsString := mmoRemark.Text;
    ParamByName('адрес').Value := mmoAdres.Text;
    ParamByName('телефон1').Value := edtPhone1.Text;
    ParamByName('факс').Value := edtFax.Text;
    ParamByName('email').Value := edtEmail.Text;
    ParamByName('код_страны_факт').Value := o_id_country;
    ParamByName('код_города').Value := o_id_city;
    ExecSQL;
    try
      // DM1.db1.Commit;
      // DM1.db1.StartTransaction;
    except
    end;
  end;
end;

procedure TFNewPlant.InsUpdContact(id_ins: boolean);
begin
  with Query1 do
  begin
    Close;
    if id_ins = true then
    begin
      s_id_contact := PGSQL.NewID('"продукция"."контакты_плантации_id_seq"');
      SQL.Text :=
        'INSERT INTO "продукция"."контакты_плантации"(id, "код_плантации", name, "тип",'
        + '"телефон1", "телефон2", "телефон3", "почта", "скайп", "месенджер"' +
        ')VALUES (:id, :код_плантации, :name, :тип, :телефон1, :телефон2, :телефон3,'
        + ':почта, :скайп, :месенджер)';
    end
    else
    begin
      SQL.Text :=
        'UPDATE "продукция"."контакты_плантации" SET "код_плантации" = :код_плантации,'
        + 'name = :name, "тип" = :тип, "телефон1" = :телефон1, "телефон2" = :телефон2,'
        + '"телефон3" = :телефон3, "почта" = :почта, "скайп" = :скайп,' +
        '"месенджер" = :месенджер WHERE id = :id';
    end;
    ParamByName('id').AsInteger := s_id_contact;
    ParamByName('код_плантации').AsInteger := s_id_plant;
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

procedure TFNewPlant.SetLang;
begin
  case FPasswd.Lang of
    0:
      begin
        ColumnFIO.Caption := 'Ф.И.О.';
        ColumnPhone.Caption := 'Телефон';
        ColumnPhoneMobile.Caption := 'Мобильный телефон';
        Caption := 'Плантация';
        TabSort.Caption := 'Сорт';
        TabOsn.Caption := 'Основные';
        TabContact.Caption := 'Контакты';
        TabAccounts.Caption := 'Банковские счета';
        TabAlarm.Caption := 'Настройки и предупреждения';
        ColumnBank.Caption := 'Банк';
        ColumnAccount.Caption := 'Счет';
        lbl1.Caption := 'Максимальный срок задолженности:';
        lbl2.Caption := 'Начать оповещать до:';
        lbl3.Caption := 'Максимальная сумма задолженности:';
        lbl4.Caption := 'Начать оповещать до:';
        lbl5.Caption := 'дней';
        lbl6.Caption := 'дней';
        chkUse.Caption := 'Использовать оповещения';
        GroupType.Caption := 'Типы';
        lblBrand.Caption := 'Брэнд';
        lblDescr.Caption := 'Примечание';
        FramePlantSort1.chkDel.Caption := 'Показать скрытые';
        FramePlantSort1.lblDetail.Caption := 'Тип';
        FramePlantSort1.edtType.Properties.ListFieldNames := 'name';
      end;
    1:
      begin
        ColumnFIO.Caption := 'Name';
        ColumnPhone.Caption := 'Phone';
        ColumnPhoneMobile.Caption := 'Mobile phone';
        Caption := 'Plantation';
        TabOsn.Caption := 'Main';
        TabSort.Caption := 'Grades';
        TabContact.Caption := 'Contacts';
        TabAccounts.Caption := 'Bank accounts';
        TabAlarm.Caption := 'Settings and warnings';
        ColumnBank.Caption := 'Bank';
        ColumnAccount.Caption := 'Account';
        lbl1.Caption := 'The maximum term debt:';
        lbl2.Caption := 'Start notify to:';
        lbl3.Caption := 'The maximum amount of indebtedness:';
        lbl4.Caption := 'Start notify to:';
        lbl5.Caption := 'days';
        lbl6.Caption := 'days';
        chkUse.Caption := 'Use alerts';
        GroupType.Caption := 'Types';
        lblBrand.Caption := 'Brand';
        lblDescr.Caption := 'Note';
        FramePlantSort1.chkDel.Caption := 'Show the hidden';
        FramePlantSort1.lblDetail.Caption := 'Type';
        FramePlantSort1.edtType.Properties.ListFieldNames := 'uni_name';
      end;
    2:
      begin
        ColumnFIO.Caption := 'El nombre';
        ColumnPhone.Caption := 'Teléfono';
        ColumnPhoneMobile.Caption := 'Teléfono móvil';
        Caption := 'La plantación';
        TabOsn.Caption := 'Básicos';
        TabSort.Caption := 'Variedades';
        TabContact.Caption := 'Los contactos';
        TabAccounts.Caption := 'Las cuentas bancarias';
        TabAlarm.Caption := 'Los ajustes y la prevención';
        ColumnBank.Caption := 'El banco';
        ColumnAccount.Caption := 'La cuenta';
        lbl1.Caption := 'El plazo máximo de la deuda:';
        lbl2.Caption := 'Comenzar informar hasta:';
        lbl3.Caption := 'La suma máxima de deuda:';
        lbl4.Caption := 'Comenzar informar hasta:';
        lbl5.Caption := 'días';
        lbl6.Caption := 'días';
        chkUse.Caption := 'Usar los avisos';
        GroupType.Caption := 'Los tipos';
        lblBrand.Caption := 'Brand';
        lblDescr.Caption := 'La nota';
        FramePlantSort1.chkDel.Caption := 'Mostrar escondido';
        FramePlantSort1.lblDetail.Caption := 'Tipo';
        FramePlantSort1.edtType.Properties.ListFieldNames := 'reg_name';
      end;
  end;
end;

procedure TFNewPlant.ShowContact(id_locate: Integer = 0);
begin
  with QueryContact do
  begin
    Close;
    SQL.Text :=
      'select * from  "продукция"."контакты_плантации" where код_плантации=' +
      IntToStr(s_id_plant);
    Open;
    Locate('id', id_locate, []);
  end;
end;

procedure TFNewPlant.ShowType;
begin
  // with QueryType do
  // begin
  // Close;
  // SQL.Text := 'SELECT t.*, p.id id_pt FROM "продукция"."типы" t INNER JOIN ' +
  // ' "продукция"."плантация_тип" p ON (t.id = p."код_типа") ' +
  // ' where p.код_плантации=' + IntToStr(s_id_plant);
  // Open;
  // EnableButton;
  // end;
end;

procedure TFNewPlant.UpdatePlant;
var
  Query1: TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.db1;
  with Query1 do
  begin
    Close;
    SQL.Text := 'update продукция.плантации set name=:name, brand=:brand, ' +
      ' uni_name=:uni_name, reg_name=:reg_name, код_страны=:код_страны' +
      ',примечание=:примечание, адрес=:адрес, телефон1=:телефон1, телефон2=:телефон2,'
      + 'email=:email,код_страны_факт=:код_страны_факт, код_города=:код_города, факс=:факс'
      + ' where id=' + IntToStr(s_id_plant);
    ParamByName('name').AsString := FrameUniName1.edtName.Text;
    ParamByName('uni_name').AsString := FrameUniName1.edtUniName.Text;
    ParamByName('reg_name').AsString := FrameUniName1.edtRegName.Text;
    ParamByName('brand').AsString := edtBrand.Text;
    ParamByName('код_страны').AsInteger := s_id_country;
    ParamByName('примечание').AsString := mmoRemark.Text;
    ParamByName('адрес').Value := mmoAdres.Text;
    ParamByName('телефон1').Value := edtPhone1.Text;
    ParamByName('факс').Value := edtFax.Text;
    ParamByName('email').Value := edtEmail.Text;
    ParamByName('код_страны_факт').Value := o_id_country;
    ParamByName('код_города').Value := o_id_city;
    ExecSQL;
  end;
end;

end.
