unit UFrameAuction;
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
  UFrameTopPanel, dxSkinOffice2007Blue, dxSkinsDefaultPainters;
type
  TFrameAuction = class(TFrame)
    FrameTopPanel1 : TFrameTopPanel;
    GridStatWork : TcxGrid;
    ViewReceipt : TcxGridDBTableView;
    LevelStatWork : TcxGridLevel;
    Query1 : TUniQuery;
    QueryAuc : TUniQuery;
    dsAuc : TDataSource;
    ViewReceiptDBColumn : TcxGridDBColumn;
    procedure FrameTopPanel1btnSelClick(Sender : TObject);
    procedure btnAddClick(Sender : TObject);
    procedure btnEditClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure btnRefreshClick(Sender : TObject);
    procedure ViewReceiptCustomDrawCell(Sender : TcxCustomGridTableView;
                                           ACanvas : TcxCanvas; AViewInfo : TcxGridTableDataCellViewInfo;
                                           var ADone : Boolean);
    procedure ViewReceiptDblClick(Sender : TObject);
  private
    { Private declarations }
  public
    procedure ShowAuc(id_locate : Integer = 0);
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses UNewAuction, UAuctionDetail, UAucZakup;
procedure TFrameAuction.btnAddClick(Sender : TObject);
begin
  // Application.CreateForm(TfAuctionDetail, fAuctionDetail);
  // // fAuctionDetail.ShowAucD;
  // fAuctionDetail.edtDateFly.Date := Now;
  // fAuctionDetail.ShowAucD;
  // fAuctionDetail.ShowPostav();
  // fAuctionDetail.ShowModal;
  Application.CreateForm(TFAucZakup, FAucZakup);
  with FAucZakup do
  begin
    edtDateFly.Date := Now;
    sDateFly := 01 / 01 / 1977;
    IDAucBody := 0;
    ShowAucZakup;
    ShowModal;
    ShowAuc(IDAucBody);
  end;
end;
procedure TFrameAuction.btnDelClick(Sender : TObject);
begin
  if Application.MessageBox('�� ������������� ������ ������� ������?', '������',
                             MB_YESNO + MB_ICONWARNING) = mrYes then
  begin
    with Query1 do
    begin
      Close;
      sql.Text := 'delete from  "�������"."�������_����" where id=' +
    QueryAuc.FieldByName('id').AsString;
      ExecSQL;
      ShowAuc;
    end;
  end;
end;
procedure TFrameAuction.btnEditClick(Sender : TObject);
begin
  // Application.CreateForm(TfAuctionDetail, fAuctionDetail);
  // fAuctionDetail.edtDateFly.Date := QueryAuc.FieldByName('����������')
  // .AsDateTime;
  // if QueryAuc.FieldByName('���_����������').AsString <> '' then
  // fAuctionDetail.ShowPostav(QueryAuc.FieldByName('���_����������').AsInteger)
  // else
  // fAuctionDetail.ShowPostav;
  // fAuctionDetail.ShowAucD;
  // fAuctionDetail.ShowModal;
  Application.CreateForm(TFAucZakup, FAucZakup);
  with FAucZakup do
  begin
    edtDateFly.Date := QueryAuc.FieldByName('����������').AsDateTime;
    sDateFly := QueryAuc.FieldByName('����������').AsDateTime;
    IDAucBody := QueryAuc.FieldByName('id').AsInteger;
    ShowAucZakup;
    ShowModal;
    ShowAuc(IDAucBody);
  end;
end;
procedure TFrameAuction.btnRefreshClick(Sender : TObject);
begin
  ShowAuc;
end;
procedure TFrameAuction.FrameTopPanel1btnSelClick(Sender : TObject);
begin
  FrameTopPanel1.btnSelClick(Sender);
end;
procedure TFrameAuction.ShowAuc(id_locate : Integer = 0);
begin
  with QueryAuc do
  begin
    Close;
    // sql.Clear;
    // sql.Add(' SELECT DISTINCT a."����������",');
    // sql.Add(' a."���_����������",');
    // sql.Add(' k.name');
    // sql.Add(' FROM "�������"."�������" a');
    // sql.Add(' INNER JOIN "�����������"."�������" k ON (a."���_����������" = k.id)');
    // sql.Add(' order by a."����������" DESC');
    sql.Text :=
               'select * from "�������"."�������_����" order by  ���������� DESC';
    Open;
    Locate('id', id_locate, [])
  end;
end;
procedure TFrameAuction.ViewReceiptCustomDrawCell
  (Sender : TcxCustomGridTableView; ACanvas : TcxCanvas;
      AViewInfo : TcxGridTableDataCellViewInfo; var ADone : Boolean);
begin
  if AViewInfo.GridRecord.Values[0] > Now then
  begin
    ACanvas.Canvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
  end;
end;
procedure TFrameAuction.ViewReceiptDblClick(Sender : TObject);
begin
  btnEditClick(Sender);
end;
end.
