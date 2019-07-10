unit UFrameRaznosAuc;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  cxSplitter, cxGroupBox,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, MemDS, DBAccess, Uni, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, UFrameTopPanel, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  Vcl.Mask, sMaskEdit, sCustomComboEdit, sToolEdit;
type
  TFrameRaznosAuc = class(TFrame)
    cxGroupBox1 : TcxGroupBox;
    cxGroupBox2 : TcxGroupBox;
    cxSplitter1 : TcxSplitter;
    cxGroupBox3 : TcxGroupBox;
    cxGroupBox4 : TcxGroupBox;
    cxSplitter2 : TcxSplitter;
    cxGroupBox5 : TcxGroupBox;
    FrameTopPanel1 : TFrameTopPanel;
    GridStatWork : TcxGrid;
    ViewReceipt : TcxGridDBTableView;
    ViewReceiptDBColumn : TcxGridDBColumn;
    LevelStatWork : TcxGridLevel;
    QueryMark : TUniQuery;
    dsMark : TDataSource;
    Query1 : TUniQuery;
    Label1 : TLabel;
    btnSel : TcxButton;
    FrameTopPanel2 : TFrameTopPanel;
    FrameTopPanel3 : TFrameTopPanel;
    Label2 : TLabel;
    edtDateFly : TsDateEdit;
    QueryAucR : TUniQuery;
    dsAucR : TDataSource;
    cxGrid1 : TcxGrid;
    cxGridDBTableView1 : TcxGridDBTableView;
    ViewReceiptDBColumn1 : TcxGridDBColumn;
    ViewReceiptDBColumn2 : TcxGridDBColumn;
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
    ViewReceiptDBColumn14 : TcxGridDBColumn;
    ViewReceiptDBColumn15 : TcxGridDBColumn;
    ViewReceiptDBColumn16 : TcxGridDBColumn;
    ViewReceiptDBColumn17 : TcxGridDBColumn;
    ViewReceiptuni_name : TcxGridDBColumn;
    cxGridLevel1 : TcxGridLevel;
    cxGrid2 : TcxGrid;
    cxGridDBTableView2 : TcxGridDBTableView;
    cxGridDBColumn1 : TcxGridDBColumn;
    cxGridDBColumn2 : TcxGridDBColumn;
    cxGridDBColumn3 : TcxGridDBColumn;
    cxGridDBColumn4 : TcxGridDBColumn;
    cxGridDBColumn5 : TcxGridDBColumn;
    cxGridDBColumn6 : TcxGridDBColumn;
    cxGridDBColumn7 : TcxGridDBColumn;
    cxGridDBColumn8 : TcxGridDBColumn;
    cxGridDBColumn9 : TcxGridDBColumn;
    cxGridDBColumn10 : TcxGridDBColumn;
    cxGridDBColumn11 : TcxGridDBColumn;
    cxGridDBColumn12 : TcxGridDBColumn;
    cxGridDBColumn13 : TcxGridDBColumn;
    cxGridDBColumn14 : TcxGridDBColumn;
    cxGridDBColumn15 : TcxGridDBColumn;
    cxGridDBColumn16 : TcxGridDBColumn;
    cxGridDBColumn17 : TcxGridDBColumn;
    cxGridDBColumn18 : TcxGridDBColumn;
    cxGridDBColumn19 : TcxGridDBColumn;
    cxGridDBColumn20 : TcxGridDBColumn;
    cxGridDBColumn21 : TcxGridDBColumn;
    cxGridDBColumn22 : TcxGridDBColumn;
    cxGridDBColumn23 : TcxGridDBColumn;
    cxGridDBColumn24 : TcxGridDBColumn;
    cxGridDBColumn25 : TcxGridDBColumn;
    cxGridDBColumn26 : TcxGridDBColumn;
    cxGridDBColumn27 : TcxGridDBColumn;
    cxGridDBColumn28 : TcxGridDBColumn;
    cxGridDBColumn29 : TcxGridDBColumn;
    cxGridDBColumn30 : TcxGridDBColumn;
    cxGridLevel2 : TcxGridLevel;
    QueryRD : TUniQuery;
    dsRD : TDataSource;
    Query2 : TUniQuery;
    procedure FrameTopPanel2btnAddClick(Sender : TObject);
    procedure FrameTopPanel2btnDelClick(Sender : TObject);
    procedure FrameTopPanel2btnEditClick(Sender : TObject);
    procedure FrameTopPanel1btnAddClick(Sender : TObject);
    procedure FrameTopPanel1btnDelClick(Sender : TObject);
    procedure FrameTopPanel1btnRestClick(Sender : TObject);
    procedure FrameTopPanel2btnRefreshClick(Sender : TObject);
    procedure FrameTopPanel2btnRestClick(Sender : TObject);
    procedure FrameTopPanel3btnAddClick(Sender : TObject);
    procedure FrameTopPanel3btnDelClick(Sender : TObject);
    procedure FrameTopPanel3btnEditClick(Sender : TObject);
    procedure FrameTopPanel3btnRefreshClick(Sender : TObject);
    procedure btnSelClick(Sender : TObject);
  private
    { Private declarations }
  public
    procedure InsAllFree;
    procedure InsertMarking(idM : Integer = 0);
    procedure ShowAucR;
    procedure ShowMarking(id_locate : Integer = 0);
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses UMultiSelect, UPasswd, USelect;
procedure TFrameRaznosAuc.btnSelClick(Sender : TObject);
var
  idFree : Integer;
begin
  with Query1 do
  begin
    Close;
    sql.Text :=
               'select id from  "�������"."�������" where ������������=:d limit 1';
    ParamByName('d').AsDate := edtDateFly.Date;
    Open;
    if Fields[0].AsString = '' then
    begin
      //   edtDateR.Enabled := False;
      btnSel.Enabled := False;
      FrameTopPanel2.btnEdit.Enabled := True;
      FrameTopPanel1.btnAdd.Enabled := True;
      Close;
      sql.Text := 'select id from "����������"."����������" where �������=true';
      Open;
      idFree := Fields[0].AsInteger;
      InsertMarking(idFree);
      Close;
      sql.Text :=
                 'update "�������"."�������"  set ������������=:d where ����������=:dv';
      ParamByName('d').AsDateTime := edtDateFly.Date;
      ParamByName('dv').AsDateTime := edtDateFly.Date;
      ExecSQL;
    end
    else
      Application.MessageBox
        ('������ � ����� ����� ��� ����������. �������� ������ ����.', '������',
          MB_OK + MB_ICONERROR);
  end;
end;
procedure TFrameRaznosAuc.FrameTopPanel1btnAddClick(Sender : TObject);
begin
  Application.CreateForm(TFSelect, FSelect);
  with FSelect do
  begin
    Caption := '�������� ����������';
    lstTree.Visible := True;
    GridSelect.Visible := False;
    ShowSelect('"����������"."����������"', '', False, True);
    ShowModal;
    if FrameTopPanel1.id_select = True then
    begin
      InsertMarking(QuerySelect.Fields[0].AsInteger);
    end;
  end;
end;
procedure TFrameRaznosAuc.FrameTopPanel1btnDelClick(Sender : TObject);
begin
  if QueryMark.FieldByName('�������').AsBoolean = False then
  begin
    if Application.MessageBox('�� ������������� ������ ������� ������?',
                               '������', MB_YESNO + MB_ICONWARNING) = mrYes then
    begin
      with Query1 do
      begin
        Close;
        sql.Text := 'delete from "�������"."������������������" where id=' +
      QueryMark.FieldByName('id').AsString;
        ExecSQL;
        ShowMarking();
      end;
    end;
  end
  else
    Application.MessageBox('������ ���������� ������� ���������.', '������',
                            MB_OK + MB_ICONERROR);
end;
procedure TFrameRaznosAuc.FrameTopPanel1btnRestClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameRaznosAuc.FrameTopPanel2btnAddClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameRaznosAuc.FrameTopPanel2btnDelClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameRaznosAuc.FrameTopPanel2btnEditClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameRaznosAuc.FrameTopPanel2btnRefreshClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameRaznosAuc.FrameTopPanel2btnRestClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameRaznosAuc.FrameTopPanel3btnAddClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameRaznosAuc.FrameTopPanel3btnDelClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameRaznosAuc.FrameTopPanel3btnEditClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameRaznosAuc.FrameTopPanel3btnRefreshClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameRaznosAuc.InsAllFree;
begin
  with Query2 do
  begin
    Close;
    sql.Clear;
    sql.Add(' INSERT INTO');
    sql.Add(' "�������"."�������"');
    sql.Add(' (');
    sql.Add(' "����������",');
    sql.Add(' "������������",');
    sql.Add(' "�������������",');
    sql.Add(' seat,');
    sql.Add(' "����������",');
    sql.Add(' "����������",');
    sql.Add(' "�����������",');
    sql.Add(' "����������",');
    sql.Add(' "������������",');
    sql.Add(' "����������",');
    sql.Add(' "�������",');
    sql.Add(' "�����",');
    sql.Add(' s2,');
    sql.Add(' s3,');
    sql.Add(' s4,');
    sql.Add(' q,');
    sql.Add(' com1,');
    sql.Add(' com2,');
    sql.Add(' pos1,');
    sql.Add(' pos2,');
    sql.Add(' pos3,');
    sql.Add(' "QL",');
    sql.Add(' "MPS",');
    sql.Add(' "������������",');
    sql.Add(' "���������������",');
    sql.Add(' "���������",');
    sql.Add(' "����������������",');
    sql.Add(' "���������������",');
    sql.Add(' "���_����������"');
    sql.Add(' )');
    sql.Add(' VALUES (');
    sql.Add(' :����������,');
    sql.Add(' :������������,');
    sql.Add(' :�������������,');
    sql.Add(' :seat,');
    sql.Add(' :����������,');
    sql.Add(' :����������,');
    sql.Add(' :�����������,');
    sql.Add(' :����������,');
    sql.Add(' :������������,');
    sql.Add(' :����������,');
    sql.Add(' :�������,');
    sql.Add(' :�����,');
    sql.Add(' :s2,');
    sql.Add(' :s3,');
    sql.Add(' :s4,');
    sql.Add(' :q,');
    sql.Add(' :com1,');
    sql.Add(' :com2,');
    sql.Add(' :pos1,');
    sql.Add(' :pos2,');
    sql.Add(' :pos3,');
    sql.Add(' :QL,');
    sql.Add(' :MPS,');
    sql.Add(' :������������,');
    sql.Add(' :���������������,');
    sql.Add(' :���������,');
    sql.Add(' :����������������,');
    sql.Add(' :���������������,');
    sql.Add(' :���_����������');
    sql.Add(' );');
  end;
  with Query1 do
  begin
    Close;
    sql.Text := 'select * from "�������"."�������" where where ����������=:d';
    ParamByName('d').AsDate := edtDateFly.Date;
    Open;
    while not eof do
    begin
    end;
  end;
end;
procedure TFrameRaznosAuc.InsertMarking(idM : Integer = 0);
begin
  with Query1 do
  begin
    Close;
    sql.Clear;
    sql.Add(' INSERT INTO');
    sql.Add(' "�������"."������������������"');
    sql.Add(' (');
    sql.Add(' "����������",');
    sql.Add(' "�������������"');
    sql.Add(' )');
    sql.Add(' VALUES (');
    sql.Add(' :����������,');
    sql.Add(' :�������������');
    sql.Add(' );');
    ParamByName('����������').Value := edtDateFly.Date;
    ParamByName('�������������').Value := idM;
    ExecSQL;
    ShowMarking();
  end;
end;
procedure TFrameRaznosAuc.ShowAucR;
begin
  with QueryAucR do
  begin
    Close;
    sql.Clear;
    sql.Add(' SELECT');
    sql.Add(' a.id,');
    sql.Add(' a."����������",');
    sql.Add(' a."������������",');
    sql.Add(' a."�������������",');
    sql.Add(' a.seat,');
    sql.Add(' a."����������",');
    sql.Add(' a."����������",');
    sql.Add(' a."�����������",');
    sql.Add(' a."����������",');
    sql.Add(' a."������������",');
    sql.Add(' a."����������",');
    sql.Add(' a."�������",');
    sql.Add(' a."�����",');
    sql.Add(' a.s2,');
    sql.Add(' a.s3,');
    sql.Add(' a.s4,');
    sql.Add(' a.q,');
    sql.Add(' a.com1,');
    sql.Add(' a.com2,');
    sql.Add(' a.pos1,');
    sql.Add(' a.pos2,');
    sql.Add(' a.pos3,');
    sql.Add(' a."QL",');
    sql.Add(' a."MPS",');
    sql.Add(' a."������������",');
    sql.Add(' a."���������������",');
    sql.Add(' a."���������",');
    sql.Add(' a."����������������",');
    sql.Add(' a."���������������",');
    sql.Add(' s."�����������",');
    sql.Add(' s."�����������",');
    sql.Add(' pl.uni_name');
    sql.Add(' FROM');
    sql.Add(' "�������"."�������" a');
    sql.Add(' INNER JOIN "���������"."������������" s ON (a."���������������" = s.id)');
    sql.Add(' INNER JOIN "���������"."���������" pl ON (a."����������������" = pl.id)');
    sql.Add(' where ����������=:d');
    ParamByName('d').AsDate := edtDateFly.Date;
    Open;
  end;
end;
procedure TFrameRaznosAuc.ShowMarking(id_locate : Integer = 0);
begin
  with QueryMark do
  begin
    Close;
    sql.Clear;
    sql.Add(' SELECT rm.id,');
    sql.Add(' rm."����������",');
    sql.Add(' rm."�������������",');
    sql.Add(' m.name,');
    sql.Add(' m.uni_name,');
    sql.Add(' m.reg_name,');
    sql.Add(' m.�������');
    sql.Add(' FROM "�������"."������������������" rm');
    sql.Add(' INNER JOIN "����������"."����������" m ON (rm."�������������" = m.id)');
    sql.Add(' where rm."����������" =:d');
    sql.Add(' order by �������, uni_name');
    ParamByName('d').AsDateTime := edtDateFly.Date;
    Open;
  end;
end;
end.
