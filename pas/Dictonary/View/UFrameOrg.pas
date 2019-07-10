unit UFrameOrg;
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
  dxSkinsDefaultPainters, dxSkinOffice2007Blue, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog;
type
  TFrameOrg = class(TFrame)
    FrameTopPanel1 : TFrameTopPanel;
    GridStatWork : TcxGrid;
    ViewStatWork : TcxGridDBTableView;
    ColumnName : TcxGridDBColumn;
    LevelStatWork : TcxGridLevel;
    Query1 : TUniQuery;
    QueryOrg : TUniQuery;
    dsOrg : TDataSource;
    procedure btnAddClick(Sender : TObject);
    procedure btnEditClick(Sender : TObject);
    procedure btnRefreshClick(Sender : TObject);
    procedure ViewStatWorkDblClick(Sender : TObject);
  private
    { Private declarations }
  public
    procedure SetLang;
    procedure ShowOrg(id_locate : integer = 0);
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  UnewOrg,
  ULang;
procedure TFrameOrg.btnAddClick(Sender : TObject);
begin
  Application.CreateForm(TFNewOrg, FNewOrg);
  with FNewOrg do
  begin
    ShowModal;
    if FrameSave1.id_save = true then
      ShowOrg(s_id_org);
  end;
end;
procedure TFrameOrg.btnEditClick(Sender : TObject);
begin
  Application.CreateForm(TFNewOrg, FNewOrg);
  with FNewOrg do
  begin
    s_id_org := QueryOrg.FieldByName('id').AsInteger;
    s_id_country := QueryOrg.FieldByName('код_страны').AsInteger;
    s_id_region := QueryOrg.FieldByName('код_региона').AsInteger;
    s_id_city := QueryOrg.FieldByName('код_города').AsInteger;
    SetAddres;
    { показать ответственных }
    ShowAnsw;
    edtName.Text := QueryOrg.FieldByName('name').AsString;
    memoFullName.Text := QueryOrg.FieldByName('полное_имя_оргнаизации').AsString;
    edtInFace.Text := QueryOrg.FieldByName('в_лице').AsString;
    edtINN.Text := QueryOrg.FieldByName('инн').AsString;
    edtNameInContract.Text := QueryOrg.FieldByName('имя_в_договоре').AsString;
    edtGosReg.Text := QueryOrg.FieldByName('гос_регистрация').AsString;
    edtDateReg.Date := QueryOrg.FieldByName('дата_гос_регистрации').AsDateTime;
    edtOGRN.Text := QueryOrg.FieldByName('огрн').AsString;
    edtOKATO.Text := QueryOrg.FieldByName('окато').AsString;
    edtOKPO.Text := QueryOrg.FieldByName('окпо').AsString;
    edtSign.Text := QueryOrg.FieldByName('подпись').AsString;
    mmoUrAdres.Text := QueryOrg.FieldByName('адрес_регистрации').AsString;
    mmoFactAdres.Text := QueryOrg.FieldByName('фактическй_адрес').AsString;
    mmoDostavka.Text := QueryOrg.FieldByName('почтоввый_адрес').AsString;
    edtPhone1.Text := QueryOrg.FieldByName('телефон1').AsString;
    edtPhone2.Text := QueryOrg.FieldByName('телефон2').AsString;
    edtEmail.Text := QueryOrg.FieldByName('почта').AsString;
    edtFax.Text := QueryOrg.FieldByName('факс').AsString;
    edtSite.Text := QueryOrg.FieldByName('сайт').AsString;
    chkInvoice.Checked := QueryOrg.FieldByName('в_инвойсе').AsBoolean;
    ShowModal;
    if FrameSave1.id_save = true then
      ShowOrg(s_id_org);
  end;
end;
procedure TFrameOrg.btnRefreshClick(Sender : TObject);
begin
  ShowOrg(QueryOrg.FieldByName('id').AsInteger);
end;
procedure TFrameOrg.SetLang;
begin
end;
procedure TFrameOrg.ShowOrg(id_locate : integer = 0);
begin
  with QueryOrg do
  begin
    Close;
    sql.Text := 'select * from   "организация"."организации" ' + ' where id<>1 and id_del=0 order by name';
    Open;
    Locate('id', id_locate, []);
  end;
end;
procedure TFrameOrg.ViewStatWorkDblClick(Sender : TObject);
begin
  if FrameTopPanel1.btnEdit.Enabled = true then
    btnEditClick(Sender);
end;
end.
