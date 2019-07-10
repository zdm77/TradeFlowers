unit UFacturaDetail;
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
  dxSkinsCore,
  
  dxSkinsdxBarPainter,
  dxBar,
  cxClasses,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxStyles,
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
  cxGridCustomView,
  cxGrid,
  MemDS,
  DBAccess,
  Uni,
  UFrameTopPanel,
  cxGridBandedTableView,
  cxGridDBBandedTableView,
  cxCurrencyEdit,
  cxContainer,
  Vcl.ComCtrls,
  AdvDateTimePicker,
  cxLabel,
  cxTextEdit,
  cxGroupBox,
  cxNavigator,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue, dxSkinOffice2007Blue, dxSkinsDefaultPainters;
type
  TFFacturaDetail = class(TForm)
    bardxbrmngr1 : TdxBarManager;
    dxbrBarManager1Bar : TdxBar;
    btnSave : TdxBarLargeButton;
    FrameTopPanel1 : TFrameTopPanel;
    QueryFacturaD : TUniQuery;
    dsFacturaD : TDataSource;
    GridFactura : TcxGrid;
    LevelOrg : TcxGridLevel;
    ViewFactura : TcxGridDBBandedTableView;
    ViewFacturafb_fact : TcxGridDBBandedColumn;
    ViewFacturast_fact : TcxGridDBBandedColumn;
    ViewFacturadl_fact : TcxGridDBBandedColumn;
    ViewFacturaprice_fact : TcxGridDBBandedColumn;
    ViewFacturaprice_zakup : TcxGridDBBandedColumn;
    ViewFacturafb_zakup : TcxGridDBBandedColumn;
    ViewFacturadl_zakup : TcxGridDBBandedColumn;
    ViewFacturasteb_zakup : TcxGridDBBandedColumn;
    ViewFacturasort_fact : TcxGridDBBandedColumn;
    ViewFacturasort_zakup : TcxGridDBBandedColumn;
    ColumnItogFact : TcxGridDBBandedColumn;
    ColumnItogZakup : TcxGridDBBandedColumn;
    ColumnItogRaznica : TcxGridDBBandedColumn;
    GroupOsn : TcxGroupBox;
    edtNum : TcxTextEdit;
    lblNumber : TcxLabel;
    edt����������� : TAdvDateTimePicker;
    edt����������� : TAdvDateTimePicker;
    TransactOrder : TUniTransaction;
    dbOrder : TUniConnection;
    Query1 : TUniQuery;
    edtMarking : TcxTextEdit;
    lblMarking : TcxLabel;
    BtnExe : TdxBarLargeButton;
    ColumnStat : TcxGridDBBandedColumn;
    ColumnTypeF : TcxGridDBBandedColumn;
    ColumnTypeZ : TcxGridDBBandedColumn;
    procedure FormCreate(Sender : TObject);
    procedure btnSaveClick(Sender : TObject);
    procedure edtNumKeyUp(Sender : TObject; var Key : Word; Shift : TShiftState);
    procedure FormClose(Sender : TObject; var Action : TCloseAction);
    procedure FormShow(Sender : TObject);
    procedure QueryFacturaDAfterFetch(DataSet : TCustomDADataSet);
    procedure QueryFacturaDBeforeFetch(DataSet : TCustomDADataSet;
                                          var Cancel : Boolean);
    procedure QueryFacturaDBeforeRefresh(DataSet : TDataSet);
    procedure TransactOrderStart(Sender : TObject);
    procedure btnRefreshClick(Sender : TObject);
    procedure edt�����������Change(Sender : TObject);
    procedure FormCloseQuery(Sender : TObject; var CanClose : Boolean);
    procedure btnEditClick(Sender : TObject);
    procedure ColumnItogFactCustomDrawCell(Sender : TcxCustomGridTableView;
                                              ACanvas : TcxCanvas; AViewInfo : TcxGridTableDataCellViewInfo;
                                              var ADone : Boolean);
    procedure ColumnItogRaznicaCustomDrawCell(Sender : TcxCustomGridTableView;
                                                 ACanvas : TcxCanvas; AViewInfo : TcxGridTableDataCellViewInfo;
                                                 var ADone : Boolean);
    procedure ColumnItogZakupCustomDrawCell(Sender : TcxCustomGridTableView;
                                               ACanvas : TcxCanvas; AViewInfo : TcxGridTableDataCellViewInfo;
                                               var ADone : Boolean);
    procedure ViewFacturaDblClick(Sender : TObject);
    procedure ViewFacturadl_factCustomDrawCell(Sender : TcxCustomGridTableView;
                                                  ACanvas : TcxCanvas; AViewInfo : TcxGridTableDataCellViewInfo;
                                                  var ADone : Boolean);
    procedure ViewFacturadl_zakupCustomDrawCell(Sender : TcxCustomGridTableView;
                                                   ACanvas : TcxCanvas; AViewInfo : TcxGridTableDataCellViewInfo;
                                                   var ADone : Boolean);
    procedure ViewFacturafb_factCustomDrawCell(Sender : TcxCustomGridTableView;
                                                  ACanvas : TcxCanvas; AViewInfo : TcxGridTableDataCellViewInfo;
                                                  var ADone : Boolean);
    procedure ViewFacturafb_zakupCustomDrawCell(Sender : TcxCustomGridTableView;
                                                   ACanvas : TcxCanvas; AViewInfo : TcxGridTableDataCellViewInfo;
                                                   var ADone : Boolean);
    procedure ViewFacturaprice_factCustomDrawCell
        (Sender : TcxCustomGridTableView; ACanvas : TcxCanvas;
            AViewInfo : TcxGridTableDataCellViewInfo; var ADone : Boolean);
    procedure ViewFacturaprice_zakupCustomDrawCell
        (Sender : TcxCustomGridTableView; ACanvas : TcxCanvas;
            AViewInfo : TcxGridTableDataCellViewInfo; var ADone : Boolean);
    procedure ViewFacturasteb_zakupCustomDrawCell
        (Sender : TcxCustomGridTableView; ACanvas : TcxCanvas;
            AViewInfo : TcxGridTableDataCellViewInfo; var ADone : Boolean);
    procedure ViewFacturast_factCustomDrawCell(Sender : TcxCustomGridTableView;
                                                  ACanvas : TcxCanvas; AViewInfo : TcxGridTableDataCellViewInfo;
                                                  var ADone : Boolean);
    procedure BtnExeClick(Sender : TObject);
    procedure ViewFacturasort_factCustomDrawCell(Sender : TcxCustomGridTableView;
                                                    ACanvas : TcxCanvas; AViewInfo : TcxGridTableDataCellViewInfo;
                                                    var ADone : Boolean);
    procedure ViewFacturasort_zakupCustomDrawCell
        (Sender : TcxCustomGridTableView; ACanvas : TcxCanvas;
            AViewInfo : TcxGridTableDataCellViewInfo; var ADone : Boolean);
  private
    { Private declarations }
  public
    s_id_state : SmallInt;
    id_save : Boolean;
    id_fact : Integer;
    date_fact : TDate;
    num : string;
    id_fb : Integer;
    fb : Double;
    procedure DetectFB;
    procedure EnableButton;
    procedure SetCaption;
    procedure ShowFacturaDetail(id_locate : Integer = 0);
    procedure UpdFactura(s_id_state : Integer);
    { Public declarations }
  end;

var
  FFacturaDetail : TFFacturaDetail;
implementation
uses
  UFrameFactura,
  USplash,
  UDataModule1,
  UDocs,
  UEditFacturaDetail,
  UPasswd;
{$R *.dfm}

procedure TFFacturaDetail.FormCreate(Sender : TObject);
begin
  FSplash.Show();
  FSplash.Update;
  if dbOrder.Connected = false then
  begin
    dbOrder.Database := DM1.db1.Database;
    dbOrder.Server := DM1.db1.Server;
    dbOrder.Username := DM1.db1.Username;
    dbOrder.Password := DM1.db1.Password;
    dbOrder.Connected := True;
  end;
end;
procedure TFFacturaDetail.btnEditClick(Sender : TObject);
var
  id_sort, id_product : Integer;
begin
  Application.CreateForm(TFEditFacturaDetail, FEditFacturaDetail);
  with FEditFacturaDetail do
  begin
    edtProduct.Text := QueryFacturaD.FieldByName('pr_uni_name_fact').Value;
    id_product_sel := QueryFacturaD.FieldByName('pr_id_fact').Value;
    edtLength.Text := QueryFacturaD.FieldByName('dl_fact').Value;
    edtPrice.Text := QueryFacturaD.FieldByName('price_fact').Value;
    edtCount.Text := QueryFacturaD.FieldByName('st_fact').Value;
    if QueryFacturaD.FieldByName('fb_fact').AsString <> '' then
    begin
      edtFB.Text := QueryFacturaD.FieldByName('fb_fact').Value;
      id_fb := QueryFacturaD.FieldByName('id_fd').AsInteger;
    end
    else
    begin
      DetectFB;
      edtFB.Text := FloatToStr(fb);
    end;
    id_product := QueryFacturaD.FieldByName('pr_id_fact').Value;
    s_id_product := QueryFacturaD.FieldByName('pr_id_fact').Value;
    id_sort := QueryFacturaD.FieldByName('s_id').Value;
    ShowModal;
    if FrameSave1.id_save = True then
    begin
      with Query1 do
      begin
        if id_product <> id_product_sel then
        begin
          Close;
          sql.Text :=
                     'select ���_����������� from ���������.��������� where id=' +
                     inttostr(o_pid);
          Open;
          id_sort := Fields[0].AsInteger;
        end;
        Close;
        sql.Text := 'UPDATE "���������"."�������_������" SET ' +
      '"���_������������" = :���_������������, ' +
      ' "���_�����" = :���_�����, "���_������" = :���_������,  "����" = :����,'
      + '  "�������" = :�������,  "�����" = :����� WHERE  id = :id';
        ParamByName('id').Value := QueryFacturaD.FieldByName('id_fd').AsInteger;
        ParamByName('���_������������').Value := FPasswd.ID_USER;
        ParamByName('���_�����').Value := id_sort;
        ParamByName('���_������').Value := s_id_product;
        ParamByName('����').Value := edtPrice.Text;
        ParamByName('�������').Value := edtCount.Text;
        ParamByName('�����').Value := edtLength.Text;
        ExecSQL;
        Close;
        sql.Text :=
                   'UPDATE "���������"."�������_������" SET fb=:fb WHERE  id = :id ';
        ParamByName('fb').Value := edtFB.Text;
        ParamByName('id').Value := id_fb;
        ExecSQL;
        ShowFacturaDetail(QueryFacturaD.FieldByName('id_fd').AsInteger);
        // QueryFacturaD.Refresh;
      end;
    end;
  end;
end;
procedure TFFacturaDetail.BtnExeClick(Sender : TObject);
var
  s : string;
begin
  if edtNum.Text <> '' then
  begin
    if TransactOrder.Active = false then
      TransactOrder.StartTransaction;
    with Query1 do
    begin
      if s_id_state = 1 then
        s := '�� ������������� ������ �������� ������ �� -�������� ?'
      else
        s := '�� ������������� ������ �������� ������� ? ';
      if Application.MessageBox(PChar(s), '������', MB_YESNO + MB_ICONQUESTION)
      = mrYes then
      begin
        Close;
        sql.Text :=
                   'update ���������.������� set ���_�������=:code, ����_�������=:d, �����=:n where id='
                   + inttostr(id_fact);
        if s_id_state = 1 then
        begin
          ParamByName('code').AsInteger := 2;
          s_id_state := 2;
        end
        else
        begin
          ParamByName('code').AsInteger := 1;
          s_id_state := 1;
        end;
        ParamByName('d').AsDate := edt�����������.Date;
        ParamByName('n').AsString := edtNum.Text;
        ExecSQL;
        TransactOrder.Commit;
        EnableButton;
      end;
    end;
  end
  else
    Application.MessageBox('������� �����.', '������', MB_OK + MB_ICONERROR);
end;
procedure TFFacturaDetail.btnRefreshClick(Sender : TObject);
begin
  QueryFacturaD.Refresh;
end;
procedure TFFacturaDetail.btnSaveClick(Sender : TObject);
begin
  id_save := True;
  UpdFactura(1);
  TransactOrder.Commit;
  Close;
end;
procedure TFFacturaDetail.ColumnItogFactCustomDrawCell
  (Sender : TcxCustomGridTableView; ACanvas : TcxCanvas;
      AViewInfo : TcxGridTableDataCellViewInfo; var ADone : Boolean);
begin
  if AViewInfo.GridRecord.Values[11] <> AViewInfo.GridRecord.Values[10] then
  begin
    ACanvas.Canvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
  end
end;
procedure TFFacturaDetail.ColumnItogRaznicaCustomDrawCell
  (Sender : TcxCustomGridTableView; ACanvas : TcxCanvas;
      AViewInfo : TcxGridTableDataCellViewInfo; var ADone : Boolean);
begin
  if AViewInfo.GridRecord.Values[12] <> 0 then
  begin
    ACanvas.Canvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
  end
end;
procedure TFFacturaDetail.ColumnItogZakupCustomDrawCell
  (Sender : TcxCustomGridTableView; ACanvas : TcxCanvas;
      AViewInfo : TcxGridTableDataCellViewInfo; var ADone : Boolean);
begin
  if AViewInfo.GridRecord.Values[11] <> AViewInfo.GridRecord.Values[10] then
  begin
    ACanvas.Canvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
  end
end;
procedure TFFacturaDetail.DetectFB;
begin
  with Query1 do
  begin
    Close;
    sql.Text := 'select id, fb from "���������"."�������_������" fd where ' +
  ' fd."���_�������"=' + QueryFacturaD.FieldByName('���_�������').AsString +
  ' and fb is not null  ';
    Open;
    id_fb := Fields[0].AsInteger;
    fb := Fields[1].Value;
  end;
end;
procedure TFFacturaDetail.edtNumKeyUp(Sender : TObject; var Key : Word;
                                         Shift : TShiftState);
begin
  if (TransactOrder.Active = false) and (edtNum.Text <> num) then
    TransactOrder.StartTransaction;
  SetCaption;
end;
procedure TFFacturaDetail.edt�����������Change(Sender : TObject);
begin
  if (TransactOrder.Active = false) and (edt�����������.Date <> date_fact) then
    TransactOrder.StartTransaction;
end;
procedure TFFacturaDetail.EnableButton;
begin
  case s_id_state of
    1 :
    begin
      FrameTopPanel1.btnEdit.Enabled := True;
      BtnExe.Caption := '���������';
      BtnExe.LargeImageIndex := 1;
      edtNum.Enabled := True;
      edt�����������.Enabled := True;
    end;
    2 :
    begin
      FrameTopPanel1.btnEdit.Enabled := false;
      BtnExe.Caption := '��������';
      BtnExe.LargeImageIndex := 6;
      edtNum.Enabled := false;
      edt�����������.Enabled := false;
    end;
  end;
end;
procedure TFFacturaDetail.FormClose(Sender : TObject; var Action : TCloseAction);
begin
  Action := caFree;
  FFacturaDetail := nil;
  if Assigned(FDocs) then
  begin
    FDocs.FrameFactura1.ShowFactura;
  end;
end;
procedure TFFacturaDetail.FormCloseQuery(Sender : TObject;
                                            var CanClose : Boolean);
var
  s : string;
begin
  s := '��������� ��������� � ������� � ' + edtNum.Text + ' �� ' +
datetostr(edt�����������.Date) + ' ?';
  if TransactOrder.Active = True then
  begin
    case Application.MessageBox(PChar(s), '������',
                                 MB_YESNOCANCEL + MB_ICONQUESTION) of
      6 :
      begin
        btnSaveClick(Sender);
      end;
      7 : TransactOrder.Rollback;
      2 : CanClose := false;
    end;
  end;
end;
procedure TFFacturaDetail.FormShow(Sender : TObject);
begin
  FrameTopPanel1.SetLang;
  edtNum.SetFocus;
end;
procedure TFFacturaDetail.QueryFacturaDAfterFetch(DataSet : TCustomDADataSet);
begin
  FSplash.Close;
end;
procedure TFFacturaDetail.QueryFacturaDBeforeFetch(DataSet : TCustomDADataSet;
                                                      var Cancel : Boolean);
begin
  FSplash.Show;
end;
procedure TFFacturaDetail.QueryFacturaDBeforeRefresh(DataSet : TDataSet);
begin
  FSplash.Show;
end;
procedure TFFacturaDetail.SetCaption;
begin
  Caption := '������� ��������� - ' + QueryFacturaD.FieldByName('p_uni_name')
.AsString + '. � ' + edtNum.Text;
end;
procedure TFFacturaDetail.ShowFacturaDetail(id_locate : Integer = 0);
begin
  with QueryFacturaD do
  begin
    Close;
    sql.Text :=
               'SELECT s1.id s_id, fd.id id_fd, p.uni_name p_uni_name, p.reg_name p_reg_name,  p.name p_name,'
               + ' fd.fb fb_fact, fd."�������" st_fact, fd."�����" dl_fact, fd."����" price_fact,'
               + ' fd."���_���������", p.id p_id, p.brand, p."���_������", p."����������",'
               + ' zd."����" price_zakup, zd.fb fb_zakup, zd."�����" dl_zakup, zd."�������" steb_zakup,'
               + ' s1.name sort_fact, s.name sort_zakup, pr.id pr_id_zakup,  pr.name pr_name_zakup,'
               + ' pr.uni_name pr_uni_name_zakup, pr.reg_name pr_reg_name_zakup, pr1.id pr_id_fact,'
               + ' pr1.name pr_name_fact, pr1.uni_name pr_uni_name_fact, pr1.reg_name pr_reg_name_fact,'
               + ' fd."�������"*fd."����" itog_fact, zd."�������"*zd."����" itog_zakup,'
               + ' zd."�������"*zd."����" - fd."�������"*fd."����" �������, zd."���_������_�����" id_zd, fd.���_������� ���_�������, '
               + '   t.uni_name t_uni_name,  t.name t_name,  t.reg_name t_reg_name,' +
               '  t1.name t1_name,  t1.uni_name t1_uni_name,  t1.reg_name t1_reg_name' +
               ' FROM  "���������"."�������_������" fd' +
               '  INNER JOIN "���������"."���������" p ON (fd."���_���������" = p.id)' +
               '  INNER JOIN "���������"."�������_������" zd ON (fd."���_�������_�������" = zd.id)'
               + '  AND (p.id = zd."���_���������")' +
               '  INNER JOIN "���������"."�����" s ON (zd."���_�����" = s.id)' +
               '  INNER JOIN "���������"."�����" s1 ON (fd."���_�����" = s1.id)' +
               'inner join "���������"."���������" pr on (zd."���_������"=pr.id)' +
               ' inner join "���������"."���������" pr1 on (fd."���_������"=pr1.id)' +
               'INNER JOIN "���������"."����" t ON (pr."���_����" = t.id)' +
               ' INNER JOIN "���������"."����" t1 ON (pr1."���_����" = t1.id)' +
               ' where fd.���_�������=' + inttostr(id_fact) + ' order by fd.id';
    Open;
    Locate('id_fd', id_locate, []);
  end;
end;
procedure TFFacturaDetail.TransactOrderStart(Sender : TObject);
begin
  btnSave.Enabled := True;
end;
procedure TFFacturaDetail.UpdFactura(s_id_state : Integer);
begin
  if TransactOrder.Active = false then
    TransactOrder.StartTransaction;
  with Query1 do
  begin
    Close;
    sql.Text := 'UPDATE "���������"."�������" SET "�����" = :�����,' +
  ' "����_�������" = :����_�������, "���_�������" = :���_�������' +
  ' WHERE id = :id ';
    ParamByName('id').AsInteger := id_fact;
    ParamByName('����_�������').AsDate := edt�����������.Date;
    ParamByName('�����').AsString := edtNum.Text;
    ParamByName('���_�������').AsInteger := s_id_state;
    ExecSQL;
  end;
end;
procedure TFFacturaDetail.ViewFacturaDblClick(Sender : TObject);
begin
  btnEditClick(Sender);
end;
procedure TFFacturaDetail.ViewFacturadl_factCustomDrawCell
  (Sender : TcxCustomGridTableView; ACanvas : TcxCanvas;
      AViewInfo : TcxGridTableDataCellViewInfo; var ADone : Boolean);
begin
  if AViewInfo.GridRecord.Values[2] <> AViewInfo.GridRecord.Values[6] then
  begin
    ACanvas.Canvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
  end
end;
procedure TFFacturaDetail.ViewFacturadl_zakupCustomDrawCell
  (Sender : TcxCustomGridTableView; ACanvas : TcxCanvas;
      AViewInfo : TcxGridTableDataCellViewInfo; var ADone : Boolean);
begin
  if AViewInfo.GridRecord.Values[2] <> AViewInfo.GridRecord.Values[6] then
  begin
    ACanvas.Canvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
  end
end;
procedure TFFacturaDetail.ViewFacturafb_factCustomDrawCell
  (Sender : TcxCustomGridTableView; ACanvas : TcxCanvas;
      AViewInfo : TcxGridTableDataCellViewInfo; var ADone : Boolean);
begin
  if AViewInfo.GridRecord.Values[0] <> AViewInfo.GridRecord.Values[5] then
  begin
    ACanvas.Canvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
  end
end;
procedure TFFacturaDetail.ViewFacturafb_zakupCustomDrawCell
  (Sender : TcxCustomGridTableView; ACanvas : TcxCanvas;
      AViewInfo : TcxGridTableDataCellViewInfo; var ADone : Boolean);
begin
  if AViewInfo.GridRecord.Values[0] <> AViewInfo.GridRecord.Values[5] then
  begin
    ACanvas.Canvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
  end
end;
procedure TFFacturaDetail.ViewFacturaprice_factCustomDrawCell
  (Sender : TcxCustomGridTableView; ACanvas : TcxCanvas;
      AViewInfo : TcxGridTableDataCellViewInfo; var ADone : Boolean);
begin
  if AViewInfo.GridRecord.Values[3] <> AViewInfo.GridRecord.Values[4] then
  begin
    ACanvas.Canvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
  end
end;
procedure TFFacturaDetail.ViewFacturaprice_zakupCustomDrawCell
  (Sender : TcxCustomGridTableView; ACanvas : TcxCanvas;
      AViewInfo : TcxGridTableDataCellViewInfo; var ADone : Boolean);
begin
  if AViewInfo.GridRecord.Values[3] <> AViewInfo.GridRecord.Values[4] then
  begin
    ACanvas.Canvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
  end
end;
procedure TFFacturaDetail.ViewFacturasort_factCustomDrawCell
  (Sender : TcxCustomGridTableView; ACanvas : TcxCanvas;
      AViewInfo : TcxGridTableDataCellViewInfo; var ADone : Boolean);
begin
  if AViewInfo.GridRecord.Values[8] <> AViewInfo.GridRecord.Values[9] then
  begin
    ACanvas.Canvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
  end
end;
procedure TFFacturaDetail.ViewFacturasort_zakupCustomDrawCell
  (Sender : TcxCustomGridTableView; ACanvas : TcxCanvas;
      AViewInfo : TcxGridTableDataCellViewInfo; var ADone : Boolean);
begin
  if AViewInfo.GridRecord.Values[8] <> AViewInfo.GridRecord.Values[9] then
  begin
    ACanvas.Canvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
  end
end;
procedure TFFacturaDetail.ViewFacturasteb_zakupCustomDrawCell
  (Sender : TcxCustomGridTableView; ACanvas : TcxCanvas;
      AViewInfo : TcxGridTableDataCellViewInfo; var ADone : Boolean);
begin
  if AViewInfo.GridRecord.Values[7] <> AViewInfo.GridRecord.Values[1] then
  begin
    ACanvas.Canvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
  end
end;
procedure TFFacturaDetail.ViewFacturast_factCustomDrawCell
  (Sender : TcxCustomGridTableView; ACanvas : TcxCanvas;
      AViewInfo : TcxGridTableDataCellViewInfo; var ADone : Boolean);
begin
  if AViewInfo.GridRecord.Values[7] <> AViewInfo.GridRecord.Values[1] then
  begin
    ACanvas.Canvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
  end
end;
end.
