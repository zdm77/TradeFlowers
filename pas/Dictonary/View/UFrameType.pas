unit UFrameType;
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
  UFrameTopPanel,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  cxNavigator,
  
  dxSkinDevExpressStyle, dxSkinsDefaultPainters, dxSkinOffice2007Blue,
  dxDateRanges;
type
  TFrameType = class(TFrame)
    GridUsers : TcxGrid;
    ViewUsers : TcxGridDBTableView;
    ColumnName : TcxGridDBColumn;
    ColumnUniName : TcxGridDBColumn;
    LevelOrg : TcxGridLevel;
    FrameTopPanel1 : TFrameTopPanel;
    QueryType : TUniQuery;
    dsType : TDataSource;
    ColumnRegName : TcxGridDBColumn;
    Query1 : TUniQuery;
    ColumnCode : TcxGridDBColumn;
    procedure btnAddClick(Sender : TObject);
    procedure btnEditClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure ViewUsersDblClick(Sender : TObject);
    procedure btnRefreshClick(Sender : TObject);
  private
    { Private declarations }
  public
    procedure SetLang;
    procedure ShowType(id_locate : Integer = 0);
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  UPasswd,
  PGSQL,
  UType,
  ULang,
  UDataModule1;
procedure TFrameType.btnAddClick(Sender : TObject);
begin
  Application.CreateForm(TFType, FType);
  with FType do
  begin
    s_id_type := 0;
    ShowCountry;
    ShowModal;
    if FrameSave1.id_save = true then
      ShowType(s_id_type);
    // if FrameSave1.id_save = true then
    // begin
    // with Query1 do
    // begin
    // Close;
    // SQL.Text := 'insert into продукция.типы (name, uni_name) values ' +
    // ' (:name, :uni_name)';
    // ParamByName('name').AsString := edtName.Text;
    // ParamByName('uni_name').AsString := edtUniName.Text;
    // ExecSQL;
    // ShowType(PGSQL.NewID('продукция.типы_id_seq'));
    // end;
    // end;
  end;
end;
procedure TFrameType.btnDelClick(Sender : TObject);
var
  Query1, Query2 : TUniQuery;
  tree : string;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  Query2 := TUniQuery.Create(nil);
  Query2.Connection := DM1.dbUpd;
  DM1.dbUpd.Connected := true;
  if Application.MessageBox('Вы действительно хотите удалить тип?', 'Вопрос',
                             MB_YESNO + MB_ICONWARNING) = mrYes then
  begin
    DM1.dbUpd.StartTransaction;
    with Query1 do
    begin
      try
          { связи сорта-плантации }
        Close;
        sql.Text :=
                   'delete from "продукция"."сорт_плантация" where код_товара in' +
                   '(select id from продукция.продукция where pid in(' +
                   ' select id from "продукция"."продукция" where pid in (' +
                   ' select id from "продукция"."продукция"' +
                   ' where код_структуры = 3 and' + ' код_детализации = ' +
                   QueryType.FieldByName('id').AsString + ' ))) ';
        ExecSQL;
        Close;
        sql.Text := 'delete from "продукция"."сорт_страна" where код_сорта in' +
      '( select id from "продукция"."сорта" where код_типа=' +
      QueryType.FieldByName('id').AsString + ')';
        ExecSQL;
          { плантация- тип }
        Close;
        sql.Text := 'delete from "продукция"."плантация_тип" where код_типа=' +
      QueryType.FieldByName('id').AsString;
        ExecSQL;
          { номенклатура -> сорта }
        Close;
        sql.Text := 'delete from "продукция"."продукция" where pid in(' +
      ' select id from "продукция"."продукция" where pid in (' +
      ' select id from "продукция"."продукция"' +
      ' where код_структуры = 3 and код_детализации = ' +
      QueryType.FieldByName('id').AsString + '))';
        ExecSQL;
          { номенклатура -> плантации }
        Close;
        sql.Text := 'delete from "продукция"."продукция" where id in (' +
      ' select id from "продукция"."продукция" where pid in (' +
      ' select id from "продукция"."продукция" where код_структуры = 3 and'
      + ' код_детализации = ' + QueryType.FieldByName('id').AsString
      + '   ))';
        ExecSQL;
          { тип - страна }
        Close;
        sql.Text := 'delete from "продукция"."тип_страна" where код_типа = ' +
      QueryType.FieldByName('id').AsString;
        ExecSQL;
          { номенклатура -> тип }
        Close;
        sql.Text :=
                   'delete from "продукция"."продукция" where  код_структуры = 3 and' +
                   ' код_детализации = ' + QueryType.FieldByName('id').AsString;
        ExecSQL;
          { сорта }
        Close;
        sql.Text := 'delete from "продукция"."сорта" where  код_типа = ' +
      QueryType.FieldByName('id').AsString;
        ExecSQL;
          { тип }
        Close;
        sql.Text := 'delete from "продукция"."типы" where  id = ' +
      QueryType.FieldByName('id').AsString;
        ExecSQL;
          // Close;
          // sql.Text :=
          // 'delete from "продукция"."продукция" where id in (select код_товара' +
          // ' from "продукция"."сорт_плантация"  where код_сорта in (' +
          // ' select код_сорта from "продукция"."сорт_страна"' +
          // '  where код_страны in (select код_страны from "продукция"."тип_страна"'
          // + '  where код_типа = ' + QueryType.FieldByName('id')
          // .AsString + ')))';
          // ExecSQL;
          // Close;
          // sql.Text := 'delete from "продукция"."сорт_страна" where код_сорта in' +
          // '(select id from "продукция"."сорта" where код_типа=' +
          // QueryType.FieldByName('id').AsString + ')';
          // ExecSQL;
          // Close;
          // sql.Text := 'delete from "продукция"."сорта" where код_типа=' +
          // QueryType.FieldByName('id').AsString;
          // ExecSQL;
          // Close;
          // sql.Text := 'delete from "продукция"."типы" where id=' +
          // QueryType.FieldByName('id').AsString;
          // ExecSQL;
          // Close;
          // sql.Text :=
          // 'delete from продукция.продукция where код_структуры=4 and pid in(' +
          // ' select id from продукция.продукция where код_структуры=3 and код_детализации='
          // + QueryType.FieldByName('id').AsString + ')';
          // ExecSQL;
          // Close;
          // sql.Text :=
          // 'delete from продукция.продукция where код_структуры=3 and код_детализации='
          // + QueryType.FieldByName('id').AsString;
          // ExecSQL;
        DM1.dbUpd.Commit;
        ShowType();
      except
        DM1.dbUpd.Rollback;
      end;
    end;
  end;
end;
procedure TFrameType.btnEditClick(Sender : TObject);
begin
  Application.CreateForm(TFType, FType);
  with FType do
  begin
    with FrameUniName1 do
    begin
      edtName.Text := QueryType.FieldByName('name').AsString;
      edtRegName.Text := QueryType.FieldByName('reg_name').AsString;
      edtUniName.Text := QueryType.FieldByName('uni_name').AsString;
      edtCode.Text := QueryType.FieldByName('code').AsString;
      s_id_type := QueryType.FieldByName('id').AsInteger;
      ShowCountry;
      ShowModal;
      if FrameSave1.id_save = true then
        ShowType(s_id_type);
    end;
  end;
end;
procedure TFrameType.btnRefreshClick(Sender : TObject);
begin
  ShowType(QueryType.Fields[0].AsInteger);
end;
procedure TFrameType.SetLang;
begin
  ULang.TranslateGridCaption(ColumnUniName, ColumnRegName, ColumnName);
  // case FPasswd.Lang of
  // 0:
  // StrTblOfs := 0;
  // 1:
  // StrTblOfs := 1000;
  // 2:
  // StrTblOfs := 2000;
  // end;
  // { Загружаем и устанавливаем заголовок кнопки "Yes" в соответствии с языком }
  // if LoadString(hInstance, StrTblOfs + 27, @a, sizeof(a)) <> 0 then
  // ColumnName.Caption := StrPas(a);
  // if LoadString(hInstance, StrTblOfs + 28, @a, sizeof(a)) <> 0 then
  // ColumnUniName.Caption := StrPas(a);
end;
procedure TFrameType.ShowType(id_locate : Integer = 0);
begin
  with QueryType do
  begin
    Close;
    sql.Text := 'select * from продукция.типы order by id';
    Open;
    Locate('id', id_locate, [])
  end;
end;
procedure TFrameType.ViewUsersDblClick(Sender : TObject);
begin
  if FrameTopPanel1.btnEdit.Enabled = true then
    btnEditClick(Sender);
end;
end.
