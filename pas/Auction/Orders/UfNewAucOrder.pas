unit UfNewAucOrder;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore,
  dxSkinsdxBarPainter, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.StdCtrls,
  Vcl.Mask, sMaskEdit, sCustomComboEdit, sToolEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLabel,
  cxGroupBox, dxBar, cxClasses, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, cxCheckBox, MemDS, DBAccess, Uni;
type
  TfNewAucOrder = class(TForm)
    barProduct : TdxBarManager;
    dxbrBardxbrmngr1Bar1 : TdxBar;
    btnAdd : TdxBarLargeButton;
    btnAddGroup : TdxBarLargeButton;
    btnEdit : TdxBarLargeButton;
    btnDel : TdxBarLargeButton;
    btnRest : TdxBarLargeButton;
    groupHeader : TcxGroupBox;
    cxLabel3 : TcxLabel;
    edtStatClient : TcxLookupComboBox;
    lbl2 : TcxLabel;
    edtDateOut : TsDateEdit;
    edtStatManager : TcxLookupComboBox;
    cxLabel4 : TcxLabel;
    chkClose : TcxCheckBox;
    btnSave : TdxBarLargeButton;
    GridStatWork : TcxGrid;
    ViewReceipt : TcxGridDBTableView;
    ViewReceiptDBColumn4 : TcxGridDBColumn;
    ViewReceipt_2 : TcxGridDBColumn;
    ViewReceiptDBColumn : TcxGridDBColumn;
    ViewReceiptDBColumn2 : TcxGridDBColumn;
    ViewReceipt_5 : TcxGridDBColumn;
    columnCountry : TcxGridDBColumn;
    ViewReceipt_1 : TcxGridDBColumn;
    ViewReceipt_ : TcxGridDBColumn;
    ViewReceiptDBColumn3 : TcxGridDBColumn;
    ViewReceiptDBColumn1 : TcxGridDBColumn;
    LevelStatWork : TcxGridLevel;
    QueryStatClient : TUniQuery;
    dsStatClient : TDataSource;
    dsStatManager : TDataSource;
    QueryStatManager : TUniQuery;
    procedure FormClose(Sender : TObject; var Action : TCloseAction);
  private
    { Private declarations }
  public
    S_IdOrder : Integer;
    procedure AccessActionNewAuc;
    procedure ShowStatsNewAuc(id_locate_client, id_locate_stat_manager : Integer);
    { Public declarations }
  end;

var
  fNewAucOrder : TfNewAucOrder;
implementation
{$R *.dfm}

uses ULogin;
procedure TfNewAucOrder.AccessActionNewAuc;
begin
  // менеджер
  if FLogin.IDClient = 0 then
  begin
    edtStatClient.Enabled := False;
    if edtStatClient.EditValue <> 2 then
    begin
      edtStatManager.Enabled := False;
    end;
  end
  else
  begin
    edtStatManager.Enabled := False;
  end;
end;
procedure TfNewAucOrder.FormClose(Sender : TObject; var Action : TCloseAction);
begin
  Action := caFree;
  fNewAucOrder := nil;
end;
procedure TfNewAucOrder.ShowStatsNewAuc(id_locate_client, id_locate_stat_manager : Integer);
begin
  with QueryStatClient do
  begin
    Close;
    SQL.Text := 'select * from "аукцион"."СтатусКлиент"';
    Open;
    edtStatClient.EditValue := id_locate_client;
  end;
  with QueryStatManager do
  begin
    Close;
    SQL.Text := 'select * from "аукцион"."СтатусМенеджер"';
    Open;
    edtStatManager.EditValue := id_locate_stat_manager;
  end;
end;
end.
