unit UFrameRaznosAucAll;
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
  TFrameRaznosAucAll = class(TFrame)
    FrameTopPanel1 : TFrameTopPanel;
    e : TcxGrid;
    ViewReceipt : TcxGridDBTableView;
    ViewReceiptDBColumn : TcxGridDBColumn;
    LevelStatWork : TcxGridLevel;
    Query1 : TUniQuery;
    QueryAucAll : TUniQuery;
    dsAucAll : TDataSource;
    procedure FrameTopPanel1btnAddClick(Sender : TObject);
    procedure FrameTopPanel1btnDelClick(Sender : TObject);
    procedure FrameTopPanel1btnEditClick(Sender : TObject);
    procedure FrameTopPanel1btnRefreshClick(Sender : TObject);
  private
    { Private declarations }
  public
    procedure ShowAucAll;
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses URaznosAuc;
procedure TFrameRaznosAucAll.FrameTopPanel1btnAddClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameRaznosAucAll.FrameTopPanel1btnDelClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameRaznosAucAll.FrameTopPanel1btnEditClick(Sender : TObject);
begin
  Application.CreateForm(TfRaznosAuc, fRaznosAuc);
  with fRaznosAuc do
  begin
    with FrameRaznosAuc1 do
    begin
      edtDateFly.Date := QueryAucAll.FieldByName('ДатаВылета').AsDateTime;
      ShowMarking();
      FrameTopPanel2.btnEdit.Enabled := True;
      FrameTopPanel1.btnAdd.Enabled := True;
      ShowAucR;
    end;
    ShowAucAll;
  end;
end;
procedure TFrameRaznosAucAll.FrameTopPanel1btnRefreshClick(Sender : TObject);
begin
  //ShowMessage('');
end;
procedure TFrameRaznosAucAll.ShowAucAll;
begin
  with QueryAucAll do
  begin
    Close;
    sql.Text :=
               'select DISTINCT a."ДатаВылета", a.ДатаРазноски, Код_Поставщика from "аукцион"."аукцион" a order by a."ДатаВылета" DESC ';
    Open;
  end;
end;
end.
