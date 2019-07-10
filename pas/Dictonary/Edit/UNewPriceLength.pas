unit UNewPriceLength;
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
  cxClasses,
  cxCustomData,
  cxStyles,
  cxEdit,
  dxSkinsCore,
  
  cxCalc,
  cxCustomPivotGrid,
  cxDBPivotGrid,
  MemDS,
  DBAccess,
  Uni,
  cxContainer,
  cxGroupBox,
  UFrameTopPanel,
  dxmdaset,
  cxPivotGridCustomDataSet,
  cxPivotGridDrillDownDataSet,
  dxSkinscxPCPainter,
  cxFilter,
  cxData,
  cxDataStorage,
  DB,
  cxDBData,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGridCustomView,
  cxGrid,
  cxNavigator,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue;
type
  TFNewPriceLength = class(TForm)
    dsPriceL : TDataSource;
    QueryPriceL : TUniQuery;
    Group1 : TcxGroupBox;
    FrameTopPanel1 : TFrameTopPanel;
    GroupPrice : TcxGroupBox;
    FrameTopPanel2 : TFrameTopPanel;
    Dril1 : TcxPivotGridDrillDownDataSet;
    Query1 : TUniQuery;
    GridPriceL : TcxDBPivotGrid;
    GridPriceLg_name : TcxDBPivotGridField;
    GridPriceLl_name : TcxDBPivotGridField;
    GridPriceLcxDBPivotGridField : TcxDBPivotGridField;
    Rec_ID : TcxDBPivotGridField;
    QuerySort : TUniQuery;
    dsSort : TDataSource;
    GridUsers : TcxGrid;
    ViewUsers : TcxGridDBTableView;
    ColumnUniName : TcxGridDBColumn;
    ColumnName : TcxGridDBColumn;
    ColumnRegName : TcxGridDBColumn;
    LevelOrg : TcxGridLevel;
    procedure FormShow(Sender : TObject);
    procedure btnEditClick(Sender : TObject);
    procedure GridPriceLDblClick(Sender : TObject);
    procedure btnAddClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure GridPriceLKeyDown(Sender : TObject; var Key : Word;
                                   Shift : TShiftState);
  private
    id : Integer;
    price : string;
    procedure GetValue;
    { Private declarations }
  public
    s_���_�������_������ : Integer;
    // ��� ������� ������
    s_id_country : Integer;
    procedure ShowPriceLength;
    procedure ShowTypeSort;
    { Public declarations }
  end;

var
  FNewPriceLength : TFNewPriceLength;
implementation
{$R *.dfm}

uses
  USplash,
  UNewVal,
  ULang,
  USelectSort,
  UPasswd;
procedure TFNewPriceLength.btnAddClick(Sender : TObject);
begin
  Application.CreateForm(TFSelectSort, FSelectSort);
  with FSelectSort do
  begin
    { �������� ������ -������� }
    FrameSort1.s_id_country_sort := 1;
    { �������� ��� -���� }
    FrameSort1.s_id_type_sort := 1;
    FrameSort1.GroupType.Visible := false;
    FrameSort1.GroupSelCountry.Visible := false;
    FrameSort1.Split1.Visible := false;
    FrameSort1.s_select_not := 'select ���_����� from "�����"."����_����"' +
  ' where ���_���� =' + IntToStr(s_���_�������_������);
    ShowModal;
    if FrameSort1.FrameTopPanel1.id_select = true then
    begin
      with Query1 do
      begin
        Close;
        sql.Text := 'INSERT INTO "�����"."����_����"("���_����",  "���_�����") '
      + 'VALUES (:���_����, :���_�����);';
        ParamByName('���_�����').AsInteger := FrameSort1.QuerySort.FieldByName
        ('id').AsInteger;
        ParamByName('���_����').AsInteger := s_���_�������_������;
        ExecSQL;
        ShowTypeSort;
      end;
    end;
  end;
end;
procedure TFNewPriceLength.btnDelClick(Sender : TObject);
begin
  if Application.MessageBox
    ('�� ������������� ������ �������� ����� �� ������� ������?', '������',
      MB_YESNO + MB_ICONQUESTION) = mrYes then
  begin
    with Query1 do
    begin
      Close;
      sql.Text := 'delete from "�����"."����_����" where ���_�����=' +
    QuerySort.FieldByName('id').AsString + ' and ���_����=' +
    IntToStr(s_���_�������_������);
      ExecSQL;
      QuerySort.Refresh;
    end;
  end;
end;
procedure TFNewPriceLength.btnEditClick(Sender : TObject);
begin
  Application.CreateForm(TFAddValue, FAddValue);
  with FAddValue do
  begin
    GetValue;
    edtPrice.DecimalPlaces := 2;
    edtPrice.DisplayFormat := '### ### ##0.00;-### ### ##0.00;0';
    edtPrice.Visible := true;
    edtPrice.Text := price;
    ShowModal;
    if id_save = true then
    begin
      with Query1 do
      begin
        Close;
        sql.Text := 'update "�����"."�����_����" set ����=:���� where id=' +
      IntToStr(id);
        ParamByName('����').AsString := edtPrice.Text;
        ExecSQL;
        ShowPriceLength;
      end;
    end;
  end;
end;
procedure TFNewPriceLength.FormShow(Sender : TObject);
begin
  FrameTopPanel1.SetLang;
  FrameTopPanel2.SetLang;
  ULang.TranslateGridCaption(ColumnUniName, ColumnRegName, ColumnName);
  GridPriceL.SetFocus;
end;
procedure TFNewPriceLength.GetValue;
var
  vRecId : Integer;
begin
  FSplash.Show;
  Dril1.CreateData;
  vRecId := Dril1.FieldByName('Rec_ID').AsInteger;
  with Query1 do
  begin
    Close;
    if vRecId <> 0 then
    begin
      sql.Text :=
                 'SELECT pl."���_�����", pl."���_����", g.name g_name, l.name l_name, ' +
                 ' pl.id, pl."����" FROM  "�����"."�����_����" pl' +
                 '  INNER JOIN "�����"."�������_������" g ON (pl."���_����" = g.id)' +
                 '  INNER JOIN "�����"."�����" l ON (pl."���_�����" = l.id) where pl.id='
                 + IntToStr(vRecId);
      Open;
      id := FieldByName('id').AsInteger;
      price := FieldByName('����').AsString;
    end
    else
    begin
      id := QueryPriceL.FieldByName('id').AsInteger;
      price := QueryPriceL.FieldByName('����').AsString;
    end;
  end;
  FSplash.Close;
end;
procedure TFNewPriceLength.GridPriceLDblClick(Sender : TObject);
begin
  btnEditClick(Sender);
end;
procedure TFNewPriceLength.GridPriceLKeyDown(Sender : TObject; var Key : Word;
                                                Shift : TShiftState);
begin
  if Key = VK_RETURN then
    btnEditClick(Sender);
end;
procedure TFNewPriceLength.ShowPriceLength;
begin
  with QueryPriceL do
  begin
    Close;
    ParamByName('id_type').AsInteger := s_���_�������_������;
    Open;
    locate('id', id, []);
  end;
end;
procedure TFNewPriceLength.ShowTypeSort;
begin
  with QuerySort do
  begin
    Close;
    ParamByName('id_type').AsInteger := s_���_�������_������;
    Open;
  end;
end;
end.
