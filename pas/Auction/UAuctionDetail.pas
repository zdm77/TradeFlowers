unit UAuctionDetail;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, MemDS, DBAccess, Uni,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, UFrameTopPanel, cxContainer,
  Vcl.StdCtrls, Vcl.Mask, sMaskEdit, sCustomComboEdit, sToolEdit, cxGroupBox,
  Vcl.Menus, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLabel;
type
  TfAuctionDetail = class(TForm)
    FrameTopPanel1 : TFrameTopPanel;
    GridStatWork : TcxGrid;
    ViewReceipt : TcxGridDBTableView;
    LevelStatWork : TcxGridLevel;
    Query1 : TUniQuery;
    QueryAucD : TUniQuery;
    dsAucD : TDataSource;
    QueryPostav : TUniQuery;
    dsPostav : TDataSource;
    cxGroupBox1 : TcxGroupBox;
    Label1 : TLabel;
    edtDateZakup : TsDateEdit;
    btnSel : TcxButton;
    cxLabel1 : TcxLabel;
    edtPostav : TcxLookupComboBox;
    ViewReceiptDBColumn1 : TcxGridDBColumn;
    ViewReceiptseat : TcxGridDBColumn;
    ViewReceiptDBColumn3 : TcxGridDBColumn;
    ViewReceiptDBColumn4 : TcxGridDBColumn;
    ViewReceiptDBColumn5 : TcxGridDBColumn;
    ViewReceiptDBColumn6 : TcxGridDBColumn;
    ViewReceiptDBColumn7 : TcxGridDBColumn;
    ViewReceiptDBColumn8 : TcxGridDBColumn;
    ViewReceiptDBColumn9 : TcxGridDBColumn;
    ViewReceiptDBColumn10 : TcxGridDBColumn;
    ViewReceipts2 : TcxGridDBColumn;
    ViewReceipts3 : TcxGridDBColumn;
    ViewReceipts4 : TcxGridDBColumn;
    ViewReceiptq : TcxGridDBColumn;
    ViewReceiptcom1 : TcxGridDBColumn;
    ViewReceiptcom2 : TcxGridDBColumn;
    ViewReceiptpos1 : TcxGridDBColumn;
    ViewReceiptpos2 : TcxGridDBColumn;
    ViewReceiptpos3 : TcxGridDBColumn;
    ViewReceiptQL : TcxGridDBColumn;
    ViewReceiptMPS : TcxGridDBColumn;
    ViewReceiptDBColumn11 : TcxGridDBColumn;
    ViewReceiptDBColumn12 : TcxGridDBColumn;
    ViewReceiptDBColumn13 : TcxGridDBColumn;
    ViewReceiptDBColumn16 : TcxGridDBColumn;
    ViewReceiptDBColumn17 : TcxGridDBColumn;
    QueryAucType : TUniQuery;
    dsAucType : TDataSource;
    cxLabel2 : TcxLabel;
    edtAucType : TcxLookupComboBox;
    procedure FrameTopPanel1btnAddClick(Sender : TObject);
    procedure btnSelClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure edtDateZakupCloseUp(Sender : TObject);
    procedure edtDateZakupKeyDown(Sender : TObject; var Key : Word;
                                     Shift : TShiftState);
    procedure FrameTopPanel1btnRefreshClick(Sender : TObject);
    procedure edtPostavPropertiesCloseUp(Sender : TObject);
    procedure FrameTopPanel1btnSelClick(Sender : TObject);
    procedure edtAucTypePropertiesCloseUp(Sender : TObject);
  private
    { Private declarations }
  public
    IDAucZakup : Integer;
    sIDAucBody : Integer;
    procedure ShowAucD;
    procedure ShowPostav(id_locate : Integer = 0);
    procedure ShowAucType(id_locate : Integer = 0);
    { Public declarations }
  end;

var
  fAuctionDetail : TfAuctionDetail;
implementation
{$R *.dfm}

uses UNewAuction, PGSQL;
procedure TfAuctionDetail.btnDelClick(Sender : TObject);
begin
  with Query1 do
  begin
    Close;
    // sql.Text := 'delete from  "�������"."�������" where ����������=:d';
    // ParamByName('d').AsDate := edtDateFly.Date;
    // ExecSQL;
    ShowAucD;
  end;
end;
procedure TfAuctionDetail.btnSelClick(Sender : TObject);
begin
  with Query1 do
  begin
    // Close;
    // sql.Text :=
    // 'select id from  "�������"."�������" where ����������=:d limit 1';
    // ParamByName('d').AsDate := edtDateFly.Date;
    // Open;
    // if Fields[0].AsString = '' then
    // begin
    // edtDateFly.Enabled := False;
    // btnSel.Enabled := False;
    // FrameTopPanel1.btnAdd.Enabled := True;
    // end
    // else
    // Application.MessageBox
    // ('������� � ����� ����� ������ ��� ����������. �������� ������ ����.',
    // '������', MB_OK + MB_ICONERROR);
  end;
end;
procedure TfAuctionDetail.edtAucTypePropertiesCloseUp(Sender : TObject);
begin
  if Application.MessageBox('�� ������������� ������ �������� �������?',
                             '������', MB_YESNO + MB_ICONWARNING) = mrYes then
  begin
    with Query1 do
    begin
      Close;
      sql.Text :=
                 'update "�������"."�������_�������"  set �����������=:����������� where id='
                 + IntToStr(IDAucZakup);
      ParamByName('�����������').Value := edtAucType.EditValue;
      ExecSQL;
    end;
  end;
end;
procedure TfAuctionDetail.edtDateZakupCloseUp(Sender : TObject);
begin
  if Application.MessageBox('�� ������������� ������ �������� ���� �������?',
                             '������', MB_YESNO + MB_ICONWARNING) = mrYes then
  begin
    with Query1 do
    begin
      Close;
      sql.Text :=
                 'update "�������"."�������_�������"  set �����������=:����������� where id='
                 + IntToStr(IDAucZakup);
      ParamByName('�����������').Value := edtDateZakup.Date;
      ExecSQL;
    end;
  end;
  // btnSel.Enabled := True;
  // FrameTopPanel1.btnAdd.Enabled := False;
  // ShowAucD;
end;
procedure TfAuctionDetail.edtDateZakupKeyDown(Sender : TObject; var Key : Word;
                                                 Shift : TShiftState);
begin
  // if Key = VK_RETURN then
  // begin
  // btnSel.Enabled := True;
  // FrameTopPanel1.btnAdd.Enabled := False;
  // ShowAucD;
  // end;
end;
procedure TfAuctionDetail.edtPostavPropertiesCloseUp(Sender : TObject);
begin
  if Application.MessageBox('�� ������������� ������ �������� ����������?',
                             '������', MB_YESNO + MB_ICONWARNING) = mrYes then
  begin
    with Query1 do
    begin
      Close;
      sql.Text :=
                 'update "�������"."�������_�������"  set �������������=:������������� where id='
                 + IntToStr(IDAucZakup);
      ParamByName('�������������').Value := edtPostav.EditValue;
      ExecSQL;
    end;
  end;
end;
procedure TfAuctionDetail.FrameTopPanel1btnAddClick(Sender : TObject);
begin
  // ��������� ����
  // if Application.MessageBox('��������!!! ������ ����� �������. �� �������?',
  // '������.', MB_YESNO + MB_ICONWARNING) = mrYes then
  // begin
  // with Query1 do
  // begin
  // Close;
  // sql.Text := 'delete from  "�������"."�������" where ����������=:d';
  // ParamByName('d').AsDate := edtDateFly.Date;
  // ExecSQL;
  with Query1 do
  begin
    if IDAucZakup = 0 then
    begin
      IDAucZakup := PGSQL.NewID('"�������"."�������_�������_id_seq"');
      Close;
      sql.Clear;
      sql.Add(' INSERT INTO');
      sql.Add(' "�������"."�������_�������"');
      sql.Add(' (');
      sql.Add(' id,');
      sql.Add(' "�����������",');
      sql.Add(' "�������������",');
      sql.Add(' "�����������",');
      sql.Add(' "�������"');
      sql.Add(' )');
      sql.Add(' VALUES (');
      sql.Add(' :id,');
      sql.Add(' :�����������,');
      sql.Add(' :�������������,');
      sql.Add(' :�����������,');
      sql.Add(' :�������');
      sql.Add(' );');
      ParamByName('id').Value := IDAucZakup;
      ParamByName('�����������').Value := edtAucType.EditValue;
      ParamByName('�����������').Value := edtDateZakup.Date;
      ParamByName('�������������').Value := edtPostav.EditValue;
      ParamByName('�������').Value := sIDAucBody;
      ExecSQL;
    end;
  end;
  Application.CreateForm(TfNewAuction, fNewAuction);
  fNewAuction.s_date := edtDateZakup.Date;
  fNewAuction.s_id_postav := edtPostav.EditValue;
  fNewAuction.ShowModal;
  ShowAucD;
  // end;
  // end;
end;
procedure TfAuctionDetail.FrameTopPanel1btnRefreshClick(Sender : TObject);
begin
  ShowAucD;
end;
procedure TfAuctionDetail.FrameTopPanel1btnSelClick(Sender : TObject);
begin
  FrameTopPanel1.btnSelClick(Sender);
end;
procedure TfAuctionDetail.ShowAucD;
begin
  with QueryAucD do
  begin
    Close;
    sql.Clear;
    sql.Add('select * from "�������"."�������" where id_auc_detail=' +
    IntToStr(IDAucZakup));
    // sql.Add(' SELECT');
    // sql.Add(' a.id,');
    // sql.Add(' a."����������",');
    // sql.Add(' a."������������",');
    // sql.Add(' a."�������������",');
    // sql.Add(' a.seat,');
    // sql.Add(' a."����������",');
    // sql.Add(' a."����������",');
    // sql.Add(' a."�����������",');
    // sql.Add(' a."����������",');
    // sql.Add(' a."������������",');
    // sql.Add(' a."����������",');
    // sql.Add(' a."�������",');
    // sql.Add(' a."�����",');
    // sql.Add(' a.s2,');
    // sql.Add(' a.s3,');
    // sql.Add(' a.s4,');
    // sql.Add(' a.q,');
    // sql.Add(' a.com1,');
    // sql.Add(' a.com2,');
    // sql.Add(' a.pos1,');
    // sql.Add(' a.pos2,');
    // sql.Add(' a.pos3,');
    // sql.Add(' a."QL",');
    // sql.Add(' a."MPS",');
    // sql.Add(' a."������������",');
    // sql.Add(' a."���������������",');
    // sql.Add(' a."���������",');
    // sql.Add(' a."����������������",');
    // sql.Add(' a."���������������",');
    // sql.Add(' s."�����������",');
    // sql.Add(' s."�����������",');
    // sql.Add(' pl.uni_name');
    // sql.Add(' FROM');
    // sql.Add(' "�������"."�������" a');
    // sql.Add(' INNER JOIN "���������"."������������" s ON (a."���������������" = s.id)');
    // sql.Add(' INNER JOIN "���������"."���������" pl ON (a."����������������" = pl.id)');
    // sql.Text := 'select * from "�������"."�������"';
    // sql.Add(' where ����������=:d');
    // ParamByName('d').AsDate := edtDateFly.Date;
    Open;
  end;
end;
procedure TfAuctionDetail.ShowPostav(id_locate : Integer = 0);
begin
  with QueryPostav do
  begin
    Close;
    sql.Text :=
               'select * from "�����������"."�������" where ���_����=2 order by name';
    Open;
    if id_locate = 0 then
      edtPostav.EditValue := Fields[0].AsInteger
    else
      edtPostav.EditValue := id_locate;
  end;
end;
procedure TfAuctionDetail.ShowAucType(id_locate : Integer = 0);
begin
  with QueryAucType do
  begin
    Close;
    sql.Text := 'select * from "�������"."��������" order by id';
    Open;
    if id_locate = 0 then
      edtAucType.EditValue := Fields[0].AsInteger
    else
      edtAucType.EditValue := id_locate;
  end;
end;
end.
