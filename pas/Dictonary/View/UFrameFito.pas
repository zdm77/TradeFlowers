unit UFrameFito;
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
  
  dxSkinXmas2008Blue, dxSkinOffice2007Blue, dxSkinsDefaultPainters;
type
  TFrameFITO = class(TFrame)
    FrameTopPanel1 : TFrameTopPanel;
    GridUsers : TcxGrid;
    ViewUsers : TcxGridDBTableView;
    ColumnUniName : TcxGridDBColumn;
    ColumnName : TcxGridDBColumn;
    ColumnRegName : TcxGridDBColumn;
    LevelOrg : TcxGridLevel;
    QueryFITO : TUniQuery;
    dsFITO : TDataSource;
    Query1 : TUniQuery;
    procedure btnAddClick(Sender : TObject);
    procedure btnEditClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure btnRefreshClick(Sender : TObject);
    procedure ViewUsersDblClick(Sender : TObject);
  private
    { Private declarations }
  public
    procedure ShowFito;
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  UNewUniName,
  PGSQL,
  UPasswd,
  UDataModule1;
procedure TFrameFITO.btnAddClick(Sender : TObject);
begin
  Application.CreateForm(TFNewUniName, FNewUniName);
  with FNewUniName.FrameUniName1 do
  begin
    SetLang;
    chkUseName.Visible := false;
    EnableSave;
    FNewUniName.ShowModal;
    if FNewUniName.FrameSave1.id_save = true then
    begin
      PGSQL.StandartInsert('"документы"."фито_id_seq"', '"документы"."фито"',
                            edtName.Text, edtUniName.Text, edtRegName.Text, QueryFITO);
    end;
  end;
end;
procedure TFrameFITO.btnDelClick(Sender : TObject);
var
  s : string;
begin
  case FPasswd.edtLang.ItemIndex of
    0 : s := 'Связанные заказы';
    1 : s := 'Los encargos vinculados';
    2 : s := 'Connected orders';
  end;
  PGSQL.StandartDelete(QueryFITO.FieldByName('id').AsString,
                        '"документы"."фито"', QueryFITO, 'код_фито', '"документы"."заказы"',
                        'номер', s)
end;
procedure TFrameFITO.btnEditClick(Sender : TObject);
begin
  Application.CreateForm(TFNewUniName, FNewUniName);
  with FNewUniName.FrameUniName1 do
  begin
    edtName.Text := QueryFITO.FieldByName('name').AsString;
    edtUniName.Text := QueryFITO.FieldByName('uni_name').AsString;
    edtRegName.Text := QueryFITO.FieldByName('reg_name').AsString;
    SetLang;
    chkUseName.Visible := false;
    EnableSave;
    FNewUniName.ShowModal;
    if FNewUniName.FrameSave1.id_save = true then
    begin
      PGSQL.StandartUpdate(QueryFITO.FieldByName('id').AsString,
                            '"документы"."фито"', edtName.Text, edtUniName.Text, edtRegName.Text,
                            QueryFITO);
    end;
  end;
end;
procedure TFrameFITO.btnRefreshClick(Sender : TObject);
begin
  ShowFito();
end;
procedure TFrameFITO.ShowFito;
begin
  with QueryFITO do
  begin
    Close;
    sql.Text := 'select * from "документы"."фито"';
    Open;
  end;
end;
procedure TFrameFITO.ViewUsersDblClick(Sender : TObject);
begin
  if FrameTopPanel1.btnEdit.Enabled = true then
    btnEditClick(Sender);
end;
end.
