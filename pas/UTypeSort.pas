unit UTypeSort;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, 
   Vcl.Menus, Data.DB, MemDS, DBAccess, Uni,
  Vcl.StdCtrls, cxButtons, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxGroupBox;

type
  TfTypeSort = class(TForm)
    cxGroupBox1: TcxGroupBox;
    edtType: TcxLookupComboBox;
    lblDetail: TcxLabel;
    btnSel: TcxButton;
    btnCancel: TcxButton;
    QueryType: TUniQuery;
    dsType: TDataSource;
    cxLabel1: TcxLabel;
    edtSort: TcxLookupComboBox;
    dsSort: TDataSource;
    QuerySort: TUniQuery;
    edtSortView: TcxTextEdit;
    Query1: TUniQuery;
    btnAdd: TcxButton;
    procedure btnAddClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnSelClick(Sender: TObject);
    procedure edtTypePropertiesCloseUp(Sender: TObject);
    procedure edtSortViewPropertiesChange(Sender: TObject);
    procedure edtSortPropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    s_nameA: string;
    s_id_country: Integer;
    IDSelect: Boolean;
    procedure DetectType;
    procedure EnableSave;
    procedure ShowSort(s_id: Integer = 0);
    procedure ShowType;
    { Public declarations }
  end;

var
  fTypeSort: TfTypeSort;

implementation

{$R *.dfm}

uses PGSQL;

procedure TfTypeSort.btnAddClick(Sender: TObject);
var
  ID_Sort: Integer;
begin
  // ShowMessage(IntToStr(s_id_country));
  with Query1 do
  begin
    // добавляем сорт
    ID_Sort := PGSQL.NewID('продукция.сорта_id_seq');
    Close;
    sql.Text :=
      'insert into продукция.сорта (id, name,uni_name,reg_name,код_типа) values ('
      + ' :id, :name,:uni_name,:reg_name,:код_типа)';
    ParamByName('id').AsInteger := ID_Sort;
    ParamByName('код_типа').AsInteger := edtType.EditValue;
    ParamByName('name').AsString := edtSortView.Text;
    ParamByName('uni_name').AsString := edtSortView.Text;
    ParamByName('reg_name').AsString := edtSortView.Text;
    ExecSQL;
    Close;
    sql.Text :=
      'insert into продукция.сорт_страна (код_сорта, код_страны) values (' +
      ' :код_сорта, :код_страны)';
    ParamByName('код_сорта').AsInteger := ID_Sort;
    ParamByName('код_страны').AsInteger := s_id_country;
    ExecSQL;
    ShowSort(ID_Sort);
  end;
end;

procedure TfTypeSort.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfTypeSort.btnSelClick(Sender: TObject);
begin
  IDSelect := True;
  Close;
end;

procedure TfTypeSort.DetectType;
begin
end;

procedure TfTypeSort.edtSortPropertiesCloseUp(Sender: TObject);
begin
  EnableSave;
end;

procedure TfTypeSort.edtSortViewPropertiesChange(Sender: TObject);
begin
  EnableSave;
end;

procedure TfTypeSort.edtTypePropertiesCloseUp(Sender: TObject);
begin
  ShowSort;
end;

procedure TfTypeSort.EnableSave;
begin
  if edtSort.Text = edtSortView.Text then
    btnSel.Enabled := True
  else
    btnSel.Enabled := false;
end;

procedure TfTypeSort.ShowSort(s_id: Integer = 0);
begin
  with QuerySort do
  begin
    Close;
    sql.Text := 'select * from "продукция"."сорта" where код_типа= ' +
      IntToStr(edtType.EditValue) + ' order by uni_name';
    Open;
    if s_id = 0 then
      edtSort.EditValue := Fields[0].AsInteger
    else
      edtSort.EditValue := s_id;
    try
      edtSort.SetFocus;
    except
    end;
  end;
  EnableSave;
end;

procedure TfTypeSort.ShowType;
var
  s: string;
  posi: Integer;
  id, ID_Sort: Integer;
begin
  with QueryType do
  begin
    Close;
    sql.Text := 'select * from "продукция"."типы" order by приоритет';
    Open;
    while not Eof do
    begin
      // ShowMessage(FieldByName('auk').AsString);
      posi := pos(FieldByName('auk').AsString, s_nameA);
      if posi <> 0 then
      begin
        id := Fields[0].AsInteger;
        edtSortView.Text :=
          Trim(Copy(s_nameA, length(FieldByName('auk').AsString) + 2,
          length(s_nameA)));
        Query1.Close;
        Query1.sql.Text :=
          'select id from продукция.сорта where UPPER(uni_name)=:n';
        // ShowMessage(AnsiUpperCase(edtSortView.Text));
        Query1.ParamByName('n').AsString := AnsiUpperCase(edtSortView.Text);
        Query1.Open;
        if RecordCount > 0 then
          ID_Sort := Query1.Fields[0].AsInteger
        else
          ID_Sort := 0;
        Break;
      end;
      Next;
    end;
    // edtType.EditValue := Fields[0].AsInteger;
    edtType.EditValue := id;
  end;
  ShowSort(ID_Sort);
end;

end.
