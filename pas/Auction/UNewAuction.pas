unit UNewAuction;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Datasnap.DBClient,
  MemDS, DBAccess, Uni, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, UFrameTopPanel,
  ComObj, Vcl.Grids, AdvObj, BaseGrid, AdvGrid;
type
  TfNewAuction = class(TForm)
    FrameTopPanel1 : TFrameTopPanel;
    Query1 : TUniQuery;
    QueryAuc : TUniQuery;
    dsAuc : TDataSource;
    dlgOpen1 : TOpenDialog;
    GridOrder : TStringGrid;
    procedure btnAddClick(Sender : TObject);
    procedure FormCloseQuery(Sender : TObject; var CanClose : Boolean);
    procedure FormShow(Sender : TObject);
    procedure FrameTopPanel1btnSelClick(Sender : TObject);
  private
    { Private declarations }
  public
    Excel : Variant;
    s_date : TDate;
    id_exe : Boolean;
    IDCountry : Integer;
    IDPlant : Integer;
    IDProduct : Integer;
    s_id_postav : Integer;
    function DetectSupplier(s_name : string) : Integer;
    function DetectProduct(s_name, s_code : string; s_i : Integer) : Integer;
    procedure EnableBtn;
    { Public declarations }
  end;

var
  fNewAuction : TfNewAuction;
implementation
{$R *.dfm}

uses UNewPlantCountry, UTypeSort, PGSQL, USelectTypeAuc, UAuctionDetail;
procedure TfNewAuction.btnAddClick(Sender : TObject);
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
    // проверяем дату
    if GridOrder.Cells[22, 1] <> fAuctionDetail.edtDateZakup.Text then
    begin
      if Application.MessageBox
        ('Дата закупки не совпадает! Выберете другой файл?.', 'Ошибка',
          MB_YESNO + MB_ICONERROR) = mrNo then
      begin
        FrameTopPanel1.btnSel.Enabled := False;
        fNewAuction.Close;
      end
      else
        btnAddClick(Sender);
    end
    else
      FrameTopPanel1.btnSel.Enabled := True; ;
  end;
end;
function TfNewAuction.DetectSupplier(s_name : string) : Integer;
begin
  IDPlant := 0;
  with Query1 do
  begin
    // SQL.Text :=
    // 'select id  from "продукция"."Соответствие" sv where upper(sv."Наим
    // Close;Аукцион")= :n';
    // ParamByName('')
    IDCountry := 0;
    Result := 0;
    Close;
    sql.Text :=
               'select id, код_страны   from "продукция"."плантации" sv where upper(sv.uni_name)=:n';
    ParamByName('n').AsString := Trim(AnsiUpperCase(s_name));
    Open;
    if Fields[0].AsString = '' then
    begin
      if Application.MessageBox(PChar('Поставщик - "' + Trim(s_name) +
      '" не найден. Добавить?'), 'Вопрос', MB_YESNO + MB_ICONWARNING) = mrYes
      then
      begin
        Application.CreateForm(TfNewPlantCountry, fNewPlantCountry);
        with fNewPlantCountry do
        begin
          Caption := 'Поставщик -' + s_name;
          ShowCountry;
          ShowModal;
          if IDSelect = True then
          begin
            IDPlant := PGSQL.NewID('продукция.плантации_id_seq');
            Query1.Close;
            Query1.sql.Text :=
                              'insert into "продукция"."плантации" (id, name, brand, код_страны, uni_name, reg_name)'
                              + ' values (:id, :name, :brand, :код_страны, :uni_name, :reg_name)';
            Query1.ParamByName('id').AsInteger := IDPlant;
            Query1.ParamByName('name').AsString := AnsiUpperCase(s_name);
            Query1.ParamByName('brand').AsString := AnsiUpperCase(s_name);
            Query1.ParamByName('uni_name').AsString := AnsiUpperCase(s_name);
            Query1.ParamByName('reg_name').AsString := AnsiUpperCase(s_name);
            Query1.ParamByName('код_страны').AsInteger := edtDetail.EditValue;
            IDCountry := edtDetail.EditValue;
            Query1.ExecSQL;
            Result := IDPlant;
            // ShowMessage(IntToStr(edtDetail.EditValue));
          end
          else
            Result := 0;
        end;
      end
      else
        Result := 0;
    end
    else
    begin
      //
      IDCountry := Fields[1].AsInteger;
      IDPlant := Fields[0].AsInteger;
      Result := Fields[0].AsInteger;
    end;
  end;
end;
function TfNewAuction.DetectProduct(s_name, s_code : string;
                                       s_i : Integer) : Integer;
var
  IDA : Integer;
  s, IdSuplyer, CountryCode, TypeCode, TypeSrez : string;
  q : Integer;
  CodAny : String;
begin
  // ShowMessage( s);
  // with Query1 do
  // begin
  // Result := 0;
  // Close;
  // sql.Text :=
  // 'select id  from "продукция"."Соответствие" sv where upper(sv."НаимАукцион")= :n';
  // ParamByName('n').AsString := trim(AnsiUpperCase(s_name));
  // Open;
  // if Fields[0].AsString = '' then
  // begin
  // if Application.MessageBox(PChar('Продукт - "' + trim(s_name) +
  // '" не найден. Добавить?'), 'Вопрос', MB_YESNO + MB_ICONWARNING) = mrYes
  // then
  // begin
  // Application.CreateForm(TfTypeSort, fTypeSort);
  // with fTypeSort do
  // begin
  // s_id_country := IDCountry;
  // Caption := 'Продукт -' + s_name;
  // s_nameA := s_name;
  // ShowType;
  // ShowModal;
  // if IDSelect = true then
  // begin
  // IDA := PGSQL.NewID('продукция.Соответствие_id_seq');
  // Query1.Close;
  // Query1.sql.Text :=
  // 'insert into "продукция"."Соответствие" (id, КодТипа, КодСорта, НаимАукцион, КодАукциона)'
  // + ' values (:id, :КодТипа, :КодСорта, :НаимАукцион, :КодАукциона)';
  // Query1.ParamByName('id').AsInteger := IDA;
  // Query1.ParamByName('КодТипа').AsInteger := edtType.EditValue;
  // Query1.ParamByName('КодСорта').AsInteger := edtSort.EditValue;
  // Query1.ParamByName('НаимАукцион').AsString := s_name;
  // Query1.ParamByName('КодАукциона').AsString := s_code;
  // Query1.ExecSQL;
  // Result := IDA;
  // end
  // else
  // Result := 0;
  // end;
  // end
  // else
  // Result := 0;
  // end
  // else
  // begin
  // Result := Fields[0].AsInteger;
  // end;
  // end;
  with GridOrder do
  begin
    with Query1 do
    begin
      Result := 0;
      Close;
      // q := Pos('-', GridOrder.Cells[26, s_i]);
      // s := Copy(GridOrder.Cells[26, s_i], 0, q - 1);
      // ShowMessage(s);
      IdSuplyer := Trim(Copy(GridOrder.Cells[26, s_i], 0,
                              (Pos('-', GridOrder.Cells[26, s_i])) - 1));
      // страна поставщика
      // ShowMessage(IntToStr(IDCountry));
      sql.Text := 'select code from "продукция"."страны" where id=' +
    IntToStr(IDCountry);
      Open;
      CountryCode := Fields[0].AsString;
      sql.Clear;
      s := 'select id  from "аукцион"."Номенклатура" sv where sv."КодПродукта"= :n '
    + ' and sv."КодПоставщика"= ' + IdSuplyer;
      if Trim(GridOrder.Cells[8, s_i]) <> '' then
        s := s + ' and upper(ЧАСЫ)= ' +
      QuotedStr(Trim(AnsiUpperCase(GridOrder.Cells[8, s_i])))
      else
        s := s + ' and ЧАСЫ is null';
      //
      if Trim(GridOrder.Cells[9, s_i]) <> '' then
        s := s + ' and upper(КОД_ТАРЫ)= ' +
      QuotedStr(Trim(AnsiUpperCase(GridOrder.Cells[9, s_i])))
      else
        s := s + ' and КОД_ТАРЫ is null';
      //
      if GridOrder.Cells[10, s_i] <> '' then
        s := s + ' and "S1"= ' +
      QuotedStr(Trim(AnsiUpperCase(GridOrder.Cells[10, s_i])))
      else
        s := s + ' and "S1" is null';
      // //
      if GridOrder.Cells[11, s_i] <> '' then
        s := s + ' and "S2"= ' +
      QuotedStr(Trim(AnsiUpperCase(GridOrder.Cells[11, s_i])))
      else
        s := s + ' and "S2" is null';
      // //
      if GridOrder.Cells[12, s_i] <> '' then
        s := s + ' and "S3"= ' +
      QuotedStr(Trim(AnsiUpperCase(GridOrder.Cells[12, s_i])))
      else
        s := s + ' and "S3" is null';
      // //
      if GridOrder.Cells[13, s_i] <> '' then
        s := s + ' and "S4"= ' +
      QuotedStr(Trim(AnsiUpperCase(GridOrder.Cells[13, s_i])))
      else
        s := s + ' and "S4" is null';
      // //
      s := s + ' and КодСтраны= ' + QuotedStr(Trim(AnsiUpperCase(CountryCode)));
      // //
      if GridOrder.Cells[14, s_i] <> '' then
        s := s + ' and КачествоТовара= ' +
      QuotedStr(Trim(AnsiUpperCase(GridOrder.Cells[14, s_i])))
      else
        s := s + ' and КачествоТовара is null';
      s := s + ' and код_аукциона=' +
    IntToStr(fAuctionDetail.edtAucType.EditValue);
      sql.Text := s;
      ParamByName('n').AsString := Trim(GridOrder.Cells[3, s_i]);
      Open;
      if Fields[0].AsString = '' then
      begin
        // примерные типы
        // старый вариант
        Close;
        sql.Text :=
                   'select ГруппаПродукта, ТипСрезка  from "аукцион"."Номенклатура" sv where sv."КодПродукта"= '
                   + Trim(GridOrder.Cells[3, s_i]);
        Open;
        CodAny := Fields[0].AsString;
        if CodAny = '' then
        begin
          // выбираем тип
          Application.CreateForm(TFSelectTypeAuc, FSelectTypeAuc);
          with FSelectTypeAuc do
          begin
            FrameTypeAuc1.ShowTypeAuc(CodAny);
            Label1.Caption := 'Товар: ' + AnsiUpperCase(Cells[4, s_i]);
            ShowModal;
            if idSel = False then
            begin
              Application.MessageBox('Прервано пользователем.', 'Ошибка',
                                      MB_OK + MB_ICONERROR);
              abort;
            end
            else
            begin
              TypeCode := FrameTypeAuc1.QueryTypeAuc.FieldByName
              ('code').AsString;
              case FrameTypeAuc1.edtTypeSrez.ItemIndex of
                0 : TypeSrez := 'STW';
                1 : TypeSrez := 'Горшечка';
              end;
            end;
          end;
        end
        else
        begin
          TypeCode := CodAny;
          TypeSrez := Fields[1].AsString;
        end;
        IDA := PGSQL.NewID('"аукцион"."Номенклатура_id_seq"');
        // вставляем в большую номенклатуру
        Close;
        sql.Clear;
        sql.Add(' INSERT INTO');
        sql.Add(' "аукцион"."Номенклатура"');
        sql.Add(' (');
        sql.Add(' id,');
        sql.Add(' "КодПоставщика",');
        sql.Add(' "Поставщик",');
        sql.Add(' "Наименование",');
        sql.Add(' "ГруппаПродукта",');
        sql.Add(' "ЧАСЫ",');
        sql.Add(' "КОД_ГРУППЫ",');
        sql.Add(' "КОЛВО_В_ТАРЕ",');
        sql.Add(' "КОД_ТАРЫ",');
        sql.Add(' "S1",');
        sql.Add(' "S2",');
        sql.Add(' "S3",');
        sql.Add(' "S4",');
        sql.Add(' "КодПродукта",');
        sql.Add(' "КодСтраны",');
        sql.Add(' "КачествоТовара",');
        sql.Add(' "ТипСрезка",');
        sql.Add(' "код_плантации", ');
        // sql.Add(' "КОД_ГРУППЫ", ');
        // sql.Add(' "ТипСрезка", ');
        sql.Add(' "код_аукциона" ');
        sql.Add(' )');
        sql.Add(' VALUES (');
        sql.Add(' :id,');
        sql.Add(' :КодПоставщика,');
        sql.Add(' :Поставщик,');
        sql.Add(' :Наименование,');
        sql.Add(' :ГруппаПродукта,');
        sql.Add(' :ЧАСЫ,');
        sql.Add(' :КОД_ГРУППЫ,');
        sql.Add(' :КОЛВО_В_ТАРЕ,');
        sql.Add(' :КОД_ТАРЫ,');
        sql.Add(' :S1,');
        sql.Add(' :S2,');
        sql.Add(' :S3,');
        sql.Add(' :S4,');
        sql.Add(' :КодПродукта,');
        sql.Add(' :КодСтраны,');
        sql.Add(' :КачествоТовара,');
        sql.Add(' :ТипСрезка,');
        sql.Add(' :код_плантации,');
        // sql.Add(' :КОД_ГРУППЫ, ');
        // sql.Add(' :ТипСрезка, ');
        sql.Add(' :код_аукциона ');
        sql.Add(' );');
        Result := IDA;
        ParamByName('код_плантации').AsInteger := IDPlant;
        ParamByName('id').AsInteger := IDA;
        ParamByName('КодПоставщика').AsString := IdSuplyer;
        if Cells[5, s_i] <> '' then
          ParamByName('Поставщик').AsString := Cells[5, s_i]
        else
          ParamByName('Поставщик').Value := Null;
        if Cells[4, s_i] <> '' then
          ParamByName('Наименование').AsString := AnsiUpperCase(Cells[4, s_i])
        else
          ParamByName('Наименование').Value := Null;
        ParamByName('ГруппаПродукта').AsString := TypeCode;
        if Cells[8, s_i] <> '' then
          ParamByName('ЧАСЫ').AsString := Cells[8, s_i]
        else
          ParamByName('ЧАСЫ').Value := Null;
        // if Cells[5, s_i] <> '' then
        // ParamByName('КОД_ГРУППЫ').AsString := Cells[5, s_i]
        // else
        // ParamByName('КОД_ГРУППЫ').Value := Null;
        if Cells[6, s_i] <> '' then
          ParamByName('КОЛВО_В_ТАРЕ').AsString := Cells[6, s_i]
        else
          ParamByName('КОЛВО_В_ТАРЕ').Value := Null;
        if Cells[9, s_i] <> '' then
          ParamByName('КОД_ТАРЫ').AsString := Cells[9, s_i]
        else
          ParamByName('КОД_ТАРЫ').Value := Null;
        if Cells[10, s_i] <> '' then
          ParamByName('S1').AsString := Cells[10, s_i]
        else
          ParamByName('S1').Value := Null;
        if Cells[11, s_i] <> '' then
          ParamByName('S2').AsString := Cells[11, s_i]
        else
          ParamByName('S2').Value := Null;
        if Cells[12, s_i] <> '' then
          ParamByName('S3').AsString := Cells[12, s_i]
        else
          ParamByName('S3').Value := Null;
        if Cells[13, s_i] <> '' then
          ParamByName('S4').AsString := Cells[13, s_i]
        else
          ParamByName('S4').Value := Null;
        if Cells[3, s_i] <> '' then
          ParamByName('КодПродукта').AsString := Cells[3, s_i]
        else
          ParamByName('КодПродукта').Value := Null;
        ParamByName('КодСтраны').AsString := CountryCode;
        if Cells[14, s_i] <> '' then
          ParamByName('КачествоТовара').AsString := Cells[14, s_i]
        else
          ParamByName('КачествоТовара').Value := Null;
        ParamByName('код_аукциона').AsInteger :=
                                                fAuctionDetail.edtAucType.EditValue;
        ParamByName('ТипСрезка').AsString := TypeSrez;
        try
          ExecSQL;
          Result := IDA;
        except
          ShowMessage(Cells[0, s_i] + ',' + QuotedStr(Cells[1, s_i]) + ',' +
          QuotedStr(Cells[2, s_i]) + ',' + QuotedStr(Cells[3, s_i]) + ',' +
          QuotedStr(Cells[4, s_i]) + ',' + QuotedStr(Cells[5, s_i]) + ',' +
          QuotedStr(Cells[6, s_i]) + ',' + QuotedStr(Cells[7, s_i]) + ',' +
          QuotedStr(Cells[8, s_i]) + ',' + QuotedStr(Cells[9, s_i]) + ',' +
          QuotedStr(Cells[10, s_i]) + ',' + QuotedStr(Cells[11, s_i]) + ',' +
          QuotedStr(Cells[12, s_i]) + ',' + QuotedStr(Cells[13, s_i]) + ',' +
          QuotedStr(Cells[14, s_i]) + ',' + QuotedStr(Cells[15, s_i]));
          Application.MessageBox('Ошибка импорта', 'Сообщение',
                                  MB_OK + MB_ICONERROR);
            // FSplash.Hide;
        end;
      end
      else
      begin
        Result := Fields[0].AsInteger;
      end;
    end;
  end;
end;
procedure TfNewAuction.EnableBtn;
begin
end;
procedure TfNewAuction.FormCloseQuery(Sender : TObject; var CanClose : Boolean);
begin
  try
    Excel.Quit;
  except
  end;
  CanClose := True;
  Excel := Unassigned;
end;
procedure TfNewAuction.FormShow(Sender : TObject);
begin
  btnAddClick(Sender);
end;
procedure TfNewAuction.FrameTopPanel1btnSelClick(Sender : TObject);
var
  i, id_plant, id_a : Integer;
begin
  with GridOrder do
    for i := 1 to RowCount - 1 do
    begin
      // проверяем поставщика
      id_plant := DetectSupplier(Cells[5, i]);
      if id_plant <> 0 then
      begin
        // проверяем соотвтетствие товара
        id_a := DetectProduct(Cells[4, i], Cells[3, i], i);
        if id_a <> 0 then
        begin
          id_exe := True;
          with Query1 do
          begin
            sql.Clear;
            sql.Add(' INSERT INTO');
            sql.Add(' "аукцион"."аукцион"');
            sql.Add(' (');
            sql.Add(' "id_auc_detail",');
            sql.Add(' "ДатаАукциона",');
            sql.Add(' "ВремяАукциона",');
            sql.Add(' seat,');
            sql.Add(' "Покупатель",');
            sql.Add(' "КолВоБаков",');
            sql.Add(' "КодПродукта",');
            sql.Add(' "КолВоВБаке",');
            sql.Add(' "ЦенаАукциона",');
            sql.Add(' "НомерЧасов",');
            sql.Add(' "ТипТары",');
            sql.Add(' "Длина",');
            sql.Add(' s2,');
            sql.Add(' s3,');
            sql.Add(' s4,');
            sql.Add(' q,');
            sql.Add(' com1,');
            sql.Add(' com2,');
            sql.Add(' pos1,');
            sql.Add(' pos2,');
            sql.Add(' pos3,');
            sql.Add(' "QL",');
            sql.Add(' "MPS",');
            sql.Add(' "ЦенаНаВыходе",');
            sql.Add(' "НомерТранзакции",');
            sql.Add(' "НомерЛота",');
            sql.Add(' "КодПроизводителя",');
            sql.Add(' "КодСоответствия",');
            sql.Add(' "Код_Поставщика",');
            sql.Add(' "КолвоВПачке"');
            sql.Add(' )');
            sql.Add(' VALUES (');
            // sql.Add(' :ДатаВылета,');
            sql.Add(' :id_auc_detail,');
            sql.Add(' :ДатаАукциона,');
            sql.Add(' :ВремяАукциона,');
            sql.Add(' :seat,');
            sql.Add(' :Покупатель,');
            sql.Add(' :КолВоБаков,');
            sql.Add(' :КодПродукта,');
            sql.Add(' :КолВоВБаке,');
            sql.Add(' :ЦенаАукциона,');
            sql.Add(' :НомерЧасов,');
            sql.Add(' :ТипТары,');
            sql.Add(' :Длина,');
            sql.Add(' :s2,');
            sql.Add(' :s3,');
            sql.Add(' :s4,');
            sql.Add(' :q,');
            sql.Add(' :com1,');
            sql.Add(' :com2,');
            sql.Add(' :pos1,');
            sql.Add(' :pos2,');
            sql.Add(' :pos3,');
            sql.Add(' :QL,');
            sql.Add(' :MPS,');
            sql.Add(' :ЦенаНаВыходе,');
            sql.Add(' :НомерТранзакции,');
            sql.Add(' :НомерЛота,');
            sql.Add(' :КодПроизводителя,');
            sql.Add(' :КодСоответствия,');
            sql.Add(' :Код_Поставщика,');
            sql.Add(' :КолвоВПачке');
            sql.Add(' );');
            // ParamByName('ДатаВылета').AsDate := s_date;
            ParamByName('id_auc_detail').AsInteger := fAuctionDetail.IDAucZakup;
            ParamByName('ДатаАукциона').AsString := Cells[22, i];
            ParamByName('ВремяАукциона').AsString := Cells[23, i];
            ParamByName('seat').AsString := Cells[0, i];
            ParamByName('Покупатель').AsString := Cells[1, i];
            ParamByName('КолВоБаков').AsString := Cells[2, i];
            ParamByName('КодПродукта').AsString := Cells[3, i];
            ParamByName('КолВоВБаке').AsString := Cells[6, i];
            ParamByName('ЦенаАукциона').AsString := Cells[7, i];
            ParamByName('НомерЧасов').AsString := Cells[8, i];
            ParamByName('ТипТары').AsString := Cells[9, i];
            ParamByName('Длина').AsString := Cells[10, i];
            if Cells[11, i] <> '' then
              ParamByName('s2').AsString := Cells[11, i];
            if Cells[12, i] <> '' then
              ParamByName('s3').AsString := Cells[12, i];
            if Cells[13, i] <> '' then
              ParamByName('s4').AsString := Cells[13, i];
            if Cells[14, i] <> '' then
              ParamByName('q').AsString := Cells[14, i];
            if Cells[15, i] <> '' then
              ParamByName('com1').AsString := Cells[15, i];
            if Cells[16, i] <> '' then
              ParamByName('com2').AsString := Cells[16, i];
            if Cells[17, i] <> '' then
              ParamByName('pos1').AsString := Cells[17, i];
            if Cells[18, i] <> '' then
              ParamByName('pos2').AsString := Cells[18, i];
            if Cells[19, i] <> '' then
              ParamByName('pos3').AsString := Cells[19, i];
            if Cells[20, i] <> '' then
              ParamByName('QL').AsString := Cells[20, i];
            if Cells[21, i] <> '' then
              ParamByName('MPS').AsString := Cells[21, i];
            ParamByName('ЦенаНаВыходе').AsString := Cells[24, i];
            ParamByName('НомерТранзакции').AsString := Cells[25, i];
            ParamByName('НомерЛота').AsString := Cells[26, i];
            ParamByName('КодПроизводителя').AsInteger := id_plant;
            ParamByName('КодСоответствия').AsInteger := id_a;
            ParamByName('Код_Поставщика').AsInteger := s_id_postav;
            if Cells[27, i] <> '' then
              ParamByName('КолвоВПачке').AsString := Cells[27, i];
            ExecSQL;
            // Abort;
          end;
        end
        else
          id_exe := False;
      end
      else
        id_exe := False;
      // if id_exe = False then
      // begin
      // with Query1 do
      // begin
      // Close;
      // sql.Text := 'delete from  "аукцион"."аукцион" where ДатаВылета=:d';
      // ParamByName('d').AsDate := s_date;
      // ExecSQL;
      // end;
      // Application.MessageBox('Операция прервана пользователем',
      // 'Ошибка обработки', MB_OK + MB_ICONERROR);
      // abort;
      // end;
      fNewAuction.Close;
    end;
end;
end.
