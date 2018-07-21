unit USelectProduct;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, MemTableDataEh, Data.DB, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinOffice2007Blue, dxSkinsDefaultPainters, cxGroupBox,
  MemTableEh, DataDriverEh, cxCustomData, cxStyles, cxTL, cxLabel, cxMaskEdit,
  cxTLdxBarBuiltInMenu, MemDS, DBAccess, Uni, cxClasses, Vcl.ImgList,
  cxCheckBox, UFrameSearch, cxInplaceContainer, cxDBTL, cxTLData, UFrameTopPanel,
  dxSkinscxPCPainter, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid;

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
    procedure FormShow(Sender: TObject);
    procedure FrameSearch1edtNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure memPrFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure ViewStatWorkDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    IDSelect: Boolean;
    { Public declarations }
  end;

var
  FSelectProduct: TFSelectProduct;

implementation

{$R *.dfm}

procedure TFSelectProduct.FormShow(Sender: TObject);
begin
  memPr.Active := true;
  FrameSearch1.edtName.SetFocus;
end;

procedure TFSelectProduct.FrameSearch1edtNameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    with memPr do
    begin
      Filter := 'UPPER(uni_name) Like ''%' + AnsiUpperCase(FrameSearch1.edtName.Text) + '%''';
      Filtered := true;
      Refresh;
      ViewStatWork.ViewData.Expand(true);
    end;
  end;
end;

procedure TFSelectProduct.memPrFilterRecord(DataSet: TDataSet; var Accept: Boolean);
begin
  DataSet.Filter := memPr.Filter;
end;

procedure TFSelectProduct.ViewStatWorkDblClick(Sender: TObject);
begin
  IDSelect := true;
  Close;
end;

end.
