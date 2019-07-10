unit UFrameBankInter;
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
  cxNavigator,
  
  dxSkinDevExpressStyle,
  
  dxSkinsDefaultPainters;
type
  TFrameBankInter = class(TFrame)
    FrameTopPanel1 : TFrameTopPanel;
    QueryBanks : TUniQuery;
    dsBanks : TDataSource;
    Query1 : TUniQuery;
    GridStatWork : TcxGrid;
    ViewStatWork : TcxGridDBTableView;
    LevelStatWork : TcxGridLevel;
    ViewStatWorkname : TcxGridDBColumn;
    ViewStatWorkswift : TcxGridDBColumn;
    procedure FrameTopPanel1btnSelClick(Sender : TObject);
    procedure btnAddClick(Sender : TObject);
    procedure btnEditClick(Sender : TObject);
    procedure ViewStatWorkDblClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
  private
    { Private declarations }
  public
    procedure EnableSave;
    procedure ShowBank(id_locate : Integer = 0);
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  UNewInBank,
  PGSQL;
procedure TFrameBankInter.btnAddClick(Sender : TObject);
begin
  Application.CreateForm(TFNewInBank, FNewInBank);
  with FNewInBank do
  begin
    ShowModal;
    if FrameSave1.id_save = true then
      ShowBank(s_id_bank);
  end;
end;
procedure TFrameBankInter.btnDelClick(Sender : TObject);
begin
  PGSQL.StandartDelete(QueryBanks.FieldByName('id').AsString, 'банки_зарубеж',
                        QueryBanks, '', '', '', '');
  EnableSave;
end;
procedure TFrameBankInter.btnEditClick(Sender : TObject);
begin
  Application.CreateForm(TFNewInBank, FNewInBank);
  with FNewInBank do
  begin
    s_id_bank := QueryBanks.FieldByName('id').AsInteger;
    edtName.Text := QueryBanks.FieldByName('name').AsString;
    edtSWIFT.Text := QueryBanks.FieldByName('swift').AsString;
    mmoAddress.Text := QueryBanks.FieldByName('адрес').AsString;
    ShowModal;
    if FrameSave1.id_save = true then
      ShowBank(s_id_bank);
  end;
end;
procedure TFrameBankInter.EnableSave;
begin
  if QueryBanks.RecordCount <> 0 then
  begin
    FrameTopPanel1.btnEdit.Enabled := true;
    FrameTopPanel1.btnDel.Enabled := true;
  end
  else
  begin
    FrameTopPanel1.btnEdit.Enabled := false;
    FrameTopPanel1.btnDel.Enabled := false;
  end;
end;
procedure TFrameBankInter.FrameTopPanel1btnSelClick(Sender : TObject);
begin
  FrameTopPanel1.btnSelClick(Sender);
end;
procedure TFrameBankInter.ShowBank(id_locate : Integer = 0);
begin
  with QueryBanks do
  begin
    Close;
    sql.Text := 'select * from банки_зарубеж order by name';
    Open;
    Locate('id', id_locate, []);
  end;
end;
procedure TFrameBankInter.ViewStatWorkDblClick(Sender : TObject);
begin
  btnEditClick(Sender);
end;
end.
