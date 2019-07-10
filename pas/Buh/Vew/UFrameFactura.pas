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
    Column��������� : TcxGridDBBandedColumn;
    Column��������� : TcxGridDBBandedColumn;
    Column���������� : TcxGridDBBandedColumn;
    ColumnFBP����� : TcxGridDBBandedColumn;
    Column������������ : TcxGridDBBandedColumn;
    Column��������� : TcxGridDBBandedColumn;
    ColumnFB : TcxGridDBBandedColumn;
    Column������� : TcxGridDBBandedColumn;
    Column���� : TcxGridDBBandedColumn;
    Column��������� : TcxGridDBBandedColumn;
    Query1 : TUniQuery;
    Column������ : TcxGridDBBandedColumn;
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
      s_id_state := QueryFactura.FieldByName('���_�������').AsInteger;
      Caption := '������� ��������� - ' + QueryFactura.FieldByName('p_uni_name')
    .AsString + '. � ' + QueryFactura.FieldByName('�����').AsString;
      id_fact := QueryFactura.FieldByName('id').AsInteger;
      ShowFacturaDetail;
      edt�����������.Date := QueryFactura.FieldByName('����_�������')
    .AsDateTime;
      edt�����������.Date := QueryFactura.FieldByName('����_�������')
    .AsDateTime;
      edtNum.Text := QueryFactura.FieldByName('�����').AsString;
      edtMarking.Text := QueryFactura.FieldByName('m_uni_name').AsString;
      date_fact := edt�����������.Date;
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
      Column���������.Caption := 'Date';
      Column����������.Caption := 'Marking';
      Column������������.Caption := 'Stalks';
      Column���������.Caption := 'Total';
      Column�������.Caption := 'Stalks';
      Column����.Caption := 'Total';
      Column���������.Caption := 'Plantation';
      Column���������.DataBinding.FieldName := 'p_uni_name';
    end;
    2 :
    begin
      ViewFactura.Bands[0].Caption := 'Factura';
      ViewFactura.Bands[1].Caption := 'Compra';
      ColumnNum.Caption := 'No.';
      Column���������.Caption := 'Fecha';
      Column����������.Caption := 'Marcacione';
      Column������������.Caption := 'Cereal';
      Column���������.Caption := 'Total';
      Column�������.Caption := 'Cereal';
      Column����.Caption := 'Total';
      Column���������.Caption := 'Finca';
      Column���������.DataBinding.FieldName := 'p_reg_name';
    end;
  end;
  // TODO -cMM: TFrameFactura.SetLang default body inserted
end;
procedure TFrameFactura.ShowFactura;
begin
  with QueryFactura do
  begin
    Close;
    sql.Text := 'select sum(fd.fb) fb_fact, sum(fd."�������") AS st_fact,  ' +
  ' sum(fd."�������" * fd."����") AS itog_fact,' +
  ' sum(zd.fb) AS fb_zakup,  sum(zd."�������") AS st_zakup, ' +
  '  sum(zd."�������" * zd."����") AS itog_zakup,' +
  '  f.id,  f."�����",  f."����_�������",  f."���_������������",  ' +
  ' f."���_�������",  f."����_������",' +
  '  f."���_����������",  f."���_���������",  m.uni_name AS m_uni_name, ' +
  ' p.uni_name AS p_uni_name,' +
  ' p.name p_name, p.reg_name p_reg_name, m.name m_name, m.reg_name m_reg_name,'
  + '  z."����_�������" from "���������"."�������_������" fd' +
  ' inner join "���������"."�������" f on (f.id=fd."���_�������")' +
  ' inner join "���������"."�������_������" zd on (fd."���_�������_�������"=zd.id)'
  + ' inner join "���������"."�������" z on (z.id=zd."���_�������")' +
  ' inner join "����������"."����������" m on (m.id= f."���_����������")' +
  ' inner join "���������"."���������" p on (p.id=fd."���_���������")' +
  ' where ����_�������>=:d';
    if edtDateDo.Checked = true then
    begin
      sql.Add(' and ����_�������<=:d1');
      ParamByName('d1').AsDate := edtDateDo.Date;
    end;
    ParamByName('d').AsDate := edtOt.Date;
    sql.Add(' GROUP BY  f.id, f."�����",  f."����_�������",  f."���_������������",'
    + '  f."���_�������",  f."����_������",  f."���_����������",  f."���_���������",'
    + '   m.uni_name,    p.uni_name,   z."����_�������", p_reg_name, p_name, m_name,  m_reg_name');
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
