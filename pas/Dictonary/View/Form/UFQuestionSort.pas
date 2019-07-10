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
    btnЗаказ : TdxBarButton;
    btnЗакупка : TdxBarButton;
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
  if Application.MessageBox('Вы действительно хотите добавить сорт?', 'Вопрос',
                             MB_YESNO + MB_ICONQUESTION) = mrYes then
  begin
    with Query1 do
    begin
      IDSort := PGSQL.NewID('продукция.сорта_id_seq');
      Close;
      sql.Text :=
                 'insert into продукция.сорта (id, name, uni_name, reg_name, стеблей, ' +
                 ' код_типа, комментарий) values ' +
                 ' (:id, :name, :uni_name, :reg_name, :стеблей, :код_типа,:комментарий)';
      ParamByName('id').AsInteger := IDSort;
      ParamByName('name').AsString := s_name_sort;
      ParamByName('uni_name').AsString := s_name_sort;
      ParamByName('reg_name').AsString := s_name_sort;
      // ParamByName('стеблей').AsString := edtQuantity.Text;
      // s_id_type := edtType.EditValue;
      ParamByName('код_типа').AsInteger := s_id_type;
      ExecSQL;
      Close;
      sql.Text :=
                 'insert into "продукция"."сорт_страна" (код_сорта, код_страны) values (:код_сорта, :код_страны)';
      ParamByName('код_сорта').AsInteger := IDSort;
      ParamByName('код_страны').AsInteger := s_id_country;
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
    sql.Add(' s."стеблей",');
    sql.Add(' s."код_типа",');
    sql.Add(' s."комментарий",');
    sql.Add(' s."изображение",');
    sql.Add(' ss."код_страны"');
    sql.Add(' FROM');
    sql.Add(' "продукция"."сорта" s');
    sql.Add(' INNER JOIN "продукция"."сорт_страна" ss ON (s.id = ss."код_сорта")');
    sql.Add(' INNER JOIN "продукция"."страны" c ON (ss."код_страны" = c.id)');
    sql.Add(' where код_типа=' + IntToStr(s_id_type));
    sql.Add(' and код_страны=' + IntToStr(s_id_country));
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
