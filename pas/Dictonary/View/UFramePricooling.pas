unit UFramePricooling;
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
  TFrameProcooling = class(TFrame)
    FrameTopPanel1 : TFrameTopPanel;
    GridStatWork : TcxGrid;
    ViewStatWork : TcxGridDBTableView;
    ColumnName : TcxGridDBColumn;
    LevelStatWork : TcxGridLevel;
    QueryPricooling : TUniQuery;
    dsPricooling : TDataSource;
    procedure btnAddClick(Sender : TObject);
    procedure btnEditClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure FrameTopPanel1btnSelClick(Sender : TObject);
    procedure ViewStatWorkDblClick(Sender : TObject);
    procedure btnRefreshClick(Sender : TObject);
  private
    { Private declarations }
  public
    procedure ShowPricooling(id_locate : integer = 0);
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  UNewPricooling,
  PGSQL;
procedure TFrameProcooling.btnAddClick(Sender : TObject);
begin
  Application.CreateForm(TFNewPricooling, FNewPricooling);
  with FNewPricooling do
  begin
    ShowModal;
    if FrameSave1.id_save = true then
      ShowPricooling(s_id_Pricooling);
  end;
end;
procedure TFrameProcooling.btnDelClick(Sender : TObject);
begin
  PGSQL.StandartDelete(QueryPricooling.FieldByName('id').AsString,
                        '"���������"."��������"', QueryPricooling, '', '', '', '');
  QueryPricooling.Refresh;
end;
procedure TFrameProcooling.btnEditClick(Sender : TObject);
begin
  Application.CreateForm(TFNewPricooling, FNewPricooling);
  with FNewPricooling do
  begin
    s_id_Pricooling := QueryPricooling.FieldByName('id').Value;
    edtName.Text := QueryPricooling.FieldByName('name').Value;
    mmoAdrFact.Text := QueryPricooling.FieldByName('�����_����').Value;
    mmoAdrReg.Text := QueryPricooling.FieldByName('�����_���').AsString;
    mmoRemark.Text := QueryPricooling.FieldByName('����������').AsString;
    edtMaxSrokDolg.Value := QueryPricooling.FieldByName('����_����_����').Value;
    edtDayAlarm.Value := QueryPricooling.FieldByName('���������_����').Value;
    edtMaxDolg.Text := QueryPricooling.FieldByName('����_�����_�����').AsString;
    edtSumAlarm.Text := QueryPricooling.FieldByName('���������_�����').AsString;
    edtSum.Text := QueryPricooling.FieldByName('���������').AsString;
    edtDoc.Text := QueryPricooling.FieldByName('����������').AsString;
    ShowTarifMarking;
    ShowModal;
    if FrameSave1.id_save = true then
      ShowPricooling(s_id_Pricooling);
  end;
end;
procedure TFrameProcooling.btnRefreshClick(Sender : TObject);
begin
  QueryPricooling.Refresh;
end;
procedure TFrameProcooling.FrameTopPanel1btnSelClick(Sender : TObject);
begin
  FrameTopPanel1.btnSelClick(Sender);
end;
procedure TFrameProcooling.ShowPricooling(id_locate : integer = 0);
begin
  with QueryPricooling do
  begin
    Close;
    Open;
    Locate('id', id_locate, []);
  end;
end;
procedure TFrameProcooling.ViewStatWorkDblClick(Sender : TObject);
begin
  if FrameTopPanel1.btnEdit.Enabled = true then
    btnEditClick(Sender);
end;
end.
