unit UFrameSort;

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
  cxStyles,
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  DB,
  cxDBData,
  cxSplitter,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  cxGroupBox,
  MemDS,
  DBAccess,
  Uni,
  UFrameTopPanel,
  cxTL,
  cxLabel,
  cxTLdxBarBuiltInMenu,
  cxInplaceContainer,
  cxDBTL,
  cxTLData,
  Vcl.ImgList,
  VirtualTable,
  TaskDialog,
  cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  cxNavigator,
  dxSkinDevExpressStyle,
  dxSkinsDefaultPainters, dxSkinOffice2007Blue, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  System.ImageList;

type
  TFrameSort = class(TFrame)
    FrameTopPanel1: TFrameTopPanel;
    QuerySort: TUniQuery;
    dsSort: TDataSource;
    GroupType: TcxGroupBox;
    Split1: TcxSplitter;
    GroupSort: TcxGroupBox;
    QueryType: TUniQuery;
    dsType: TDataSource;
    GridUsers: TcxGrid;
    ViewUsers: TcxGridDBTableView;
    ColumnUniName: TcxGridDBColumn;
    ColumnName: TcxGridDBColumn;
    ColumnRegName: TcxGridDBColumn;
    LevelOrg: TcxGridLevel;
    il1: TImageList;
    Query1: TUniQuery;
    Transact1: TUniTransaction;
    Transact2: TUniTransaction;
    Dialog1: TAdvTaskDialog;
    GroupSelCountry: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    ColumnUseName: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    QueryCountry: TUniQuery;
    dsCountry: TDataSource;
    edtCountry: TcxLookupComboBox;
    lblDetail: TcxLabel;
    procedure FrameTopPanel1btnAddClick(Sender: TObject);
    procedure FrameTopPanel1btnDelClick(Sender: TObject);
    procedure FrameTopPanel1btnEditClick(Sender: TObject);
    procedure FrameTopPanel1btnRefreshClick(Sender: TObject);
    procedure lstTreeProductsClick(Sender: TObject);
    procedure ViewUsersDblClick(Sender: TObject);
    procedure edtCoutryPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    s_id_country_sort: Integer;
    s_id_type_sort: Integer;
    s_select_not: string;
    procedure EnableSave(Sender: TObject);
    procedure SetLang;
    procedure ShowCountry;
    procedure ShowSort(id_locate: Integer = 0);
    procedure ShowType;
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  UNewSort,
  UDataModule1,
  UDialogMy,
  UPasswd,
  ULang;

procedure TFrameSort.edtCoutryPropertiesEditValueChanged(Sender: TObject);
begin
  ShowType;
end;

procedure TFrameSort.EnableSave(Sender: TObject);
begin
  // TODO -cMM: TFrameSort.EnableSave default body inserted
end;

procedure TFrameSort.FrameTopPanel1btnAddClick(Sender: TObject);
begin
  Application.CreateForm(TFNewSort, FNewSort);
  with FNewSort do
  begin
    s_id_sort := 0;
    s_id_type := QueryType.FieldByName('id').AsInteger;
    s_id_country := edtCountry.EditValue;
    // if QueryCountry.FieldByName('код_структуры').AsInteger = 3 then
    // s_id_type := QueryCountry.FieldByName('код_детализации').AsInteger;
    ShowType;
    ShowModal;
    if FrameSave1.id_save = true then
      ShowSort(s_id_sort)
  end;
end;

procedure TFrameSort.FrameTopPanel1btnDelClick(Sender: TObject);
var pid: string;
begin
  if QuerySort.Fields[0].AsString <> '' then
  begin
    case FPasswd.edtLang.ItemIndex of
      0:
        QuestionDialog('Удаление',
          'Внимание!!! Будут удалены все связи сорта и все единицы номенклатуры принадлежащие сорту! Вы действительно хотите удалить?');
      1:
        QuestionDialog('Removal',
          'Attention!!! Will remove all connection varieties and all the units of the nomenclature of belonging to the class! You really want to delete? ');
      2:
        QuestionDialog('Desaparición',
          'La atención!!! Serán quitados todos los enlaces de la clase y todas las unidades de la nomenclatura que pertenecen a la clase! Queréis quitar realmente?');
    end;
    if UDialogMy.Dlg.Execute = 100 then
    begin
      // DM1.dbUpd.StartTransaction;
      with DM1.QueryUpd do
      begin
        { продукция }
        try
          Close;
          sql.text := 'delete from "продукция"."продукция" where pid in(' +
            ' select id from "продукция"."продукция" where код_структуры=5 and код_детализации=' +
            QuerySort.FieldByName('id').AsString + ' and pid in(' +
            ' select id from "продукция"."продукция" where код_структуры=4 and код_детализации in(' +
            ' select id from "продукция"."плантации" where код_страны=' + IntToStr(edtCountry.EditValue) + ')))';
          ExecSQL;
          Close;
          sql.text := 'delete from "продукция"."продукция" where код_структуры=5 and код_детализации=' +
            QuerySort.FieldByName('id').AsString + ' and pid in(' +
            ' select id from "продукция"."продукция" where код_структуры=4 and код_детализации in(' +
            ' select id from "продукция"."плантации" where код_страны=' + IntToStr(edtCountry.EditValue) + '))';
          ExecSQL;
          Close;
          sql.text := 'delete from продукция.сорт_страна where код_сорта=' + QuerySort.FieldByName('id').AsString +
            ' and код_страны=' + IntToStr(edtCountry.EditValue);
          ExecSQL;
          Close;
          sql.text := 'delete from "продукция"."сорт_плантация" where код_сорта=' + QuerySort.FieldByName('id').AsString
            + ' and код_плантации in (select id from "продукция"."плантации" where код_страны=' +
            IntToStr(edtCountry.EditValue) + ')';
          ExecSQL;
          Close;
          sql.text := 'select * from "продукция"."сорт_страна" where код_сорта=' + IntToStr(edtCountry.EditValue) +
            ' limit 1';
          Open;
          if Fields[0].AsString = '' then
          begin
            Close;
            sql.text := 'delete from продукция.сорта where id=' + QuerySort.FieldByName('id').AsString;
            ExecSQL;
          end;
          { смотрим, остались-ли вообще привязки }
          // sql.text := 'delete from продукция.сорта where id=' +
          // QuerySort.FieldByName('id').AsString;
          // ExecSQL;
          // Abort;
          // Close;
          // sql.Text := 'delete from продукция.продукция where pid in(' +
          // 'select id from "продукция"."продукция" where "код_детализации"=' +
          // QuerySort.FieldByName('id').AsString + ' and "код_структуры"=5)';
          // ExecSQL;
          // Close;
          // sql.Text := 'delete from продукция.сорта where id=' +
          // QuerySort.FieldByName('id').AsString;
          // ExecSQL;
          // DM1.dbUpd.Commit;
          ShowSort();
        except
          case FPasswd.edtLang.ItemIndex of
            0:
              ErrorDialog('Удаление невозможно.', '', 'Есть операции, в которых участвовал сорт.');
            1:
              ErrorDialog('Removal is impossible', '', 'There are operations in which the grade participated. ');
            2:
              ErrorDialog('La desaparición es imposible', '', 'Hay unas operaciones, en que participaba la clase.');
          end;
          // DM1.dbUpd.Rollback;
        end;
      end;
    end;
  end;
end;

procedure TFrameSort.FrameTopPanel1btnEditClick(Sender: TObject);
begin
  if QuerySort.RecordCount > 0 then
  begin
    Application.CreateForm(TFNewSort, FNewSort);
    with FNewSort do
    begin
      with FrameUniName1 do
      begin
        edtName.text := QuerySort.FieldByName('name').AsString;
        edtRegName.text := QuerySort.FieldByName('reg_name').AsString;
        edtUniName.text := QuerySort.FieldByName('uni_name').AsString;
        mmoDescr.text := QuerySort.FieldByName('комментарий').AsString;
        s_id_sort := QuerySort.FieldByName('id').AsInteger;
        s_id_type := QuerySort.FieldByName('код_типа').AsInteger;
        s_id_country := edtCountry.EditValue;
        ShowType;
        ShowCountry;
        ShowPlant;
        EnableSave;
        img1.DataBinding.DataSource := dsSort;
        img1.DataBinding.DataField := 'изображение';
        ShowModal;
        if FrameSave1.id_save = true then
          ShowSort(s_id_sort);
      end;
    end;
  end;
end;

procedure TFrameSort.FrameTopPanel1btnRefreshClick(Sender: TObject);
begin
  ShowSort();
end;

procedure TFrameSort.lstTreeProductsClick(Sender: TObject);
begin
  ShowSort();
end;

procedure TFrameSort.SetLang;
begin
  ULang.TranslateGridCaption(ColumnUniName, ColumnRegName, ColumnName);
  case FPasswd.Lang of
    0:
      begin
        GroupType.Caption := 'Типы';
        GroupSort.Caption := 'Сорта';
        ColumnUseName.Caption := 'Наименование';
        ColumnUseName.DataBinding.FieldName := 'name';
      end;
    1:
      begin
        GroupType.Caption := 'Types';
        GroupSort.Caption := 'Grades';
        ColumnUseName.Caption := 'Name';
        ColumnUseName.DataBinding.FieldName := 'uni_name';
      end;
    2:
      begin
        GroupType.Caption := 'Tipos';
        GroupSort.Caption := 'Variedades';
        ColumnUseName.Caption := 'Nombre';
        ColumnUseName.DataBinding.FieldName := 'reg_name';
      end;
  end;
  // { Загружаем и устанавливаем заголовок кнопки "Yes" в соответствии с языком }
  // if LoadString(hInstance, StrTblOfs + 27, @a, sizeof(a)) <> 0 then
  // ColumnName.Caption := StrPas(a);
  // if LoadString(hInstance, StrTblOfs + 28, @a, sizeof(a)) <> 0 then
  // ColumnUniName.Caption := StrPas(a);
end;

procedure TFrameSort.ShowCountry;
begin
  with QueryCountry do
  begin
    Close;
    // sql.Text := 'select * from "продукция"."страны"';
    sql.text := 'select * from "продукция"."страны" order by приоритет';
    Open;
    edtCountry.EditValue := Fields[0].AsInteger;
    // if s_id_country_sort = 0 then
    // edtCountry.EditValue := FPasswd.ID_COUNTRY
    // else
    // edtCountry.EditValue := s_id_country_sort;
  end;
end;

procedure TFrameSort.ShowSort(id_locate: Integer = 0);
begin
  with QuerySort do
  begin
    Close;
    sql.text := 'select  * from "продукция"."сорта" ' + ' where id ' +
      ' in (select код_сорта from "продукция"."сорт_страна" where код_страны=' + IntToStr(edtCountry.EditValue) + ')';
    if s_select_not <> '' then
      sql.Add(' and id not in(' + s_select_not + ')');
    case FPasswd.Lang of
      0:
        sql.Add(' order by name');
      1:
        sql.Add(' order by uni_name');
      2:
        sql.Add(' order by reg_name');
    end;
    Open;
  end;
{$REGION 'Старый показ'}
  // with QuerySort do
  // begin
  // Close;
  // if QueryCountry.FieldByName('код_структуры').AsInteger = 3 then
  // begin
  // sql.text :=
  // 'select код_детализации from "продукция"."продукция" where id=' +
  // QueryCountry.FieldByName('pid').AsString;
  // Open;
  // id_c := Fields[0].AsInteger;
  // Close;
  // sql.text :=
  // 'SELECT s.* , ss."код_страны", ss.код_сорта FROM "продукция"."сорта" s '
  // + ' INNER JOIN "продукция"."типы" t ON (s."код_типа" = t.id) ' +
  // ' INNER JOIN "продукция"."сорт_страна" ss ON (s.id = ss."код_сорта")' +
  // ' where  ss."код_страны"=' + IntToStr(id_c) + ' and t.id= ' +
  // QueryCountry.FieldByName('код_детализации').AsString;
  // Open;
  // Locate('id', id_locate, []);
  // end;
  // // sql.Text := 'SELECT s.*, ss."код_страны" FROM "продукция"."сорта" s ' +
  // // ' INNER JOIN "продукция"."сорт_страна" ss ON (s.id = ss."код_сорта")';
  // end;
{$ENDREGION}
end;

procedure TFrameSort.ShowType;
begin
  with QueryType do
  begin
    Close;
    sql.text := 'select * from "продукция"."типы" where id in ' +
      ' (select код_типа from "продукция"."тип_страна" where код_страны=' + IntToStr(edtCountry.EditValue);
    if s_id_type_sort <> 0 then
      sql.Add(' and код_типа=' + IntToStr(s_id_type_sort));
    sql.Add(') order by name');
    Open;
  end;
  ShowSort();
end;

procedure TFrameSort.ViewUsersDblClick(Sender: TObject);
begin
  if FrameTopPanel1.btnEdit.Enabled = true then
    FrameTopPanel1btnEditClick(Sender);
end;

end.
