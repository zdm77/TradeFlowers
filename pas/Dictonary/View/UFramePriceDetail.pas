unit UFramePriceDetail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
   dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, MemDS, DBAccess, Uni,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, UFrameTopPanel, cxContainer,
  Vcl.ComCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Vcl.StdCtrls, cxGroupBox,
   cxLabel, dxCore, cxDateUtils, cxCalendar, Vcl.Mask,
  sMaskEdit, sCustomComboEdit, sToolEdit;

type
  TFramePriceDetail = class(TFrame)
    FrameTopPanel1: TFrameTopPanel;
    GridPedidoALL: TcxGrid;
    ViewPedidoALL: TcxGridDBTableView;
    ColumnSort: TcxGridDBColumn;
    ColumnDlina: TcxGridDBColumn;
    LevelOrg: TcxGridLevel;
    QueryPriceDetail: TUniQuery;
    dsPriceDetail: TDataSource;
    ColumnPrice: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    edtCountry: TcxLookupComboBox;
    edtType: TcxLookupComboBox;
    edtPlant: TcxLookupComboBox;
    QueryCountry: TUniQuery;
    QueryType: TUniQuery;
    QueryPlant: TUniQuery;
    dsPlant: TDataSource;
    dsType: TDataSource;
    dsCountry: TDataSource;
    Query1: TUniQuery;
    Query2: TUniQuery;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edtDate: TcxDateEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    procedure btnLoadPriceClick(Sender: TObject);
    procedure edtPlantMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edtCountryPropertiesCloseUp(Sender: TObject);
    procedure edtPlantKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtTypePropertiesCloseUp(Sender: TObject);
    procedure edtPlantPropertiesCloseUp(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
  private
    { Private declarations }
  public
    IDPrice, IDPlant, IDType: Integer;
    DatePrice: TDateTime;
    procedure ShowCountry(id_locate: Integer = 0);
    procedure ShowPlant(id_locate: Integer = 0);
    procedure ShowPriceDetail(id_locate: Integer = 0);
    procedure ShowType(id_locate: Integer = 0);
    procedure UpdatePrice;
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses PGSQL, UPasswd, UFImport, UDataModule1;

procedure TFramePriceDetail.btnDelClick(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите удалить запись?', 'Вопрос',
    MB_YESNO + MB_ICONWARNING) = mrYes then
  begin
    with Query1 do
    begin
      Close;
      SQL.Text := 'delete from документы.прайс_деталь where id=' +
        QueryPriceDetail.FieldByName('id').AsString;
      ExecSQL;
      ShowPriceDetail();
    end;
  end;
end;

procedure TFramePriceDetail.btnLoadPriceClick(Sender: TObject);
var
  i: Integer;
  IDSort: Integer;
begin
  if (edtCountry.Text <> '') and (edtType.Text <> '') and (edtPlant.Text <> '')
  then
  begin
    if IDPrice = 0 then
    begin
      with Query1 do
      begin
        IDPrice := PGSQL.NewID('"документы"."прайс_id_seq"');
        Close;
        SQL.Text :=
          'INSERT INTO "документы"."прайс" (id, "код_пользователя", "дата_прайса",  '
          + ' "код_плантации", "код_типа") VALUES (:id, :код_пользователя, :дата_прайса, '
          + ' :код_плантации, :код_типа);';
        ParamByName('id').AsInteger := IDPrice;
        ParamByName('код_пользователя').AsInteger := FPasswd.ID_USER;
        ParamByName('дата_прайса').AsDateTime := edtDate.Date;
        ParamByName('код_плантации').AsInteger := edtPlant.EditValue;
        ParamByName('код_типа').AsInteger := edtType.EditValue;
        ExecSQL;
      end;
    end;
    Application.CreateForm(TFImport, FImport);
    with FImport do
    begin
      id_save := False;
      n_IDType := edtType.EditValue;
      n_IDCountry := edtCountry.EditValue;
      ShowModal;
      if id_save = true then
      begin
        try
          with Query1 do
          begin
            Close;
            // sql.Text :=
            // 'INSERT INTO "документы"."прайс_деталь"("код_прайса", "код_сорта", '
            // + '  "цена", "длина", "код_пользователя") ' +
            // ' VALUES (:код_прайса, :код_сорта, :цена, :длина,' +
            // ' :код_пользователя);';
            SQL.Text :=
              'INSERT INTO "документы"."прайс_деталь"("код_прайса", "код_сорта", '
              + '  "цена", "длина", "код_пользователя") ' + ' VALUES ';
            // содержимое
            for i := 1 to GridOrder.RowCount - 1 do
            begin
              SQL.Add('(' + IntToStr(IDPrice) + ', ' + Trim(GridOrder.Cells[3,
                i]) + ',' + StringReplace(Trim(GridOrder.Cells[2, i]), ',', '.',
                []) + ', ' + Trim(GridOrder.Cells[1, i]) + ',' + ' ' +
                IntToStr(FPasswd.ID_USER) + '),');
              // 'INSERT INTO "документы"."прайс_деталь"("код_прайса", "код_сорта", '
              // + '  "цена", "длина", "код_пользователя") ' +
              // ' VALUES (:код_прайса, :код_сорта, :цена, :длина,' +
              // ' :код_пользователя);';
              //
              //
              // ParamByName('код_прайса').AsInteger := IDPrice;
              // // ParamByName('код_плантации').AsInteger := edtPlant.EditValue;
              // ParamByName('код_сорта').AsString := Trim(GridOrder.Cells[3, i]);
              // ParamByName('длина').AsString := Trim(GridOrder.Cells[1, i]);
              // ParamByName('цена').AsString := Trim(GridOrder.Cells[2, i]);
              // ParamByName('код_пользователя').AsInteger := FPasswd.ID_USER;
            end;
            SQL.Text := Copy(SQL.Text, 1, length(Trim(SQL.Text)) - 1);
            ExecSQL;
          end;
          ShowPriceDetail();
        except
        end;
      end;
    end;
  end
  else
  begin
    Application.MessageBox('Не заполненны основные поля', 'Ошибка',
      MB_OK + MB_ICONERROR);
  end;
end;

procedure TFramePriceDetail.btnRefreshClick(Sender: TObject);
begin
  ShowPriceDetail(QueryPriceDetail.FieldByName('id').AsInteger);
end;

procedure TFramePriceDetail.edtCountryPropertiesCloseUp(Sender: TObject);
begin
  UpdatePrice;
end;

procedure TFramePriceDetail.edtPlantKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    UpdatePrice;
end;

procedure TFramePriceDetail.edtPlantMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  edtPlant.SelectAll;
end;

procedure TFramePriceDetail.edtPlantPropertiesCloseUp(Sender: TObject);
begin
  // UpdatePrice;
end;

procedure TFramePriceDetail.edtTypePropertiesCloseUp(Sender: TObject);
begin
  // UpdatePrice;
end;

procedure TFramePriceDetail.ShowCountry(id_locate: Integer = 0);
begin
  with QueryCountry do
  begin
    Close;
    SQL.Text := 'select * from "продукция"."страны" order by приоритет';
    Open;
    if id_locate = 0 then
      edtCountry.EditValue := Fields[0].AsInteger
    else
      edtCountry.EditValue := id_locate;
  end;
end;

procedure TFramePriceDetail.ShowPlant(id_locate: Integer = 0);
begin
  with QueryPlant do
  begin
    Close;
    SQL.Text := 'select * from "продукция"."плантации"  order by uni_name';
    Open;
    if id_locate = 0 then
      edtPlant.EditValue := Fields[0].AsInteger
    else
      edtPlant.EditValue := id_locate;
  end;
end;

procedure TFramePriceDetail.ShowPriceDetail(id_locate: Integer = 0);
begin
  with QueryPriceDetail do
  begin
    SQL.Clear;
    SQL.Add(' SELECT');
    SQL.Add(' pd.id,');
    SQL.Add(' pd."код_прайса",');
    SQL.Add(' pd."код_сорта",');
    SQL.Add(' pd."цена",');
    SQL.Add(' pd."длина",');
    SQL.Add(' pd."код_пользователя",');
    SQL.Add(' s.uni_name Сорт');
    SQL.Add(' FROM');
    SQL.Add(' "документы"."прайс_деталь" pd');
    SQL.Add(' INNER JOIN "продукция"."сорта" s ON (pd."код_сорта" = s.id)');
    SQL.Add(' where код_прайса=:код_прайса');
    ParamByName('код_прайса').Value := IDPrice;
    Open;
  end;
end;

procedure TFramePriceDetail.ShowType(id_locate: Integer = 0);
begin
  with QueryType do
  begin
    Close;
    SQL.Text := 'select * from "продукция"."типы" order by приоритет';
    Open;
    if id_locate = 0 then
      edtType.EditValue := Fields[0].AsInteger
    else
      edtType.EditValue := id_locate;
  end;
end;

procedure TFramePriceDetail.UpdatePrice;
begin
  if IDPrice <> 0 then
  begin
    // ShowMessage(DateToStr(DatePrice));
    // ShowMessage(DateToStr(edtDate.Date));
    // ShowMessage(IntToStr(IDPlant));
    // ShowMessage(IntToStr(IDType));
    if (DateToStr(DatePrice) <> DateToStr(edtDate.Date)) or
      (IDPlant <> edtPlant.EditValue) or (IDType <> edtType.EditValue) then
    begin
      if Application.MessageBox
        ('Вы действительно хотите изменить основные сведения Прайс-листа?',
        'Вопрос', MB_YESNO + MB_ICONWARNING) = mrYes then
      begin
        if edtPlant.Text <> '' then
        begin
          with Query1 do
          begin
            Close;
            SQL.Clear;
            SQL.Add(' UPDATE "документы"."прайс"');
            SQL.Add(' SET "код_пользователя" = :код_пользователя,');
            SQL.Add(' "дата_прайса" = :дата_прайса,');
            SQL.Add(' "код_плантации" = :код_плантации,');
            SQL.Add(' "код_типа" = :код_типа');
            SQL.Add(' WHERE id = :id;');
            ParamByName('код_пользователя').AsInteger := FPasswd.ID_USER;
            ParamByName('дата_прайса').AsDateTime := edtDate.Date;
            ParamByName('код_плантации').AsInteger := edtPlant.EditValue;
            ParamByName('код_типа').AsInteger := edtType.EditValue;
            ParamByName('id').AsInteger := IDPrice;
            ExecSQL;
          end;
        end;
      end;
    end;
  end;
end;

end.
