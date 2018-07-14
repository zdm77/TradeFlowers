unit UNewSubPacking;

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
  cxContainer,
  cxEdit,
  dxSkinsCore,
  
  Vcl.StdCtrls,
  cxLabel,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sTooledit,
  cxGroupBox,
  UFrameTopPanel,
  AdvEdit,
  Data.DB,
  MemDS,
  DBAccess,
  Uni,
  cxStyles,
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxNavigator,
  cxDBData,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  sCurrEdit,
  cxCalc,
  cxCurrencyEdit,
  cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue;

type
  TFNewSubPacking = class(TForm)
    GroupOsn: TcxGroupBox;
    lbl1: TcxLabel;
    edtTara: TAdvEdit;
    FrameTopPanel1: TFrameTopPanel;
    dsSubPacking: TDataSource;
    QuerySubPacking: TUniQuery;
    Query1: TUniQuery;
    GridAvtoPacking: TcxGrid;
    GridAvtoPackingDBTableView1: TcxGridDBTableView;
    GridAvtoPackingLevel1: TcxGridLevel;
    GridAvtoPackingDBTableView1_: TcxGridDBColumn;
    GridAvtoPackingDBTableView1DBColumn: TcxGridDBColumn;
    ColumnИтог: TcxGridDBColumn;
    GridAvtoPackingDBTableView1Column1: TcxGridDBColumn;
    edtCount: TsCalcEdit;
    lbl3: TLabel;
    ColumnВес: TcxGridDBColumn;
    edtVes: TsCalcEdit;
    Label1: TLabel;
    ColumnУпаковка: TcxGridDBColumn;
    ColumnВесУпаковки: TcxGridDBColumn;
    QueryUp: TUniQuery;
    dsUp: TUniDataSource;
    lbl4: TLabel;
    edtType: TcxLookupComboBox;
    procedure btnAddClick(Sender: TObject);
    procedure FrameTopPanel1btnSelClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GridAvtoPackingDBTableView1DblClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure ColumnИтогGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
  private
    { Private declarations }
  public
    s_id_sub_packing_ADD: Integer;
    s_id_packing_ADD: Integer;
    procedure ShowSubPacking(s_id_locate: string = '');
    procedure ShowUp(id_locate: Integer = 0);
    { Public declarations }
  end;

var
  FNewSubPacking: TFNewSubPacking;

implementation

{$R *.dfm}

uses
  UNewBoxForPacking,
  PGSQL,
  UNewPacking,
  UOsn,
  UDataModule1;

procedure TFNewSubPacking.btnAddClick(Sender: TObject);
begin
  if (edtTara.Text <> '  .  .    ') And (edtType.Text <> '') then
  begin
    if s_id_sub_packing_ADD = 0 then
    begin
      if Application.MessageBox('Подпакинг еще не сохранен. Сохранить?',
        'Вопрос', MB_YESNO + MB_ICONQUESTION) = mrYes then
      begin
        with Query1 do
        begin
          s_id_sub_packing_ADD :=
            PGSQL.NewID('"документы"."таможня_подпакинг_id_seq"');
          Close;
          sql.Text := 'INSERT INTO "документы"."таможня_подпакинг"' +
            '( id,  "код_пакинга",  "код_упаковки",  "тара","кол-во", вес_палета'
            + ') VALUES (:id,  :код_пакинга,  :код_упаковки, :тара, :c, :вес_палета);';
          ParamByName('id').AsInteger := s_id_sub_packing_ADD;
          ParamByName('код_пакинга').AsInteger := s_id_packing_ADD;
          ParamByName('код_упаковки').AsString := edtType.EditValue;
          ParamByName('тара').AsString := edtTara.Text;
          ParamByName('c').AsString := edtCount.Text;
          ParamByName('вес_палета').AsString := edtVes.Text;
          ExecSQL;
        end;
      end
      else
        Abort;
    end;
    Application.CreateForm(TFNewBoxForPacking, FNewBoxForPacking);
    with FNewBoxForPacking do
    begin
      // определяем номер коробки
      edtNumberBox.Text := IntToStr(QuerySubPacking.RecordCount + 1);
      s_id_sub_packing := s_id_sub_packing_ADD;
      ShowBox;
      s_id_up := edtType.EditValue;
      ShowModal;
      ShowSubPacking(edtNumberBox.Text);
    end;
  end
  else
    Application.MessageBox
      ('Не заполнены основные сведения. Продолжение не возможно.', 'Ошибка',
      MB_OK + MB_ICONERROR);
end;

procedure TFNewSubPacking.btnDelClick(Sender: TObject);
begin
  if Application.MessageBox
    ('Вы действительно хотите удалить коробку и все связанные с ним позиции?',
    'Вопрос', MB_YESNO + MB_ICONWARNING) = mrYes then
  begin
    with Query1 do
    begin
      Close;
      sql.Text :=
        'delete from  "документы"."таможня_пакинг_деталь" where код_подпакинг='
        + IntToStr(s_id_sub_packing_ADD) + ' and номер_коробки=' +
        QuerySubPacking.FieldByName('номер_коробки').AsString;
      ExecSQL;
      ShowSubPacking();
    end;
  end;
end;

procedure TFNewSubPacking.btnEditClick(Sender: TObject);
begin
  Application.CreateForm(TFNewBoxForPacking, FNewBoxForPacking);
  with FNewBoxForPacking do
  begin
    // определяем номер коробки
    edtNumberBox.Text := QuerySubPacking.FieldByName('номер_коробки').AsString;
    s_id_sub_packing := s_id_sub_packing_ADD;
    ShowBox(QuerySubPacking.FieldByName('код_типа_упаковки').AsInteger);
    s_id_up := edtType.EditValue;
    ShowModal;
    ShowSubPacking(edtNumberBox.Text);
  end;
end;

procedure TFNewSubPacking.btnRefreshClick(Sender: TObject);
begin
  ShowSubPacking();
end;

procedure TFNewSubPacking.ColumnИтогGetDisplayText
  (Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  // if AText <> '' then
  // AText := FormatCurr('0.00' + FNewPacking.Валюта, StrToCurr(AText));
end;

procedure TFNewSubPacking.FormShow(Sender: TObject);
begin
  with FOsn do
    case FNewPacking.edtВалюта.ItemIndex of
      0:
        begin
          ColumnИтог.Summary.FooterFormat := Доллар.Properties.DisplayFormat;
          ColumnИтог.RepositoryItem := Доллар;
        end;
      1:
        begin
          ColumnИтог.Summary.FooterFormat := Евро.Properties.DisplayFormat;
          ColumnИтог.RepositoryItem := Евро;
        end;
      2:
        begin
          ColumnИтог.Summary.FooterFormat := Рубль.Properties.DisplayFormat;
          ColumnИтог.RepositoryItem := Рубль;
        end;
    end;
  ShowSubPacking;
end;

procedure TFNewSubPacking.FrameTopPanel1btnSelClick(Sender: TObject);
begin
  with Query1 do
  begin
    Close;
    sql.Text := 'update "документы"."таможня_подпакинг" ' +
      ' set код_упаковки=:код_упаковки, "кол-во"=:c, тара=:тара, вес_палета=:вес_палета where id='
      + IntToStr(s_id_sub_packing_ADD);
    ParamByName('код_упаковки').AsString := edtType.EditValue;
    if edtTara.Text <> '' then
      ParamByName('тара').AsString := edtTara.Text
    else
      ParamByName('тара').AsString := edtTara.EmptyText;
    ParamByName('c').AsFloat := edtCount.Value;
    ParamByName('вес_палета').AsFloat := edtVes.Value;
    ExecSQL;
  end;
end;

procedure TFNewSubPacking.GridAvtoPackingDBTableView1DblClick(Sender: TObject);
begin
  btnEditClick(Sender);
end;

procedure TFNewSubPacking.ShowSubPacking(s_id_locate: string = '');
begin
  with QuerySubPacking do
  begin
    Close;
    sql.Text := 'SELECT   pd."номер_коробки", sum(pd."кол_во_стеблей") стеблей,'
      + '  sum(pd."цена"*pd."кол_во_стеблей") итог, sum(pd."вес"*pd."кол_во_стеблей") вес,'
      + ' count(pd.id) позиций, код_типа_упаковки, вес_упаковки,tu.name упаковка     '
      + ' FROM   "документы"."таможня_пакинг_деталь" pd' +
      ' left join "продукция"."тип_упаковки" tu on (tu.id=pd."код_типа_упаковки")'
      + '   where pd."код_подпакинг"=' + IntToStr(s_id_sub_packing_ADD);
    sql.Add(' group by pd."номер_коробки", код_типа_упаковки, вес_упаковки,tu.name '
      + ' order by номер_коробки');
    Open;
    Locate('номер_коробки', s_id_locate, []);
  end;
end;

procedure TFNewSubPacking.ShowUp(id_locate: Integer = 0);
begin
  with QueryUp do
  begin
    sql.CLear;
    sql.Add(' SELECT');
    sql.Add(' id,');
    sql.Add(' name');
    sql.Add(' FROM');
    sql.Add(' "продукция"."виды_упаковки" ;');
    Open;
    if id_locate <> 0 then
      edtType.EditValue := id_locate
    else
      edtType.EditValue := Fields[0].AsInteger;
  end;
end;

end.
