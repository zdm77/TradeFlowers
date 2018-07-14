unit UPackingCorrection;

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
  cxStyles,
  dxSkinsCore,
  
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxEdit,
  cxNavigator,
  Data.DB,
  cxDBData,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  MemDS,
  DBAccess,
  Uni,
  UFrameTopPanel,
  cxCalc,
  cxGridBandedTableView,
  cxGridDBBandedTableView,
  cxContainer,
  cxGroupBox,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue;

type
  TFPackingCorrection = class(TForm)
    FrameTopPanel1: TFrameTopPanel;
    QueryPackingCorrection: TUniQuery;
    dsPackingCorrection: TDataSource;
    GridAvtoPacking: TcxGrid;
    GridAvtoPackingLevel1: TcxGridLevel;
    ViewPacking: TcxGridDBBandedTableView;
    ViewPackingcode: TcxGridDBBandedColumn;
    ViewPackingDBBandedColumn: TcxGridDBBandedColumn;
    ViewPackingDBBandedColumn1: TcxGridDBBandedColumn;
    ViewPackingDBBandedColumn2: TcxGridDBBandedColumn;
    ViewPackingDBBandedColumn3: TcxGridDBBandedColumn;
    ViewPackingDBBandedColumn4: TcxGridDBBandedColumn;
    ViewPackingDBBandedColumn5: TcxGridDBBandedColumn;
    ColumnИтог: TcxGridDBBandedColumn;
    ViewPacking_2: TcxGridDBBandedColumn;
    ViewPacking__: TcxGridDBBandedColumn;
    ColumnТип: TcxGridDBBandedColumn;
    Query1: TUniQuery;
    Query2: TUniQuery;
    Column1Стебель: TcxGridDBBandedColumn;
    QueryGroup: TUniQuery;
    dsGroup: TDataSource;
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedTableView1code: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1DBBandedColumn: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1DBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1_: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1__: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    procedure FormShow(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure FrameTopPanel1btnSelClick(Sender: TObject);
    procedure btnRazdelClick(Sender: TObject);
    procedure ViewPackingDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    s_id_tpd: Integer;
    procedure ShowCorrect(s_id_locate: Integer = 0);
    procedure ShowGroup;
    { Public declarations }
  end;

var
  FPackingCorrection: TFPackingCorrection;

implementation

{$R *.dfm}

uses
  UDataModule1,
  UNewCorrectPacking,
  UOsn;

procedure TFPackingCorrection.btnEditClick(Sender: TObject);
var
  new_val: Double;
begin
  Application.CreateForm(TFNewCorrectPacking, FNewCorrectPacking);
  with FNewCorrectPacking do
  begin
    // edtPriceOld.Text := QueryPackingCorrection.FieldByName('итог').AsString;
    // edtВесПоПакингу.Text := QueryPackingCorrection.FieldByName('вес').AsString;
    if QueryPackingCorrection.FieldByName('знак_корректировки').AsString <> ''
    then
    begin
      if QueryPackingCorrection.FieldByName('знак_корректировки').AsString = '-'
      then
        edtЗнакЦены.ItemIndex := 1;
    end;
    edtЦенаКоррект.Text := QueryPackingCorrection.FieldByName
      ('значение_корректировки').AsString;
    if QueryPackingCorrection.FieldByName('вес_знак_корректировки').AsString <> ''
    then
    begin
      if QueryPackingCorrection.FieldByName('вес_знак_корректировки').AsString = '-'
      then
        edtВесДействие.ItemIndex := 1;
    end;
    edtВесЗначение.Text := QueryPackingCorrection.FieldByName
      ('вес_значение_корректировки').AsString;
    ShowModal;
    if (FrameSave1.id_save = true) then
    begin
      with Query1 do
      begin
        Close;
        sql.Text := 'update "документы"."таможня_пакинг_деталь" set ' +
          ' знак_корректировки=' + QuotedStr(edtЗнакЦены.Text) +
          ', значение_корректировки=' + ':c' + ' , цена_корректировка=цена ' +
          edtЗнакЦены.Text + ':c' + ' , вес_знак_корректировки=' +
          QuotedStr(edtВесДействие.Text) + ', вес_значение_корректировки=' +
          ':v' + ' , вес_корректировка=вес ' + edtВесДействие.Text + ':v' +
          ' where код_подпакинг= ' + QueryPackingCorrection.FieldByName
          ('код_подпакинг').AsString + ' and длина=' +
          QueryPackingCorrection.FieldByName('длина').AsString;
        ParamByName('c').AsFloat := edtЦенаКоррект.Value;
        ParamByName('v').AsFloat := edtВесЗначение.Value;
        ExecSQL;
      end;
    end;
  end;
end;

procedure TFPackingCorrection.btnRazdelClick(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно отменить корректировку?',
    'Вопрос', MB_YESNO + MB_ICONWARNING) = mrYes then
  begin
    with Query1 do
    begin
      Close;
      sql.Text := 'UPDATE "документы"."таможня_пакинг_деталь"  ' +
        ' SET   цена_корректировка=цена,  "знак_корректировки" = null,' +
        '  "значение_корректировки"= 0,   вес_корректировка=вес,' +
        '  "вес_знак_корректировки" = Null,  "вес_значение_корректировки" = 0  '
        + ' where код_подпакинг= ' + QueryPackingCorrection.FieldByName
        ('код_подпакинг').AsString;
      ExecSQL;
      ShowCorrect;
    end;
  end;
end;

procedure TFPackingCorrection.FormShow(Sender: TObject);
begin
  ShowCorrect;
  ShowGroup;
end;

procedure TFPackingCorrection.FrameTopPanel1btnSelClick(Sender: TObject);
begin
  if Application.MessageBox
    ('Вы действительно хотите исполнить документ? Внимание! Все данные пакинга станут равными значениям корректировки.',
    'Вопрос', MB_YESNO + MB_ICONWARNING) = mrYes then
  begin
    with Query1 do
    begin
      Close;
      sql.Text := 'UPDATE "документы"."таможня_пакинг_деталь"  ' +
        ' SET  "цена" = цена_корректировка,  "знак_корректировки" = null,' +
        '  "значение_корректировки"= 0,  "вес" = вес_корректировка,' +
        '  "вес_знак_корректировки" = Null,  "вес_значение_корректировки" = 0  '
        + ' where код_подпакинг= ' + QueryPackingCorrection.FieldByName
        ('код_подпакинг').AsString;
      ExecSQL;
      ShowCorrect;
    end;
  end;
end;

procedure TFPackingCorrection.ShowCorrect(s_id_locate: Integer = 0);
begin
  with QueryPackingCorrection do
  begin
    Close;
    sql.Text :=
      'SELECT t.code,  t.name AS "тип",  tpd."длина",  tpd."код_подпакинг",' +
      ' sum(tpd."цена" * tpd."кол_во_стеблей") as итог,' +
      ' sum(tpd."кол_во_стеблей") as стеблей,' +
      '   sum(tpd."вес" * tpd."кол_во_стеблей") as вес,' +
      '  COALESCE(tpd."знак_корректировки", '''') || '''' || tpd."значение_корректировки" as корректировка,'
      + '   sum(tpd."цена_корректировка" * tpd."кол_во_стеблей") as' +
      '   итог_корректировки, COALESCE(tpd."вес_знак_корректировки", '''') || '''' ||'
      + '   tpd."вес_значение_корректировки" as вес_корректировка,' +
      '   sum(tpd."вес_корректировка" * tpd."кол_во_стеблей") as' +
      '   вес_итог_корректировки,tp."тип" as группа, tpd."знак_корректировки", '
      + ' tpd."значение_корректировки",tpd.вес_значение_корректировки, tpd.вес_знак_корректировки'
      + ' ,sum(tpd."цена_корректировка" * tpd."кол_во_стеблей")/ sum(tpd."кол_во_стеблей") as цена_стебля'
      + ' FROM "продукция"."продукция" p ' +
      '   INNER JOIN "продукция"."типы" t ON (p."код_типа" = t.id)' +
      '   INNER JOIN "документы"."таможня_пакинг_деталь" tpd ON (p.id =' +
      '   tpd."код_товара") ' +
      ' inner join "документы"."таможня_подпакинг" tp on tp.id=tpd."код_подпакинг"'
      + ' where tp."код_пакинга"=' + IntToStr(s_id_tpd) +
      ' GROUP BY t.code,  t.name, tpd."длина",' +
      '   tpd."код_подпакинг", COALESCE(tpd."знак_корректировки", '''') || '''' ||'
      + '   tpd."значение_корректировки",  COALESCE(tpd."вес_знак_корректировки", '''') || '''' ||'
      + '   tpd."вес_значение_корректировки",  tp."тип",tpd."знак_корректировки",tpd."значение_корректировки"'
      + ' ,tpd.вес_значение_корректировки, tpd.вес_знак_корректировки' +
      ' order by tpd.длина';
    Open;
    ViewPacking.ViewData.Expand(false);
  end;
end;

procedure TFPackingCorrection.ShowGroup;
begin
  with QueryGroup do
  begin
    Close;
    Open;
  end;
end;

procedure TFPackingCorrection.ViewPackingDblClick(Sender: TObject);
begin
  btnEditClick(Sender);
end;

end.
