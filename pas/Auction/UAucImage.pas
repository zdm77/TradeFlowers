unit UAucImage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Grids, UFrameTopPanel, ComObj, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdFTP, IdHTTP;

type
  TFAucImage = class(TForm)
    FrameTopPanel1: TFrameTopPanel;
    GridOrder: TStringGrid;
    Query1: TUniQuery;
    dsAuc: TDataSource;
    dlgOpen1: TOpenDialog;
    Query2: TUniQuery;
    IdFTP1: TIdFTP;
    IdHTTP1: TIdHTTP;
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
  FAucImage: TFAucImage;

implementation

{$R *.dfm}

uses USplash;

procedure TFAucImage.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  try
    Excel.Quit;
  except
  end;
  CanClose := True;
  Excel := Unassigned;
end;

procedure TFAucImage.FrameTopPanel1btnAddClick(Sender: TObject);
var
  Rows, Cols, i, j: integer;
  WorkSheet: OLEVariant;
  FData: OLEVariant;
  s: string;
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
    // FData := WorkSheet.UsedRange.Value;
    GridOrder.RowCount := Rows;
    GridOrder.ColCount := Cols;
    // ShowMessage(WorkSheet.Cells[1,2]);
    // ShowMessage(WorkSheet.Cells[1,2].Hyperlinks[1].Address);
    // выводим данные в таблицу
    FSplash.Show();
    for i := 0 to Rows - 1 do
    begin
      try
        FSplash.Update;
        for j := 0 to Cols - 1 do
        begin
          // showmes
          s := WorkSheet.Cells[i + 1, 2];
          if s <> '' then
          begin
            // Message( WorkSheet.Cells[i+1, 2]);
            GridOrder.Cells[0, i] := WorkSheet.Cells[i + 1, 1];
            GridOrder.Cells[1, i] := WorkSheet.Cells[i + 1, 2].Hyperlinks[1].Address;
          end;
        end;
        FSplash.lblComment.Caption := 'Обработано записей: ' + IntToStr(i) +
          ' из ' + IntToStr(Rows);
      except
        FSplash.Hide;
      end;
    end;
    FSplash.Hide;
    // GridOrder.Cells[1, 2] := WorkSheet.Cells[1, 2].Hyperlinks[1].Address;
    try
      Excel.Quit;
    except
    end;
    Excel := Unassigned;
    // GridOrder.ыв[1] := 255;
  end;
end;

procedure TFAucImage.FrameTopPanel1btnSelClick(Sender: TObject);
var
  memo: TMemoryStream;
  s: string;
  i: integer;
begin
  FSplash.Show();
  with GridOrder do
    for i := 1 to RowCount do
    begin
      try
        if Cells[0, i] <> '' then
        begin
          FSplash.Update;
          memo := TMemoryStream.Create;
          s := ExtractFileDir(Application.ExeName) + '\..\tmp\' +
            Cells[0, i] + '.jpg';
          // s := 'c:\1\1.jpg';
          // ShowMessage(Cells[1, i]);
          IdHTTP1.Get(Cells[1, i], memo);
          IdHTTP1.Disconnect;
          memo.SaveToFile(s);
          memo.Free;
          IdFTP1.Connect();
          IdFTP1.ChangeDir('www/htdocs/tradeflowers/images');
          IdFTP1.Put(s, Cells[0, i] + '.jpg', False);
          IdFTP1.Disconnect;
          FSplash.lblComment.Caption := 'Обработано записей: ' + IntToStr(i) +
            ' из ' + IntToStr(RowCount);
        end;
      except
        Continue;
      end;
    end;
  FSplash.Hide;
  ShowMessage('Импорт завершен');
  // s:= ExtractFilePath(Application.ExeName+'..\tmp\');
  // CopyFile('c:\1\image.jpg',pwchar(s),true);
end;

end.
