unit UFrameTypeLengthWeight;
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
  cxNavigator,
  Data.DB,
  cxDBData,
  UFrameSearch,
  cxSplitter,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  cxGroupBox,
  UFrameTopPanel,
  MemDS,
  DBAccess,
  Uni,
  cxCalc,
  cxLabel,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue, dxSkinOffice2007Blue, dxSkinsDefaultPainters, dxDateRanges;
type
  TFrameTypeLengthWeight = class(TFrame)
    QueryType : TUniQuery;
    dsType : TDataSource;
    QueryTTH : TUniQuery;
    dsTTH : TDataSource;
    FrameTopPanel1 : TFrameTopPanel;
    GroupCountry : TcxGroupBox;
    cxGrid1 : TcxGrid;
    cxGridDBTableView1 : TcxGridDBTableView;
    ColumnCountry : TcxGridDBColumn;
    cxGridLevel1 : TcxGridLevel;
    cxspltr1 : TcxSplitter;
    Query1 : TUniQuery;
    Group1 : TcxGroupBox;
    GridUsers : TcxGrid;
    ViewUsers : TcxGridDBTableView;
    ColumnСтрана : TcxGridDBColumn;
    ColumnВидУпаковки : TcxGridDBColumn;
    ViewUserslength : TcxGridDBColumn;
    ColumnВес : TcxGridDBColumn;
    LevelOrg : TcxGridLevel;
    procedure btnAddClick(Sender : TObject);
    procedure btnEditClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure btnRefreshClick(Sender : TObject);
    procedure ViewUsersDblClick(Sender : TObject);
    procedure ViewUsersKeyDown(Sender : TObject; var Key : Word;
                                  Shift : TShiftState);
  private
    { Private declarations }
  public
    procedure ShowTTH(id_locate : Integer = 0);
    procedure ShowType;
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  UNewTypeLengthWeight,
  PGSQL,
  UOsn;
procedure TFrameTypeLengthWeight.btnAddClick(Sender : TObject);
var
  id : Integer;
begin
  Application.CreateForm(TFNewTypeLengthWeight, FNewTypeLengthWeight);
  with FNewTypeLengthWeight do
  begin
    ShowCountry(QueryTTH.FieldByName('код_страны').AsInteger);
    ShowUp(QueryTTH.FieldByName('код_упаковки').AsInteger);
    ShowДлина(QueryTTH.FieldByName('код_страны').AsInteger,
               QueryTTH.FieldByName('код_страны').AsInteger,
               QueryTTH.FieldByName('код_упаковки').AsInteger);
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      with Query1 do
      begin
        // проверяем нет-ли такой длины по типу
        // Close;
        // sql.Text :=
        // 'select длина from "продукция"."тип_длина_вес" where код_типа=' +
        // QueryType.FieldByName('id').AsString + ' and длина=:l';
        // ParamByName('l').AsString := edtLength.Text;
        // Open;
        // if Fields[0].AsString = '' then
        // begin
        id := PGSQL.NewID('"продукция"."тип_длина_вес_id_seq"');
        Close;
{$REGION 'Вставка'}
        with Query1 do
        begin
          SQL.Clear;
          SQL.Add(' INSERT INTO');
          SQL.Add(' "продукция"."тип_длина_вес"');
          SQL.Add(' (');
          SQL.Add(' id,');
          SQL.Add(' "код_типа",');
          SQL.Add(' "длина",');
          SQL.Add(' "вес",');
          SQL.Add(' "код_страны",');
          SQL.Add(' "код_упаковки"');
          SQL.Add(' )');
          SQL.Add(' VALUES (');
          SQL.Add(' :id,');
          SQL.Add(' :код_типа,');
          SQL.Add(' :длина,');
          SQL.Add(' :вес,');
          SQL.Add(' :код_страны,');
          SQL.Add(' :код_упаковки');
          SQL.Add(' );');
          ParamByName('id').Value := id;
          ParamByName('код_типа').Value := QueryType.FieldByName('id')
        .AsInteger;
          ParamByName('длина').Value := edtLength.Text;
          ParamByName('вес').Value := edtWeight.Text;
          ParamByName('код_страны').Value := edtCountry.EditValue;
          ParamByName('код_упаковки').Value := edtУпаковка.EditValue;
          ExecSQL;
          ShowTTH(id);
        end;
{$ENDREGION};
        // end
        // else
        // Application.MessageBox
        // ('Указанная длина по данному типу уже существует.', 'Ошибка',
        // MB_OK + MB_ICONERROR);
      end;
    end;
  end;
end;
procedure TFrameTypeLengthWeight.btnDelClick(Sender : TObject);
begin
  if Application.MessageBox('Вы действительно хотите удалить запись?', 'Вопрос',
                             MB_YESNO + MB_ICONWARNING) = mrYes then
  begin
    with Query1 do
    begin
      Close;
      SQL.Text := 'delete from "продукция"."тип_длина_вес" where id=' +
    QueryTTH.FieldByName('id').AsString;
      ExecSQL;
      ShowTTH();
    end;
  end;
end;
procedure TFrameTypeLengthWeight.btnEditClick(Sender : TObject);
begin
  Application.CreateForm(TFNewTypeLengthWeight, FNewTypeLengthWeight);
  with FNewTypeLengthWeight do
  begin
    edtLength.Text := QueryTTH.FieldByName('длина').AsString;
    edtWeight.Text := QueryTTH.FieldByName('вес').AsString;
    ShowCountry(QueryTTH.FieldByName('код_страны').AsInteger);
    ShowUp(QueryTTH.FieldByName('код_упаковки').AsInteger);
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      with Query1 do
      begin
        // проверяем нет-ли такой длины по типу
        // Close;
        // SQL.Text :=
        // 'select длина from "продукция"."тип_длина_вес" where код_типа=' +
        // QueryType.FieldByName('id').AsString + ' and длина=:l' + ' and id<>' +
        // QueryTTH.FieldByName('id').AsString;
        // ParamByName('l').AsString := edtLength.Text;
        // Open;
        // if Fields[0].AsString = '' then
        // begin
        Close;
        SQL.Text := 'UPDATE  "продукция"."тип_длина_вес" SET "длина" = :длина,'
      + ' "вес" = :вес, код_страны=:код_страны, код_упаковки=:код_упаковки '
      + '  WHERE  id = :id;';
        ParamByName('id').AsInteger := QueryTTH.FieldByName('id').AsInteger;
        ParamByName('длина').AsString := edtLength.Text;
        ParamByName('вес').AsString := edtWeight.Text;
        ParamByName('код_страны').Value := edtCountry.EditValue;
        ParamByName('код_упаковки').Value := edtУпаковка.EditValue;
        ExecSQL;
        ShowTTH(QueryTTH.FieldByName('id').AsInteger);
        // end
        // else
        // Application.MessageBox
        // ('Указанная длина по данному типу уже существует.', 'Ошибка',
        // MB_OK + MB_ICONERROR);
      end;
    end;
  end;
end;
procedure TFrameTypeLengthWeight.btnRefreshClick(Sender : TObject);
begin
  ShowTTH(QueryTTH.FieldByName('id').AsInteger);
end;
procedure TFrameTypeLengthWeight.ShowTTH(id_locate : Integer = 0);
begin
  with QueryTTH do
  begin
    SQL.Clear;
    SQL.Add(' SELECT');
    SQL.Add(' s.name страна,');
    SQL.Add(' tdv.id,');
    SQL.Add(' tdv."код_типа",');
    SQL.Add(' tdv."длина",');
    SQL.Add(' tdv."вес",');
    SQL.Add(' tdv."код_страны",');
    SQL.Add(' tdv."код_упаковки",');
    SQL.Add(' v.name вид_упаковки');
    SQL.Add(' FROM');
    SQL.Add(' "продукция"."виды_упаковки" v');
    SQL.Add(' INNER JOIN "продукция"."тип_длина_вес" tdv ON (v.id = tdv."код_упаковки")');
    SQL.Add(' INNER JOIN "продукция"."страны" s ON (tdv."код_страны" = s.id)');
    SQL.Add(' order by страна, вид_упаковки, длина ');
    Open;
    Locate('id', id_locate, []);
  end;
end;
procedure TFrameTypeLengthWeight.ShowType;
begin
  with QueryType do
  begin
    Close;
    SQL.Text := 'SELECT t.* FROM "продукция"."типы" t order by приоритет';
    Open;
  end;
  ColumnВес.RepositoryItem := FOsn.Граммы;
end;
procedure TFrameTypeLengthWeight.ViewUsersDblClick(Sender : TObject);
begin
  if FrameTopPanel1.btnEdit.Enabled = true then
    btnEditClick(Sender);
end;
procedure TFrameTypeLengthWeight.ViewUsersKeyDown(Sender : TObject;
                                                     var Key : Word; Shift : TShiftState);
begin
  if Key = VK_INSERT then
    btnAddClick(Sender);
end;
end.
