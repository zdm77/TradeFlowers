unit UFrameBox;

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
  UFrameTopPanel,
  cxCalc,     
    
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue, dxSkinOffice2007Blue, dxSkinsDefaultPainters;

type
  TFrameBox = class(TFrame)
    FrameTopPanel1: TFrameTopPanel;
    QueryBox: TUniQuery;
    dsBox: TDataSource;
    Query1: TUniQuery;
    GridUsers: TcxGrid;
    ViewStatWork: TcxGridDBTableView;
    LevelStatWork: TcxGridLevel;
    ViewStatWorkname: TcxGridDBColumn;
    ColumnВес: TcxGridDBColumn;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure ViewStatWorkDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ShowBox(s_id_locate: Integer = 0);
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  UNewBox,
  PGSQL,
  UOsn;

procedure TFrameBox.btnAddClick(Sender: TObject);
var
  id: Integer;
begin
  Application.CreateForm(TFNewBox, FNewBox);
  with FNewBox do
  begin
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      id := PGSQL.NewID('"продукция"."тип_упаковки_id_seq"');
      with Query1 do
      begin
        Close;
        SQL.Text :=
          'INSERT INTO "продукция"."тип_упаковки" (  id,   name,   "вес") ' +
          ' VALUES ( :id,  :name,  :вес);';
        ParamByName('id').AsInteger := id;
        ParamByName('name').AsString := edtName.Text;
        ParamByName('вес').AsString := edtВес.Text;
        ExecSQL;
        ShowBox(id);
      end;
    end;
  end;
end;

procedure TFrameBox.btnDelClick(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите удалить запись?', 'Вопрос',
    MB_YESNO + MB_ICONQUESTION) = mrYes then
  begin
    with Query1 do
    begin
      Close;
      SQL.Text := 'delete from "продукция"."тип_упаковки" where id=' +
        QueryBox.FieldByName('id').AsString;
      ExecSQL;
      ShowBox();
    end;
  end;
end;

procedure TFrameBox.btnEditClick(Sender: TObject);
begin
  Application.CreateForm(TFNewBox, FNewBox);
  with FNewBox do
  begin
    edtName.Text := QueryBox.FieldByName('name').AsString;
    edtВес.Text := QueryBox.FieldByName('вес').AsString;
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      with Query1 do
      begin
        Close;
        SQL.Text := ' UPDATE  "продукция"."тип_упаковки" SET  name = :name,' +
          '  "вес" = :вес WHERE  id = :id;';
        ParamByName('id').AsInteger := QueryBox.FieldByName('id').AsInteger;
        ParamByName('name').AsString := edtName.Text;
        ParamByName('вес').AsString := edtВес.Text;
        ExecSQL;
        ShowBox(QueryBox.FieldByName('id').AsInteger);
      end;
    end;
  end;
end;

procedure TFrameBox.btnRefreshClick(Sender: TObject);
begin
  ShowBox(QueryBox.FieldByName('id').AsInteger);
end;

procedure TFrameBox.ShowBox(s_id_locate: Integer = 0);
begin
  with QueryBox do
  begin
    Close;
    SQL.Text := 'select * from "продукция"."тип_упаковки"';
    Open;
    Locate('id', s_id_locate, []);
    ColumnВес.RepositoryItem := FOsn.КгГр;
  end;
end;

procedure TFrameBox.ViewStatWorkDblClick(Sender: TObject);
begin
  if FrameTopPanel1.btnEdit.Enabled = true then
    btnEditClick(Sender);
end;

end.
