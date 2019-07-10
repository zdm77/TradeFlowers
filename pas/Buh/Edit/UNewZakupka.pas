unit UNewZakupka;
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
  UFrameSave,
  UFrameTopPanel,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxStyles,
  dxSkinsCore,
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxEdit,
  DB,
  cxDBData,
  cxCheckBox,
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
  cxContainer,
  Vcl.StdCtrls,
  cxGroupBox,
  cxCurrencyEdit,
  cxCalc,
  cxNavigator,
  dxSkinDevExpressStyle,
  dxSkinXmas2008Blue, dxSkinOffice2007Blue, dxSkinsDefaultPainters, cxLabel, cxTextEdit, cxMaskEdit, cxButtonEdit;
type
  TFNewZakupka = class(TForm)
    FrameTopPanel1 : TFrameTopPanel;
    FrameSave1 : TFrameSave;
    GridOrder : TcxGrid;
    ViewOrder : TcxGridDBTableView;
    GridLevelOrder : TcxGridLevel;
    QueryGroupZakupka : TUniQuery;
    dsGroupZakupka : TDataSource;
    Group1 : TcxGroupBox;
    lblName : TLabel;
    ViewOrderfb : TcxGridDBColumn;
    ViewOrdersum : TcxGridDBColumn;
    Query1 : TUniQuery;
    ColumnName : TcxGridDBColumn;
    Columnpos : TcxGridDBColumn;
    ColumnDateF : TcxGridDBColumn;
    ColumnNumF : TcxGridDBColumn;
    ColumnItog : TcxGridDBColumn;
    edtMarking : TcxButtonEdit;
    lblMarking : TcxLabel;
    procedure btnAddClick(Sender : TObject);
    procedure btnEditClick(Sender : TObject);
    procedure FormShow(Sender : TObject);
    procedure FrameSave1btnSaveClick(Sender : TObject);
    procedure QueryGroupZakupkaAfterFetch(DataSet : TCustomDADataSet);
    procedure ViewOrderDblClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure edtMarkingPropertiesButtonClick(Sender : TObject; AButtonIndex : Integer);
  private
    Sum_Fb : Double;
    { Private declarations }
  public
    s_id_order_detail : Integer;
    s_id_marking : Integer;
    s_id_order : Integer;
    id_zakup : Integer;
    FB_Zakaz : Double;
    No_Compras : Double;
    s_date_fly : TDate;
    idNew : boolean;
    /// <summary>
    /// �������������� ������
    /// </summary>
    procedure EnableButton;
    /// <summary>
    /// ����������� ������
    /// </summary>
    /// <param name="id_locate">
    /// ���������������� ������
    /// </param>
    procedure ShowZakupka(id_locate : Integer = 0);
    procedure SumFB;
    { Public declarations }
  end;

var
  FNewZakupka : TFNewZakupka;
implementation
{$R *.dfm}

uses
  UNewZakupkaDetail,
  USplash,
  PGSQL, USelect;
procedure TFNewZakupka.btnAddClick(Sender : TObject);
begin
  if s_id_order_detail = 0 then
  begin
    // ������� �������
//    with Query1 do
//    begin
//     sql.Clear;
//     SQL.Add('insert into "���������"."�������"' );
//    end;
  end;
  Application.CreateForm(TFNewZakupkaDetail, FNewZakupkaDetail);
  with FNewZakupkaDetail do
  begin
    Max_FB := FB_Zakaz - Sum_Fb;
    Group1.Caption := '�������� ��������� : FB � ������ - ' + FloatToStr(FB_Zakaz) + '. FB ������� - ' +
  FloatToStr(Sum_Fb) + '. FB �������� - ' + FloatToStr(Max_FB);
    id_order_detail := s_id_order_detail;
    id_order_edit := s_id_order;
    // FrameProduct1.ShowProduct(0,' and ');
    id_marking_edit := s_id_marking;
    edtDateFact.Date := Now;
    edtDateFact.Checked := false;
    s_date_fly_edit := s_date_fly;
    ShowModal;
    id_zakup := id_zakup_edit;
    ShowZakupka(id_zakup_edit);
    // UpdateNoCompras;
  end;
end;
procedure TFNewZakupka.btnDelClick(Sender : TObject);
begin
  if Application.MessageBox('�� ������������� ������ ������� �������?', '������', MB_YESNO + MB_ICONQUESTION) = mrYes
  then
  begin
    FSplash.Show;
    with Query1 do
    begin
      Close;
      sql.Text := 'delete from "���������"."�������_������" where ���_�������=' +
    QueryGroupZakupka.FieldByName('���_�������').AsString;
      ExecSQL;
      Close;
      sql.Text := 'delete from "���������"."�������" where id=' + QueryGroupZakupka.FieldByName('���_�������').AsString;
      ExecSQL;
      Close;
      sql.Text := 'delete from "���������"."�������_������" where ���_�������=' +
    QueryGroupZakupka.FieldByName('id').AsString;
      ExecSQL;
      Close;
      sql.Text := 'delete from "���������"."�������" where id=' + QueryGroupZakupka.FieldByName('id').AsString;
      ExecSQL;
      QueryGroupZakupka.Refresh;
    end;
    FSplash.Close;
  end;
end;
procedure TFNewZakupka.btnEditClick(Sender : TObject);
begin
  Application.CreateForm(TFNewZakupkaDetail, FNewZakupkaDetail);
  with FNewZakupkaDetail do
  begin
    Max_FB := FB_Zakaz - Sum_Fb + QueryGroupZakupka.FieldByName('fb').AsFloat;
    id_order_edit := s_id_order;
    id_order_detail := s_id_order_detail;
    id_zakup_edit := QueryGroupZakupka.FieldByName('id').AsInteger;
    id_plant := QueryGroupZakupka.FieldByName('���_���������').AsInteger;
    edtPlant.Text := QueryGroupZakupka.FieldByName('name').AsString;
    edtFB.Text := QueryGroupZakupka.FieldByName('fb').AsString;
    id_marking_edit := s_id_marking;
    id_factura := QueryGroupZakupka.FieldByName('���_�������').AsInteger;
    if QueryGroupZakupka.FieldByName('�������_����').AsString = '' then
    begin
      edtDateFact.Date := Now;
      edtDateFact.Checked := false;
    end
    else
    begin
      edtDateFact.Date := QueryGroupZakupka.FieldByName('�������_����').Value;
      edtNumFact.Text := QueryGroupZakupka.FieldByName('�������_�����').AsString;
    end;
    ShowProductsW;
    ShowDetail();
    s_date_fly_edit := s_date_fly;
    ShowModal;
  end;
  QueryGroupZakupka.Refresh;
end;
procedure TFNewZakupka.edtMarkingPropertiesButtonClick(Sender : TObject; AButtonIndex : Integer);
begin
  Application.CreateForm(TFSelect, FSelect);
  with FSelect do
  begin
    Caption := '�������� ����������';
    lstTree.Visible := True;
    GridSelect.Visible := false;
    ShowSelect('"����������"."����������"', '', false);
    ShowModal;
{$REGION '���� ������� ����������'}
    if FrameTopPanel1.id_select = True then
    begin
      // s_id_marking := QuerySelect.FieldByName('id').AsInteger;
      s_id_marking := QuerySelect.FieldByName('id').AsInteger;
      edtMarking.Text := QuerySelect.FieldByName('uni_name').AsString;
    end
    else
      FSplash.Close;
  end;
end;
procedure TFNewZakupka.EnableButton;
begin
  with FrameTopPanel1 do
  begin
    if (QueryGroupZakupka.RecordCount <> 0) then
    begin
      btnEdit.Enabled := True;
      btnDel.Enabled := True;
    end
    else
    begin
      btnEdit.Enabled := false;
      btnDel.Enabled := false;
    end;
  end;
end;
procedure TFNewZakupka.FormShow(Sender : TObject);
begin
  FrameTopPanel1.SetLang;
end;
procedure TFNewZakupka.FrameSave1btnSaveClick(Sender : TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  Close;
end;
procedure TFNewZakupka.QueryGroupZakupkaAfterFetch(DataSet : TCustomDADataSet);
begin
  FSplash.Close;
  SumFB;
end;
procedure TFNewZakupka.ShowZakupka(id_locate : Integer = 0);
begin
  with QueryGroupZakupka do
  begin
    Close;
    ParamByName('id').AsInteger := s_id_order_detail;
    Open;
  end;
end;
procedure TFNewZakupka.SumFB;
begin
  with Query1 do
  begin
    Close;
    sql.Text := 'SELECT sum(zd.fb) FROM  "���������"."�������_������" zd' +
  ' INNER JOIN "���������"."�������" z ON (zd."���_�������" = z.id)' + ' where ���_������_������=' +
  IntToStr(s_id_order_detail);
    Open;
    Sum_Fb := Fields[0].AsFloat;
  end;
  // TODO -cMM: TFNewZakupka.SumFB default body inserted
end;
procedure TFNewZakupka.ViewOrderDblClick(Sender : TObject);
begin
  btnEditClick(Sender);
end;
end.
