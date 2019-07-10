unit UNewGroupProduct;
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
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  dxSkinsCore,
  
  Vcl.StdCtrls,
  AdvEdit,
  cxLabel,
  cxGroupBox,
  UFrameSave,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sCurrEdit,
  cxStyles,
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  DB,
  cxDBData,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  MemDS,
  DBAccess,
  Uni,
  UFrameTopPanel,
  cxTextEdit,
  cxMaskEdit,
  cxButtonEdit,
  cxNavigator,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue;
type
  TFNewGroupProduct = class(TForm)
    FrameSave1 : TFrameSave;
    Group1 : TcxGroupBox;
    lblSum : TcxLabel;
    edtLength : TAdvEdit;
    lblFB : TcxLabel;
    lblCount : TcxLabel;
    lblPrice : TcxLabel;
    edtPrice : TAdvEdit;
    edtFB : TsCalcEdit;
    edtCount : TsCalcEdit;
    Group2 : TcxGroupBox;
    FrameTopPanel1 : TFrameTopPanel;
    dsMarking : TDataSource;
    QueryMarking : TUniQuery;
    cxGrid1 : TcxGrid;
    cxGridDBTableView1 : TcxGridDBTableView;
    cxGridDBTableView1name : TcxGridDBColumn;
    cxGridLevel1 : TcxGridLevel;
    Query1 : TUniQuery;
    edtOrder : TcxButtonEdit;
    lblOrder : TcxLabel;
    procedure edtCountKeyDown(Sender : TObject; var Key : Word;
                                 Shift : TShiftState);
    procedure FormShow(Sender : TObject);
    procedure FrameSave1btnSaveClick(Sender : TObject);
    procedure btnAddClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure btnRefreshClick(Sender : TObject);
    procedure edtOrderPropertiesButtonClick(Sender : TObject;
                                               AButtonIndex : Integer);
  private
    { Private declarations }
  public
    s_id_stand_detail : Integer;
    s_id_stand_edit : Integer;
    s_id_plant, s_id_sort : Integer;
    procedure InsUpdProduct(id_ins : Boolean);
    procedure ShowMarking(id_locate : Integer = 0);
    { Public declarations }
  end;

var
  FNewGroupProduct : TFNewGroupProduct;
implementation
{$R *.dfm}

uses
  PGSQL,
  USelect,
  USelectOrder;
procedure TFNewGroupProduct.btnAddClick(Sender : TObject);
var
  id : Integer;
begin
  if s_id_stand_detail = 0 then
    InsUpdProduct(true);
  Application.CreateForm(TFSelect, FSelect);
  with FSelect do
  begin
    lstTree.Visible := true;
    GridSelect.Visible := false;
    ShowSelect('"����������"."����������"',
                'where id not in (select ���_���������� from "��������"."����������" s where '
                + ' s."���_������_���������"=' + IntToStr(s_id_stand_detail) + ')',
                false, true);
    ShowModal;
    if FrameTopPanel1.id_select = true then
    begin
      with Query1 do
      begin
        // if s_id_stand_detail = 0 then
        // begin
        // s_id_stand_detail := PGSQL.NewID('"��������"."������_id_seq"');
        // end;
        id := PGSQL.NewID('"��������"."����������_id_seq"');
        Close;
        sql.Text :=
                   'INSERT INTO "��������"."����������"(id, "���_������_���������", "���_����������"'
                   + ') VALUES (:id, :���_������_���������, :���_����������)';
        ParamByName('id').AsInteger := id;
        ParamByName('���_������_���������').AsInteger := s_id_stand_detail;
        ParamByName('���_����������').AsInteger := QuerySelect.FieldByName('id')
      .AsInteger;
        ExecSQL;
        ShowMarking(id);
      end;
    end;
  end;
end;
procedure TFNewGroupProduct.btnDelClick(Sender : TObject);
begin
  PGSQL.StandartDelete(QueryMarking.FieldByName('id').AsString,
                        '"��������"."����������"', QueryMarking, '', '', '', '');
end;
procedure TFNewGroupProduct.btnRefreshClick(Sender : TObject);
begin
  QueryMarking.Refresh;
end;
procedure TFNewGroupProduct.edtCountKeyDown(Sender : TObject; var Key : Word;
                                               Shift : TShiftState);
begin
  if Key = VK_RETURN then
    FrameSave1.btnSaveClick(Sender);
end;
procedure TFNewGroupProduct.edtOrderPropertiesButtonClick(Sender : TObject;
                                                             AButtonIndex : Integer);
begin
  Application.CreateForm(TFSelectOrder, FSelectOrder);
  with FSelectOrder.FrameOrder1 do
  begin
    edtOt.Date := Now;
    edtDo.Date := Now;
    edtDo.Checked := false;
    ShowOrders();
    FSelectOrder.QueryOrderDetail.Open;
    FSelectOrder.ShowModal;
    if FrameTopPanel1.id_select = true then
    begin
      edtOrder.Text := '� ' + QueryOrder.FieldByName('�����').AsString + ' �� '
    + QueryOrder.FieldByName('����_����������').AsString;
    end;
  end;
end;
procedure TFNewGroupProduct.FormShow(Sender : TObject);
begin
  FrameTopPanel1.SetLang;
  FrameSave1.SetLang;
  edtLength.SetFocus;
end;
procedure TFNewGroupProduct.FrameSave1btnSaveClick(Sender : TObject);
begin
  if s_id_stand_detail = 0 then
    InsUpdProduct(true)
  else
    InsUpdProduct(false);
  FrameSave1.btnSaveClick(Sender);
  Close;
end;
procedure TFNewGroupProduct.InsUpdProduct(id_ins : Boolean);
begin
  with Query1 do
  begin
    Close;
    if id_ins = true then
    begin
      s_id_stand_detail := PGSQL.NewID('"��������"."������_id_seq"');
      sql.Text :=
                 'INSERT INTO "��������"."������"(id, "���_���������", "���_���������",'
                 + '"���_�����", "�����", "���_��_���������", "�������", "����") VALUES ('
                 + ':id, :���_���������, :���_���������, :���_�����, :�����, :���_��_���������,'
                 + ' :�������, :����)';
    end
    else
    begin
      sql.Text :=
                 'UPDATE "��������"."������" SET "���_���������" = :���_���������,' +
                 ' "���_���������" = :���_���������, "���_�����" = :���_�����,' +
                 ' "�����" = :�����, "���_��_���������" = :���_��_���������,' +
                 ' "�������" = :�������, "����" = :���� WHERE  id = :id ';
    end;
    ParamByName('id').Value := s_id_stand_detail;
    ParamByName('���_���������').Value := s_id_stand_edit;
    ParamByName('���_���������').Value := s_id_plant;
    ParamByName('���_�����').Value := s_id_sort;
    ParamByName('�����').Value := edtLength.Text;
    ParamByName('���_��_���������').Value := edtFB.Value;
    ParamByName('�������').Value := edtCount.Text;
    ParamByName('����').Value := edtPrice.Text;
    ExecSQL;
  end;
end;
procedure TFNewGroupProduct.ShowMarking(id_locate : Integer = 0);
begin
  with QueryMarking do
  begin
    Close;
    ParamByName('id').AsInteger := s_id_stand_detail;
    Open;
    Locate('id', id_locate, []);
  end;
end;
end.
