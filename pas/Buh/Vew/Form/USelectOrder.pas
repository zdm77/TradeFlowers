unit USelectOrder;
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
  UFrameOrder,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  dxSkinsCore,
  
  cxStyles,
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxEdit,
  DB,
  cxDBData,
  cxCheckBox,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  cxSplitter,
  MemDS,
  DBAccess,
  Uni,
  cxNavigator,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue;
type
  TFSelectOrder = class(TForm)
    FrameOrder1 : TFrameOrder;
    cxspltr1 : TcxSplitter;
    GridOrder : TcxGrid;
    ViewOrder : TcxGridDBTableView;
    ColumnViewOrderpl_name : TcxGridDBColumn;
    ColumnViewOrders_name : TcxGridDBColumn;
    ColumnViewOrderDBColumn : TcxGridDBColumn;
    ColumnViewOrder__1 : TcxGridDBColumn;
    Column—ÚÂ·ÎÂÈ : TcxGridDBColumn;
    ColumnPrice : TcxGridDBColumn;
    ColumnStand : TcxGridDBColumn;
    GridLevelOrder : TcxGridLevel;
    QueryOrderDetail : TUniQuery;
    dsOrderDeatil : TDataSource;
    procedure FrameOrder1ViewOrderDblClick(Sender : TObject);
    procedure FrameTopPanel1btnSelClick(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSelectOrder : TFSelectOrder;
implementation
{$R *.dfm}

procedure TFSelectOrder.FrameOrder1ViewOrderDblClick(Sender : TObject);
begin
  FrameTopPanel1btnSelClick(Sender);
end;
procedure TFSelectOrder.FrameTopPanel1btnSelClick(Sender : TObject);
begin
  FrameOrder1.FrameTopPanel1btnSelClick(Sender);
  Close;
end;
end.
