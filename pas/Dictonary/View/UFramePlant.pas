unit UFramePlant;
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
  cxContainer,
  cxSplitter,
  cxGroupBox,
  UFrameSearch,
  UFramePlantSort,
  Vcl.ExtCtrls,
  cxNavigator,
  
  dxSkinDevExpressStyle,
  
  dxSkinsDefaultPainters, dxSkinOffice2007Blue, dxDateRanges;
type
  TFramePlant = class(TFrame)
    FrameTopPanel1 : TFrameTopPanel;
    QueryPlant : TUniQuery;
    dsPlant : TDataSource;
    GroupCountry : TcxGroupBox;
    cxspltr1 : TcxSplitter;
    cxGrid1 : TcxGrid;
    cxGridDBTableView1 : TcxGridDBTableView;
    ColumnCountry : TcxGridDBColumn;
    cxGridLevel1 : TcxGridLevel;
    QueryCountry : TUniQuery;
    dsCountry : TDataSource;
    GroupPlant : TcxGroupBox;
    GridUsers : TcxGrid;
    ViewUsers : TcxGridDBTableView;
    ColumnBrand : TcxGridDBColumn;
    ColumnUniName : TcxGridDBColumn;
    ColumnName : TcxGridDBColumn;
    ColumnRegName : TcxGridDBColumn;
    LevelOrg : TcxGridLevel;
    FrameSearch1 : TFrameSearch;
    procedure btnRefreshClick(Sender : TObject);
    procedure btnAddClick(Sender : TObject);
    procedure btnEditClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure FrameSearch1edtNameKeyUp(Sender : TObject; var Key : Word;
                                          Shift : TShiftState);
    procedure QueryCountryBeforeFetch(DataSet : TCustomDADataSet;
                                         var Cancel : Boolean);
    procedure QueryPlantAfterFetch(DataSet : TCustomDADataSet);
    procedure ViewUsersDblClick(Sender : TObject);
  private
    { Private declarations }
  public
    procedure SetLang;
    procedure ShowCountry;
    procedure ShowPlant(id_locate : Integer = 0);
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  UNewPlant,
  UPasswd,
  UDialogMy,
  UDataModule1,
  ULang,
  USplash;
procedure TFramePlant.btnAddClick(Sender : TObject);
begin
  Application.CreateForm(TFNewPlant, FNewPlant);
  with FNewPlant do
  begin
    s_id_plant := 0;
    s_id_country := QueryCountry.FieldByName('id').AsInteger;
    SetLang;
    FrameUniName1.SetLang;
    ShowType;
    ShowModal;
    if FrameSave1.id_save = true then
      ShowPlant(s_id_plant);
  end;
end;
procedure TFramePlant.btnDelClick(Sender : TObject);
var
  pid : string;
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
      { отвязываем плантацию от сорта с этим типом }
      try
          { связи }
        Close;
        sql.Text := 'delete from продукция.плантация_тип where код_плантации=' +
      QueryPlant.FieldByName('id').AsString;
        ExecSQL;
        Close;
        sql.Text := 'delete from продукция.сорт_плантация where код_плантации='
      + QueryPlant.FieldByName('id').AsString;
        ExecSQL;
          { позиции }
        Close;
        sql.Text := 'delete from "продукция"."продукция" where pid in( ' +
      ' select id from "продукция"."продукция" where pid IN ' +
      ' (select id   from "продукция"."продукция" where  код_структуры=4 and код_детализации='
      + QueryPlant.FieldByName('id').AsString + '))';
        ExecSQL;
          { сорта }
        Close;
        sql.Text := 'delete from  "продукция"."продукция" where pid IN ' +
      ' (select id from "продукция"."продукция" where  код_структуры=4 and код_детализации='
      + QueryPlant.FieldByName('id').AsString + ')';
        ExecSQL;
          { сама плантация в номенклатуре }
        Close;
        sql.Text :=
                   'delete from "продукция"."продукция" where  код_структуры=4 and код_детализации='
                   + QueryPlant.FieldByName('id').AsString;
        ExecSQL;
          { сама плантация }
        Close;
        sql.Text := 'delete from продукция.плантации where id=' +
      QueryPlant.FieldByName('id').AsString;
        ExecSQL;
          // DM1.dbUpd.Commit;
        ShowPlant();
          // pid := Fields[0].AsString;
          // Close;
          // SQL.Text := 'delete from продукция.сорт_плантация where код_плантации='
          // + inttostr(s_id_plant) +
          // ' and код_сорта in(select id from продукция.сорта where код_типа=' +
          // QueryType.FieldByName('id').AsString + ')';
          // ExecSQL;
          // { отвязываем тип от плантации }
          // Close;
          // SQL.Text := 'delete from продукция.плантация_тип where id=' +
          // QueryType.FieldByName('id_pt').AsString;
          // ExecSQL;
          // { удаляем детей из номенклатуры }
          // Close;
          // SQL.Text := 'delete from "продукция"."продукция" where pid in(  ' +
          // ' select id from "продукция"."продукция" where pid in(' + pid + '))';
          // ExecSQL;
          // Close;
          // SQL.Text := 'delete from продукция.продукция where pid in(' + pid +
          // ') or id=' + pid;
          // ExecSQL;
          // DM1.dbUpd.Commit;
          // ShowType;
      except
          // DM1.dbUpd.Rollback;
      end;
    end;
  end;
end;
procedure TFramePlant.btnEditClick(Sender : TObject);
begin
  Application.CreateForm(TFNewPlant, FNewPlant);
  with FNewPlant do
  begin
    SetLang;
    FrameUniName1.SetLang;
    FrameUniName1.edtName.Text := QueryPlant.FieldByName('name').AsString;
    FrameUniName1.edtUniName.Text := QueryPlant.FieldByName('uni_name')
  .AsString;
    FrameUniName1.edtRegName.Text := QueryPlant.FieldByName('reg_name')
  .AsString;
    edtBrand.Text := QueryPlant.FieldByName('brand').AsString;
    s_id_plant := QueryPlant.FieldByName('id').AsInteger;
    s_id_country := QueryPlant.FieldByName('код_страны').AsInteger;
    mmoRemark.Text := QueryPlant.FieldByName('примечание').AsString;
    mmoAdres.Text := QueryPlant.FieldByName('адрес').AsString;
    edtPhone1.Text := QueryPlant.FieldByName('телефон1').AsString;
    edtFax.Text := QueryPlant.FieldByName('факс').AsString;
    edtEmail.Text := QueryPlant.FieldByName('email').AsString;
    o_id_country := QueryPlant.FieldByName('код_страны_факт').AsInteger;
    o_id_city := QueryPlant.FieldByName('код_города').AsInteger;
    // FNewPlant.ShowCountry;
    ShowType;
    ShowModal;
    if FrameSave1.id_save = true then
      ShowPlant(s_id_plant);
  end;
end;
procedure TFramePlant.btnRefreshClick(Sender : TObject);
begin
  ShowPlant(QueryPlant.Fields[0].AsInteger);
end;
procedure TFramePlant.FrameSearch1edtNameKeyUp(Sender : TObject; var Key : Word;
                                                  Shift : TShiftState);
begin
  ShowPlant();
end;
procedure TFramePlant.QueryCountryBeforeFetch(DataSet : TCustomDADataSet;
                                                 var Cancel : Boolean);
begin
  FSplash.Show;
  FSplash.Update;
end;
procedure TFramePlant.QueryPlantAfterFetch(DataSet : TCustomDADataSet);
begin
  FSplash.Close;
end;
procedure TFramePlant.SetLang;
begin
  ULang.TranslateGridCaption(ColumnUniName, ColumnRegName, ColumnName);
  FrameSearch1.SetLang;
  case FPasswd.Lang of
    0 :
    begin
      GroupCountry.Caption := 'Страны';
      GroupPlant.Caption := 'Плантации';
      ColumnCountry.Caption := 'Наименование';
      ColumnCountry.DataBinding.FieldName := 'name';
    end;
    1 :
    begin
      GroupCountry.Caption := 'Country';
      GroupPlant.Caption := 'Plantation';
      ColumnCountry.Caption := 'Name';
      ColumnCountry.DataBinding.FieldName := 'uni_name';
    end;
    2 :
    begin
      GroupCountry.Caption := 'Los países';
      GroupPlant.Caption := 'Las plantaciones';
      ColumnCountry.Caption := 'El nombre';
      ColumnCountry.DataBinding.FieldName := 'reg_name';
    end;
  end;
  // { Загружаем и устанавливаем заголовок кнопки "Yes" в соответствии с языком }
  // if LoadString(hInstance, StrTblOfs + 27, @a, sizeof(a)) <> 0 then
  // ColumnName.Caption := StrPas(a);
  // if LoadString(hInstance, StrTblOfs + 28, @a, sizeof(a)) <> 0 then
  // ColumnUniName.Caption := StrPas(a);
end;
procedure TFramePlant.ShowCountry;
begin
  with QueryCountry do
  begin
    Close;
    sql.Text := 'select * from "продукция"."страны" order by приоритет';
    Open;
  end;
end;
procedure TFramePlant.ShowPlant(id_locate : Integer = 0);
begin
  with QueryPlant do
  begin
    Close;
    sql.Text := 'select * from "продукция"."плантации" ' +
  '  where brand ~* ''^' + FrameSearch1.edtName.Text + '''';
    sql.Add(' order by brand');
    Open;
    Locate('id', id_locate, []);
  end;
end;
procedure TFramePlant.ViewUsersDblClick(Sender : TObject);
begin
  if FrameTopPanel1.btnEdit.Enabled = true then
    btnEditClick(Sender);
end;
end.
