unit UBalanceKargo;

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
  cxCalc,
  MemDS,
  DBAccess,
  Uni,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridBandedTableView,
  cxGridDBBandedTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  UFrameTopPanel,
  cxGridExportLink,
  Winapi.ShellAPI,

  dxSkinDevExpressStyle,

  dxSkinXmas2008Blue, dxSkinOffice2007Blue, dxSkinsDefaultPainters;

type
  TFrameBalanceKargo = class(TFrame)
    FrameTopPanel1: TFrameTopPanel;
    GridBalance: TcxGrid;
    GridBalanceDBBandedTableView1: TcxGridDBBandedTableView;
    ColumnВес: TcxGridDBBandedColumn;
    ColumnСумма: TcxGridDBBandedColumn;
    ColumnРазница: TcxGridDBBandedColumn;
    ColumnКарго: TcxGridDBBandedColumn;
    ColumnСуммаФактур: TcxGridDBBandedColumn;
    ColumnСуммаОплат: TcxGridDBBandedColumn;
    LevelOrg: TcxGridLevel;
    QueryBalanceKargo: TUniQuery;
    dsBalanceKargo: TDataSource;
    QueryBalanceKargo1: TUniQuery;
    ColumnПретензия: TcxGridDBBandedColumn;
    procedure ColumnРазницаCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FrameTopPanel1btnEditClick(Sender: TObject);
    procedure FrameTopPanel1btnRefreshClick(Sender: TObject);
    procedure GridBalanceDBBandedTableView1DblClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure FrameTopPanel1btnArchPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    procedure SetLang;
    procedure ShowBalance(s_id_locate: Integer = 0);
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  UFacturKargo,
  UPasswd;

procedure TFrameBalanceKargo.btnExportClick(Sender: TObject);
begin
  ExportGridToExcel(FPasswd.GetVar('TEMP') + '\fact_kargo', GridBalance, true,
    true, true, 'xls');
  ShellExecute(Handle, nil, PChar(FPasswd.GetVar('TEMP') + '\fact_kargo.xls'),
    nil, nil, SW_RESTORE);
end;

procedure TFrameBalanceKargo.ColumnРазницаCustomDrawCell
  (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Values[2] < 0 then
  begin
    ACanvas.Canvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
  end;
  if AViewInfo.GridRecord.Values[2] > 0 then
  begin
    ACanvas.Canvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
  end
end;

procedure TFrameBalanceKargo.FrameTopPanel1btnArchPropertiesEditValueChanged
  (Sender: TObject);
begin
  ShowBalance();
end;

procedure TFrameBalanceKargo.FrameTopPanel1btnEditClick(Sender: TObject);
begin
  Application.CreateForm(TFFacturKargo, FFacturKargo);
  FFacturKargo.s_id_kargo := QueryBalanceKargo.FieldByName('id').AsInteger;
  FFacturKargo.Caption := 'Фактуры Карго - ' + QueryBalanceKargo.FieldByName
    ('name').AsString;
  FFacturKargo.ShowFact();
  FFacturKargo.Show;
end;

procedure TFrameBalanceKargo.FrameTopPanel1btnRefreshClick(Sender: TObject);
begin
  ShowBalance(QueryBalanceKargo.FieldByName('id').AsInteger);
end;

procedure TFrameBalanceKargo.GridBalanceDBBandedTableView1DblClick
  (Sender: TObject);
begin
  if FrameTopPanel1.btnEdit.Enabled = true then
    FrameTopPanel1btnEditClick(Sender);
end;

procedure TFrameBalanceKargo.SetLang;
begin
  case FPasswd.Lang of
    1:
      begin
        // // Caption := 'Directories';
        // ItemТовары.Caption := 'Nomenclature';
        // ItemКлиент.Caption := 'Clients';
        // ItemСтраны.Caption := 'Country';
        // ItemТипы.Caption := 'Types';
        // ItemСвойства.Caption := 'Properties';
        // ItemПлантации.Caption := 'Plantation';
        // ItemСорта.Caption := 'Grades';
        // ItemОрганизация.Caption := 'Organization';
        // ItemПользователи.Caption := 'Users';
        // ItemРоль.Caption := 'The role';
        // GroupОснова.Caption := 'Main';
        // GroupСтруктура.Caption := 'Structure';
        // GroupОрг.Caption := 'Organization';
        // GroupАдмин.Caption := 'Administration';
        // ItemКарго.Caption := 'Cargo';
        // ItemАвиалинии.Caption := 'Airlines';
      end;
    2:
      begin
        GridBalanceDBBandedTableView1.Bands[1].Caption := 'La factura';
        ColumnВес.Caption := 'El peso';
        ColumnСумма.Caption := 'La suma AWB';
        ColumnРазница.Caption := 'La diferencia';
        ColumnКарго.Caption := 'El cargo';
        ColumnСуммаФактур.Caption := 'La suma de facturas';
        ColumnПретензия.Caption := 'La reclamación';
        ColumnСуммаОплат.Caption := 'Es pagado';
      end;
  end;
end;

procedure TFrameBalanceKargo.ShowBalance(s_id_locate: Integer = 0);
begin
  with QueryBalanceKargo do
  begin
    SQL.Clear;
    SQL.Add(' select k.id,');
    SQL.Add(' k.name,');
    SQL.Add(' sum(a."сумма_оплат") сумма_оплат,');
    SQL.Add(' sum(a."сумма_фактуры_карго") сумма_фактуры_карго,');
    SQL.Add(' sum(a.вес) вес,');
    SQL.Add(' sum(a.претензия) претензия,  ');
    SQL.Add(' sum(a."сумма_оплат")- sum(a."сумма_фактуры_карго")-sum(a.претензия) разница,');
    SQL.Add(' sum(a."стоимость") стоимость');
    SQL.Add(' from "карго"."агенства" k');
    SQL.Add(' Inner join "бух".awb a on (a."код_карго" = k.id)');
    if FrameTopPanel1.btnArch.EditValue = true then
      SQL.Add('  where a."архив_awb"=1')
    else
      SQL.Add(' where a."архив_awb"=0');
    SQL.Add(' ');
    SQL.Add(' group by k.id,');
    SQL.Add(' k.name');
    SQL.Add(' order by k.name');
    Open;
    Locate('id', s_id_locate, []);
  end;
end;

end.
