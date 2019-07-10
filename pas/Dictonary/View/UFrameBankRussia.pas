unit UFrameBankRussia;
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
  UFrameTopPanel,
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
  cxNavigator,
  
  dxSkinDevExpressStyle,
  
  dxSkinsDefaultPainters;
type
  TFrameBank = class(TFrame)
    GridStatWork : TcxGrid;
    ViewStatWork : TcxGridDBTableView;
    ViewStatWorkname : TcxGridDBColumn;
    ViewStatWorkbik : TcxGridDBColumn;
    ViewStatWorkcity : TcxGridDBColumn;
    ViewStatWorkphone : TcxGridDBColumn;
    ViewStatWorkrkc : TcxGridDBColumn;
    ViewStatWorkokpo : TcxGridDBColumn;
    LevelStatWork : TcxGridLevel;
    QueryBanks : TUniQuery;
    dsBanks : TDataSource;
    Query1 : TUniQuery;
    FrameTopPanel1 : TFrameTopPanel;
  private
    { Private declarations }
  public
    procedure ShowBank(id_locate : integer = 0);
    { Public declarations }
  end;
implementation
{$R *.dfm}

procedure TFrameBank.ShowBank(id_locate : integer = 0);
begin
  with QueryBanks do
  begin
    Close;
    sql.Text := 'select * from банки_россия order by name';
    Open;
    Locate('bik', id_locate, []);
  end;
end;
end.
