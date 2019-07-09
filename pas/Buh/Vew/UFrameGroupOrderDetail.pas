unit UFrameGroupOrderDetail;

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
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue;

type
  TFrameGroupOrderDetail = class(TFrame)
    FrameTopPanel1: TFrameTopPanel;
    QueryGroupOrder: TUniQuery;
    dsGroupOrder: TDataSource;
    GridOrder: TcxGrid;
    ViewOrder: TcxGridDBTableView;
    GridLevelOrder: TcxGridLevel;
    ViewOrder_5: TcxGridDBColumn;
    ViewOrderu_name: TcxGridDBColumn;
    ViewOrderlogin: TcxGridDBColumn;
    ViewOrderDBColumn: TcxGridDBColumn;
    ViewOrderm_name: TcxGridDBColumn;
    ViewOrdersss: TcxGridDBColumn;
    ViewOrderDBColumn1: TcxGridDBColumn;
    ViewOrderDBColumn2: TcxGridDBColumn;
    ViewOrderpt_name: TcxGridDBColumn;
    ViewOrderst_name: TcxGridDBColumn;
    ViewOrderp2_name: TcxGridDBColumn;
    ViewOrders2_name: TcxGridDBColumn;
    ColumnViewOrderColumn1: TcxGridDBColumn;
    procedure btnEditClick(Sender: TObject);
    procedure ViewOrderDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  UNewZakupka;

procedure TFrameGroupOrderDetail.btnEditClick(Sender: TObject);
begin
  Application.CreateForm(TFNewZakupka, FNewZakupka);
  with FNewZakupka do
  begin
    ShowModal;
  end;
end;

procedure TFrameGroupOrderDetail.ViewOrderDblClick(Sender: TObject);
begin
  btnEditClick(Sender);
end;

end.
