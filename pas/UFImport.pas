unit UFImport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Clipbrd, dxSkinsCore, 
      
    dxSkinDevExpressStyle, 
     
     
    
    
    
    
     
      
    
     
  dxSkinsdxBarPainter, Data.DB, MemDS, DBAccess, Uni, dxBar, cxClasses,
  Vcl.Grids, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Vcl.StdCtrls, cxGroupBox, Vcl.ComCtrls, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxSkinOffice2007Blue, dxSkinsDefaultPainters;

type
  TFImport = class(TForm)
    GridOrder: TStringGrid;
    bardxbrmngr1: TdxBarManager;
    dxbrBarManager1Bar: TdxBar;
    bardxbrmngr1Bar1: TdxBar;
    btnSave: TdxBarLargeButton;
    btnSaveClose: TdxBarLargeButton;
    btnPast: TdxBarLargeButton;
    btnDel: TdxBarLargeButton;
    Query1: TUniQuery;
    dxBarSubItem1: TdxBarSubItem;
    btnImport2: TdxBarLargeButton;
    procedure btnPastClick(Sender: TObject);
    procedure GridOrderKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnSaveClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnImport2Click(Sender: TObject);
  private
    { Private declarations }
  public
    id_save: Boolean;
    n_IDType, n_IDCountry, n_IDSort: Integer;
    function CheckSort: Boolean;
    function CheckSort1: Boolean;
    procedure DoClipbrdPaste;
    function GetSortID(s_name: string): Integer;
    procedure UpdateGrid(l_sortName, change_name: string);
    { Public declarations }
  end;

var
  FImport: TFImport;

implementation

{$R *.dfm}

uses PGSQL, UDataModule1, UFQuestionSort;

procedure TFImport.btnDelClick(Sender: TObject);
var
  i: Integer;
begin
  with GridOrder do
    for i := 0 to ColCount - 1 do
      Cols[i].Clear;
end;

procedure TFImport.btnImport2Click(Sender: TObject);
begin
  if CheckSort1 = true then
  begin
    id_save := true;
    Close;
  end;
end;

procedure TFImport.btnPastClick(Sender: TObject);
begin
  DoClipbrdPaste;
end;

procedure TFImport.btnSaveClick(Sender: TObject);
begin
  if CheckSort = true then
  begin
    id_save := true;
    Close;
  end;
end;

function TFImport.CheckSort: Boolean;
var
  i: Integer;
  s: string;
  selectSortName: string;
  selectSortID: Integer;
begin
  CheckSort := false;
  with Query1 do
  begin
    for i := 1 to GridOrder.RowCount - 1 do
    begin
      GridOrder.Col := 0;
      GridOrder.Row := i;
      if GridOrder.Cells[3, i] = '' then
      begin
        Close;
        sql.Clear;
        sql.Add(' SELECT');
        sql.Add(' s.id');
        sql.Add(' FROM');
        sql.Add(' "продукция"."сорта" s');
        sql.Add(' INNER JOIN "продукция"."сорт_страна" ss ON (s.id = ss."код_сорта")');
        sql.Add(' INNER JOIN "продукция"."страны" c ON (ss."код_страны" = c.id)');
        sql.Add(' where код_типа=' + IntToStr(n_IDType));
        sql.Add(' and код_страны=' + IntToStr(n_IDCountry));
        sql.Add(' and UPPER(s.uni_name)=:uni_name');
        ParamByName('uni_name').AsString :=
          Trim(AnsiUpperCase(GridOrder.Cells[0, i]));
        Open;
        if (Fields[0].AsString <> '') then
        begin
          n_IDSort := Fields[0].AsInteger;
          GridOrder.Cells[3, i] := Fields[0].AsString;
        end
        else
        begin
          Application.CreateForm(TFQuestionSort, FQuestionSort);
          with FQuestionSort do
          begin
            lblSort.Caption := 'Сорт - ' + GridOrder.Cells[0, i] +
              ' не найден.';
            s_id_country := n_IDCountry;
            s_id_type := n_IDType;
            s_name_sort := Trim(AnsiUpperCase(GridOrder.Cells[0, i]));
            ShowSort;
            ShowModal;
            if IDSelect = true then
            begin
              selectSortName := Trim(AnsiUpperCase(GridOrder.Cells[0, i]));
              selectSortID := QuerySort.FieldByName('id').AsInteger;
              UpdateGrid(selectSortName, QuerySort.FieldByName('uni_name')
                .AsString);
            end
            else
              Abort;
          end;
        end;
      end;
    end;
    CheckSort := true;
  end;
end;

function TFImport.CheckSort1: Boolean;
var
  i: Integer;
  s: string;
begin
  CheckSort1 := false;
  DM1.dxMemData1.Active := true;
  with Query1 do
  begin
    for i := 1 to GridOrder.RowCount - 1 do
    begin
      GridOrder.Col := 0;
      GridOrder.Row := i;
      // Close;
      // sql.Text :=
      // 'select id from продукция.сорта where UPPER(uni_name)=:uni_name';
      // ParamByName('uni_name').AsString :=
      // Trim(AnsiUpperCase(GridOrder.Cells[0, i]));
      // Open;
      n_IDSort := GetSortID(GridOrder.Cells[0, i]);
      if n_IDSort <> 0 then
      begin
        GridOrder.Cells[3, i] := IntToStr(n_IDSort);
      end
      else
      begin
        s := 'Сорт - (' + GridOrder.Cells[0, i] +
          ') не найдена в структуре. Добавить?.';
        if Application.MessageBox(pchar(s), 'Предупреждение',
          MB_YESNO + MB_ICONERROR) = mrYes then
        begin
          n_IDSort := PGSQL.NewID('продукция.сорта_id_seq');
          Close;
          sql.Text :=
            'insert into продукция.сорта (id, name, uni_name, reg_name, стеблей, '
            + ' код_типа, комментарий) values ' +
            ' (:id, :name, :uni_name, :reg_name, :стеблей, :код_типа,:комментарий)';
          ParamByName('id').AsInteger := n_IDSort;
          ParamByName('name').AsString := Trim(GridOrder.Cells[0, i]);
          ParamByName('uni_name').AsString := Trim(GridOrder.Cells[0, i]);
          ParamByName('reg_name').AsString := Trim(GridOrder.Cells[0, i]);
          // ParamByName('стеблей').AsString := edtQuantity.Text;
          // s_id_type := edtType.EditValue;
          ParamByName('код_типа').AsInteger := n_IDType;
          // ParamByName('комментарий').AsString := mmoDescr.Text;
          // ExecSQL;
          GridOrder.Cells[3, i] := IntToStr(n_IDSort);
        end
        else
        begin
          Abort;
        end;
      end;
    end;
    CheckSort1 := true;
  end;
end;

procedure TFImport.DoClipbrdPaste;
var
  ClipbrdData: TStringList;
  ClipbrdRow: TStringList;
  i, j, RowCnt: Integer;
begin
  { очищаем }
  with GridOrder do
    for i := 0 to ColCount - 1 do
      Cols[i].Clear;
  { заполняем }
  if not Clipboard.HasFormat(CF_TEXT) then
    Exit;
  ClipbrdData := TStringList.Create;
  ClipbrdRow := TStringList.Create;
  try
    ClipbrdData.Text := Clipboard.AsText;
    RowCnt := ClipbrdData.Count;
    // если не вмещается, увеличиваем число строк в StringGrid
    if GridOrder.RowCount - GridOrder.Row < RowCnt then
      GridOrder.RowCount := RowCnt + GridOrder.Row;
    for i := 0 to RowCnt - 1 do
    begin
      ClipbrdData.Strings[i] := '"' + ClipbrdData.Strings[i] + '"';
      ClipbrdData.Strings[i] := StringReplace(ClipbrdData.Strings[i], #9,
        '"'#9'"', [rfReplaceAll]);
    end;
    ClipbrdRow.Delimiter := #9;
    ClipbrdRow.DelimitedText := ClipbrdData.Strings[0];
    // проверяем число столбцов в StringGrid. Если что, добавляем
    if GridOrder.ColCount - GridOrder.Col < ClipbrdRow.Count then
      GridOrder.ColCount := ClipbrdRow.Count + GridOrder.Col;
    for i := 0 to RowCnt - 1 do
    begin
      ClipbrdRow.DelimitedText := ClipbrdData.Strings[i];
      for j := 0 to ClipbrdRow.Count - 1 do
        GridOrder.Cells[j + GridOrder.Col, i + GridOrder.Row] :=
          ClipbrdRow.Strings[j];
    end;
    // if (j <> 10) then
    // Application.MessageBox
    // ('Нарушен формат при копировании/вставке. Несоответствие количества столбцов.',
    // 'Ошибка', mb_ok + MB_ICONERROR);
    // if GridOrder.Cells[0, 1] <> 'Рабоч. место:' then
    // Application.MessageBox
    // ('Нарушен формат при копировании/вставке. Первая колонка должна иметь значение - "Рабоч. место:"',
    // 'Ошибка', mb_ok + MB_ICONERROR);
    // if (j = 10) and (GridOrder.Cells[0, 1] = 'Рабоч. место:') then
    // btnSave.Enabled := True
    // else
    // btnSave.Enabled := False;
  finally
    ClipbrdData.Free;
    ClipbrdRow.Free;
  end;
end;

function TFImport.GetSortID(s_name: string): Integer;
begin
  Result := 0;
  with DM1.dxMemData1 do
  begin
    First;
    while not Eof do
    begin
      if AnsiUpperCase(FieldByName('uni_name').AsString)
        = Trim(AnsiUpperCase(s_name)) then
      begin
        Result := FieldByName('id').AsInteger;
        // ShowMessage( AnsiUpperCase(FieldByName('uni_name').AsString));
        // ShowMessage( Trim(AnsiUpperCase(s_name)));
        // ShowMessage( IntToStr(Result));
        Exit;
      end;
      Next;
    end;
  end;
end;

procedure TFImport.GridOrderKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // if ((Key = 86) or (Key = 112)) and (ssCtrl in Shift) then
  // DoClipbrdPaste();
end;

procedure TFImport.UpdateGrid(l_sortName, change_name: string);
var
  i: Integer;
begin
  for i := 1 to GridOrder.RowCount - 1 do
  begin
    if l_sortName = Trim(AnsiUpperCase(GridOrder.Cells[0, i])) then
      GridOrder.Cells[0, i] := change_name;
  end;
  CheckSort;
end;

end.
