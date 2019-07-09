unit UNewBoxForPacking;

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
  UFrameTopPanel,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  dxSkinsCore,
  
  Vcl.StdCtrls,
  cxLabel,
  cxGroupBox,
  UFrameProduct,
  cxStyles,
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxNavigator,
  Data.DB,
  cxDBData,
  MemDS,
  DBAccess,
  Uni,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  cxSplitter,
  Vcl.Menus,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sCurrEdit,
  cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  cxButtons,
  AdvEdit,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue;

type
  TFNewBoxForPacking = class(TForm)
    GroupOsn: TcxGroupBox;
    lbl2: TcxLabel;
    edtNumberBox: TEdit;
    GroupProduct: TcxGroupBox;
    FrameProduct1: TFrameProduct;
    cxGroupBox1: TcxGroupBox;
    FrameTopPanel2: TFrameTopPanel;
    GridOrder: TcxGrid;
    ViewOrder: TcxGridDBTableView;
    GridLevelOrder: TcxGridLevel;
    dsDetail: TDataSource;
    QueryDetail: TUniQuery;
    QuerySel: TUniQuery;
    ViewOrdername: TcxGridDBColumn;
    ViewOrder__: TcxGridDBColumn;
    ColumnЦена: TcxGridDBColumn;
    cxspltr1: TcxSplitter;
    ViewOrderColumn1: TcxGridDBColumn;
    ColumnСумма: TcxGridDBColumn;
    ColumnВес: TcxGridDBColumn;
    dsBox: TUniDataSource;
    QueryBox: TUniQuery;
    cxLabel1: TcxLabel;
    Label1: TLabel;
    edtBox: TcxLookupComboBox;
    btnBoxAdd: TcxButton;
    edtWeight: TAdvEdit;
    procedure FormShow(Sender: TObject);
    procedure FrameProduct1lstTreeProductsDblClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure ViewOrderDblClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure edtBoxPropertiesEditValueChanged(Sender: TObject);
    procedure btnBoxAddClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    s_id_sub_packing: Integer;
    s_id_up: Integer;
    procedure ShowBox(s_id_locate: Integer = 0);
    procedure ShowDetail(s_id_locate: Integer = 0);
    procedure UpdDetail(s_id: Integer);
    { Public declarations }
  end;

var
  FNewBoxForPacking: TFNewBoxForPacking;

implementation

{$R *.dfm}

uses
  UNewBoxForPackingDetail,
  UDetailBoxPacking,
  UDataModule1,
  PGSQL,
  UOsn,
  UFrameBox,
  UNewPacking;

procedure TFNewBoxForPacking.btnBoxAddClick(Sender: TObject);
var
  s: TFrameBox;
begin
  s := TFrameBox.Create(nil);
  s.btnAddClick(Sender);
  ShowBox;
  s.Free;
end;

procedure TFNewBoxForPacking.btnDelClick(Sender: TObject);
begin
  PGSQL.StandartDelete(QueryDetail.FieldByName('id').AsString,
    '"документы"."таможня_пакинг_деталь"', QueryDetail, '', '', '', '');
end;

procedure TFNewBoxForPacking.btnEditClick(Sender: TObject);
begin
  with FrameProduct1 do
  begin
    Application.CreateForm(TFDetailBoxPacking, FDetailBoxPacking);
    with FDetailBoxPacking do
    begin
      lblProduct.Caption := 'Товар: ' + QueryDetail.FieldByName('name')
        .AsString;
      edtPrice.Text := QueryDetail.FieldByName('цена').AsString;
      edtStems.Text := QueryDetail.FieldByName('кол_во_стеблей').AsString;
      edtWeight.Text := QueryDetail.FieldByName('вес').AsString;
      edtLength.Text := QueryDetail.FieldByName('длина').AsString;
      ShowModal;
      if FrameSave1.id_save = true then
      begin
        UpdDetail(QueryDetail.FieldByName('id').AsInteger);
      end;
    end;
  end;
end;

procedure TFNewBoxForPacking.edtBoxPropertiesEditValueChanged(Sender: TObject);
begin
  edtWeight.Text := QueryBox.FieldByName('Вес').AsString;
end;

procedure TFNewBoxForPacking.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with QuerySel do
  begin
    Close;
    SQL.Text :=
      'update "документы"."таможня_пакинг_деталь" set код_типа_упаковки=:u' +
      ', вес_упаковки=:v where id in (SELECT  pd.id ' +
      ' FROM  "документы"."таможня_пакинг_деталь" pd' +
      ' where pd."код_подпакинг"=' + IntToStr(s_id_sub_packing) +
      ' and pd.номер_коробки=' + edtNumberBox.Text + ')';
    ParamByName('u').AsInteger := edtBox.EditValue;
    ParamByName('v').AsString := edtWeight.Text;
    ExecSQL;
  end;
end;

procedure TFNewBoxForPacking.FormShow(Sender: TObject);
begin
  with FOsn do
    case FNewPacking.edtВалюта.ItemIndex of
      0:
        begin
          ColumnСумма.Summary.FooterFormat := Доллар.Properties.DisplayFormat;
          ColumnСумма.RepositoryItem := Доллар;
          ColumnЦена.RepositoryItem := Доллар;
        end;
      1:
        begin
          ColumnСумма.Summary.FooterFormat := Евро.Properties.DisplayFormat;
          ColumnСумма.RepositoryItem := Евро;
          ColumnЦена.RepositoryItem := Евро;
        end;
      2:
        begin
          ColumnСумма.Summary.FooterFormat := Рубль.Properties.DisplayFormat;
          ColumnСумма.RepositoryItem := Рубль;
          ColumnЦена.RepositoryItem := Рубль;
        end;
    end;
  FrameProduct1.ShowProduct();
  ShowDetail;
end;

procedure TFNewBoxForPacking.FrameProduct1lstTreeProductsDblClick
  (Sender: TObject);
var
  id_type: Integer;
begin
  with FrameProduct1 do
  begin
    if QueryProduct.FieldByName('код_структуры').AsInteger = 6 then
    begin
      // смотрим нет ли такого -же
      with Query1 do
      begin
        Close;
        SQL.Text := 'select * from "документы"."таможня_пакинг_деталь" ' +
          ' where код_подпакинг=:код_подпакинг and код_товара=:код_товара' +
          ' and номер_коробки=:номер_коробки';
        ParamByName('номер_коробки').AsString := edtNumberBox.Text;
        ParamByName('код_подпакинг').AsInteger := s_id_sub_packing;
        ParamByName('код_товара').AsInteger := QueryProduct.FieldByName('id')
          .AsInteger;
        Open;
        if Fields[0].AsString <> '' then
        begin
          if Application.MessageBox
            ('Товар уже добавлен в коробку. Редактировать имеющиеся данные?',
            'Вопрос', MB_YESNO + MB_ICONQUESTION) = mrYes then
          begin
            // редактируем данные
            Application.CreateForm(TFDetailBoxPacking, FDetailBoxPacking);
            with FDetailBoxPacking do
            begin
              lblProduct.Caption := 'Товар: ' + QueryProduct.FieldByName
                ('name').AsString;
              edtPrice.Text := FieldByName('цена').AsString;
              edtStems.Text := FieldByName('кол_во_стеблей').AsString;
              ShowModal;
              if FrameSave1.id_save = true then
              begin
                UpdDetail(FieldByName('id').AsInteger);
                Abort;
              end;
            end;
          end
          else
            Abort;
        end;
      end;
      Application.CreateForm(TFDetailBoxPacking, FDetailBoxPacking);
      with FDetailBoxPacking do
      begin
{$REGION 'Определяем вес'}
        with QuerySel do
        begin
          SQL.Clear;
          SQL.Add(' SELECT sz.name,');
          SQL.Add('        tsv."вес"');
          SQL.Add(' FROM "продукция"."продукция" p');
          SQL.Add('      INNER JOIN "продукция"."типы" t ON (p."код_типа" = t.id)');
          SQL.Add('      INNER JOIN "продукция"."типы_свойства" ts ON (t.id = ts."код_типа")');
          SQL.Add('      INNER JOIN "продукция"."продукт_свойство" ps ON (p.id = ps."код_товара")');
          SQL.Add('      INNER JOIN "продукция"."свойства_значения" sz ON (');
          SQL.Add('      ps."код_значения_свойства" = sz.id) AND (ts.id = sz."код_свойства")');
          SQL.Add('      INNER JOIN "продукция"."тип_длина_вес" tsv ON (t.id = tsv."код_типа")');
          SQL.Add(' WHERE upper(ts.name) = ''ДЛИНА'' and');
          SQL.Add('       tsv."длина" = sz.name and');
          SQL.Add('       tsv."код_упаковки"=' + IntToStr(s_id_up) + ' and');
          SQL.Add('       tsv."код_страны"=' +
            IntToStr(FrameProduct1.GetCountry
            (FrameProduct1.QueryProduct.FieldByName('id').AsInteger)) + ' and');
          SQL.Add('       tsv."код_типа"=' +
            FrameProduct1.QueryProduct.FieldByName('код_типа').AsString
            + ' and');
          SQL.Add('       p.id =' + QueryProduct.FieldByName('id').AsString);
          Open;
          edtWeight.Text := FieldByName('вес').AsString;
          edtLength.Text := FieldByName('name').AsString;
        end;
{$ENDREGION};
        lblProduct.Caption := 'Товар: ' + QueryProduct.FieldByName
          ('name').AsString;
        edtPrice.Text := QueryProduct.FieldByName('цена').AsString;
        ShowModal;
        if FrameSave1.id_save = true then
        begin
          with Query1 do
          begin
            Close;
            SQL.Text := 'INSERT INTO "документы"."таможня_пакинг_деталь"' +
              '("код_подпакинг",  "код_товара",  "кол_во_стеблей",' +
              '  "цена",номер_коробки, цена_корректировка, вес, вес_корректировка,длина )'
              + '  VALUES (  :код_подпакинг,  :код_товара, :кол_во_стеблей,  :цена, '
              + ' :номер_коробки, :цена_корректировка,:вес, :вес_корректировка,:длина );';
            ParamByName('код_подпакинг').AsInteger := s_id_sub_packing;
            ParamByName('код_товара').AsInteger :=
              QueryProduct.FieldByName('id').AsInteger;
            ParamByName('кол_во_стеблей').Value := edtStems.Value;
            ParamByName('цена').Value := edtPrice.Value;
            ParamByName('цена_корректировка').Value := edtPrice.Value;
            ParamByName('номер_коробки').AsString := edtNumberBox.Text;
            ParamByName('вес').Value := edtWeight.Text;
            ParamByName('вес_корректировка').Value := edtWeight.Text;
            ParamByName('длина').AsString := edtLength.Text;
            ExecSQL;
            ShowDetail;
          end;
        end;
      end;
    end;
  end;
end;

procedure TFNewBoxForPacking.ShowBox(s_id_locate: Integer = 0);
begin
  with QueryBox do
  begin
    Close;
    SQL.Text := 'select * from "продукция"."тип_упаковки" ';
    Open;
    if s_id_locate = 0 then
      edtBox.EditValue := Fields[0].AsInteger
    else
      edtBox.EditValue := s_id_locate;
  end;
end;

procedure TFNewBoxForPacking.ShowDetail(s_id_locate: Integer = 0);
begin
  with QueryDetail do
  begin
    Close;
    SQL.Text :=
      'SELECT  p.name,  pd.id, pd.вес, pd.кол_во_стеблей* pd.вес as итог_вес, pd.длина, pd."код_подпакинг",  pd."код_товара",'
      + ' pd."кол_во_стеблей",  pd."цена",  t.code, pd."кол_во_стеблей"*pd."цена" as сумма '
      + ' FROM  "документы"."таможня_пакинг_деталь" pd' +
      '  INNER JOIN "продукция"."продукция" p ON (pd."код_товара" = p.id)' +
      ' INNER JOIN "продукция"."типы" t ON (p."код_типа" = t.id)' +
      ' where pd."код_подпакинг"=' + IntToStr(s_id_sub_packing) +
      ' and pd.номер_коробки=' + edtNumberBox.Text;
    Open;
    Locate('id', s_id_locate, []);
  end;
  // TODO -cMM: TFNewBoxForPacking.ShowDetail default body inserted
end;

procedure TFNewBoxForPacking.UpdDetail(s_id: Integer);
begin
  with FDetailBoxPacking do
  begin
    with QuerySel do
    begin
      Close;
      SQL.Text := 'UPDATE  "документы"."таможня_пакинг_деталь"  ' +
        'SET  "кол_во_стеблей" = :кол_во_стеблей,  "цена" = :цена, вес=:вес' +
        '  WHERE id = :id;';
      ParamByName('id').AsInteger := s_id;
      ParamByName('кол_во_стеблей').Value := edtStems.Text;
      ParamByName('цена').Value := edtPrice.Text;
      ParamByName('вес').Value := edtWeight.Text;
      ExecSQL;
      ShowDetail(QueryDetail.FieldByName('id').AsInteger);
    end;
  end;
end;

procedure TFNewBoxForPacking.ViewOrderDblClick(Sender: TObject);
begin
  btnEditClick(Sender);
end;

end.
