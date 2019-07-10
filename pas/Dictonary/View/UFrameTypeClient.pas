unit UFrameTypeClient;
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
  UFrameTopPanel,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  dxSkinsCore,
  
  cxGroupBox,
  cxStyles,
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxNavigator,
  Data.DB,
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
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue;
type
  TFrameTypeClient = class(TFrame)
    FrameTopPanel1 : TFrameTopPanel;
    Group1 : TcxGroupBox;
    GridType : TcxGrid;
    ViewType : TcxGridDBTableView;
    LevelOrg : TcxGridLevel;
    QueryType : TUniQuery;
    dsType : TDataSource;
    cxGroupBox1 : TcxGroupBox;
    FrameTopPanel2 : TFrameTopPanel;
    GridVid : TcxGrid;
    ViewVid : TcxGridDBTableView;
    cxGridDBColumn1 : TcxGridDBColumn;
    cxGridLevel1 : TcxGridLevel;
    dsMarking : TDataSource;
    QueryMarking : TUniQuery;
    Query1 : TUniQuery;
    Query2 : TUniQuery;
    ViewTypeDBColumn : TcxGridDBColumn;
    ViewTypeDBColumn1 : TcxGridDBColumn;
    ViewTypeDBColumn2 : TcxGridDBColumn;
    ViewTypeDBColumn3 : TcxGridDBColumn;
    ViewTypeColumn1 : TcxGridDBColumn;
    procedure FrameTopPanel1btnAddClick(Sender : TObject);
    procedure FrameTopPanel1btnDelClick(Sender : TObject);
    procedure FrameTopPanel1btnEditClick(Sender : TObject);
    procedure FrameTopPanel1btnRefreshClick(Sender : TObject);
    procedure FrameTopPanel1btnSelClick(Sender : TObject);
    procedure FrameTopPanel2btnAddClick(Sender : TObject);
    procedure FrameTopPanel2btnDelClick(Sender : TObject);
    procedure FrameTopPanel2btnEditClick(Sender : TObject);
    procedure FrameTopPanel2btnRefreshClick(Sender : TObject);
    procedure FrameTopPanel2btnSelClick(Sender : TObject);
  private
    { Private declarations }
  public
    s_id_client_for_type : Integer;
    procedure ShowTypeClient(id_locate : Integer = 0);
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  UNewTypeClient,
  UMultiSelect;
procedure TFrameTypeClient.FrameTopPanel1btnAddClick(Sender : TObject);
begin
  Application.CreateForm(TFNewTypeClient, FNewTypeClient);
  with FNewTypeClient do
  begin
    ShowModal;
    if FrameSave1.id_save = True then
    begin
      with Query1 do
      begin
        SQL.Clear;
        SQL.Add(' INSERT INTO');
        SQL.Add(' "контрагенты"."клиент_вид"');
        SQL.Add(' (');
        SQL.Add(' "код_клиента",');
        SQL.Add(' "код_маркировки",');
        // SQL.Add(' "код_вида_продаж",');
        // SQL.Add(' "код_валюты",');
        SQL.Add(' "код_связи"');
        SQL.Add(' )');
        SQL.Add(' VALUES (');
        SQL.Add(' :код_клиента,');
        SQL.Add(' :код_маркировки,');
        // SQL.Add(' :код_вида_продаж,');
        // SQL.Add(' :код_валюты,');
        SQL.Add(' :код_связи');
        SQL.Add(' );');
        ParamByName('код_клиента').Value := s_id_client_for_type;
        // ParamByName('код_вида').Value := QueryType.Fields[0].AsInteger;
        // ParamByName('код_вида_продаж').Value := QueryVid.Fields[0].AsInteger;
        ParamByName('код_маркировки').Value := s_id_Marking;
        ParamByName('код_связи').Value := QueryAll.FieldByName('id').AsInteger;
        ExecSQL;
        ShowTypeClient();
      end;
    end;
  end;
end;
procedure TFrameTypeClient.FrameTopPanel1btnDelClick(Sender : TObject);
begin
  if Application.MessageBox('Вы действительно хотите удалить запись?', 'Вопрос',
                             MB_YESNO + MB_ICONQUESTION) = mrYes then
  begin
    with Query1 do
    begin
      Close;
      SQL.Text := 'delete from "контрагенты"."клиент_вид" where id=' +
    QueryType.FieldByName('id').AsString;
      ExecSQL;
      ShowTypeClient();
    end;
  end;
end;
procedure TFrameTypeClient.FrameTopPanel1btnEditClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameTypeClient.FrameTopPanel1btnRefreshClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameTypeClient.FrameTopPanel1btnSelClick(Sender : TObject);
begin
  with Query1 do
  begin
    Query2.SQL.Text := '';
    Close;
    SQL.Text := 'select * from "контрагенты"."виды" order by id';
    Open;
    Query2.Close;
    Query2.SQL.Text :=
                      'insert into "контрагенты"."клиент_вид" (код_клиента, код_вида) ' +
                      ' values (:код_клиента, :код_вида)';
    while not eof do
    begin
      Query2.ParamByName('код_клиента').AsInteger := s_id_client_for_type;
      Query2.ParamByName('код_вида').AsInteger := FieldByName('id').AsInteger;
      Query2.ExecSQL;
      Next;
    end;
    ShowTypeClient();
  end;
end;
procedure TFrameTypeClient.FrameTopPanel2btnAddClick(Sender : TObject);
begin
  // Application.CreateForm(TFMultiSelect, FMultiSelect);
  // with FMultiSelect do
  // begin
  // table_name := '"маркировки"."маркировки"';
  // Query1.Close;
  // Query1.SQL.Text := 'select id from "маркировки"."маркировки" where код_клиента is not null or id_group=1';
  // Query1.Open;
  // while not Query1.Eof do
  // begin
  // id_never_not:=Query1.Fields[0].AsString+','+id_never_not;
  // Query1.Next;
  // end;
  // id_never_not := Copy(id_never_not,1,Length(id_never_not)-1);
  // //ShowMessage(id_never_not);
  // id_clear := True;
  // ShowModal;
  // if FrameSave1.id_save = True then
  // begin
  // Query1.Close;
  // Query1.SQL.Text := '';
  // with QueryDist do
  // begin
  // while not eof do
  // begin
  // Next;
  // end;
  // end;
  // end;
  // end;
end;
procedure TFrameTypeClient.FrameTopPanel2btnDelClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameTypeClient.FrameTopPanel2btnEditClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameTypeClient.FrameTopPanel2btnRefreshClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameTypeClient.FrameTopPanel2btnSelClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameTypeClient.ShowTypeClient(id_locate : Integer = 0);
begin
  with QueryType do
  begin
    SQL.Clear;
    // SQL.Add(' SELECT DISTINCT');
    // SQL.Add(' kv.id,');
    // SQL.Add(' kv."код_клиента",');
    // SQL.Add(' kv."код_вида",');
    // SQL.Add(' v.name AS v_name,');
    // SQL.Add(' vp.name AS vp_name,');
    // SQL.Add(' kv."код_вида_продаж",');
    // SQL.Add(' kv."код_валюты",');
    // SQL.Add(' cur.name cur_name');
    // SQL.Add(' FROM');
    // SQL.Add(' "контрагенты"."клиент_вид" kv');
    // SQL.Add(' INNER JOIN "контрагенты"."виды" v ON (kv."код_вида" = v.id)');
    // SQL.Add(' INNER JOIN "контрагенты"."виды_продаж" vp ON (kv."код_вида_продаж" = vp.id)');
    // SQL.Add(' INNER JOIN public."валюты" cur ON (kv."код_валюты" = cur.id)');
    // SQL.Add(' where kv."код_клиента"=' + IntToStr(s_id_client_for_type));
    // SQL.Add(' ORDER BY');
    // SQL.Add(' "код_вида"');
    SQL.Add(' SELECT');
    SQL.Add(' s.name "страна",');
    SQL.Add(' v.name "тип",');
    SQL.Add(' st."код_типа_продукта",');
    SQL.Add(' st."код_страны",');
    SQL.Add(' st."код_валюты",');
    SQL.Add(' st."код_типа",');
    SQL.Add(' kv.id,');
    SQL.Add(' tt.name "тип товара",');
    SQL.Add(' vl.name "валюта",');
    SQL.Add(' kv."код_клиента",');
    SQL.Add(' m.name "маркировка"');
    SQL.Add(' FROM');
    SQL.Add(' "контрагенты"."страна_тип" st');
    SQL.Add(' INNER JOIN "продукция"."страны" s ON (st."код_страны" = s.id)');
    SQL.Add(' INNER JOIN "контрагенты"."виды" v ON (st."код_типа" = v.id)');
    SQL.Add(' INNER JOIN "контрагенты"."типы_товаров" tt ON (st."код_типа_продукта" = tt.id)');
    SQL.Add(' INNER JOIN public."валюты" vl ON (st."код_валюты" = vl.id)');
    SQL.Add(' inner join "контрагенты"."клиент_вид" kv on (kv.код_связи=st.id)');
    SQL.Add(' inner join "маркировки"."маркировки" m on (kv.код_маркировки=m.id)');
    SQL.Add(' where kv."код_клиента"=' + IntToStr(s_id_client_for_type));
    Open;
    Locate('id', id_locate, []);
  end;
end;
end.
