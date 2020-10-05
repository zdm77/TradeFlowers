unit UFramePrice;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, MemDS, DBAccess, Uni,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, UFrameTopPanel, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, dxSkinsDefaultPainters, dxSkinOffice2007Blue, dxDateRanges;
type
  TFramePrice = class(TFrame)
    FrameTopPanel1 : TFrameTopPanel;
    GridPedidoALL : TcxGrid;
    ViewPedidoALL : TcxGridDBTableView;
    ColumnDate : TcxGridDBColumn;
    LevelOrg : TcxGridLevel;
    QueryPrice : TUniQuery;
    dsPrice : TDataSource;
    ColumnPlant : TcxGridDBColumn;
    ColumnCountry : TcxGridDBColumn;
    ColumnType : TcxGridDBColumn;
    Query1 : TUniQuery;
    procedure btnAddClick(Sender : TObject);
    procedure FrameTopPanel1btnEditClick(Sender : TObject);
    procedure FrameTopPanel1btnRefreshClick(Sender : TObject);
    procedure ViewPedidoALLDblClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure FrameTopPanel1btnSelClick(Sender : TObject);
  private
    { Private declarations }
  public
    procedure ShowPrice(id_locate : Integer = 0);
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses UPriceDetail, UDataModule1;
procedure TFramePrice.btnAddClick(Sender : TObject);
begin
  Application.CreateForm(TFPriceDetail, FPriceDetail);
  FPriceDetail.Show;
  with FPriceDetail.FramePriceDetail1 do
  begin
    ShowCountry();
    ShowType();
    ShowPlant();
    edtDate.Date := Now;
  end;
end;
procedure TFramePrice.btnDelClick(Sender : TObject);
begin
  if Application.MessageBox('¬ы действительно хотите удалить прайс-лист?',
                             '¬опрос', MB_YESNO + MB_ICONWARNING) = mrYes then
  begin
    with Query1 do
    begin
      Close;
      sql.Text := 'delete from  "документы"."прайс" where id = ' +
    QueryPrice.FieldByName('id').AsString;
      ExecSQL;
      ShowPrice();
    end;
  end;
end;
procedure TFramePrice.FrameTopPanel1btnEditClick(Sender : TObject);
begin
  Application.CreateForm(TFPriceDetail, FPriceDetail);
  with FPriceDetail.FramePriceDetail1 do
  begin
    IDPlant := QueryPrice.FieldByName('код_плантации').AsInteger;
    ShowCountry(QueryPrice.FieldByName('код_страны').AsInteger);
    IDType := QueryPrice.FieldByName('код_типа').AsInteger;
    DatePrice := QueryPrice.FieldByName('дата_прайса').AsDateTime;
    ShowType(IDType);
    ShowPlant(IDPlant);
    edtDate.Date := DatePrice;
    IDPrice := QueryPrice.FieldByName('id').AsInteger;
    ShowPriceDetail();
  end;
  FPriceDetail.Show;
end;
procedure TFramePrice.FrameTopPanel1btnRefreshClick(Sender : TObject);
begin
  ShowPrice(QueryPrice.FieldByName('id').AsInteger);
end;
procedure TFramePrice.FrameTopPanel1btnSelClick(Sender : TObject);
var
  i : Integer;
begin
  with DM1.dxMemData1 do
  begin
    // ProgrammedFilter := True;
    First;
    // while not Eof do
    // begin
    // if FieldByName('id').AsInteger=5 then
    // FilterList.Add(CurRec + 1);
    // Next;
    // end;
    // Filtered := True;
    ShowMessage(FieldByName('uni_name').AsString);
  end;
end;
procedure TFramePrice.ShowPrice(id_locate : Integer = 0);
begin
  with QueryPrice do
  begin
    sql.Clear;
    sql.Add(' SELECT');
    sql.Add(' pr.id,');
    sql.Add(' pr."код_пользовател€",');
    sql.Add(' pr."дата_прайса",');
    sql.Add(' pr."код_типа",');
    sql.Add(' s.id код_страны,');
    sql.Add(' pr."код_плантации",');
    sql.Add(' pl.uni_name ѕлантаци€ ,');
    sql.Add(' s.uni_name —трана ,');
    sql.Add(' t.uni_name “ип');
    sql.Add(' FROM');
    sql.Add(' "документы"."прайс" pr');
    sql.Add(' INNER JOIN "продукци€"."плантации" pl ON (pr."код_плантации" = pl.id)');
    sql.Add(' INNER JOIN "продукци€"."страны" s ON (pl."код_страны" = s.id)');
    sql.Add(' INNER JOIN "продукци€"."типы" t ON (pr."код_типа" = t.id)');
    sql.Add(' order by дата_прайса desc');
    Open;
  end;
end;
procedure TFramePrice.ViewPedidoALLDblClick(Sender : TObject);
begin
  FrameTopPanel1btnEditClick(Sender);
end;
end.
