unit UNewPriceProdAuc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ComObj, Data.DB, MemDS,
  DBAccess, Uni, Vcl.Grids, UFrameTopPanel;

type
  TFNewPriceProdAuc = class(TForm)
    FrameTopPanel1: TFrameTopPanel;
    GridOrder: TStringGrid;
    Query1: TUniQuery;
    dsAuc: TDataSource;
    dlgOpen1: TOpenDialog;
    Query2: TUniQuery;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FrameTopPanel1btnAddClick(Sender: TObject);
    procedure FrameTopPanel1btnSelClick(Sender: TObject);
  private
    Excel: Variant;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNewPriceProdAuc: TFNewPriceProdAuc;

implementation

{$R *.dfm}

uses USplash;

procedure TFNewPriceProdAuc.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  try
    Excel.Quit;
  except
  end;
  CanClose := True;
  Excel := Unassigned;
end;

procedure TFNewPriceProdAuc.FrameTopPanel1btnAddClick(Sender: TObject);
var
  Rows, Cols, i, j: integer;
  WorkSheet: OLEVariant;
  FData: OLEVariant;
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
    try
      Excel.Quit;
    except
    end;
    Excel := Unassigned;
  end;
end;

procedure TFNewPriceProdAuc.FrameTopPanel1btnSelClick(Sender: TObject);
var
  i: integer;
  idSuplyer: integer;
  s: string;
begin
  with Query1 do
  begin
    Close;
    with GridOrder do
      for i := 1 to RowCount - 1 do
      begin
        s := 'update "аукцион"."Номенклатура" set цена=:цена ';
        FSplash.Show();
        FSplash.Update;
        if Trim(AnsiUpperCase(GridOrder.Cells[3, i])) <> '' then
        begin
          // if Trim(GridOrder.Cells[2, i]) <> '' then
          // s := s + ' цена= ' +
          // QuotedStr(Trim(AnsiUpperCase(GridOrder.Cells[2, i])))
          // else
          // s := s + ' and цена is null';
          s := s + ' where 1=1 ';
          if Trim(GridOrder.Cells[0, i]) <> '' then
            s := s + ' and КодПродукта= ' +
              QuotedStr(Trim(AnsiUpperCase(GridOrder.Cells[0, i])))
          else
            s := s + 'and КодПродукта is null';
          s := s + ' and upper("Поставщик")= ' +
            QuotedStr(Trim(AnsiUpperCase(GridOrder.Cells[3, i])));
          if Trim(GridOrder.Cells[1, i]) <> '' then
            s := s + ' and  "КОД_ТАРЫ"= ' +
              QuotedStr(Trim(AnsiUpperCase(GridOrder.Cells[1, i])))
          else
            s := s + ' and "КОД_ТАРЫ" is null';
          //
          if Trim(GridOrder.Cells[4, i]) <> '' then
            s := s + ' and  "S1"= ' +
              QuotedStr(Trim(Copy(Cells[4, i], 0,
              (Pos(' ', GridOrder.Cells[4, i])) - 1)))
          else
            s := s + ' and "S1" is null';
          if Trim(GridOrder.Cells[5, i]) <> '' then
            s := s + ' and  "S2"= ' +
              QuotedStr(Trim(Copy(Cells[5, i], 0,
              (Pos(' ', GridOrder.Cells[5, i])) - 1)))
          else
            s := s + ' and "S2" is null';
          // ShowMessage(s);
          sql.Text := s;
          ParamByName('цена').AsString := Cells[2, i];
          sql.SaveToFile('D:\1\1.sql');
          try
            ExecSQL;
          except
            ShowMessage(Cells[0, i] + ',' + QuotedStr(Cells[1, i]) + ',' +
              QuotedStr(Cells[2, i]) + ',' + QuotedStr(Cells[3, i]));
            Application.MessageBox('Ошибка импорта', 'Сообщение',
              MB_OK + MB_ICONERROR);
            FSplash.Hide;
          end;
          FSplash.lblComment.Caption := 'Обработано записей: ' + IntToStr(i) +
            ' из ' + IntToStr(RowCount);
        end;
      end;
    FSplash.Hide;
    Application.MessageBox('Импорт завершен', 'Сообщение',
      MB_OK + MB_ICONINFORMATION);
    FNewPriceProdAuc.Close;
  end;
end;

end.
