unit UNewTypeAuc;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ComObj, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Grids, UFrameTopPanel;
type
  TfNewTypeAuc = class(TForm)
    FrameTopPanel1 : TFrameTopPanel;
    GridOrder : TStringGrid;
    Query1 : TUniQuery;
    dsAuc : TDataSource;
    dlgOpen1 : TOpenDialog;
    Query2 : TUniQuery;
    procedure FormCloseQuery(Sender : TObject; var CanClose : Boolean);
    procedure FrameTopPanel1btnAddClick(Sender : TObject);
    procedure FrameTopPanel1btnSelClick(Sender : TObject);
  private
    Excel : Variant;
    { Private declarations }
  public
    IDNull : Boolean;
    function DetectExist(s_code : string) : Boolean;
    { Public declarations }
  end;

var
  fNewTypeAuc : TfNewTypeAuc;
implementation
{$R *.dfm}

function TfNewTypeAuc.DetectExist(s_code : string) : Boolean;
begin
//  if IDNull=true then
//  begin
//    Result:=IDNull;
//    Break;
//  end;
  with Query2 do
  begin
    //ShowMessage('');
    Close;
    sql.Text := 'select id from "аукцион"."Типы" where code= ' + Trim(s_code);
    Open;
    if Fields[0].AsString <> '' then
      Result := True
    else
      Result := False;
  end;
end;
procedure TfNewTypeAuc.FormCloseQuery(Sender : TObject; var CanClose : Boolean);
begin
  try
    Excel.Quit;
  except
  end;
  CanClose := True;
  Excel := Unassigned;
end;
procedure TfNewTypeAuc.FrameTopPanel1btnAddClick(Sender : TObject);
var
  Rows, Cols, i, j : Integer;
  WorkSheet : OLEVariant;
  FData : OLEVariant;
begin
  if dlgOpen1.Execute then
  begin
    Excel := CreateOleObject('Excel.Application');
    Excel.Application.WorkBooks.Add(dlgOpen1.FileName);
    Excel.Visible := False;
    Excel.DisplayAlerts := False;
    WorkSheet := Excel.ActiveWorkbook.ActiveSheet;
    // определяем количество строк и столбцов таблицы
    Rows := WorkSheet.UsedRange.Rows.Count;
    Cols := WorkSheet.UsedRange.Columns.Count;
    // считываем данные всего диапазона
    FData := WorkSheet.UsedRange.Value;
    GridOrder.RowCount := Rows;
    GridOrder.ColCount := Cols;
    // выводим данные в таблицу
    for i := 0 to Rows - 1 do
      for j := 0 to Cols - 1 do
        GridOrder.Cells[j, i] := FData[i + 1, j + 1];
    GridOrder.ColWidths[1] := 255;
  end;
end;
procedure TfNewTypeAuc.FrameTopPanel1btnSelClick(Sender : TObject);
var
  i : Integer;
begin
  Query1.Close;
  Query1.sql.Text := 'INSERT INTO "аукцион"."Типы" (code,  name) VALUES ( ' +
':code, :name);';
  with GridOrder do
    for i := 0 to RowCount - 1 do
    begin
      // проверка кода
      if DetectExist(Cells[0, i]) = False then
      begin
        Query1.Close;
        Query1.ParamByName('code').AsString := Cells[0, i];
        Query1.ParamByName('name').AsString := Cells[1, i];
        Query1.ExecSQL;
      end;
    end;
  Application.MessageBox('Импорт завершен', 'Сообщение',
                          MB_OK + MB_ICONINFORMATION);
  fNewTypeAuc.Close;
end;
end.
