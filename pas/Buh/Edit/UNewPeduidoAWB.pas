unit UNewPeduidoAWB;
interface
uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  DBGridEh,
  Vcl.StdCtrls,
  Vcl.Mask,
  DBCtrlsEh,
  DBLookupEh,
  Data.DB,
  MemDS,
  DBAccess,
  Uni,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  dxSkinsCore,
  
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  Vcl.ComCtrls,
  cxTextEdit,
  cxMaskEdit,
  cxButtonEdit,
  cxGroupBox,
  UFrameSave,
  DBGridEhGrouping,
  ToolCtrlsEh,
  DBGridEhToolCtrls,
  DynVarsEh,
  GridsEh,
  DBAxisGridsEh,
  UFrameTopPanel,
  cxStyles,
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxNavigator,
  cxDBData,
  cxGridLevel,
  cxClasses,
  cxGridCustomView,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGrid,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue;
type
  TFNewPeduidoAWB = class(TForm)
    Group1 : TcxGroupBox;
    lblKargo : TLabel;
    lblNum : TLabel;
    lblDate : TLabel;
    lblOrg : TLabel;
    lbl��������� : TLabel;
    edtDate : TDateTimePicker;
    edtNum : TMaskEdit;
    FrameSave1 : TFrameSave;
    FrameTopPanel1 : TFrameTopPanel;
    Query��������� : TUniQuery;
    ds��������� : TDataSource;
    edtKARGO : TDBLookupComboboxEh;
    QueryKARGO : TUniQuery;
    dsKARGO : TDataSource;
    Query1 : TUniQuery;
    QueryOrg : TUniQuery;
    dsORG : TDataSource;
    QuerySubAWBPedido : TUniQuery;
    dsSubAWBPedido : TDataSource;
    ViewSubAWBPedido : TcxGridDBTableView;
    LevelSubAWBPedido : TcxGridLevel;
    GridSubAWBPedido : TcxGrid;
    edtOrg : TDBLookupComboboxEh;
    ViewSubAWBPedidot_name : TcxGridDBColumn;
    ViewSubAWBPedidom_name : TcxGridDBColumn;
    ColumnType : TcxGridDBColumn;
    ColumnFito : TcxGridDBColumn;
    ColumnPricul : TcxGridDBColumn;
    edt��������� : TDBLookupComboboxEh;
    procedure btnAddClick(Sender : TObject);
    procedure edtKARGOChange(Sender : TObject);
    procedure edtNumChange(Sender : TObject);
    procedure edtOrgChange(Sender : TObject);
    procedure edt���������Change(Sender : TObject);
    procedure FormShow(Sender : TObject);
    procedure FrameSave1btnSaveClick(Sender : TObject);
    procedure FrameTopPanel1btnEditClick(Sender : TObject);
    procedure ViewSubAWBPedidoDblClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
  private
    { Private declarations }
  public
    s_date_pedido_awb : TDate;
    s_id_kargo : Integer;
    IDAWB : Integer;
    Max������� : Integer;
    procedure DetectMax�������;
    procedure EnableSave;
    procedure InsUpdMnemoAWB(id_ins : smallint);
    procedure InsUpdMnemoSubAWB(id_ins : smallint);
    procedure ShowAirLines(id_locate : Integer = 0);
    procedure ShowKARGO(id_locate : Integer = 0);
    procedure ShowORG(id_locate : Integer = 0);
    procedure ShowSubAEBPedido(id_locate : Integer = 0);
    { Public declarations }
  end;

var
  FNewPeduidoAWB : TFNewPeduidoAWB;
implementation
{$R *.dfm}

uses
  UPasswd,
  USelect,
  UNewPedidoAWBDetail,
  PGSQL;
procedure TFNewPeduidoAWB.btnAddClick(Sender : TObject);
begin
  if IDAWB = 0 then
  begin
    if Application.MessageBox('��������� ������ AWB?', '������',
                               MB_YESNO + MB_ICONQUESTION) = mrYes then
    begin
      InsUpdMnemoAWB(0);
    end
    else
      Abort;
  end;
  Application.CreateForm(TFNewPedidoAWBDetail, FNewPedidoAWBDetail);
  with FNewPedidoAWBDetail do
  begin
    s_date_pedido_awb_new := s_date_pedido_awb;
    ShowMarking;
    ShowTrack();
    ShowFITO();
    ShowPricul();
    if QuerySubAWBPedido.RecordCount = 0 then
      edtType.Text := 'guia madre'
    else
    begin
      edtType.Text := 'guia hija';
      edt�������.Value := Max�������;
    end;
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      InsUpdMnemoSubAWB(0);
    end;
  end;
  EnableSave;
end;
procedure TFNewPeduidoAWB.btnDelClick(Sender : TObject);
begin
  if Application.MessageBox('�� ������������� ������ ������� ������?',
                             '������.', MB_YESNO + MB_ICONQUESTION) = mrYes then
  begin
    with Query1 do
    begin
      Close;
      sql.Text := 'delete from "���".sub_awb where id=' +
    QuerySubAWBPedido.FieldByName('id').AsString;
      ExecSQL;
      ShowSubAEBPedido();
    end;
  end;
  EnableSave;
end;
procedure TFNewPeduidoAWB.DetectMax�������;
begin
  with Query1 do
  begin
    Close;
    sql.Text := 'select max(�������) from "���".sub_awb  where "���_AWB"=' +
  IntToStr(IDAWB) + ' and ������� is not null';
    Open;
    if Fields[0].AsString <> '' then
      Max������� := Fields[0].AsInteger
    else
      Max������� := 1;
  end;
end;
procedure TFNewPeduidoAWB.edtKARGOChange(Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewPeduidoAWB.edtNumChange(Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewPeduidoAWB.edtOrgChange(Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewPeduidoAWB.edt���������Change(Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewPeduidoAWB.EnableSave;
begin
  with FrameTopPanel1 do
  begin
    if (edtNum.Text <> '   -    -    ') and (edtKARGO.Text <> '') and
    (edt���������.Text <> '') and (edtOrg.Text <> '') then
    begin
      btnAdd.Enabled := true;
    end
    else
    begin
      btnAdd.Enabled := False;
    end;
    if QuerySubAWBPedido.RecordCount <> 0 then
    begin
      btnDel.Enabled := true;
      btnEdit.Enabled := true;
    end
    else
    begin
      btnDel.Enabled := False;
      btnEdit.Enabled := False;
    end;
  end;
  if IDAWB <> 0 then
    FrameSave1.Enabled := true
  else
    FrameSave1.Enabled := False;
end;
procedure TFNewPeduidoAWB.FormShow(Sender : TObject);
begin
  EnableSave;
  edtNum.SetFocus;
  edtDate.Date := s_date_pedido_awb;
end;
procedure TFNewPeduidoAWB.FrameSave1btnSaveClick(Sender : TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  InsUpdMnemoAWB(1);
  Close;
end;
procedure TFNewPeduidoAWB.FrameTopPanel1btnEditClick(Sender : TObject);
begin
  Application.CreateForm(TFNewPedidoAWBDetail, FNewPedidoAWBDetail);
  with FNewPedidoAWBDetail do
  begin
    s_date_pedido_awb_new := s_date_pedido_awb;
    ShowMarking(QuerySubAWBPedido.FieldByName('���_����������').AsInteger);
    ShowTrack(QuerySubAWBPedido.FieldByName('���_�����').AsInteger);
    edtType.Text := QuerySubAWBPedido.FieldByName('���_�����').AsString;
    ShowFITO(QuerySubAWBPedido.FieldByName('���_����').AsInteger);
    ShowPricul(QuerySubAWBPedido.FieldByName('���_����������').AsInteger);
    edt�������.Text := QuerySubAWBPedido.FieldByName('�������').AsString;
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      InsUpdMnemoSubAWB(1);
    end;
  end;
end;
procedure TFNewPeduidoAWB.InsUpdMnemoAWB(id_ins : smallint);
begin
  with Query1 do
  begin
    if id_ins = 0 then
    begin
      IDAWB := NewID(' "���".awb_id_seq');
      sql.Clear;
      sql.Add(' INSERT INTO "���"."awb"(id, "���_�����", "���_������������", "����_������",');
      sql.Add('"���_�����������", "���_���������", "�����", "�����_�����")');
      sql.Add(' VALUES (:id, :���_�����, :���_������������, :����_������, ');
      sql.Add(':���_�����������, :���_���������,');
      sql.Add(' :�����, :�����_�����);');
    end
    else
    begin
      sql.Clear;
      sql.Add(' UPDATE "���"."awb"');
      sql.Add(' SET "���_�����" = :���_�����,');
      sql.Add(' "���_������������" = :���_������������,');
      sql.Add(' "����_������" = :����_������,');
      sql.Add(' "���_�����������" = :���_�����������,');
      sql.Add(' "���_���������" = :���_���������,');
      sql.Add(' "�����_�����" = :�����_�����,');
      sql.Add(' "�����" = :�����');
      sql.Add(' WHERE id = :id');
    end;
    ParamByName('id').Value := IDAWB;
    ParamByName('���_�����').Value := edtKARGO.KeyValue;
    ParamByName('���_������������').Value := FPasswd.ID_USER;
    ParamByName('����_������').Value := s_date_pedido_awb;
    ParamByName('���_�����������').Value := edtOrg.KeyValue;
    ParamByName('���_���������').Value := edt���������.KeyValue;
    ParamByName('�����').Value := true;
    ParamByName('�����_�����').Value := edtNum.Text;
    ExecSQL;
  end;
end;
procedure TFNewPeduidoAWB.InsUpdMnemoSubAWB(id_ins : smallint);
var
  IDSABAWB : Integer;
begin
  with Query1 do
  begin
    if id_ins = 0 then
    begin
      IDSABAWB := NewID(' "���".sub_awb_detail_id_seq');
      sql.Clear;
      sql.Add(' INSERT INTO');
      sql.Add(' "���"."sub_awb"');
      sql.Add(' (');
      sql.Add(' id,');
      sql.Add(' "���_AWB",');
      sql.Add(' "���_����������",');
      sql.Add(' "���_�����",');
      sql.Add(' "�������",');
      sql.Add(' "���_����",');
      sql.Add(' "���_����������",');
      sql.Add(' "���_�����"');
      sql.Add(' )');
      sql.Add(' VALUES (');
      sql.Add(' :id,');
      sql.Add(' :���_AWB,');
      sql.Add(' :���_����������,');
      sql.Add(' :���_�����,');
      sql.Add(' :�������,');
      sql.Add(' :���_����,');
      sql.Add(' :���_����������,');
      sql.Add(' :���_�����');
      sql.Add(' );');
    end
    else
    begin
      IDSABAWB := QuerySubAWBPedido.FieldByName('id').AsInteger;
      sql.Clear;
      sql.Add(' UPDATE');
      sql.Add(' "���"."sub_awb"');
      sql.Add(' SET');
      sql.Add(' "���_AWB" = :���_AWB,');
      sql.Add(' "���_����������" = :���_����������,');
      sql.Add(' "���_�����" = :���_�����,');
      sql.Add(' "���_�����" = :���_�����,');
      sql.Add(' "���_����" = :���_����,');
      sql.Add(' "���_����������" = :���_����������,');
      sql.Add(' "�������" = :�������');
      sql.Add(' ');
      sql.Add(' WHERE');
      sql.Add(' id = :id');
    end;
    ParamByName('id').Value := IDSABAWB;
    ParamByName('���_AWB').Value := IDAWB;
    ParamByName('���_����������').Value :=
                                          FNewPedidoAWBDetail.edtMarking.KeyValue;
    ParamByName('���_�����').Value := FNewPedidoAWBDetail.edtTrack.KeyValue;
    ParamByName('���_�����').AsString := FNewPedidoAWBDetail.edtType.Text;
    if FNewPedidoAWBDetail.edt�������.Text <> '' then
      ParamByName('�������').AsString := FNewPedidoAWBDetail.edt�������.Text;
    ParamByName('���_����').AsInteger := FNewPedidoAWBDetail.edtFITO.KeyValue;
    ParamByName('���_����������').AsInteger :=
                                              FNewPedidoAWBDetail.edtPrikul.KeyValue;
    ExecSQL;
  end;
  DetectMax�������;
  ShowSubAEBPedido(IDSABAWB);
end;
procedure TFNewPeduidoAWB.ShowAirLines(id_locate : Integer = 0);
begin
  with Query��������� do
  begin
    Close;
    sql.Text := 'select * from  "���������"."���������" order by name';
    Open;
    edt���������.KeyValue := id_locate;
  end;
end;
procedure TFNewPeduidoAWB.ShowKARGO(id_locate : Integer = 0);
begin
  with QueryKARGO do
  begin
    Close;
    sql.Text := 'select * from  "�����"."��������" order by uni_name';
    Open;
    edtKARGO.KeyValue := id_locate;
  end;
end;
procedure TFNewPeduidoAWB.ShowORG(id_locate : Integer = 0);
begin
  with QueryOrg do
  begin
    Close;
    sql.Text := 'SELECT * FROM "�����������"."�����������" where  id_del=0 order by name';
    Open;
    Locate('id', id_locate, []);
    edtOrg.KeyValue := id_locate
  end;
end;
procedure TFNewPeduidoAWB.ShowSubAEBPedido(id_locate : Integer = 0);
begin
  with QuerySubAWBPedido do
  begin
    Close;
    ParamByName('id').AsInteger := IDAWB;
    Open;
    Locate('id', id_locate, [])
  end;
end;
procedure TFNewPeduidoAWB.ViewSubAWBPedidoDblClick(Sender : TObject);
begin
  FrameTopPanel1btnEditClick(Sender);
end;
end.
