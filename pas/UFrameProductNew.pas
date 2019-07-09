unit UFrameProductNew;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
      
    
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
     
     
     
   cxCustomData, cxStyles, cxTL, cxLabel, cxMaskEdit,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxDBTL, cxTLData, cxClasses,
  Vcl.ImgList, Data.DB, MemDS, DBAccess, Uni, UFrameSearch, UFrameTopPanel,
  cxCheckBox, dxSkinscxPCPainter, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxGridCustomView, cxGrid, Vcl.StdCtrls, Vcl.ExtCtrls,
  dxSkinOffice2007Blue, dxSkinsDefaultPainters, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  System.ImageList;

type
  TFrameProductNew = class(TFrame)
    chkDel: TcxCheckBox;
    FrameTopPanel1: TFrameTopPanel;
    FrameSearch1: TFrameSearch;
    QueryProduct: TUniQuery;
    dsProduct: TDataSource;
    il1: TImageList;
    Style1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    Query1: TUniQuery;
    dsTree: TDataSource;
    QueryTree: TUniQuery;
    GridProduct: TcxGrid;
    ViewProduct: TcxGridDBTableView;
    ColumnPlant: TcxGridDBColumn;
    ColumnSort: TcxGridDBColumn;
    ColumnPrice: TcxGridDBColumn;
    ColumnDlina: TcxGridDBColumn;
    ColumnDate: TcxGridDBColumn;
    GridProductLevel1: TcxGridLevel;
    Query2: TUniQuery;
    ColumnCountry: TcxGridDBColumn;
    ColumnType: TcxGridDBColumn;
    chkGroup: TcxCheckBox;
    chkLast: TcxCheckBox;
    procedure chkDetailClick(Sender: TObject);
    procedure lstTreeProductsClick(Sender: TObject);
    procedure chkGroupClick(Sender: TObject);
    procedure btnLoadPriceClick(Sender: TObject);
    procedure chkLastClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ShowProduct;
    procedure ShowTree;
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses UFImport, UDataModule1, PGSQL, UPasswd;

procedure TFrameProductNew.btnLoadPriceClick(Sender: TObject);
var
  IDType, IDPlant, IDSort, IDZakup: Integer;
  i: Integer;
  s: string;
begin
  if FImport = nil then
    Application.CreateForm(TFImport, FImport);
  with FImport do
  begin
    id_save := False;
    // IDType := 0;
    // IDPlant := 0;
    // IDSort := 0;
    ShowModal;
    if id_save = True then
    begin
      with Query1 do
      begin
        // // определяем тип
        // if GridOrder.Cells[1, 1] <> '' then
        // begin
        // Close;
        // sql.Text := 'select id from продукция.типы where uni_name=:uni_name';
        // ParamByName('uni_name').AsString := Trim(GridOrder.Cells[1, 1]);
        // Open;
        // if Fields[0].AsString <> '' then
        // begin
        // IDType := Fields[0].AsInteger;
        // // определяем плантацию/поставщика
        // if GridOrder.Cells[1, 2] <> '' then
        // begin
        // Close;
        // sql.Text :=
        // 'select id from продукция.плантации where UPPER(uni_name)=:uni_name';
        // ParamByName('uni_name').AsString :=
        // Trim(AnsiUpperCase(GridOrder.Cells[1, 2]));
        // Open;
        // if Fields[0].AsString <> '' then
        // begin
        // IDPlant := Fields[0].AsInteger;
        // end
        // // плантация не найдена
        // else
        // begin
        // s := 'Плантация -' + GridOrder.Cells[1, 2] +
        // ' не найдена в структуре. Добавить?.';
        // if Application.MessageBox(pchar(s), 'Предупреждение',
        // MB_YESNO + MB_ICONERROR) = mrYes then
        // begin
        // IDPlant := PGSQL.NewID('продукция.плантации_id_seq');
        // Close;
        // sql.Text :=
        // 'insert into продукция.плантации (id, name, brand, uni_name, reg_name, '
        // + ' код_страны, примечание, адрес, телефон1,телефон2,email,код_страны_факт, '
        // + ' код_города, факс) values ' +
        // ' (:id, :name, :brand, :uni_name, :reg_name, :код_страны, :примечание, '
        // + ' :адрес, :телефон1, :телефон2, :email, :код_страны_факт, :код_города, :факс)';
        // ParamByName('id').AsInteger := IDPlant;
        // ParamByName('name').AsString := Trim(GridOrder.Cells[1, 2]);
        // ParamByName('uni_name').AsString :=
        // Trim(GridOrder.Cells[1, 2]);
        // ParamByName('reg_name').AsString :=
        // Trim(GridOrder.Cells[1, 2]);
        // ParamByName('brand').AsString := Trim(GridOrder.Cells[1, 2]);
        // ParamByName('код_страны').AsInteger := 1;
        // ExecSQL;
        // end
        // else
        // Abort;
        // end;
        // end
        // else
        // begin
        // Application.MessageBox
        // ('Поле "Плантация/Поставщик" пустое. Продолжение не возможно',
        // 'Ошибка', MB_OK + MB_ICONERROR);
        // Abort;
        // end;
        // end
        // else
        // begin
        // s := 'Тип -' + GridOrder.Cells[1, 0] +
        // ' не найден в структуре. Продолжение не возможно.';
        // Application.MessageBox(pchar(s), 'Ошибка', MB_OK + MB_ICONERROR);
        // Abort;
        // end;
        // end
        // else
        // begin
        // Application.MessageBox('Поле "тип" пустое. Продолжение не возможно',
        // 'Ошибка', MB_OK + MB_ICONERROR);
        // Abort;
        // end;
        // if IDPlant <> 0 then
        // begin
        // // проверяем
        // for i := 4 to GridOrder.RowCount - 1 do
        // begin
        // Close;
        // sql.Text :=
        // 'select id from продукция.сорта where UPPER(uni_name)=:uni_name';
        // ParamByName('uni_name').AsString :=
        // Trim(AnsiUpperCase(GridOrder.Cells[0, i]));
        // Open;
        // if Fields[0].AsString <> '' then
        // begin
        // IDSort := Fields[0].AsInteger;
        // end
        // else
        // begin
        // s := 'Сорт - (' + GridOrder.Cells[0, i] +
        // ') не найдена в структуре. Добавить?.';
        // if Application.MessageBox(pchar(s), 'Предупреждение',
        // MB_YESNO + MB_ICONERROR) = mrYes then
        // begin
        // IDSort := PGSQL.NewID('продукция.сорта_id_seq');
        // Close;
        // sql.Text :=
        // 'insert into продукция.сорта (id, name, uni_name, reg_name, стеблей, '
        // + ' код_типа, комментарий) values ' +
        // ' (:id, :name, :uni_name, :reg_name, :стеблей, :код_типа,:комментарий)';
        // ParamByName('id').AsInteger := IDSort;
        // ParamByName('name').AsString := Trim(GridOrder.Cells[0, i]);
        // ParamByName('uni_name').AsString := Trim(GridOrder.Cells[0, i]);
        // ParamByName('reg_name').AsString := Trim(GridOrder.Cells[0, i]);
        // // ParamByName('стеблей').AsString := edtQuantity.Text;
        // // s_id_type := edtType.EditValue;
        // ParamByName('код_типа').AsInteger := IDType;
        // // ParamByName('комментарий').AsString := mmoDescr.Text;
        // ExecSQL;
        // end
        // else
        // Abort;
        // end;
        // end;
        // end;
        // проверяем сорта
        // ShowMessage(IntToStr(GridOrder.RowCount));
        for i := 1 to GridOrder.RowCount - 1 do
        begin
          Close;
          sql.Text :=
            'select id from продукция.сорта where UPPER(uni_name)=:uni_name';
          ParamByName('uni_name').AsString :=
            Trim(AnsiUpperCase(GridOrder.Cells[0, i]));
          Open;
          if Fields[0].AsString <> '' then
          begin
            IDSort := Fields[0].AsInteger;
          end
          else
          begin
            s := 'Сорт - (' + GridOrder.Cells[0, i] +
              ') не найдена в структуре. Добавить?.';
            if Application.MessageBox(pchar(s), 'Предупреждение',
              MB_YESNO + MB_ICONERROR) = mrYes then
            begin
              IDSort := PGSQL.NewID('продукция.сорта_id_seq');
              Close;
              sql.Text :=
                'insert into продукция.сорта (id, name, uni_name, reg_name, стеблей, '
                + ' код_типа, комментарий) values ' +
                ' (:id, :name, :uni_name, :reg_name, :стеблей, :код_типа,:комментарий)';
              ParamByName('id').AsInteger := IDSort;
              ParamByName('name').AsString := Trim(GridOrder.Cells[0, i]);
              ParamByName('uni_name').AsString := Trim(GridOrder.Cells[0, i]);
              ParamByName('reg_name').AsString := Trim(GridOrder.Cells[0, i]);
              // ParamByName('стеблей').AsString := edtQuantity.Text;
              // s_id_type := edtType.EditValue;
              ParamByName('код_типа').AsInteger := n_IDType;
              // ParamByName('комментарий').AsString := mmoDescr.Text;
              ExecSQL;
            end
            else
              Abort;
          end;
        end;
        // если все ок добавляем закупку
        // тело
        IDZakup := PGSQL.NewID('"документы"."закупки_id_seq"');
        Close;
        sql.Text :=
          'INSERT INTO "документы"."закупки"(id, "код_пользователя", "дата_закупки",  '
          + ' "мнемо") VALUES (:id, :код_пользователя, :дата_закупки, :мнемо);';
        ParamByName('id').AsInteger := IDZakup;
        ParamByName('код_пользователя').AsInteger := FPasswd.ID_USER;
        // ParamByName('дата_закупки').AsDateTime := edtDate.DateTime;
        ParamByName('мнемо').AsInteger := 1;
        ExecSQL;
        Close;
        sql.Text :=
          'INSERT INTO "документы"."закупки_деталь"("код_закупки", "код_плантации", '
          + ' "код_сорта", "цена", "длина", "код_пользователя") ' +
          ' VALUES (:код_закупки, :код_плантации, :код_сорта, :цена, :длина,' +
          ' :код_пользователя);';
        Query2.Close;
        Query2.sql.Text :=
          'select id from продукция.сорта where UPPER(uni_name)=:uni_name';
        // содержимое
        for i := 1 to GridOrder.RowCount - 1 do
        begin
          Close;
          Query2.Close;
          Query2.ParamByName('uni_name').AsString :=
            Trim(AnsiUpperCase(GridOrder.Cells[0, i]));
          Query2.Open;
          IDSort := Query2.Fields[0].AsInteger;
          ParamByName('код_закупки').AsInteger := IDZakup;
          // ParamByName('код_плантации').AsInteger := edtPlant.EditValue;
          ParamByName('код_сорта').AsInteger := IDSort;
          ParamByName('длина').AsString := Trim(GridOrder.Cells[1, i]);
          ParamByName('цена').AsString := Trim(GridOrder.Cells[2, i]);
          ParamByName('код_пользователя').AsInteger := FPasswd.ID_USER;
          ExecSQL;
        end;
        Application.MessageBox('Импорт завершен', 'Сообщение', MB_OK);
      end;
    end;
  end;
end;

procedure TFrameProductNew.chkGroupClick(Sender: TObject);
begin
  ShowProduct;
end;

procedure TFrameProductNew.chkLastClick(Sender: TObject);
begin
  ShowProduct;
end;

procedure TFrameProductNew.chkDetailClick(Sender: TObject);
begin
  ShowProduct;
end;

procedure TFrameProductNew.lstTreeProductsClick(Sender: TObject);
begin
  ShowProduct;
end;

procedure TFrameProductNew.ShowProduct;
begin
  with QueryProduct do
  begin
    // if chkDetail.Checked = False then
    // begin
    // // // GridProduct.Visible := false;
    // // // lstTreeProducts.Visible := True;
    // // Close;
    // // sql.Text :=
    // // 'select * from "продукция"."продукция1" order by id, pid, uni_name';
    // // Open;
    // end
    // else
    // begin
    // GridProduct.Visible := True;
    // lstTreeProducts.Visible := false;
    // Close;
    // sql.Clear;
    // sql.Add(' SELECT');
    // sql.Add(' zd.id, ');
    // sql.Add(' zd."код_закупки",');
    // sql.Add(' zd."код_плантации",');
    // sql.Add(' zd."код_сорта",');
    // sql.Add(' zd."цена",');
    // sql.Add(' zd.fb,');
    // sql.Add(' zd."длина",');
    // sql.Add(' zd."стеблей",');
    // sql.Add(' zd."код_пользователя",');
    // sql.Add(' zd.no_compras,');
    // sql.Add(' zd."код_деталь_заказ",');
    // sql.Add(' zd."код_заказа",');
    // sql.Add(' p.name,');
    // sql.Add(' p.uni_name,');
    // sql.Add(' pl.name,');
    // sql.Add('  z."дата_закупки"');
    // sql.Add(' FROM');
    // sql.Add(' "документы"."закупки_деталь" zd');
    // sql.Add(' INNER JOIN "продукция"."продукция1" p ON (zd."код_сорта" = p.id)');
    // sql.Add(' INNER JOIN "продукция"."плантации" pl ON (zd."код_плантации" = pl.id)');
    // sql.Add(' INNER JOIN "документы"."закупки" z ON (zd."код_закупки" = z.id)');
    // sql.Add(' where 1=1');
    // if chkLast.Checked = True then
    // begin
    // sql.Add(' and (zd.id, zd.код_сорта, zd."код_плантации", длина) in (');
    // sql.Add(' select max(id),');
    // sql.Add(' код_сорта,');
    // sql.Add(' код_плантации, длина');
    // sql.Add(' from "документы"."закупки_деталь"');
    // sql.Add(' group by код_сорта,код_плантации, длина');
    // sql.Add(' )');
    sql.Clear;
    sql.Add(' SELECT');
    sql.Add(' p."дата_прайса",');
    sql.Add(' p."код_плантации",');
    sql.Add(' pd."цена",');
    sql.Add(' pd."длина",');
    sql.Add(' pd."код_сорта",');
    sql.Add(' pl.uni_name Плантация,');
    sql.Add(' st.uni_name Страна,');
    sql.Add(' t.uni_name Тип,');
    sql.Add(' s.uni_name Сорт,');
    sql.Add(' pd."код_прайса",');
    sql.Add(' pl."код_страны",');
    sql.Add(' s."код_типа",');
    sql.Add(' pd.id');
    sql.Add(' FROM');
    sql.Add(' "документы"."прайс" p');
    sql.Add(' INNER JOIN "документы"."прайс_деталь" pd ON (p.id = pd."код_прайса")');
    sql.Add(' INNER JOIN "продукция"."плантации" pl ON (p."код_плантации" = pl.id)');
    sql.Add(' INNER JOIN "продукция"."страны" st ON (pl."код_страны" = st.id)');
    sql.Add(' INNER JOIN "продукция"."типы" t ON (p."код_типа" = t.id)');
    sql.Add(' INNER JOIN "продукция"."сорта" s ON (pd."код_сорта" = s.id)');
    sql.Add(' where 1=1');
    if chkLast.Checked = True then
    begin
      sql.Add(' and (p."дата_прайса",  pd.код_сорта, длина, p."код_плантации") in (');
      sql.Add(' select max(дата_прайса),');
      sql.Add(' код_сорта,');
      sql.Add(' длина,');
      sql.Add(' p1."код_плантации"');
      sql.Add(' from "документы"."прайс_деталь" pd1');
      sql.Add(' inner join "документы"."прайс" p1 on (p1.id=pd1."код_прайса")');
      sql.Add(' group by код_сорта, длина, код_плантации');
      sql.Add(' )');
    end;
    sql.Add(' order by Тип,  Страна,   Сорт, Плантация,  длина ');
    // end;
    Open;
    if chkGroup.Checked then
    begin
      ViewProduct.OptionsView.GroupByBox := True;
      ColumnType.Caption := 'Тип';
      ColumnCountry.Caption := 'Страна';
      ColumnSort.Caption := 'Сорт';
    end
    else
    begin
      ViewProduct.OptionsView.GroupByBox := False;
      ColumnType.Caption := '';
      ColumnCountry.Caption := '';
      ColumnSort.Caption := '';
    end;
  end;
end;

procedure TFrameProductNew.ShowTree;
begin
  // with QueryTree do
  // begin
  // Close;
  // sql.Text :=
  // 'select * from "продукция"."продукция1" order by id, pid, uni_name';
  // Open;
  // end;
end;

end.
