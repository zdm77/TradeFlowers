unit UFrameBalance;

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
  cxGridBandedTableView,
  cxGridDBBandedTableView,
  cxGridExportLink,
  Winapi.ShellAPI,
  Vcl.ExtCtrls,
  cxContainer,
  Vcl.ComCtrls,
  Vcl.StdCtrls,
  cxGroupBox,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue, dxSkinOffice2007Blue, dxSkinsDefaultPainters;

type
  TFrameBalance = class(TFrame)
    FrameTopPanel1: TFrameTopPanel;
    QueryBalance: TUniQuery;
    dsBalance: TDataSource;
    QueryBalance1: TUniQuery;
    GridBalance: TcxGrid;
    LevelOrg: TcxGridLevel;
    GridBalanceDBBandedTableView1: TcxGridDBBandedTableView;
    ColumnПлантация: TcxGridDBBandedColumn;
    ColumnFB: TcxGridDBBandedColumn;
    ColumnBOX: TcxGridDBBandedColumn;
    ColumnFBфакт: TcxGridDBBandedColumn;
    ColumnBOXфакт: TcxGridDBBandedColumn;
    ColumnСуммаФактур: TcxGridDBBandedColumn;
    ColumnРазница: TcxGridDBBandedColumn;
    ColumnСуммаОплат: TcxGridDBBandedColumn;
    ColumnПритензия: TcxGridDBBandedColumn;
    cxGroupBox1: TcxGroupBox;
    lbl1: TLabel;
    edtDate: TDateTimePicker;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure ColumnРазницаCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure ColumnBOXфактCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure GridBalanceDBBandedTableView1DblClick(Sender: TObject);
    procedure ColumnFBфактCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnExportClick(Sender: TObject);
    procedure edtDateCloseUp(Sender: TObject);
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
  UFacturPlant,
  UPasswd;

procedure TFrameBalance.btnAddClick(Sender: TObject);
begin
  ShowMessage('');
end;

procedure TFrameBalance.btnDelClick(Sender: TObject);
begin
  ShowMessage('');
end;

procedure TFrameBalance.btnEditClick(Sender: TObject);
begin
  Application.CreateForm(TFFacturPlant, FFacturPlant);
  FFacturPlant.GridBalance.Visible := False;
  FFacturPlant.s_id_plant := QueryBalance.FieldByName('о_id').AsInteger;
  FFacturPlant.Caption := 'Фактуры плантации - ' + QueryBalance.FieldByName
    ('о_name').AsString;
  FFacturPlant.ShowFact();
  FFacturPlant.GridBalance.Visible := true;
  FFacturPlant.Show;
end;

procedure TFrameBalance.btnExportClick(Sender: TObject);
begin
  ExportGridToExcel(FPasswd.GetVar('TEMP') + '\balance', GridBalance, true,
    true, true, 'xls');
  ShellExecute(Handle, nil, PChar(FPasswd.GetVar('TEMP') + '\balance.xls'), nil,
    nil, SW_RESTORE);
end;

procedure TFrameBalance.btnRefreshClick(Sender: TObject);
begin
  ShowBalance(QueryBalance.FieldByName('о_id').AsInteger);
end;

procedure TFrameBalance.ColumnРазницаCustomDrawCell
  (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Values[4] < 0 then
  begin
    ACanvas.Canvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
  end;
  if AViewInfo.GridRecord.Values[4] > 0 then
  begin
    ACanvas.Canvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
  end
end;

procedure TFrameBalance.FrameTopPanel1btnArchPropertiesEditValueChanged
  (Sender: TObject);
begin
  ShowBalance();
end;

procedure TFrameBalance.ColumnBOXфактCustomDrawCell
  (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Values[2] > AViewInfo.GridRecord.Values[3] then
  begin
    ACanvas.Canvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
  end;
  if AViewInfo.GridRecord.Values[2] < AViewInfo.GridRecord.Values[3] then
  begin
    ACanvas.Canvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
  end
end;

procedure TFrameBalance.GridBalanceDBBandedTableView1DblClick(Sender: TObject);
begin
  if FrameTopPanel1.btnEdit.Enabled = true then
    btnEditClick(Sender);
end;

procedure TFrameBalance.ColumnFBфактCustomDrawCell
  (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Values[0] > AViewInfo.GridRecord.Values[1] then
  begin
    ACanvas.Canvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
  end;
  if AViewInfo.GridRecord.Values[0] < AViewInfo.GridRecord.Values[1] then
  begin
    ACanvas.Canvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
  end
end;

procedure TFrameBalance.edtDateCloseUp(Sender: TObject);
begin
  ShowBalance();
end;

procedure TFrameBalance.SetLang;
begin
  case FPasswd.Lang of
    0:
      begin
        FrameTopPanel1.btnEdit.Caption := 'К фактурам';
      end;
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
        // Caption := 'Guías';
        GridBalanceDBBandedTableView1.Bands[1].Caption := 'Las facturas';
        ColumnПлантация.Caption := 'La plantación';
        ColumnFB.Caption := 'La cantidad FB';
        ColumnBOX.Caption := 'La cantidad de las cajas';
        ColumnFBфакт.Caption := 'La cantidad FB';
        ColumnBOXфакт.Caption := 'La cantidad de las cajas';
        ColumnСуммаФактур.Caption := 'La suma de facturas';
        ColumnРазница.Caption := 'La diferencia';
        ColumnСуммаОплат.Caption := 'La suma de pagas';
        ColumnПритензия.Caption := 'La suma de reclamaciones';
        FrameTopPanel1.btnEdit.Caption := 'A las facturas';
      end;
  end;
end;

procedure TFrameBalance.ShowBalance(s_id_locate: Integer = 0);
begin
  with QueryBalance do
  begin
    SQL.Clear;
    // SQL.Add(' select t2.name,');
    // SQL.Add(' t2.id,');
    // SQL.Add(' t2.fb,');
    // SQL.Add(' t2.boxs,');
    // SQL.Add(' t2.fb_fact,');
    // SQL.Add(' t2.boxs_fact,');
    // SQL.Add(' sum(t1.sf) сумма_фактур,');
    // SQL.Add(' sum(t1.so) сумма_оплат,');
    // SQL.Add(' COALESCE(sum(t1.so) - sum(t1.sf), -sum(t1.sf)) разница');
    // SQL.Add(' from (');
    // SQL.Add(' SELECT pl.id,');
    // SQL.Add(' sum(o."сумма") so,');
    // SQL.Add(' sad."сумма_фактуры" sf');
    // SQL.Add(' FROM "бух".sub_awb_detail sad');
    // SQL.Add(' INNER JOIN "продукция"."плантации" pl ON (sad."код_плантации" =');
    // SQL.Add(' pl.id)');
    // SQL.Add(' left join "бух"."оплата" o on (o."код_детали_awb" = sad.id)');
    // SQL.Add(' GROUP BY pl.id,');
    // SQL.Add(' sad."сумма_фактуры"');
    // SQL.Add(' ) t1,');
    // SQL.Add(' (');
    // SQL.Add(' SELECT pl.name,');
    // SQL.Add(' pl.id,');
    // SQL.Add(' sum(sad."кол_во_fb") AS fb,');
    // SQL.Add(' sum(sad."кол_во") AS boxs,');
    // SQL.Add(' sum(sad."FB_фактура") AS fb_fact,');
    // SQL.Add(' sum(sad."BOX_фактура") AS boxs_fact');
    // SQL.Add(' FROM "бух".sub_awb_detail sad');
    // SQL.Add(' INNER JOIN "продукция"."плантации" pl ON (sad."код_плантации" =');
    // SQL.Add(' pl.id)');
    // SQL.Add(' GROUP BY pl.name,');
    // SQL.Add(' pl.id');
    // SQL.Add(' ) t2');
    // SQL.Add(' where t2.id = t1.id');
    // SQL.Add(' group by t2.name,');
    // SQL.Add(' t2.id,');
    // SQL.Add(' t2.fb,');
    // SQL.Add(' t2.boxs,');
    // SQL.Add(' t2.fb_fact,');
    // SQL.Add(' t2.boxs_fact');
    // SQL.Add(' order by t2.name');
    if FrameTopPanel1.btnArch.EditValue = true then
      SQL.Add('select * from "бух"."итог_баланс_плантаций"(1,:d)')
    else
      SQL.Add('select * from "бух"."итог_баланс_плантаций"(0,:d)');
    ParamByName('d').AsDate := edtDate.DateTime;
    Open;
    Locate('о_id', s_id_locate, []);
    GridBalanceDBBandedTableView1.ApplyBestFit();
  end;
end;

end.

