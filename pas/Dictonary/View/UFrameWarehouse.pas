unit UFrameWarehouse;

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
  cxNavigator,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue, dxSkinOffice2007Blue, dxSkinsDefaultPainters;

type
  TFrameWarehouse = class(TFrame)
    FrameTopPanel1: TFrameTopPanel;
    QueryWarehouse: TUniQuery;
    dsWarehouse: TDataSource;
    GridWarehouse: TcxGrid;
    ViewUsers: TcxGridDBTableView;
    ColumnName: TcxGridDBColumn;
    LevelOrg: TcxGridLevel;
    ColumnOrg: TcxGridDBColumn;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure ViewUsersDblClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ShowWarehouse(id_locate: Integer = 0);
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  UPasswd,
  UDialogMy,
  PGSQL,
  UNewWarehouse;

procedure TFrameWarehouse.btnAddClick(Sender: TObject);
begin
  Application.CreateForm(TFNewWarehouse, FNewWarehouse);
  with FNewWarehouse do
  begin
    s_id_org := FPasswd.edtOrg.EditValue;
    ShowOrg;
    ShowModal;
    if FrameSave1.id_save = true then
      ShowWarehouse(s_id_warehouse);
  end;
end;

procedure TFrameWarehouse.btnDelClick(Sender: TObject);
begin
  PGSQL.StandartDelete(QueryWarehouse.FieldByName('id').AsString,
    '"склад"."цеха"', QueryWarehouse, '', '', '', '');
end;

procedure TFrameWarehouse.btnEditClick(Sender: TObject);
begin
  Application.CreateForm(TFNewWarehouse, FNewWarehouse);
  with FNewWarehouse do
  begin
    s_id_org := QueryWarehouse.FieldByName('код_организации').AsInteger;
    s_id_warehouse := QueryWarehouse.FieldByName('id').AsInteger;
    with FrameUniName1 do
    begin
      edtUniName.Text := QueryWarehouse.FieldByName('w_uni_name').AsString;
      edtName.Text := QueryWarehouse.FieldByName('w_name').AsString;
      edtRegName.Text := QueryWarehouse.FieldByName('w_reg_name').AsString;
    end;
    ShowOrg;
    ShowModal;
    if FrameSave1.id_save = true then
      QueryWarehouse.Refresh;;
  end;
end;

procedure TFrameWarehouse.btnRefreshClick(Sender: TObject);
begin
  QueryWarehouse.Refresh;
end;

procedure TFrameWarehouse.ShowWarehouse(id_locate: Integer = 0);
begin
  with QueryWarehouse do
  begin
    case FPasswd.Lang of
      0:
        ColumnName.DataBinding.FieldName := 'w_name';
      1:
        ColumnName.DataBinding.FieldName := 'w_uni_name';
      2:
        ColumnName.DataBinding.FieldName := 'w_reg_name';
    end;
    Close;
    Open;
    Locate('id', id_locate, []);
  end;
end;

procedure TFrameWarehouse.ViewUsersDblClick(Sender: TObject);
begin
  if FrameTopPanel1.btnEdit.Enabled = true then
    btnEditClick(Sender);
end;

end.
