unit UFQuestionSort;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsdxBarPainter, cxCheckBox, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, dxBar, cxBarEditItem, cxClasses, cxGroupBox,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, MemDS, DBAccess,
  Uni, cxLabel;
type
  TFQuestionSort = class(TForm)
    cxGroupBox1 : TcxGroupBox;
    cxGroupBox2 : TcxGroupBox;
    dsSort : TDataSource;
    QuerySort : TUniQuery;
    GridUsers : TcxGrid;
    ViewUsers : TcxGridDBTableView;
    ColumnUniName : TcxGridDBColumn;
    LevelOrg : TcxGridLevel;
    lblSort : TcxLabel;
    cxGroupBox3 : TcxGroupBox;
    cxButton1 : TcxButton;
    cxButton2 : TcxButton;
    Query1 : TUniQuery;
    barProduct : TdxBarManager;
    dxbrBardxbrmngr1Bar1 : TdxBar;
    btnAdd : TdxBarLargeButton;
    btnAddGroup : TdxBarLargeButton;
    btnEdit : TdxBarLargeButton;
    btnDel : TdxBarLargeButton;
    btnRest : TdxBarLargeButton;
    btnRefresh : TdxBarLargeButton;
    btnSel : TdxBarLargeButton;
    btnFilter : TdxBarLargeButton;
    btnPrint : TdxBarLargeButton;
    btnPrintLogistic : TdxBarButton;
    btnRazdel : TdxBarLargeButton;
    btn����� : TdxBarButton;
    btn������� : TdxBarButton;
    btnReportClients : TdxBarButton;
    btnCardClient : TdxBarButton;
    btnExport : TdxBarLargeButton;
    btnSave : TdxBarLargeButton;
    btnAWB : TdxBarLargeButton;
    btnArch : TcxBarEditItem;
    btnLoadPrice : TdxBarLargeButton;
    procedure btnSelClick(Sender : TObject);
    procedure btnCancelClick(Sender : TObject);
    procedure ViewUsersDblClick(Sender : TObject);
    procedure cxButton1Click(Sender : TObject);
    procedure FormShow(Sender : TObject);
  private
    { Private declarations }
  public
    s_id_type, s_id_country : Integer;
    s_name_sort : string;
    IDSelect : Boolean;
    IDSort : Integer;
    procedure ShowSort(id_locate : Integer = 0);
    { Public declarations }
  end;

var
  FQuestionSort : TFQuestionSort;
implementation
{$R *.dfm}

uses PGSQL;
procedure TFQuestionSort.btnCancelClick(Sender : TObject);
begin
  IDSelect := False;
  Close;
end;
procedure TFQuestionSort.btnSelClick(Sender : TObject);
begin
  IDSelect := True;
  Close;
end;
procedure TFQuestionSort.cxButton1Click(Sender : TObject);
var
  s : string;
begin
  if Application.MessageBox('�� ������������� ������ �������� ����?', '������',
                             MB_YESNO + MB_ICONQUESTION) = mrYes then
  begin
    with Query1 do
    begin
      IDSort := PGSQL.NewID('���������.�����_id_seq');
      Close;
      sql.Text :=
                 'insert into ���������.����� (id, name, uni_name, reg_name, �������, ' +
                 ' ���_����, �����������) values ' +
                 ' (:id, :name, :uni_name, :reg_name, :�������, :���_����,:�����������)';
      ParamByName('id').AsInteger := IDSort;
      ParamByName('name').AsString := s_name_sort;
      ParamByName('uni_name').AsString := s_name_sort;
      ParamByName('reg_name').AsString := s_name_sort;
      // ParamByName('�������').AsString := edtQuantity.Text;
      // s_id_type := edtType.EditValue;
      ParamByName('���_����').AsInteger := s_id_type;
      ExecSQL;
      Close;
      sql.Text :=
                 'insert into "���������"."����_������" (���_�����, ���_������) values (:���_�����, :���_������)';
      ParamByName('���_�����').AsInteger := IDSort;
      ParamByName('���_������').AsInteger := s_id_country;
      ExecSQL;
      ShowSort(IDSort);
      btnSelClick(Sender);
    end;
  end;
end;
procedure TFQuestionSort.FormShow(Sender : TObject);
begin
  ViewUsers.ViewData.FilterRow.Focused := True;
  ViewUsers.Columns[0].Focused := True;
  GridUsers.SetFocus;
  ViewUsers.Controller.EditingController.EditingItem := ViewUsers.Columns[0];
end;
procedure TFQuestionSort.ShowSort(id_locate : Integer = 0);
begin
  with QuerySort do
  begin
    Close;
    sql.Clear;
    sql.Add(' SELECT');
    sql.Add(' s.id,');
    sql.Add(' s.name,');
    sql.Add(' s.uni_name,');
    sql.Add(' s.reg_name,');
    sql.Add(' s."�������",');
    sql.Add(' s."���_����",');
    sql.Add(' s."�����������",');
    sql.Add(' s."�����������",');
    sql.Add(' ss."���_������"');
    sql.Add(' FROM');
    sql.Add(' "���������"."�����" s');
    sql.Add(' INNER JOIN "���������"."����_������" ss ON (s.id = ss."���_�����")');
    sql.Add(' INNER JOIN "���������"."������" c ON (ss."���_������" = c.id)');
    sql.Add(' where ���_����=' + IntToStr(s_id_type));
    sql.Add(' and ���_������=' + IntToStr(s_id_country));
    sql.Add(' order by uni_name');
    Open;
    Locate('id', id_locate, []);
  end;
end;
procedure TFQuestionSort.ViewUsersDblClick(Sender : TObject);
begin
  btnSelClick(Sender);
end;
end.
