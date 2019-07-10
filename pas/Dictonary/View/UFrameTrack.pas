unit UFrameTrack;
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
  
  dxSkinsDefaultPainters, dxSkinOffice2007Blue;
type
  TFrameTrack = class(TFrame)
    FrameTopPanel1 : TFrameTopPanel;
    GridStatWork : TcxGrid;
    ViewStatWork : TcxGridDBTableView;
    ColumnName : TcxGridDBColumn;
    LevelStatWork : TcxGridLevel;
    QueryTrack : TUniQuery;
    dsTrack : TDataSource;
    Query1 : TUniQuery;
    procedure btnAddClick(Sender : TObject);
    procedure ViewStatWorkDblClick(Sender : TObject);
    procedure btnEditClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure btnRefreshClick(Sender : TObject);
  private
    { Private declarations }
  public
    procedure ShowTrack(id_locate : Integer = 0);
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  UNewTrack,
  PGSQL;
procedure TFrameTrack.btnAddClick(Sender : TObject);
begin
  Application.CreateForm(TFNewTrack, FNewTrack);
  with FNewTrack do
  begin
    ShowModal;
    if FrameSave1.id_save = true then
      ShowTrack(s_id_track);
  end;
end;
procedure TFrameTrack.btnDelClick(Sender : TObject);
begin
  PGSQL.StandartDelete(QueryTrack.FieldByName('id').AsString, '�����.�����',
                        QueryTrack, '', '', '', '');
end;
procedure TFrameTrack.btnEditClick(Sender : TObject);
begin
  Application.CreateForm(TFNewTrack, FNewTrack);
  with FNewTrack do
  begin
    s_id_track := QueryTrack.FieldByName('id').AsInteger;
    edtName.Text := QueryTrack.FieldByName('name').Value;
    edtUrName.Text := QueryTrack.FieldByName('��_���').Value;
    mmoAdrOffice.Text := QueryTrack.FieldByName('�����_�����').Value;
    mmoAdrReg.Text := QueryTrack.FieldByName('�����_�����������').Value;
    mmoAdrSklad.Text := QueryTrack.FieldByName('�����_������').Value;
    mmoRemark.Text := QueryTrack.FieldByName('����������').Value;
    edtMaxSrokDolg.Value := QueryTrack.FieldByName('����_����_����').Value;
    edtDayAlarm.Value := QueryTrack.FieldByName('���������_����').Value;
    edtMaxDolg.FloatValue := QueryTrack.FieldByName('����_�����_�����').Value;
    edtMaxDolg.FloatValue := QueryTrack.FieldByName('���������_�����').Value;
    ShowContact();
    ShowAccount();
    ShowAccountRus();
    ShowTarif();
    chkPrikul.Checked := QueryTrack.FieldByName('����_���������').AsBoolean;
    ShowModal;
    if FrameSave1.id_save = true then
      ShowTrack(s_id_track);
  end;
end;
procedure TFrameTrack.btnRefreshClick(Sender : TObject);
begin
  QueryTrack.Refresh;
end;
procedure TFrameTrack.ShowTrack(id_locate : Integer = 0);
begin
  with QueryTrack do
  begin
    CLose;
    sql.Text := 'select * from �����.����� order by name';
    Open;
    Locate('id', id_locate, []);
  end;
end;
procedure TFrameTrack.ViewStatWorkDblClick(Sender : TObject);
begin
  if FrameTopPanel1.btnEdit.Enabled = true then
    btnEditClick(Sender);
end;
end.
