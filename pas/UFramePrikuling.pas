unit UFramePrikuling;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, MemDS, DBAccess, Uni,
  UFrameTopPanel;

type
  TFramePrikuling = class(TFrame)
    FrameTopPanel1: TFrameTopPanel;
    QueryPrikuling: TUniQuery;
    dsPrikuling: TDataSource;
    Query1: TUniQuery;
    GridPrikuling: TcxGrid;
    ViewPrikuling: TcxGridDBTableView;
    ColumnName: TcxGridDBColumn;
    LevelStatWork: TcxGridLevel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
