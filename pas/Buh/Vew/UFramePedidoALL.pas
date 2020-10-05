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
  dxSkinXmas2008Blue, dxSkinOffice2007Blue, dxSkinsDefaultPainters, dxDateRanges;
type
  TFramePedidoAll = class(TFrame)
    FrameTopPanel1 : TFrameTopPanel;
    QueryPedidoALL : TUniQuery;
    dsPedidoALL : TDataSource;
    GridPedidoALL : TcxGrid;
    ViewPedidoALL : TcxGridDBTableView;
    LevelOrg : TcxGridLevel;
    ViewPedidoALL_ : TcxGridDBColumn;
    Query1 : TUniQuery;
    procedure btnEditClick(Sender : TObject);
    procedure ViewPedidoALLDblClick(Sender : TObject);
    procedure btnRefreshClick(Sender : TObject);
    procedure btnAddClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
  private
    { Private declarations }
  public
    procedure ShowPedidoALL;
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  UPedido, UPasswd;
procedure TFramePedidoAll.btnAddClick(Sender : TObject);
begin
  Application.CreateForm(TFPedido, FPedido);
  with FPedido do
  begin
    Caption := 'Pedido: ';
    // FramePedido1.s_date_awb := now;
    FramePedido1.ShowGroupOrder();
    Show;
  end;
end;
procedure TFramePedidoAll.btnDelClick(Sender : TObject);
begin
  if (FPasswd.ID_ROLE = 1) then
  begin
    if Application.MessageBox('¬ы действительно хотите удалить все педидо и заказы', '¬опрос', MB_YESNO) = mrYes then
    begin
      with Query1 do
      begin
        CLose;
        sql.Text := 'delete from "документы"."закупки_деталь"';
        ExecSQL;
        sql.Text := 'DELETE from "документы"."закупки";';
        ExecSQL;
        sql.Text := 'DELETE from "документы"."заказы";';
        ExecSQL;
        sql.Text := 'DELETE from "документы"."фактуры"';
        ExecSQL;
        ShowPedidoALL;
      end;
    end;
  end;
end;
procedure TFramePedidoAll.btnEditClick(Sender : TObject);
begin
  Application.CreateForm(TFPedido, FPedido);
  with FPedido do
  begin
    Caption := 'Pedido: ' + QueryPedidoALL.FieldByName('дата_вылета').AsString;
    FramePedido1.s_date_awb := QueryPedidoALL.FieldByName('дата_вылета').AsDateTime;
    FramePedido1.ShowGroupOrder();
    Show;
  end;
end;
procedure TFramePedidoAll.btnRefreshClick(Sender : TObject);
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
procedure TFramePedidoAll.ViewPedidoALLDblClick(Sender : TObject);
begin
  btnEditClick(Sender);
end;
end.
