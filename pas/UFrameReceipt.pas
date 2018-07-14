// Поступления
unit UFrameReceipt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
    dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, MemDS, DBAccess, Uni, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  UFrameTopPanel;

type
  TFrameReceipt = class(TFrame)
    FrameTopPanel1: TFrameTopPanel;
    GridStatWork: TcxGrid;
    ViewReceipt: TcxGridDBTableView;
    LevelStatWork: TcxGridLevel;
    Query1: TUniQuery;
    QueryReceipt: TUniQuery;
    dsReceipt: TDataSource;
    ColumnДата: TcxGridDBColumn;
    ViewReceiptname: TcxGridDBColumn;
  private
    { Private declarations }
  public
    procedure ShowReceipt(id_locate: Integer = 0);
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFrameReceipt.ShowReceipt(id_locate: Integer = 0);
begin
  with QueryReceipt do
  begin
    SQL.Clear;
    SQL.Add(' SELECT');
    SQL.Add(' p."дата",');
    SQL.Add(' p.id id_p,');
    SQL.Add(' s.id id_s,');
    SQL.Add(' s.name,');
    SQL.Add(' s.uni_name,');
    SQL.Add(' s.reg_name,');
    SQL.Add(' s.quantity,');
    SQL.Add(' s.code,');
    SQL.Add(' s."приоритет"');
    SQL.Add(' FROM');
    SQL.Add(' "поступления"."поступления" p');
    SQL.Add(' INNER JOIN "продукция"."страны" s ON (p."код_страны" = s.id)');
    SQL.Add(' order by дата Desc');
    Open;
    Locate('id', id_locate, []);
  end;
end;

end.
