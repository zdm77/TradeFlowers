unit UFrameKargo;
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
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  MemDS,
  DBAccess,
  Uni,
  UFrameTopPanel,
  cxNavigator,
  
  dxSkinDevExpressStyle,
  
  dxSkinsDefaultPainters, dxSkinOffice2007Blue;
type
  TFrameKargo = class(TFrame)
    FrameTopPanel1 : TFrameTopPanel;
    QueryKargo : TUniQuery;
    dsKargo : TDataSource;
    Query1 : TUniQuery;
    GridStatWork : TcxGrid;
    ViewStatWork : TcxGridDBTableView;
    ColumnName : TcxGridDBColumn;
    LevelStatWork : TcxGridLevel;
    procedure btnAddClick(Sender : TObject);
    procedure btnEditClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure btnRefreshClick(Sender : TObject);
    procedure ViewStatWorkDblClick(Sender : TObject);
  private
    { Private declarations }
  public
    procedure ShowKargo(id_locate : Integer = 0);
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  UNewKargo,
  PGSQL;
procedure TFrameKargo.btnAddClick(Sender : TObject);
begin
  Application.CreateForm(TFNewKargo, FNewKargo);
  with FNewKargo do
  begin
    ShowModal;
    if FrameSave1.id_save = true then
      ShowKargo(s_id_kargo);
  end;
end;
procedure TFrameKargo.btnDelClick(Sender : TObject);
begin
  PGSQL.StandartDelete(QueryKargo.FieldByName('id').AsString,
                        ' "�����"."��������"', QueryKargo, '', '', '', '');
  // QueryKargo.Refresh;
end;
procedure TFrameKargo.btnEditClick(Sender : TObject);
begin
  Application.CreateForm(TFNewKargo, FNewKargo);
  with FNewKargo do
  begin
    s_id_kargo := QueryKargo.FieldByName('id').AsInteger;
    edtName.Text := QueryKargo.FieldByName('name').Value;
    edtUrName.Text := QueryKargo.FieldByName('��_���').Value;
    mmoAdrOffice.Text := QueryKargo.FieldByName('�����_�����').Value;
    mmoAdrReg.Text := QueryKargo.FieldByName('�����_�����������').Value;
    mmoAdrSklad.Text := QueryKargo.FieldByName('�����_������').Value;
    mmoRemark.Text := QueryKargo.FieldByName('����������').Value;
    edtMaxSrokDolg.Value := QueryKargo.FieldByName('����_����_����').Value;
    edtDayAlarm.Value := QueryKargo.FieldByName('���������_����').Value;
    edtMaxDolg.FloatValue := QueryKargo.FieldByName('����_�����_�����').Value;
    edtMaxDolg.FloatValue := QueryKargo.FieldByName('���������_�����').Value;
    ShowContact();
    ShowAccount();
    ShowTarif();
    ShowTarifMarking();
    ShowModal;
    if FrameSave1.id_save = true then
      ShowKargo(s_id_kargo);
  end;
end;
procedure TFrameKargo.btnRefreshClick(Sender : TObject);
begin
  QueryKargo.Refresh;
end;
procedure TFrameKargo.ShowKargo(id_locate : Integer = 0);
begin
  with QueryKargo do
  begin
    CLose;
    sql.Text := 'select * from �����.�������� order by name';
    Open;
    Locate('id', id_locate, []);
  end;
end;
procedure TFrameKargo.ViewStatWorkDblClick(Sender : TObject);
begin
  if FrameTopPanel1.btnEdit.Enabled = true then
    btnEditClick(Sender);
end;
end.
