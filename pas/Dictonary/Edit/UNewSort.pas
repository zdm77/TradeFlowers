unit UNewSort;
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
  cxImage,
  cxDBEdit,
  Vcl.StdCtrls,
  cxButtons,
  UFrameSave,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sCurrEdit,
  cxLabel,
  cxTextEdit,
  cxMemo,
  cxGroupBox,
  dxSkinscxPCPainter,
  
  cxStyles,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  DB,
  cxDBData,
  UFrameTopPanel,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  cxPC,
  cxMaskEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  dxbar,
  TaskDialog,
  UFrameUniName,
  jpeg,
  cxNavigator,
  dxBarBuiltInMenu,
  
  dxSkinDevExpressStyle,
  
  dxSkinsDefaultPainters, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog;
type
  TFNewSort = class(TForm)
    FrameSave1 : TFrameSave;
    QueryUpd : TUniQuery;
    dlgOpen1 : TOpenDialog;
    Page1 : TcxPageControl;
    Tabab1 : TcxTabSheet;
    GroupOsn : TcxGroupBox;
    mmoDescr : TcxMemo;
    lblDescr : TcxLabel;
    edtQuantity : TsCalcEdit;
    lblCount : TcxLabel;
    QueryCountrySort : TUniQuery;
    dsCountrySort : TDataSource;
    TabCountry : TcxTabSheet;
    GroupCountry : TcxGroupBox;
    FrameTopPanel3 : TFrameTopPanel;
    GridCountry : TcxGrid;
    ViewType : TcxGridDBTableView;
    ColumnUniName : TcxGridDBColumn;
    ColumnName : TcxGridDBColumn;
    ColumnRegName : TcxGridDBColumn;
    LevelOrg : TcxGridLevel;
    edtType : TcxLookupComboBox;
    LabelType : TcxLabel;
    QueryTypeEdit : TUniQuery;
    dsType : TDataSource;
    TabPlant : TcxTabSheet;
    Transact1 : TUniTransaction;
    GroupPlant : TcxGroupBox;
    FrameTopPanel1 : TFrameTopPanel;
    cxGrid1 : TcxGrid;
    cxGridDBTableView1 : TcxGridDBTableView;
    ColumnUniNameT : TcxGridDBColumn;
    ColumnNameT : TcxGridDBColumn;
    ColumnRegNameT : TcxGridDBColumn;
    cxGridLevel1 : TcxGridLevel;
    QueryPlantSort : TUniQuery;
    dsPlantSort : TDataSource;
    dsLength : TDataSource;
    QueryLength : TUniQuery;
    AdvTaskDialog1 : TAdvTaskDialog;
    FrameUniName1 : TFrameUniName;
    GroupImage : TcxGroupBox;
    btnOpen : TcxButton;
    btnDel : TcxButton;
    img1 : TcxDBImage;
    procedure edtNameKeyUp(Sender : TObject; var Key : Word; Shift : TShiftState);
    procedure edtRegNameKeyUp(Sender : TObject; var Key : Word;
                                 Shift : TShiftState);
    procedure edtUniNameKeyUp(Sender : TObject; var Key : Word;
                                 Shift : TShiftState);
    procedure FormShow(Sender : TObject);
    procedure FrameSave1btnSaveClick(Sender : TObject);
    procedure btnAddClick(Sender : TObject);
    procedure btnNextClick(Sender : TObject);
    procedure btnPriorClick(Sender : TObject);
    procedure FormClose(Sender : TObject; var Action : TCloseAction);
    procedure FrameTopPanel1btnAddClick(Sender : TObject);
    procedure FrameTopPanel2btnAddClick(Sender : TObject);
    procedure FrameTopPanel1btnDelClick(Sender : TObject);
    procedure FrameTopPanel3btnDelClick(Sender : TObject);
    procedure edtUniNamePropertiesEditValueChanged(Sender : TObject);
    procedure edtNamePropertiesEditValueChanged(Sender : TObject);
    procedure edtRegNamePropertiesEditValueChanged(Sender : TObject);
    procedure FormCloseQuery(Sender : TObject; var CanClose : Boolean);
    procedure FrameUniName1edtNameKeyUp(Sender : TObject; var Key : Word;
                                           Shift : TShiftState);
    procedure FrameUniName1edtUniNameKeyUp(Sender : TObject; var Key : Word;
                                              Shift : TShiftState);
    procedure FrameUniName1edtUniNamePropertiesEditValueChanged
        (Sender : TObject);
    procedure FrameUniName1edtNamePropertiesEditValueChanged(Sender : TObject);
    procedure FrameUniName1edtRegNameKeyUp(Sender : TObject; var Key : Word;
                                              Shift : TShiftState);
    procedure FrameUniName1edtRegNamePropertiesEditValueChanged
        (Sender : TObject);
    procedure Page1Change(Sender : TObject);
    procedure btnOpenClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
  private
    { Private declarations }
  public
    s_id_sort : Integer;
    s_id_country : Integer;
    s_id_type : Integer;
    r_pid : Integer;
    file_pict : string;
    procedure AddCountry;
    procedure AddPlant;
    procedure AddPlantNew;
    procedure DropTmp;
    procedure EnableSave;
    function F_Resyze_Image(w, h : Integer; f_src : string) : TJPEGImage;
    procedure GetMove(id_next : smallint);
    procedure InsertSort;
    procedure SetLang;
    procedure ShowCountry;
    procedure ShowPlant;
    procedure ShowType;
    procedure UpdateSort;
    { Public declarations }
  end;

var
  FNewSort : TFNewSort;
implementation
{$R *.dfm}

uses
  UDataModule1,
  PGSQL,
  USelect,
  UNewLength,
  UPasswd,
  UDialogMy,
  ULang,
  UMultiSelect,
  USplash;
procedure TFNewSort.AddCountry;
var
  Query1 : TUniQuery;
begin
  // DM1.dbUpd.Commit;
  // DM1.dbUpd.StartTransaction;
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  Query1.Close;
  Query1.SQL.Text :=
                    'insert into продукция.сорт_страна (код_сорта, код_страны) values ' +
                    ' (:код_сорта, :код_страны)';
  with FSelect.QuerySelect do
  begin
    First;
    while not Eof do
    begin
      if FieldByName('id_sel').AsInteger = 1 then
      begin
        Query1.Close;
        Query1.ParamByName('код_страны').AsInteger := FieldByName('id')
      .AsInteger;
        Query1.ParamByName('код_сорта').AsInteger := s_id_sort;
        Query1.ExecSQL;
      end;
      Next;
    end;
  end;
  // DM1.dbUpd.Commit;
end;
procedure TFNewSort.AddPlant;
var
  Query1, Query2, Query3 : TUniQuery;
begin
  // DM1.dbUpd.StartTransaction;
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  Query2 := TUniQuery.Create(nil);
  Query2.Connection := DM1.dbUpd;
  Query3 := TUniQuery.Create(nil);
  Query3.Connection := DM1.dbUpd;
  Query1.Close;
  Query1.SQL.Text :=
                    'insert into продукция.сорт_плантация (код_сорта, код_плантации) values ' +
                    ' (:код_сорта, :код_плантации)';
  Query2.Close;
  Query2.SQL.Text := 'insert into продукция.продукция (pid, код_структуры, ' +
' код_детализации, name, uni_name, reg_name, id_group) values ' +
' (:pid, 5, :код_детализации, :name, :uni_name, :reg_name,1)';
  Query3.Close;
  Query3.SQL.Text := 'select id, pid from "продукция"."продукция" where ' +
' код_детализации=:код_плантации and код_структуры=4 ' +
' and код_детализации in (select pt."код_плантации" from ' +
' "продукция"."плантация_тип" pt where pt."код_типа"=' + IntToStr(s_id_type)
+ ' and  pt."код_плантации" = :код_плантации) and ' +
' pid IN (select id from "продукция"."продукция" p where p."код_структуры" '
+ ' = 3 and p."код_детализации" = ' + IntToStr(s_id_type) + ')';
  // Abort;
  with FSelect.QuerySelect do
  begin
    First;
    while not Eof do
    begin
      with FrameUniName1 do
      begin
        if FieldByName('id_sel').AsInteger = 1 then
        begin
          Query1.Close;
          Query1.ParamByName('код_плантации').AsInteger := FieldByName('id')
        .AsInteger;
          Query1.ParamByName('код_сорта').AsInteger := s_id_sort;
          Query1.ExecSQL;
          Query3.Close;
          Query3.ParamByName('код_плантации').AsInteger := FieldByName('id')
        .AsInteger;
          Query3.Open;
          Query2.Close;
          Query2.ParamByName('pid').AsInteger := Query3.FieldByName('id')
        .AsInteger;
          Query2.ParamByName('код_детализации').AsInteger := s_id_sort;
          Query2.ParamByName('name').AsString := edtName.Text;
          Query2.ParamByName('uni_name').AsString := edtUniName.Text;
          Query2.ParamByName('reg_name').AsString := edtRegName.Text;
          Query2.ExecSQL;
        end;
      end;
      Next;
    end;
    // DM1.dbUpd.Commit;
  end;
end;
procedure TFNewSort.AddPlantNew;
var
  Query1, Query2, Query3, Query4 : TUniQuery;
  id : Integer;
begin
  FSplash.Show();
  FSplash.Update;
  // DM1.dbUpd.StartTransaction;
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  Query2 := TUniQuery.Create(nil);
  Query2.Connection := DM1.dbUpd;
  Query3 := TUniQuery.Create(nil);
  Query3.Connection := DM1.dbUpd;
  Query4 := TUniQuery.Create(nil);
  Query4.Connection := DM1.db1;
  Query2.Close;
  Query2.SQL.Text := 'insert into продукция.продукция (id, pid, код_структуры, '
+ ' код_детализации, name, uni_name, reg_name, id_group, tree, level_val) values '
+ ' (:id, :pid, 5, :код_детализации, :name, :uni_name, :reg_name,1, :tree, :level_val)';
  Query3.Close;
  Query3.SQL.Text := 'select id, tree from "продукция"."продукция" where ' +
' код_детализации=:код_детализации and код_структуры=4  ' +
'  and pid in (select id from "продукция"."продукция" where    ' +
'  код_детализации=' + IntToStr(s_id_type) + ' and код_структуры=3) ';
  { проверка существования }
  Query4.Close;
  Query4.SQL.Text :=
                    'select id from "продукция"."продукция" where код_структуры = 4 and' +
                    ' id in (select pid from "продукция"."продукция"  where код_структуры = 5 and'
                    + ' код_детализации = ' + IntToStr(s_id_sort) +
                    ') and код_детализации=:id_type   ';
  with FMultiSelect.QueryDist do
  begin
    First;
    while not Eof do
    begin
      Query4.Close;
      Query4.ParamByName('id_type').AsInteger := FieldByName('id').AsInteger;
      Query4.Open;
      if Query4.Fields[0].AsString = '' then
      begin
        Query3.Close;
        Query3.ParamByName('код_детализации').AsInteger := FieldByName('id')
      .AsInteger;
        Query3.Open;
        if Query3.Fields[0].AsInteger <> 0 then
        begin
          Query2.Close;
          id := PGSQL.NewID('"продукция"."продукция_id_seq"');
          Query2.ParamByName('id').AsInteger := id;
          Query2.ParamByName('pid').AsInteger := Query3.Fields[0].AsInteger;
          Query2.ParamByName('код_детализации').AsInteger := s_id_sort;
          Query2.ParamByName('name').AsString := FrameUniName1.edtName.Text;
          Query2.ParamByName('uni_name').AsString :=
                                                    FrameUniName1.edtUniName.Text;
          Query2.ParamByName('reg_name').AsString :=
                                                    FrameUniName1.edtRegName.Text;
          Query2.ParamByName('tree').AsString :=
                                                PGSQL.GetNewTree(Query3.Fields[0].AsInteger,
                                                                  Query3.Fields[1].AsString);
          Query2.ParamByName('level_val').AsInteger := PGSQL.Level_Val;
          Query2.ExecSQL;
          Query1.Close;
          Query1.SQL.Text :=
                            'insert into "продукция"."сорт_плантация" (код_сорта, код_плантации, код_товара) values '
                            + ' (:код_сорта, :код_плантации, :код_товара)';
          Query1.ParamByName('код_сорта').AsInteger := s_id_sort;
          Query1.ParamByName('код_плантации').AsInteger := FieldByName('id')
        .AsInteger;
          Query1.ParamByName('код_товара').AsInteger := id;
          Query1.ExecSQL;
        end;
      end;
      Next;
    end;
  end;
  with FMultiSelect.QuerySource do
  begin
    First;
    if RecordCount > 0 then
    begin
      while not Eof do
      begin
        PGSQL.DelSort(s_id_sort, Fields[0].AsInteger);
        Next;
      end;
    end;
  end;
  FSplash.Close;
  ShowPlant;
end;
procedure TFNewSort.btnAddClick(Sender : TObject);
begin
  // if s_id_sort = 0 then
  // begin
  // if Application.MessageBox('Сорт еще не сохранен. Сохранить?', 'Вопрос',
  // MB_YESNO + MB_ICONQUESTION) = mrYes then
  // begin
  // InsertSort;
  // end
  // else
  // begin
  // Abort;
  // end;
  // end;
  // Application.CreateForm(TFMultiSelect, FMultiSelect);
  // with FMultiSelect do
  // begin
  // table_name := 'продукция.страны';
  // with Query1 do
  // begin
  // Close;
  // SQL.Text := 'select * from продукция.страны where id in' +
  // '(select код_страны from "продукция"."сорт_страна" where код_сорта=' +
  // IntToStr(s_id_sort) + ')';
  // Open;
  // while not Eof do
  // begin
  // id_not := id_not + FieldByName('id').AsString + ',';
  // Next;
  // end;
  // id_not := Copy(id_not, 1, length(id_not) - 1);
  // Close;
  // SQL.Text := 'select id from "продукция"."плантации" where id not in ' +
  // ' (select код_плантации from "продукция"."плантация_тип" where код_типа='
  // + IntToStr(s_id_type) + ')';
  // Open;
  // while not Eof do
  // begin
  // id_never_not := id_never_not + FieldByName('id').AsString + ',';
  // Next;
  // end;
  // id_never_not := Copy(id_never_not, 1, length(id_never_not) - 1);
  // Close;
  // SQL.Text := 'select * from "продукция"."страны" where id in(' +
  // 'select код_страны from "продукция"."сорт_страна" where код_сорта=' +
  // IntToStr(s_id_sort) + ')';
  // Open;
  // while not Eof do
  // begin
  // s_id_detatils := s_id_detatils + FieldByName('id').AsString + ',';
  // Next;
  // end;
  // GroupDetail.Visible := true;
  // s_id_detatils := Copy(s_id_detatils, 1, length(s_id_detatils) - 1);
  // table_detail := '"продукция"."страны"';
  // id_clear := true;
  // name_detail := 'код_страны';
  // ShowDetail(s_id_country);
  // end;
  // ShowModal;
  // if FrameSave1.id_save = true then
  // AddPlantNew;
  // end;
  // DM1.db1.StartTransaction;
  Application.CreateForm(TFSelect, FSelect);
  with FSelect do
  begin
    ShowSelect('продукция.страны', 'where id not in (select код_страны ' +
    ' from "продукция"."сорт_страна" where код_сорта=' +
    IntToStr(s_id_sort) + ')');
    ShowModal;
    if FrameTopPanel1.id_select = true then
    begin
      EnableSave;
      AddCountry;
      ShowCountry;
      // DM1.db1.Commit;
    end
    else
    begin
      // DM1.db1.Rollback;
    end;
  end;
  EnableSave;
  DropTmp;
end;
procedure TFNewSort.btnDelClick(Sender : TObject);
begin
  if Application.MessageBox('Вы действительно хотите удалить изображение?',
                             'Вопрос', MB_YESNO + MB_ICONQUESTION) = mrYes then
  begin
    img1.EditValue := null;
    file_pict := '';
  end;
end;
procedure TFNewSort.btnNextClick(Sender : TObject);
begin
  if s_id_sort = 0 then
  begin
    // if Application.MessageBox('Сорт еще не сохранен. Сохранить?', 'Вопрос',
    // MB_YESNO + MB_ICONQUESTION) = mrYes then
    // begin
    InsertSort;
    // end
  end
  else
    GetMove(1);
end;
procedure TFNewSort.btnOpenClick(Sender : TObject);
begin
  if dlgOpen1.Execute then
  begin
    file_pict := dlgOpen1.FileName;
    img1.Picture.LoadFromFile(file_pict);
    img1.Picture.Assign(F_Resyze_Image(120, 120, file_pict));
  end;
end;
procedure TFNewSort.btnPriorClick(Sender : TObject);
begin
  GetMove(0);
end;
procedure TFNewSort.DropTmp;
var
  Query1 : TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.db1;
  Query1.Close;
  Query1.SQL.Text := 'drop table tmp';
  Query1.ExecSQL;
end;
procedure TFNewSort.edtNameKeyUp(Sender : TObject; var Key : Word;
                                    Shift : TShiftState);
begin
  EnableSave;
end;
procedure TFNewSort.edtNamePropertiesEditValueChanged(Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewSort.edtRegNameKeyUp(Sender : TObject; var Key : Word;
                                       Shift : TShiftState);
begin
  EnableSave;
end;
procedure TFNewSort.edtRegNamePropertiesEditValueChanged(Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewSort.edtUniNameKeyUp(Sender : TObject; var Key : Word;
                                       Shift : TShiftState);
begin
  EnableSave;
end;
procedure TFNewSort.edtUniNamePropertiesEditValueChanged(Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewSort.EnableSave;
begin
  with FrameUniName1 do
  begin
    if (edtName.Text <> '') and (edtUniName.Text <> '') and
    (edtRegName.Text <> '') then
    begin
      FrameTopPanel3.btnAdd.Enabled := true;
      FrameTopPanel3.btnDel.Enabled := true;
      FrameTopPanel1.btnAdd.Enabled := true;
      FrameTopPanel1.btnDel.Enabled := true;
      FrameSave1.btnSave.Enabled := true;
      FrameSave1.btnNext.Enabled := true;
    end
    else
    begin
      FrameTopPanel3.btnAdd.Enabled := false;
      FrameTopPanel3.btnDel.Enabled := false;
      FrameTopPanel1.btnAdd.Enabled := false;
      FrameTopPanel1.btnDel.Enabled := false;
      FrameSave1.btnSave.Enabled := false;
      FrameSave1.btnNext.Enabled := false;
    end;
    if QueryCountrySort.RecordCount > 0 then
      FrameTopPanel3.btnDel.Enabled := true
    else
      FrameTopPanel3.btnDel.Enabled := false;
    if QueryPlantSort.RecordCount > 0 then
      FrameTopPanel1.btnDel.Enabled := true
    else
      FrameTopPanel1.btnDel.Enabled := false;
  end;
end;
procedure TFNewSort.FormClose(Sender : TObject; var Action : TCloseAction);
begin
  if Transact1.Active = true then
    Transact1.Rollback;
end;
procedure TFNewSort.FormCloseQuery(Sender : TObject; var CanClose : Boolean);
begin
  if (s_id_sort <> 0) and (QueryCountrySort.RecordCount = 0) then
  begin
    with QueryUpd do
    begin
      Close;
      SQL.Text := 'delete from "продукция"."сорта" where id=' +
    IntToStr(s_id_sort);
      ExecSQL;
    end;
  end;
end;
procedure TFNewSort.FormShow(Sender : TObject);
begin
  SetLang;
  with FrameUniName1 do
  begin
    SetLang;
    FrameSave1.SetLang;
    FrameTopPanel3.SetLang;
    FrameTopPanel1.SetLang;
    Page1.HideTabs := true;
    Page1.ActivePageIndex := 0;
    edtUniName.SetFocus;
    EnableSave;
  end;
  EnableSave;
end;
procedure TFNewSort.FrameSave1btnSaveClick(Sender : TObject);
begin
  if s_id_sort = 0 then
    InsertSort
  else
    UpdateSort;
  FrameSave1.btnSaveClick(Sender);
  Close;
end;
procedure TFNewSort.FrameTopPanel1btnAddClick(Sender : TObject);
begin
  if s_id_sort = 0 then
  begin
    if Application.MessageBox('Сорт еще не сохранен. Сохранить?', 'Вопрос',
                               MB_YESNO + MB_ICONQUESTION) = mrYes then
    begin
      InsertSort;
    end
    else
    begin
      Abort;
    end;
  end;
  // Application.CreateForm(TFMultiSelect, FMultiSelect);
  // with FMultiSelect do
  // begin
  // table_name := 'продукция.плантации';
  // with Query1 do
  // begin
  // Close;
  // SQL.Text := 'select * from "продукция"."плантации" where id in(' +
  // 'select "код_плантации" from "продукция"."сорт_плантация" where код_сорта='
  // + IntToStr(s_id_sort) + ')';
  // Open;
  // while not Eof do
  // begin
  // id_not := id_not + FieldByName('id').AsString + ',';
  // Next;
  // end;
  // id_not := Copy(id_not, 1, length(id_not) - 1);
  // Close;
  // SQL.Text := 'select id from "продукция"."плантации" where id not in ' +
  // ' (select код_плантации from "продукция"."плантация_тип" where код_типа='
  // + IntToStr(s_id_type) + ')';
  // Open;
  // while not Eof do
  // begin
  // id_never_not := id_never_not + FieldByName('id').AsString + ',';
  // Next;
  // end;
  // id_never_not := Copy(id_never_not, 1, length(id_never_not) - 1);
  // Close;
  // SQL.Text := 'select * from "продукция"."страны" where id in(' +
  // 'select код_страны from "продукция"."сорт_страна" where код_сорта=' +
  // IntToStr(s_id_sort) + ')';
  // Open;
  // while not Eof do
  // begin
  // s_id_detatils := s_id_detatils + FieldByName('id').AsString + ',';
  // Next;
  // end;
  // GroupDetail.Visible := true;
  // s_id_detatils := Copy(s_id_detatils, 1, length(s_id_detatils) - 1);
  // table_detail := '"продукция"."страны"';
  // id_clear := true;
  // name_detail := 'код_страны';
  // ShowDetail(s_id_country);
  // GroupDetail.Visible := false;
  // end;
  // ShowModal;
  // if FrameSave1.id_save = true then
  // AddPlantNew;
  // end;
{$REGION 'Старый выбор'}
  // DM1.db1.StartTransaction;
  Application.CreateForm(TFSelect, FSelect);
  with FSelect do
  begin
    // ShowSelect('продукция.плантации',
    // 'where id not in (select s."код_плантации" ' +
    // ' from "продукция"."сорт_плантация" as s where s."код_сорта"=' +
    // IntToStr(s_id_sort) + ') ' +
    // ' and id in (select p."код_плантации" from "продукция"."плантация_тип" p '
    // + ' where код_типа=' + IntToStr(s_id_type) +
    // ') and "код_страны" in (select st."код_страны" from ' +
    // ' "продукция"."сорт_страна" st where st."код_сорта"=' +
    // IntToStr(s_id_sort) + ')');
    ShowSelect('продукция.плантации',
                'where id not in (select s."код_плантации" ' +
                ' from "продукция"."сорт_плантация" as s where s."код_сорта"=' +
                IntToStr(s_id_sort) + ') ' +
                ' and id in (select p."код_плантации" from "продукция"."плантация_тип" p '
                + ' where код_типа=' + IntToStr(s_id_type) + ') and "код_страны"=' +
                IntToStr(s_id_country));
    ColumnUniName.DataBinding.FieldName := 'brand';
    ShowModal;
    if FrameTopPanel1.id_select = true then
    begin
      AddPlant;
      ShowPlant;
      // DM1.db1.Commit;
    end
    else
    begin
      // DM1.db1.Rollback;
    end;
    DropTmp;
  end;
{$ENDREGION}
  EnableSave;
end;
procedure TFNewSort.FrameTopPanel1btnDelClick(Sender : TObject);
var
  pid : string;
  s : string;
begin
  case FPasswd.edtLang.ItemIndex of
    0 : QuestionDialog('Удаление', 'Вы действительно хотите удалить позицию?');
    1 : QuestionDialog('Removal', 'You really want to remove a position? ');
    2 : QuestionDialog('Desaparición', 'Queréis quitar realmente la posición?');
  end;
  if UDialogMy.Dlg.Execute = 100 then
  begin
    with DM1.QueryUpd do
    begin
      // DM1.dbUpd.StartTransaction;
      { проверяем позиции если есть запрещаем }
      { выбираем id плантации в продукции }
      Close;
      SQL.Text := 'select id from продукция.продукция where код_структуры=4 ' +
    ' and код_детализации=' + QueryPlantSort.FieldByName
      ('код_плантации').AsString;
      Open;
      pid := Fields[0].AsString;
      { выбираем id сорта в продукции }
      Close;
      SQL.Text := 'select id from продукция.продукция where pid=' + pid +
    ' and код_структуры=5 ' + ' and код_детализации=' +
    QueryPlantSort.FieldByName('код_сорта').AsString;
      Open;
      pid := Fields[0].AsString;
      { смотрим детей }
      Close;
      SQL.Text := 'select * from продукция.продукция where pid=' + pid;
      Open;
      if Fields[0].AsString = '' then
      begin
        { отвязываем }
        try
          Close;
          SQL.Text := 'delete from продукция.продукция where id=' + pid;
          ExecSQL;
          Close;
          SQL.Text := 'delete from продукция.сорт_плантация where id=' +
        QueryPlantSort.FieldByName('id_sp').AsString;
          ExecSQL;
            // DM1.dbUpd.Commit;
          ShowPlant;
            // QueryProduct.Refresh;
        except
            // DM1.dbUpd.Rollback;
        end;
      end
      else
      begin
        { собираем детей }
        while not Eof do
        begin
          s := s + FieldByName('uni_name').AsString + #13;
          Next;
        end;
        case FPasswd.edtLang.ItemIndex of
          0 : ErrorDialog('Удаление невозможно.', s,
                           'Имеются потомки. Удалите всех потомков сорта из номенклатуры и повторите попытку.',
                           'Показать потомков');
          1 : ErrorDialog('Removal is impossible', s,
                           'There are descendants. Remove all the seed of varieties of the nomenclature and try again. ',
                           'Show descendants');
          2 : ErrorDialog('La desaparición es imposible', s,
                           'Hay unos descendientes. Quiten a todos los descendientes de la clase de la nomenclatura y repitan la tentativa.',
                           'Mostrar a los descendientes');
        end;
      end;
    end;
  end;
end;
procedure TFNewSort.FrameTopPanel2btnAddClick(Sender : TObject);
begin
  Application.CreateForm(TFNewSortRose, FNewSortRose);
  with FNewSortRose do
  begin
  end;
end;
procedure TFNewSort.FrameTopPanel3btnDelClick(Sender : TObject);
var
  pid : string;
  s : string;
begin
  case FPasswd.edtLang.ItemIndex of
    0 : QuestionDialog('Удаление', 'Вы действительно хотите удалить позицию?');
    1 : QuestionDialog('Removal', 'You really want to remove a position? ');
    2 : QuestionDialog('Desaparición', 'Queréis quitar realmente la posición?');
  end;
  if UDialogMy.Dlg.Execute = 100 then
  begin
    with DM1.QueryUpd do
    begin
      { проверяем связаные плантации }
      Close;
      SQL.Text := 'select * from "продукция"."плантации" where id in ' +
    ' (select код_плантации from продукция.сорт_плантация where код_сорта='
    + IntToStr(s_id_sort) + ' and код_плантации in (select id from ' +
    ' "продукция"."плантации" where код_страны=' +
    QueryCountrySort.FieldByName('id').AsString + '))';
      Open;
      { если нет  связаных плантаций }
      if Fields[0].AsString = '' then
      begin
        DM1.dbUpd.StartTransaction;
        try
          Close;
          SQL.Text := 'delete from "продукция"."сорт_страна" where код_страны='
        + QueryCountrySort.FieldByName('id').AsString + ' and код_сорта=' +
        IntToStr(s_id_sort);
          ExecSQL;
          DM1.dbUpd.Commit;
          ShowCountry;
        except
          DM1.dbUpd.Rollback;
        end;
      end
      else
      begin
        while not Eof do
        begin
          s := s + FieldByName('name').AsString + #13;
          Next;
        end;
        case FPasswd.edtLang.ItemIndex of
          0 : ErrorDialog('Удаление невозможно.', s,
                           'Имеются связаные плантации по данной стране. Закройте это диалоговое окно, нажмите ДАЛЕЕ, отвяжете используемые плантации и повторите попытку.',
                           'Показать связанные плантации');
          1 : ErrorDialog('Removal is impossible', s,
                           'There are related plantations in the country. Close this dialog box, click NEXT, unbind used plantations and try again. ',
                           'Show the associated plantations');
          2 : ErrorDialog('La desaparición es imposible', s,
                           'Hay связаные las plantaciones por el país dado. Cierren esta ventana dialogal, presionen MÁS, desataréis las plantaciones usadas y repitan la tentativa..',
                           'Mostrar las plantaciones vinculadas');
        end;
      end;
    end;
  end;
end;
procedure TFNewSort.FrameUniName1edtNameKeyUp(Sender : TObject; var Key : Word;
                                                 Shift : TShiftState);
begin
  EnableSave;
end;
procedure TFNewSort.FrameUniName1edtNamePropertiesEditValueChanged
  (Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewSort.FrameUniName1edtRegNameKeyUp(Sender : TObject; var Key : Word;
                                                    Shift : TShiftState);
begin
  EnableSave;
end;
procedure TFNewSort.FrameUniName1edtRegNamePropertiesEditValueChanged
  (Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewSort.FrameUniName1edtUniNameKeyUp(Sender : TObject; var Key : Word;
                                                    Shift : TShiftState);
begin
  EnableSave;
end;
procedure TFNewSort.FrameUniName1edtUniNamePropertiesEditValueChanged
  (Sender : TObject);
begin
  EnableSave;
end;
function TFNewSort.F_Resyze_Image(w, h : Integer; f_src : string) : TJPEGImage;
var
  bmp : TBItmap;
begin
  Result := TJPEGImage.Create;
  Result.LoadFromFile(f_src);
  bmp := TBItmap.Create;
  try
    bmp.Width := w;
    bmp.Height := h;
    bmp.Canvas.StretchDraw(bmp.Canvas.Cliprect, Result);
    Result.Assign(bmp);
  finally
    bmp.Free;
  end;
end;
procedure TFNewSort.GetMove(id_next : smallint);
begin
  with FrameSave1 do
  begin
    case Page1.ActivePageIndex of
      0 :
      begin
        btnPrior.Visible := ivAlways;
        Page1.ActivePageIndex := 1;
        btnSave.Visible := ivNever;
      end;
      1 :
      begin
        if id_next = 1 then
        begin
          Page1.ActivePageIndex := 2;
          btnPrior.Visible := ivAlways;
          btnNext.Visible := ivNever;
          btnSave.Visible := ivAlways;
        end
        else
        begin
          Page1.ActivePageIndex := 0;
          btnPrior.Visible := ivNever;
          btnNext.Visible := ivAlways;
          btnSave.Visible := ivNever;
        end;
        if s_id_sort <> 0 then
          btnNext.Enabled := true
        else
          btnNext.Enabled := false;
      end;
      2 :
      begin
        btnPrior.Visible := ivAlways;
        btnNext.Visible := ivAlways;
        Page1.ActivePageIndex := 1;
        btnSave.Visible := ivAlways;
      end;
    end;
  end;
end;
procedure TFNewSort.InsertSort;
var
  Query1 : TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  // DM1.dbUpd.StartTransaction;
  with Query1 do
  begin
    // Transact1.StartTransaction;
    with FrameUniName1 do
    begin
      // проверяем на существование
      Close;
      SQL.Text := 'select id from продукция.сорта where name=:name or ' +
    ' uni_name=:uni_name or reg_name=:reg_name';
      ParamByName('name').AsString := edtName.Text;
      ParamByName('uni_name').AsString := edtUniName.Text;
      ParamByName('reg_name').AsString := edtRegName.Text;
      Open;
      if Fields[0].AsString = '' then
      begin
        GetMove(1);
        s_id_sort := PGSQL.NewID('продукция.сорта_id_seq');
        Close;
        SQL.Text :=
                   'insert into продукция.сорта (id, name, uni_name, reg_name, стеблей, '
                   + ' код_типа, комментарий) values ' +
                   ' (:id, :name, :uni_name, :reg_name, :стеблей, :код_типа,:комментарий)';
        ParamByName('id').AsInteger := s_id_sort;
        ParamByName('name').AsString := edtName.Text;
        ParamByName('uni_name').AsString := edtUniName.Text;
        ParamByName('reg_name').AsString := edtRegName.Text;
        ParamByName('стеблей').AsString := edtQuantity.Text;
        s_id_type := edtType.EditValue;
        ParamByName('код_типа').AsInteger := s_id_type;
        ParamByName('комментарий').AsString := mmoDescr.Text;
        ExecSQL;
        // { добавляем одну страну по умолчанию }
        // Close;
        // SQL.Text := 'insert into "продукция"."сорт_страна" (код_сорта, код_страны) '
        // + ' values (:код_сорта, :код_страны)';
        // ParamByName('код_сорта').AsInteger := s_id_sort;
        // ParamByName('код_страны').AsInteger := s_id_country;
        // ExecSQL;
        // ShowCountry;
        FrameSave1.id_save := true;
      end
      else
      begin
        Application.MessageBox('Сорт с таким наименованием уже существует.',
                                'Ошибка', MB_OK + MB_ICONERROR);
      end;
      // try
      // DM1.db1.Commit;
      // DM1.db1.StartTransaction;
      // except
      // end;
    end;
  end;
end;
procedure TFNewSort.Page1Change(Sender : TObject);
begin
  if (Page1.ActivePageIndex = 1) and (QueryCountrySort.RecordCount = 0) then
    FrameSave1.btnNext.Enabled := false
  else
    FrameSave1.btnNext.Enabled := true;
end;
procedure TFNewSort.SetLang;
var
  a : array [0..255] of Char;
  StrTblOfs : Integer;
begin
  ULang.TranslateGridCaption(ColumnUniName, ColumnRegName, ColumnName);
  ULang.TranslateGridCaption(ColumnUniNameT, ColumnRegNameT, ColumnNameT);
  case FPasswd.Lang of
    0 :
    begin
      Caption := 'Сорт';
      GroupOsn.Caption := 'Основные';
      LabelType.Caption := 'Тип';
      lblDescr.Caption := 'Описание';
      lblCount.Caption := 'Стеблей в упаковке';
      GroupImage.Caption := 'Изображение';
      GroupCountry.Caption := 'Страны';
      GroupPlant.Caption := 'Плантации';
    end;
    1 :
    begin
      Caption := 'Variety';
      GroupOsn.Caption := 'Основные';
      LabelType.Caption := 'Main';
      lblDescr.Caption := 'Description';
      lblCount.Caption := 'Stems in the package';
      GroupImage.Caption := 'Image';
      GroupCountry.Caption := 'Country';
      GroupPlant.Caption := 'Plantation';
    end;
    2 :
    begin
      Caption := 'La clase';
      GroupOsn.Caption := 'Básicos';
      LabelType.Caption := 'El tipo';
      lblDescr.Caption := 'La descripción';
      lblCount.Caption := 'Los tallos en el embalaje';
      GroupImage.Caption := 'La imagen';
      GroupCountry.Caption := 'Los países';
      GroupPlant.Caption := 'Las plantaciones';
    end;
  end;
  // { Загружаем и устанавливаем заголовок кнопки "Yes" в соответствии с языком }
  // if LoadString(hInstance, StrTblOfs + 27, @a, sizeof(a)) <> 0 then
  // ColumnName.Caption := StrPas(a);
  // if LoadString(hInstance, StrTblOfs + 28, @a, sizeof(a)) <> 0 then
  // ColumnUniName.Caption := StrPas(a);
end;
procedure TFNewSort.ShowCountry;
begin
  with QueryCountrySort do
  begin
    Close;
    SQL.Text := 'SELECT  s.* FROM "продукция"."сорт_страна" ss INNER JOIN ' +
  ' "продукция"."страны" s ON (ss."код_страны" = s.id) where ss.код_сорта='
  + IntToStr(s_id_sort);
    Open;
  end;
end;
procedure TFNewSort.ShowPlant;
begin
  with QueryPlantSort do
  begin
    Close;
    SQL.Text :=
               'SELECT pl.*,sp.id as id_sp, sp.код_сорта, sp.код_плантации FROM "продукция"."сорт_плантация" sp INNER JOIN '
               + ' "продукция"."плантации" pl ON (sp."код_плантации" = pl.id) ' +
               ' where sp."код_сорта"=' + IntToStr(s_id_sort) + ' and pl."код_страны"=' +
               IntToStr(s_id_country);
    Open;
  end;
end;
procedure TFNewSort.ShowType;
begin
  with QueryTypeEdit do
  begin
    Close;
    Open;
    if s_id_type <> 0 then
      edtType.EditValue := s_id_type
    else
      edtType.EditValue := Fields[0].AsInteger;
  end;
end;
procedure TFNewSort.UpdateSort;
var
  s : string;
begin
  with QueryUpd do
  begin
    Close;
    SQL.Text :=
               'update "продукция"."сорта" set name=:name, reg_name=:reg_name, ' +
               ' uni_name=:uni_name,  комментарий=:комментарий, изображение=:изображение where id='
               + IntToStr(s_id_sort);
    ParamByName('name').AsString := FrameUniName1.edtName.Text;
    ParamByName('reg_name').AsString := FrameUniName1.edtRegName.Text;
    ParamByName('uni_name').AsString := FrameUniName1.edtUniName.Text;
    ParamByName('комментарий').AsString := mmoDescr.Text;
    if file_pict <> '' then
    begin
      s := ExtractFileDir(Application.ExeName) + '\..\tmp\tmp.jpg';
      img1.Picture.SaveToFile(s);
      ParamByName('изображение').LoadFromFile
        (ExtractFileDir(Application.ExeName) + '\..\tmp\tmp.jpg', ftBlob);
    end;
    ExecSQL;
  end;
end;
end.
