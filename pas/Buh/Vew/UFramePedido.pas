unit UFramePedido;
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
  MemDS,
  DBAccess,
  Uni,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  Vcl.ComCtrls,
  AdvDateTimePicker,
  cxGroupBox,
  UFrameTopPanel,
  cxGridBandedTableView,
  cxGridDBBandedTableView,
  cxCalc,
  cxCurrencyEdit,
  Vcl.Menus,
  dxBar,
  Vcl.StdCtrls,
  cxCheckBox,
  cxNavigator,
  dxSkinDevExpressStyle,
  dxSkinXmas2008Blue, dxSkinOffice2007Blue, dxSkinsDefaultPainters;
type
  TFramePedido = class(TFrame)
    FrameTopPanel1 : TFrameTopPanel;
    Group1 : TcxGroupBox;
    GridOrder : TcxGrid;
    GridLevelOrder : TcxGridLevel;
    QueryGroupOrder : TUniQuery;
    dsGroupOrder : TDataSource;
    ViewOrder : TcxGridDBBandedTableView;
    ViewOrder_5 : TcxGridDBBandedColumn;
    ViewOrderu_name : TcxGridDBBandedColumn;
    ViewOrderm_name : TcxGridDBBandedColumn;
    ViewOrdersss : TcxGridDBBandedColumn;
    ViewOrderpt_name : TcxGridDBBandedColumn;
    ViewOrderst_name : TcxGridDBBandedColumn;
    ViewOrderDBBandedColumn1 : TcxGridDBBandedColumn;
    ViewOrder_11 : TcxGridDBBandedColumn;
    ViewOrderp2_name : TcxGridDBBandedColumn;
    ViewOrders2_name : TcxGridDBBandedColumn;
    ViewOrderu1_name : TcxGridDBBandedColumn;
    ViewOrderfb : TcxGridDBBandedColumn;
    ViewOrdercount_zakup : TcxGridDBBandedColumn;
    ViewOrderdlina_zakup : TcxGridDBBandedColumn;
    ViewOrderprice_zakup : TcxGridDBBandedColumn;
    ColumnItog : TcxGridDBBandedColumn;
    cxstylrpstry1 : TcxStyleRepository;
    cxstyl1 : TcxStyle;
    pm1 : TPopupMenu;
    N1 : TMenuItem;
    N2 : TMenuItem;
    ColumnGoodPlant : TcxGridDBBandedColumn;
    Query1 : TUniQuery;
    chkИтог : TcxCheckBox;
    procedure BandOrderCustomDrawCell(Sender : TcxCustomGridTableView; ACanvas : TcxCanvas;
                                         AViewInfo : TcxGridTableDataCellViewInfo; var ADone : Boolean);
    procedure ViewOrderCustomDrawCell(Sender : TcxCustomGridTableView; ACanvas : TcxCanvas;
                                         AViewInfo : TcxGridTableDataCellViewInfo; var ADone : Boolean);
    procedure btnRefreshClick(Sender : TObject);
    procedure btnEditClick(Sender : TObject);
    procedure N1Click(Sender : TObject);
    procedure N2Click(Sender : TObject);
    procedure QueryGroupOrderAfterFetch(DataSet : TCustomDADataSet);
    procedure QueryGroupOrderBeforeFetch(DataSet : TCustomDADataSet; var Cancel : Boolean);
    procedure ViewOrderCustomDrawGroupCell(Sender : TcxCustomGridTableView; ACanvas : TcxCanvas;
                                              AViewInfo : TcxGridTableCellViewInfo; var ADone : Boolean);
    procedure ViewOrderDblClick(Sender : TObject);
    procedure btnPrintLogisticClick(Sender : TObject);
    procedure btnЗакупкаClick(Sender : TObject);
    procedure chkИтогPropertiesEditValueChanged(Sender : TObject);
    procedure btnAWBClick(Sender : TObject);
    procedure edtOtCloseUp(Sender : TObject);
    procedure edtOtKeyDown(Sender : TObject; var Key : Word; Shift : TShiftState);
    procedure btnAddClick(Sender : TObject);
  private
    { Private declarations }
  public
    s_date_awb : TDate;
    procedure EnableButton;
    procedure SetLang;
    procedure ShowGroupOrder(id_locate : Integer = 0; locate_type : smallint = 0);
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  USplash,
  UNewZakupka,
  PGSQL,
  UReport,
  UPrepReportPedido,
  UAWBPedido, UNewPedidoPosition;
procedure TFramePedido.BandOrderCustomDrawCell(Sender : TcxCustomGridTableView; ACanvas : TcxCanvas;
                                                  AViewInfo : TcxGridTableDataCellViewInfo; var ADone : Boolean);
begin
  if AViewInfo.GridRecord.Values[8] = null then
  begin
    ACanvas.Brush.color := $00B9FFB9;
    ACanvas.Font.color := clBlack;
  end
  else
  begin
    ACanvas.Brush.color := clYellow;
    ACanvas.Font.color := clBlack;
  end;
  if AViewInfo.GridRecord.Values[7] = True then
  begin
    ACanvas.Brush.color := clRed;
    ACanvas.Font.color := clWhite;
  end;
end;
procedure TFramePedido.btnAddClick(Sender : TObject);
begin
  Application.CreateForm(TFNewPedidoPosition, FNewPedidoPosition);
  with FNewPedidoPosition do
  begin
    if QueryGroupOrder.RecordCount > 0 then
    begin
      edtDateFly.Checked := True;
      edtDateFly.Date := s_date_awb;
      setDate(s_date_awb);
    end
    else
    begin
      edtDateFly.Date := Now;
      edtDateFly.Checked := false;
      setDate(Now);
    end;
    ShowModal;
    if edtDateFly.Checked = True then
      s_date_awb := edtDateFly.Date;
    ShowGroupOrder();
  end;
  // Application.CreateForm(TFNewZakupka, FNewZakupka);
  // with FNewZakupka do
  // begin
  /// /    FB_Zakaz := QueryGroupOrder.FieldByName('кол_во_фулбоксов').AsFloat;
  /// /    FSplash.Show();
  /// /    FSplash.Update;
  /// /    s_id_order_detail := QueryGroupOrder.FieldByName('dt_id').AsInteger;
  /// /    s_id_order := QueryGroupOrder.FieldByName('код_заказа').AsInteger;
  /// /    s_id_marking := QueryGroupOrder.FieldByName('код_маркировки').AsInteger;
  // // s_date_fly := QueryGroupOrder.FieldByName('дата_вылета').AsDateTime;
  // s_date_fly := s_date_awb;
  //
  /// /    lblName.Caption := QueryGroupOrder.FieldByName('sss').AsString;
  // idNew:=True;
  // ShowZakupka();
  // ShowModal;
  // // QueryGroupOrder.Refresh;
  // ShowGroupOrder(id_zakup, 1);
  // end;
end;
procedure TFramePedido.btnAWBClick(Sender : TObject);
begin
  if FAWBPedido = nil then
    Application.CreateForm(TFAWBPedido, FAWBPedido);
  with FAWBPedido do
  begin
    FrameAWBPedido1.s_date := s_date_awb;
    FrameAWBPedido1.ShowAWBPedido;
    FrameAWBPedido1.DetectCountAWB;
    Show;
  end;
end;
procedure TFramePedido.btnEditClick(Sender : TObject);
begin
  // if StrToDate(FormatDateTime('dd.mm.yyyy', now)) = PGSQL.ReturnSystemDate then
  // begin
  Application.CreateForm(TFNewZakupka, FNewZakupka);
  with FNewZakupka do
  begin
    FB_Zakaz := QueryGroupOrder.FieldByName('кол_во_фулбоксов').AsFloat;
    FSplash.Show();
    FSplash.Update;
    s_id_order_detail := QueryGroupOrder.FieldByName('dt_id').AsInteger;
    s_id_order := QueryGroupOrder.FieldByName('код_заказа').AsInteger;
    s_id_marking := QueryGroupOrder.FieldByName('код_маркировки').AsInteger;
    s_date_fly := QueryGroupOrder.FieldByName('дата_вылета').AsDateTime;
    lblName.Caption := QueryGroupOrder.FieldByName('sss').AsString;
    ShowZakupka();
    ShowModal;
    // QueryGroupOrder.Refresh;
    ShowGroupOrder(id_zakup, 1);
  end;
  // end
  // else
  // Application.MessageBox
  // ('Разрешено редактировать только сегодняшние закупки.', 'Ошибка',
  // MB_OK + MB_ICONERROR)
end;
procedure TFramePedido.btnPrintLogisticClick(Sender : TObject);
begin
  ОтчетЛогистикаПоВсем(s_date_awb);
end;
procedure TFramePedido.btnRefreshClick(Sender : TObject);
begin
  QueryGroupOrder.Refresh;
  ViewOrder.ViewData.Expand(false);
end;
procedure TFramePedido.btnЗакупкаClick(Sender : TObject);
begin
  Application.CreateForm(TFPrepReportPedido, FPrepReportPedido);
  with FPrepReportPedido do
  begin
    if QueryGroupOrder.Fields[0].AsString <> '' then
    begin
      edtДатаВылета.Date := QueryGroupOrder.FieldByName('дата_вылета').AsDateTime;
    end
    else
    begin
      edtДатаВылета.Date := Now;
    end;
    ShowModal;
    if FrameSave1.id_save = True then
    begin
      ОтчетЗакупка(id_marking, edtДатаВылета.Date, chkAll.Checked, id_plant, id_sort, chkЗаказ.Checked);
    end;
  end;
end;
procedure TFramePedido.chkИтогPropertiesEditValueChanged(Sender : TObject);
begin
  if chkИтог.Checked = True then
    ViewOrder.OptionsView.GroupFooters := gfVisibleWhenExpanded
  else
    ViewOrder.OptionsView.GroupFooters := gfInvisible;
end;
procedure TFramePedido.edtOtCloseUp(Sender : TObject);
begin
  ShowGroupOrder;
end;
procedure TFramePedido.edtOtKeyDown(Sender : TObject; var Key : Word; Shift : TShiftState);
begin
  if Key = VK_RETURN then
    ShowGroupOrder;
end;
procedure TFramePedido.EnableButton;
begin
  with FrameTopPanel1 do
  begin
    if (QueryGroupOrder.RecordCount <> 0) then
      btnEdit.Enabled := True
    else
      btnEdit.Enabled := false;
  end;
end;
procedure TFramePedido.N1Click(Sender : TObject);
begin
  ViewOrder.ViewData.Collapse(false);
end;
procedure TFramePedido.N2Click(Sender : TObject);
begin
  ViewOrder.ViewData.Expand(false);
end;
procedure TFramePedido.QueryGroupOrderAfterFetch(DataSet : TCustomDADataSet);
begin
  FSplash.Close;
end;
procedure TFramePedido.QueryGroupOrderBeforeFetch(DataSet : TCustomDADataSet; var Cancel : Boolean);
begin
  FSplash.Show;
  FSplash.Update;
end;
procedure TFramePedido.SetLang;
begin
end;
procedure TFramePedido.ShowGroupOrder(id_locate : Integer = 0; locate_type : smallint = 0);
var
  i : Integer;
begin
  with QueryGroupOrder do
  begin
    FormatSettings.DecimalSeparator := '.';
    FSplash.Show();
    Close;
    ParamByName('d').Value := s_date_awb; // edtOt.Date;
    Open;
    if chkИтог.Checked = True then
      ViewOrder.OptionsView.GroupFooters := gfVisibleWhenExpanded
    else
      ViewOrder.OptionsView.GroupFooters := gfInvisible;
    EnableButton;
    // Locate('dt_id',id_locate,[])
    // with ViewOrder.ViewData do
    // for i := 0 to RowCount -1 do
    // if Rows[i] is TcxGridGroupRow then
    // if //Rows[i].Values[0] = 85  // по значению
    // Rows[i].Index = 1     // по номеру группы
    // then begin
    // Rows[i].Expanded := true;
    // break;
    // end;
    ViewOrder.ViewData.Expand(false);
    // Locate('zt_id', 9, [])
    // if id_locate <> 0 then
    // begin
    // case locate_type of
    // 0:
    // Locate('dt_id', id_locate, []);
    // 1:
    // Locate('zt_id', 4, [])
    // end;
    // end
    // else
    // QueryGroupOrder.First;
  end;
end;
procedure TFramePedido.ViewOrderCustomDrawCell(Sender : TcxCustomGridTableView; ACanvas : TcxCanvas;
                                                  AViewInfo : TcxGridTableDataCellViewInfo; var ADone : Boolean);
begin
  // ShowMessage(AViewInfo.GridRecord.Values[15] );
end;
procedure TFramePedido.ViewOrderCustomDrawGroupCell(Sender : TcxCustomGridTableView; ACanvas : TcxCanvas;
                                                       AViewInfo : TcxGridTableCellViewInfo; var ADone : Boolean);
var
  s : string;
  i, y : Integer;
begin
  FormatSettings.DateSeparator := '.';
  // DecimalSeparator := '.';
  s := AViewInfo.GridRecord.DisplayTexts[0];
  i := Pos('NO COMPRAS', s);
  s := Trim(Copy(s, i + 12, Length(s)));
  if (i <> 0) and (StrToFloat(s) > 0) then
    ACanvas.Font.color := clRed;
end;
procedure TFramePedido.ViewOrderDblClick(Sender : TObject);
begin
  if FrameTopPanel1.btnEdit.Enabled = True then
    btnEditClick(Sender);
end;
end.
