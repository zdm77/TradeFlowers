unit UFrameStanding;
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
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  UFrameTopPanel,
  cxNavigator,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue, dxSkinOffice2007Blue, dxSkinsDefaultPainters;
type
  TFrameStanding = class(TFrame)
    FrameTopPanel1 : TFrameTopPanel;
    QueryStanding : TUniQuery;
    dsStanding : TDataSource;
    GridUsers : TcxGrid;
    ViewUsers : TcxGridDBTableView;
    ColumnUniName : TcxGridDBColumn;
    ColumnName : TcxGridDBColumn;
    ColumnRegName : TcxGridDBColumn;
    LevelOrg : TcxGridLevel;
    procedure btnEditClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure btnRefreshClick(Sender : TObject);
    procedure GridAccountDblClick(Sender : TObject);
    procedure btnAddClick(Sender : TObject);
    procedure ViewUsersDblClick(Sender : TObject);
  private
    { Private declarations }
  public
    procedure SetLang;
    procedure ShowStanding(id_locate : integer = 0);
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  UNewStanding,
  ULang,
  PGSQL;
procedure TFrameStanding.btnAddClick(Sender : TObject);
begin
  Application.CreateForm(TFNewStanding, FNewStanding);
  with FNewStanding do
  begin
    ShowProduct;
    ShowModal;
    if s_id_standing <> 0 then
      ShowStanding(s_id_standing);
  end;
end;
procedure TFrameStanding.btnDelClick(Sender : TObject);
begin
  PGSQL.StandartDelete(QueryStanding.FieldByName('id').AsString,
                        '"стендинг"."стендинг"', QueryStanding, '', '', '', '');
end;
procedure TFrameStanding.btnEditClick(Sender : TObject);
begin
  Application.CreateForm(TFNewStanding, FNewStanding);
  with FNewStanding do
  begin
    s_id_standing := QueryStanding.FieldByName('id').AsInteger;
    with FrameUniName1 do
    begin
      edtUniName.Text := QueryStanding.FieldByName('uni_name').AsString;
      edtName.Text := QueryStanding.FieldByName('name').AsString;
      edtRegName.Text := QueryStanding.FieldByName('reg_name').AsString;
    end;
    ShowProduct;
    ShowDetail();
    ShowModal;
    QueryStanding.Refresh;
  end;
end;
procedure TFrameStanding.btnRefreshClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameStanding.GridAccountDblClick(Sender : TObject);
begin
  btnEditClick(Sender);
end;
procedure TFrameStanding.SetLang;
begin
  ULang.TranslateGridCaption(ColumnUniName, ColumnRegName, ColumnName);
end;
procedure TFrameStanding.ShowStanding(id_locate : integer = 0);
begin
  with QueryStanding do
  begin
    Close;
    sql.Text := 'select * from стендинг.стендинг';
    Open;
    Locate('id', id_locate, []);
  end;
end;
procedure TFrameStanding.ViewUsersDblClick(Sender : TObject);
begin
  if FrameTopPanel1.btnEdit.Enabled = true then
    btnEditClick(Sender);
end;
end.
