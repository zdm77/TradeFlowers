unit UFrameProductAuc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
    cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxHyperLinkEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, UFrameTopPanel,
  cxGroupBox, MemDS, DBAccess, Uni, cxSplitter, cxLabel, cxTextEdit,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  cxGridExportLink, shellapi, dxSkinOffice2007Blue, dxSkinsDefaultPainters;

type
  TFrameProductAuc = class(TFrame)
    QueryAucD: TUniQuery;
    dsAucD: TDataSource;
    cxGroupBox1: TcxGroupBox;
    FrameTopPanel1: TFrameTopPanel;
    Query1: TUniQuery;
    cxGroupBox2: TcxGroupBox;
    GridStatWork: TcxGrid;
    ViewReceipt: TcxGridDBTableView;
    ColumnIMG: TcxGridDBColumn;
    ViewReceiptNAME: TcxGridDBColumn;
    ViewReceiptDBColumn2: TcxGridDBColumn;
    ViewReceiptDBColumn1: TcxGridDBColumn;
    ViewReceiptDBColumn: TcxGridDBColumn;
    ViewReceiptDBColumn3: TcxGridDBColumn;
    ViewReceiptDBColumn4: TcxGridDBColumn;
    ViewReceipt_: TcxGridDBColumn;
    ViewReceipt__: TcxGridDBColumn;
    ViewReceipt_1: TcxGridDBColumn;
    ViewReceiptS1: TcxGridDBColumn;
    ViewReceiptS2: TcxGridDBColumn;
    ViewReceiptS3: TcxGridDBColumn;
    ViewReceiptS4: TcxGridDBColumn;
    ViewReceiptDBColumn5: TcxGridDBColumn;
    ViewReceiptuni_name: TcxGridDBColumn;
    ViewReceiptDBColumn6: TcxGridDBColumn;
    ViewReceiptDBColumn7: TcxGridDBColumn;
    ViewReceiptDBColumn8: TcxGridDBColumn;
    LevelStatWork: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    cxGroupBox3: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    QueryDetail: TUniQuery;
    dsDetail: TDataSource;
    ViewReceiptColumn1: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    ViewReceiptColumn2: TcxGridDBColumn;
    columnID: TcxGridDBColumn;
    procedure btnAddClick(Sender: TObject);
    procedure btnRestClick(Sender: TObject);
    procedure FrameTopPanel1btnSelClick(Sender: TObject);
    procedure btnLoadPriceClick(Sender: TObject);
    procedure ViewReceiptDblClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnPrintLogisticClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ShowDt;
    procedure ShowProduct(id_locate: Integer = 0);
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses UNewProductAuc, UNewPriceProdAuc, UAucImage, UNewOrderAuc, UEditProductAuc,
  UPasswd;

procedure TFrameProductAuc.btnAddClick(Sender: TObject);
begin
  Application.CreateForm(TfNewProductAuc, fNewProductAuc);
  with fNewProductAuc do
  begin
    FrameTopPanel1btnAddClick(Sender);
    ShowModal;
    ShowProduct;
  end;
end;

procedure TFrameProductAuc.btnEditClick(Sender: TObject);
begin
  Application.CreateForm(TFEditProductAuc, FEditProductAuc);
  with FEditProductAuc do
  begin
    QueryAucPrEdit.Close;
    QueryAucPrEdit.ParamByName('id').AsInteger := QueryAucD.FieldByName('id')
      .AsInteger;
    QueryAucPrEdit.Open;
    ShowModal;
    ShowProduct(QueryAucPrEdit.FieldByName('id').Value);

  end;
end;

procedure TFrameProductAuc.btnLoadPriceClick(Sender: TObject);
begin
  Application.CreateForm(TFAucImage, FAucImage);
  with FAucImage do
  begin
    // FrameTopPanel1btnAddClick(Sender);
    ShowModal;
  end;
end;

procedure TFrameProductAuc.btnPrintLogisticClick(Sender: TObject);
begin
  ExportGridToExcel(FPasswd.GetVar('TEMP') + '\product', GridStatWork, true,
    true, true, 'xls');
  ShellExecute(Handle, nil, PChar(FPasswd.GetVar('TEMP') + '\product.xls'), nil,
    nil, SW_RESTORE);
end;

procedure TFrameProductAuc.btnRefreshClick(Sender: TObject);
begin
  ShowProduct
end;

procedure TFrameProductAuc.btnRestClick(Sender: TObject);
begin
  // mn
  if Application.MessageBox('Вы действительно хотите удалить все записи?',
    'Вопрос', MB_YESNO + MB_ICONWARNING) = mrYes then
  begin
    QueryAucD.Close;
    with Query1 do
    begin
      Close;
      // sql.Text := 'TRUNCATE TABLE "аукцион"."Номенклатура";';
      sql.Text := 'delete from "аукцион"."Номенклатура";';
      ExecSQL;
      // QueryAucD.Open;
      Close;
      sql.Text :=
        'SELECT pg_catalog.setval(''"аукцион"."Номенклатура_id_seq"'', 1, true);';
      ExecSQL;
    end;
  end;
  /// //
end;

procedure TFrameProductAuc.FrameTopPanel1btnSelClick(Sender: TObject);
begin
  Application.CreateForm(TFNewPriceProdAuc, FNewPriceProdAuc);
  with FNewPriceProdAuc do
  begin
    FrameTopPanel1btnAddClick(Sender);
    ShowModal;
    ShowProduct;
  end;
end;

procedure TFrameProductAuc.ShowDt;
begin
  QueryDetail.Close;
  QueryDetail.Open;
end;

procedure TFrameProductAuc.ShowProduct(id_locate: Integer = 0);
begin
  QueryAucD.Close;
  QueryAucD.Open;
  QueryAucD.Locate('id', id_locate, []);
  ViewReceipt.DataController.GridView.ApplyBestFit(nil, true, true);
  // cxGroupBox3.Visible:=FrameTopPanel1.btnArch.EditValue;
end;

procedure TFrameProductAuc.ViewReceiptDblClick(Sender: TObject);
begin
  Application.CreateForm(TFNewOrderAuc, FNewOrderAuc);
  with FNewOrderAuc do
  begin
    // DownloadJPG('http://zdm77.ru/tradeflowers/images/17573.jpg', Image1);
    // LoadPicture('http://zdm77.ru/tradeflowers/images/17573.jpg');
    LoadPicture('http://zdm77.ru/tradeflowers/images/' +
      QueryAucD.FieldByName('КодПродукта').AsString + '.jpg');
    ShowModal;
  end;
end;

end.
