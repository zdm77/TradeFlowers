unit UFrameAucOrder;
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
  TFrameAucOrder = class(TFrame)
    FrameTopPanel1 : TFrameTopPanel;
    GridStatWork : TcxGrid;
    ViewReceipt : TcxGridDBTableView;
    LevelStatWork : TcxGridLevel;
    Query1 : TUniQuery;
    QueryAucOrder : TUniQuery;
    dsAucOrder : TDataSource;
    ViewReceiptDBColumn : TcxGridDBColumn;
    ViewReceiptDBColumn1 : TcxGridDBColumn;
    ViewReceiptDBColumn2 : TcxGridDBColumn;
    ViewReceipt_ : TcxGridDBColumn;
    ViewReceipt_1 : TcxGridDBColumn;
    ViewReceipt_2 : TcxGridDBColumn;
    ViewReceipt_5 : TcxGridDBColumn;
    ViewReceiptDBColumn3 : TcxGridDBColumn;
    ViewReceiptDBColumn4 : TcxGridDBColumn;
    columnCountry : TcxGridDBColumn;
    procedure FrameTopPanel1btnAddClick(Sender : TObject);
    procedure FrameTopPanel1btnDelClick(Sender : TObject);
    procedure FrameTopPanel1btnEditClick(Sender : TObject);
    procedure FrameTopPanel1btnSelClick(Sender : TObject);
    procedure QueryAucOrderBeforeScroll(DataSet : TDataSet);
    procedure ViewReceiptCellDblClick(Sender : TcxCustomGridTableView;
                                         ACellViewInfo : TcxGridTableDataCellViewInfo; AButton : TMouseButton;
                                         AShift : TShiftState; var AHandled : Boolean);
  private
    { Private declarations }
  public
    procedure AccessAction;
    procedure EditOrder(edit_mode : Boolean);
    procedure ShowAucOrders(id_locate : Integer = 0);
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses UfNewAucOrderBody, ULogin, UfNewAucOrder;
procedure TFrameAucOrder.AccessAction;
begin
end;
procedure TFrameAucOrder.EditOrder(edit_mode : Boolean);
var
  i : Integer;
begin
  Application.CreateForm(TfNewAucOrder, fNewAucOrder);
  fNewAucOrder.S_IdOrder := QueryAucOrder.FieldByName('id').AsInteger;
  // fNewAucOrder.EditMode := edit_mode;
  with fNewAucOrder do
  begin
    btnAdd.Enabled := edit_mode;
    btnEdit.Enabled := edit_mode;
    btnDel.Enabled := edit_mode;
    btnSave.Enabled := edit_mode;
    // edtStatClient.Enabled:= edit_mode;
    // groupHeader.Enabled:=edit_mode;
    for i := 0 to groupHeader.ControlCount - 1 do
      groupHeader.Controls[i].Enabled := edit_mode;
    // ShowMessage(Controls[i].name);
  end;
  fNewAucOrder.ShowStatsNewAuc(QueryAucOrder.FieldByName('id_stat_client')
  .AsInteger, QueryAucOrder.FieldByName('id_stat_manager').AsInteger);
  fNewAucOrder.AccessActionNewAuc;
  fNewAucOrder.Show;
end;
procedure TFrameAucOrder.FrameTopPanel1btnAddClick(Sender : TObject);
begin
  Application.CreateForm(TfNewAucOrderBody, fNewAucOrderBody);
  with fNewAucOrderBody do
  begin
    ShowModal;
    ShowAucOrders(idOrder);
  end;
end;
procedure TFrameAucOrder.FrameTopPanel1btnDelClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameAucOrder.FrameTopPanel1btnEditClick(Sender : TObject);
begin
  if FLogin.IDClient <> 0 then
  begin
    if QueryAucOrder.FieldByName('id_stat_manager').AsInteger = 2 then
    begin
      if Application.MessageBox
        ('����� � ������ �������� ������������� ���������. ������� ��� ���������?',
          '��������������', MB_YESNO + MB_ICONWARNING) = mrYes then
        EditOrder(false)
      else
        Abort;
    end
    else
      EditOrder(true);
  end
  else
    EditOrder(true);
end;
procedure TFrameAucOrder.FrameTopPanel1btnSelClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameAucOrder.QueryAucOrderBeforeScroll(DataSet : TDataSet);
begin
  AccessAction;
end;
procedure TFrameAucOrder.ShowAucOrders(id_locate : Integer = 0);
begin
  with QueryAucOrder do
  begin
    Close;
    SQL.Clear;
    SQL.Add(' SELECT m.name as ����������,');
    SQL.Add(' u.name as ��������,');
    SQL.Add(' cl.name as ������,');
    SQL.Add(' stk.name as ������_������,');
    SQL.Add(' stm.name as ������_��������,');
    SQL.Add(' ob.id,');
    SQL.Add(' ob."����_������",');
    SQL.Add(' ob."���_����������",');
    SQL.Add(' ob."���_�������",');
    SQL.Add(' ob."����_������",');
    SQL.Add(' ob."���_������",');
    SQL.Add(' ob."������_��������",');
    SQL.Add(' ob."������_������",');
    SQL.Add(' ob."������",');
    SQL.Add(' ob."���_���������",');
    SQL.Add(' ob."�����",');
    SQL.Add(' c.name as ������,');
    SQL.Add(' stm.type as id_stat_manager,');
    SQL.Add(' stk.type as id_stat_client');
    SQL.Add(' FROM "�������"."���������" ob');
    SQL.Add(' INNER JOIN "����������"."����������" m ON (ob."���_����������" = m.id)');
    SQL.Add(' LEFT JOIN "������������"."������������" u ON (ob."���_���������" = u.id)');
    SQL.Add(' INNER JOIN "�����������"."�������" cl ON (m."���_�������" = cl.id)');
    SQL.Add(' INNER JOIN "�������"."������������" stk ON (stk.id = ob."������_������")');
    SQL.Add(' INNER JOIN "�������"."��������������" stm ON (stm.id = ob."������_��������"');
    SQL.Add(' )');
    SQL.Add(' INNER JOIN "���������"."������" c ON (c.id = ob."���_������")');
    if FLogin.IDClient <> 0 then
      SQL.Add(' where ob."���_�������"=' + IntToStr(FLogin.IDClient));
    SQL.Add(' order by ����_������ desc');
    Open;
    ViewReceipt.DataController.GridView.ApplyBestFit(nil, true, true);
    Locate('id', id_locate, []);
  end;
end;
procedure TFrameAucOrder.ViewReceiptCellDblClick(Sender : TcxCustomGridTableView;
                                                    ACellViewInfo : TcxGridTableDataCellViewInfo; AButton : TMouseButton;
                                                    AShift : TShiftState; var AHandled : Boolean);
begin
  FrameTopPanel1btnEditClick(Sender);
end;
end.
