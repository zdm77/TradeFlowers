unit UFramePedidoALL;

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
  cxNavigator,
  Data.DB,
  cxDBData,
  cxCheckBox,
  cxCalc,
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
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue;

type
  TFramePedidoAll = class(TFrame)
    FrameTopPanel1: TFrameTopPanel;
    QueryPedidoALL: TUniQuery;
    dsPedidoALL: TDataSource;
    GridPedidoALL: TcxGrid;
    ViewPedidoALL: TcxGridDBTableView;
    LevelOrg: TcxGridLevel;
    ViewPedidoALL_: TcxGridDBColumn;
    procedure btnEditClick(Sender: TObject);
    procedure ViewPedidoALLDblClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ShowPedidoALL;
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  UPedido;

procedure TFramePedidoAll.btnEditClick(Sender: TObject);
begin
  Application.CreateForm(TFPedido, FPedido);
  with FPedido do
  begin
    Caption := 'Pedido: ' + QueryPedidoALL.FieldByName('дата_вылета').AsString;
    FramePedido1.s_date_awb := QueryPedidoALL.FieldByName('дата_вылета')
      .AsDateTime;
    FramePedido1.ShowGroupOrder();
    Show;
  end;
end;

procedure TFramePedidoAll.btnRefreshClick(Sender: TObject);
begin
  ShowPedidoALL;
end;

procedure TFramePedidoAll.ShowPedidoALL;
begin
  with QueryPedidoALL do
  begin
    CLose;
    Open;
  end;
end;

procedure TFramePedidoAll.ViewPedidoALLDblClick(Sender: TObject);
begin
  btnEditClick(Sender);
end;

end.
