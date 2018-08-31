unit USelectProduct;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MemTableDataEh, Data.DB, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinOffice2007Blue, dxSkinsDefaultPainters, cxGroupBox,
  MemTableEh, DataDriverEh, cxCustomData, cxStyles, cxTL, cxLabel, cxMaskEdit,
  cxTLdxBarBuiltInMenu, MemDS, DBAccess, Uni, cxClasses, Vcl.ImgList,
  cxCheckBox, UFrameSearch, cxInplaceContainer, cxDBTL, cxTLData,
  UFrameTopPanel,
  dxSkinscxPCPainter, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, Vcl.StdCtrls;

type
  TFSelectProduct = class(TForm)
    dataDriverP: TDataSetDriverEh;
    memPr: TMemTableEh;
    dsPr: TDataSource;
    FrameTopPanel1: TFrameTopPanel;
    FrameSearch1: TFrameSearch;
    chkDel: TcxCheckBox;
    il1: TImageList;
    Style1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    Query1: TUniQuery;
    GridStatWork: TcxGrid;
    ViewStatWork: TcxGridDBTableView;
    ColumnName: TcxGridDBColumn;
    LevelStatWork: TcxGridLevel;
    columnCountry: TcxGridDBColumn;
    columnPlant: TcxGridDBColumn;
    columnType: TcxGridDBColumn;
    columnSort: TcxGridDBColumn;
    columnSelect: TcxGridDBColumn;
    btnSelect: TButton;
    procedure btnSelectClick(Sender: TObject);
    procedure columnSelectCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FrameSearch1edtNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure memPrFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure ViewStatWorkCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure ViewStatWorkDblClick(Sender: TObject);
    procedure ViewStatWorkMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    AList: TList;
    function CheckList(ARecord: TcxCustomGridRecord): Boolean;
    { Private declarations }
  public

    NamePlant: String;
    IDSelect: Boolean;
    { Public declarations }
  end;

var
  FSelectProduct: TFSelectProduct;

implementation

uses
  UNewOrderFromChat;

{$R *.dfm}

procedure TFSelectProduct.btnSelectClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to ViewStatWork.DataController.FilteredRecordCount - 1 do
  begin
 //ShowMessage(inttostr(ViewStatWork.DataController.Values[ViewStatWork.DataController.FilteredRecordIndex[i],columnSelect.Index]));
 //ShowMessage(inttostr(ViewStatWork.Controller.FocusedRow.Values[0]));
  end;

end;

procedure TFSelectProduct.FormCreate(Sender: TObject);
begin
  AList := TList.Create;
end;

function TFSelectProduct.CheckList(ARecord: TcxCustomGridRecord): Boolean;
begin
  Result := AList.IndexOf(Pointer(ARecord.RecordIndex)) <> -1;
end;

procedure TFSelectProduct.columnSelectCustomDrawCell
  (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.EditViewInfo is TcxCustomCheckBoxViewInfo then
    TcxCustomCheckBoxViewInfo(AViewInfo.EditViewInfo).State :=
      TcxCheckBoxState(CheckList(AViewInfo.GridRecord));
end;

procedure TFSelectProduct.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  AList.Free;
end;

procedure TFSelectProduct.FormShow(Sender: TObject);
begin
  memPr.Active := true;
  with memPr do
  begin
    Filter := 'UPPER(country) = ''ECUADOR''';
    Filtered := true;
    Refresh;
    ViewStatWork.ViewData.Expand(true);
  end;
  FrameSearch1.edtName.SetFocus;
end;

procedure TFSelectProduct.FrameSearch1edtNameKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    with memPr do
    begin
      Filter := 'UPPER(uni_name) Like ''%' +
        AnsiUpperCase(FrameSearch1.edtName.Text) + '%''';
      Filtered := true;
      Refresh;
      ViewStatWork.ViewData.Expand(true);
    end;
  end;
end;

procedure TFSelectProduct.memPrFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  DataSet.Filter := memPr.Filter;
end;

procedure TFSelectProduct.ViewStatWorkCustomDrawCell
  (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  with AViewInfo do
    if CheckList(GridRecord) then
      ACanvas.Brush.Color := clHighlight
    else
      ACanvas.Brush.Color := clWindow;

  ACanvas.Font.Color := clBlack;
end;

procedure TFSelectProduct.ViewStatWorkDblClick(Sender: TObject);
begin
  IDSelect := true;
  Close;
end;

procedure TFSelectProduct.ViewStatWorkMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  AHitTest: TcxCustomGridHitTest;
  AGridRecord: TcxCustomGridRecord;
begin
  if Sender is TcxGridSite then
  begin
    with TcxGridSite(Sender).GridView do
      AHitTest := ViewInfo.GetHitTest(X, Y);

    if (AHitTest.HitTestCode = htCell) and
      (TcxGridDBColumn(TcxGridRecordCellHitTest(AHitTest).Item)
      .DataBinding.FieldName = '') then
      AGridRecord := TcxGridRecordCellHitTest(AHitTest).GridRecord
    else
      Exit;
  end;

  if (AGridRecord <> nil) then
    if CheckList(AGridRecord) then
      AList.Remove(Pointer(AGridRecord.RecordIndex))
    else
      AList.Add(Pointer(AGridRecord.RecordIndex));
end;

end.
