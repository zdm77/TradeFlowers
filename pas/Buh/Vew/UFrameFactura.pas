unit UFrameFactura;
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
  cxContainer,
  cxEdit,
  dxSkinsCore,
  
  cxStyles,
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
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
  Vcl.ComCtrls,
  AdvDateTimePicker,
  cxGroupBox,
  UFrameTopPanel,
  cxGridBandedTableView,
  cxGridDBBandedTableView,
  cxNavigator,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue, dxSkinOffice2007Blue, dxSkinsDefaultPainters;
type
  TFrameFactura = class(TFrame)
    FrameTopPanel1 : TFrameTopPanel;
    Group1 : TcxGroupBox;
    edtOt : TAdvDateTimePicker;
    QueryFactura : TUniQuery;
    dsFactura : TDataSource;
    GridFactura : TcxGrid;
    LevelOrg : TcxGridLevel;
    edtDateDo : TAdvDateTimePicker;
    ViewFactura : TcxGridDBBandedTableView;
    ColumnNum : TcxGridDBBandedColumn;
    ColumnДатаЗакуп : TcxGridDBBandedColumn;
    ColumnКодСтатус : TcxGridDBBandedColumn;
    ColumnМаркировка : TcxGridDBBandedColumn;
    ColumnFBPЗакуп : TcxGridDBBandedColumn;
    ColumnСтеблейЗакуп : TcxGridDBBandedColumn;
    ColumnИтогЗакуп : TcxGridDBBandedColumn;
    ColumnFB : TcxGridDBBandedColumn;
    ColumnСтеблей : TcxGridDBBandedColumn;
    ColumnИтог : TcxGridDBBandedColumn;
    ColumnПлнатация : TcxGridDBBandedColumn;
    Query1 : TUniQuery;
    ColumnСтатус : TcxGridDBBandedColumn;
    procedure btnAddClick(Sender : TObject);
    procedure btnEditClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure btnRefreshClick(Sender : TObject);
    procedure edtOtChange(Sender : TObject);
    procedure FrameTopPanel1btnRazdelClick(Sender : TObject);
    procedure QueryFacturaAfterFetch(DataSet : TCustomDADataSet);
    procedure QueryFacturaBeforeFetch(DataSet : TCustomDADataSet;
                                         var Cancel : Boolean);
    procedure ViewFacturaCustomDrawCell(Sender : TcxCustomGridTableView;
                                           ACanvas : TcxCanvas; AViewInfo : TcxGridTableDataCellViewInfo;
                                           var ADone : Boolean);
    procedure ViewFacturaDblClick(Sender : TObject);
  private
    { Private declarations }
  protected
  public
    procedure SetLang;
    procedure ShowFactura;
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  UFacturaDetail,
  USplash,
  USeparate,
  UPasswd;
procedure TFrameFactura.btnAddClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameFactura.btnDelClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameFactura.btnEditClick(Sender : TObject);
begin
  if QueryFactura.RecordCount > 0 then
  begin
    Application.CreateForm(TFFacturaDetail, FFacturaDetail);
    with FFacturaDetail do
    begin
      s_id_state := QueryFactura.FieldByName('код_статуса').AsInteger;
      Caption := 'Фактура плантации - ' + QueryFactura.FieldByName('p_uni_name')
    .AsString + '. № ' + QueryFactura.FieldByName('номер').AsString;
      id_fact := QueryFactura.FieldByName('id').AsInteger;
      ShowFacturaDetail;
      edtДатаФактуры.Date := QueryFactura.FieldByName('дата_фактуры')
    .AsDateTime;
      edtДатаЗакупки.Date := QueryFactura.FieldByName('дата_закупки')
    .AsDateTime;
      edtNum.Text := QueryFactura.FieldByName('номер').AsString;
      edtMarking.Text := QueryFactura.FieldByName('m_uni_name').AsString;
      date_fact := edtДатаФактуры.Date;
      num := edtNum.Text;
      EnableButton;
      Show;
    end;
  end;
end;
procedure TFrameFactura.btnRefreshClick(Sender : TObject);
begin
  QueryFactura.Refresh;
end;
procedure TFrameFactura.edtOtChange(Sender : TObject);
begin
  ShowFactura;
end;
procedure TFrameFactura.FrameTopPanel1btnRazdelClick(Sender : TObject);
begin
  Application.CreateForm(TFSeparate, FSeparate);
  with FSeparate do
  begin
    s_id_factura := QueryFactura.FieldByName('id').AsInteger;
    ShowModal;
  end;
end;
procedure TFrameFactura.QueryFacturaAfterFetch(DataSet : TCustomDADataSet);
begin
  FSplash.Close;
end;
procedure TFrameFactura.QueryFacturaBeforeFetch(DataSet : TCustomDADataSet;
                                                   var Cancel : Boolean);
begin
  FSplash.Show;
end;
procedure TFrameFactura.SetLang;
begin
  case FPasswd.Lang of
    1 :
    begin
      ViewFactura.Bands[0].Caption := 'Invoice';
      ViewFactura.Bands[1].Caption := 'Purchase';
      ColumnNum.Caption := 'No.';
      ColumnДатаЗакуп.Caption := 'Date';
      ColumnМаркировка.Caption := 'Marking';
      ColumnСтеблейЗакуп.Caption := 'Stalks';
      ColumnИтогЗакуп.Caption := 'Total';
      ColumnСтеблей.Caption := 'Stalks';
      ColumnИтог.Caption := 'Total';
      ColumnПлнатация.Caption := 'Plantation';
      ColumnПлнатация.DataBinding.FieldName := 'p_uni_name';
    end;
    2 :
    begin
      ViewFactura.Bands[0].Caption := 'Factura';
      ViewFactura.Bands[1].Caption := 'Compra';
      ColumnNum.Caption := 'No.';
      ColumnДатаЗакуп.Caption := 'Fecha';
      ColumnМаркировка.Caption := 'Marcacione';
      ColumnСтеблейЗакуп.Caption := 'Cereal';
      ColumnИтогЗакуп.Caption := 'Total';
      ColumnСтеблей.Caption := 'Cereal';
      ColumnИтог.Caption := 'Total';
      ColumnПлнатация.Caption := 'Finca';
      ColumnПлнатация.DataBinding.FieldName := 'p_reg_name';
    end;
  end;
  // TODO -cMM: TFrameFactura.SetLang default body inserted
end;
procedure TFrameFactura.ShowFactura;
begin
  with QueryFactura do
  begin
    Close;
    sql.Text := 'select sum(fd.fb) fb_fact, sum(fd."стеблей") AS st_fact,  ' +
  ' sum(fd."стеблей" * fd."цена") AS itog_fact,' +
  ' sum(zd.fb) AS fb_zakup,  sum(zd."стеблей") AS st_zakup, ' +
  '  sum(zd."стеблей" * zd."цена") AS itog_zakup,' +
  '  f.id,  f."номер",  f."дата_фактуры",  f."код_пользователя",  ' +
  ' f."код_статуса",  f."дата_вылета",' +
  '  f."код_маркировки",  f."код_плантации",  m.uni_name AS m_uni_name, ' +
  ' p.uni_name AS p_uni_name,' +
  ' p.name p_name, p.reg_name p_reg_name, m.name m_name, m.reg_name m_reg_name,'
  + '  z."дата_закупки" from "документы"."фактура_деталь" fd' +
  ' inner join "документы"."фактуры" f on (f.id=fd."код_фактуры")' +
  ' inner join "документы"."закупки_деталь" zd on (fd."код_детализ_закупки"=zd.id)'
  + ' inner join "документы"."закупки" z on (z.id=zd."код_закупки")' +
  ' inner join "маркировки"."маркировки" m on (m.id= f."код_маркировки")' +
  ' inner join "продукция"."плантации" p on (p.id=fd."код_плантации")' +
  ' where дата_фактуры>=:d';
    if edtDateDo.Checked = true then
    begin
      sql.Add(' and дата_фактуры<=:d1');
      ParamByName('d1').AsDate := edtDateDo.Date;
    end;
    ParamByName('d').AsDate := edtOt.Date;
    sql.Add(' GROUP BY  f.id, f."номер",  f."дата_фактуры",  f."код_пользователя",'
    + '  f."код_статуса",  f."дата_вылета",  f."код_маркировки",  f."код_плантации",'
    + '   m.uni_name,    p.uni_name,   z."дата_закупки", p_reg_name, p_name, m_name,  m_reg_name');
    sql.Add(' order by m.uni_name,  p.uni_name');
    Open;
  end;
end;
procedure TFrameFactura.ViewFacturaCustomDrawCell
  (Sender : TcxCustomGridTableView; ACanvas : TcxCanvas;
      AViewInfo : TcxGridTableDataCellViewInfo; var ADone : Boolean);
begin
  if AViewInfo.GridRecord.Values[0] = 2 then
  begin
    ACanvas.Brush.color := $00E2C059;
    // ACanvas.Font.color := clWhite;
  end;
end;
procedure TFrameFactura.ViewFacturaDblClick(Sender : TObject);
begin
  btnEditClick(Sender);
end;
end.
