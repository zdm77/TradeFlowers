unit UTypeAuc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
    dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxHyperLinkEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, MemDS, DBAccess, Uni, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, Vcl.OleCtrls, SHDocVw, cxContainer, cxSplitter,
  UFrameTopPanel, cxGroupBox, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  Vcl.StdCtrls, dxSkinOffice2007Blue, dxSkinsDefaultPainters;

type
  TFrameTypeAuc = class(TFrame)
    QueryTypeAuc: TUniQuery;
    dsTypeAuc: TDataSource;
    cxGroupBox1: TcxGroupBox;
    FrameTopPanel1: TFrameTopPanel;
    GridStatWork: TcxGrid;
    ViewReceipt: TcxGridDBTableView;
    LevelStatWork: TcxGridLevel;
    ViewReceiptCODE: TcxGridDBColumn;
    ViewReceiptname: TcxGridDBColumn;
    cxGroupBox2: TcxGroupBox;
    lbl1: TLabel;
    edtTypeSrez: TcxComboBox;
    procedure ViewReceiptCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnAddClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ShowTypeAuc(id_locate: string);
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses UNewTypeAuc, PGSQL;

procedure TFrameTypeAuc.btnAddClick(Sender: TObject);
begin
  Application.CreateForm(TfNewTypeAuc, fNewTypeAuc);
  with fNewTypeAuc do
  begin
    FrameTopPanel1btnAddClick(Sender);
    ShowModal;
    ShowTypeAuc('');
  end;
end;

procedure TFrameTypeAuc.btnDelClick(Sender: TObject);
begin
  PGSQL.StandartDelete(QueryTypeAuc.FieldByName('id').AsString,
    '"аукцион"."Типы"', QueryTypeAuc, '', '', '', '');
end;

procedure TFrameTypeAuc.ShowTypeAuc(id_locate: string);
begin
  with QueryTypeAuc do
  begin
    Close;
    SQL.Text := 'select * from "аукцион"."Типы" order by name';
    Open;
   Locate('code',id_locate,[]);

  end;
end;

procedure TFrameTypeAuc.ViewReceiptCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  // wb1.Navigate(QueryAucD.FieldByName('Img').AsString);
end;

end.
