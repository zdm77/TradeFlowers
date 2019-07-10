unit UNewGroupProduct;
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
  AdvEdit,
  cxLabel,
  cxGroupBox,
  UFrameSave,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sCurrEdit,
  cxStyles,
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  DB,
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
  cxTextEdit,
  cxMaskEdit,
  cxButtonEdit,
  cxNavigator,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue;
type
  TFNewGroupProduct = class(TForm)
    FrameSave1 : TFrameSave;
    Group1 : TcxGroupBox;
    lblSum : TcxLabel;
    edtLength : TAdvEdit;
    lblFB : TcxLabel;
    lblCount : TcxLabel;
    lblPrice : TcxLabel;
    edtPrice : TAdvEdit;
    edtFB : TsCalcEdit;
    edtCount : TsCalcEdit;
    Group2 : TcxGroupBox;
    FrameTopPanel1 : TFrameTopPanel;
    dsMarking : TDataSource;
    QueryMarking : TUniQuery;
    cxGrid1 : TcxGrid;
    cxGridDBTableView1 : TcxGridDBTableView;
    cxGridDBTableView1name : TcxGridDBColumn;
    cxGridLevel1 : TcxGridLevel;
    Query1 : TUniQuery;
    edtOrder : TcxButtonEdit;
    lblOrder : TcxLabel;
    procedure edtCountKeyDown(Sender : TObject; var Key : Word;
                                 Shift : TShiftState);
    procedure FormShow(Sender : TObject);
    procedure FrameSave1btnSaveClick(Sender : TObject);
    procedure btnAddClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure btnRefreshClick(Sender : TObject);
    procedure edtOrderPropertiesButtonClick(Sender : TObject;
                                               AButtonIndex : Integer);
  private
    { Private declarations }
  public
    s_id_stand_detail : Integer;
    s_id_stand_edit : Integer;
    s_id_plant, s_id_sort : Integer;
    procedure InsUpdProduct(id_ins : Boolean);
    procedure ShowMarking(id_locate : Integer = 0);
    { Public declarations }
  end;

var
  FNewGroupProduct : TFNewGroupProduct;
implementation
{$R *.dfm}

uses
  PGSQL,
  USelect,
  USelectOrder;
procedure TFNewGroupProduct.btnAddClick(Sender : TObject);
var
  id : Integer;
begin
  if s_id_stand_detail = 0 then
    InsUpdProduct(true);
  Application.CreateForm(TFSelect, FSelect);
  with FSelect do
  begin
    lstTree.Visible := true;
    GridSelect.Visible := false;
    ShowSelect('"маркировки"."маркировки"',
                'where id not in (select код_маркировки from "стендинг"."маркировки" s where '
                + ' s."код_детали_стендинга"=' + IntToStr(s_id_stand_detail) + ')',
                false, true);
    ShowModal;
    if FrameTopPanel1.id_select = true then
    begin
      with Query1 do
      begin
        // if s_id_stand_detail = 0 then
        // begin
        // s_id_stand_detail := PGSQL.NewID('"стендинг"."деталь_id_seq"');
        // end;
        id := PGSQL.NewID('"стендинг"."маркировки_id_seq"');
        Close;
        sql.Text :=
                   'INSERT INTO "стендинг"."маркировки"(id, "код_детали_стендинга", "код_маркировки"'
                   + ') VALUES (:id, :код_детали_стендинга, :код_маркировки)';
        ParamByName('id').AsInteger := id;
        ParamByName('код_детали_стендинга').AsInteger := s_id_stand_detail;
        ParamByName('код_маркировки').AsInteger := QuerySelect.FieldByName('id')
      .AsInteger;
        ExecSQL;
        ShowMarking(id);
      end;
    end;
  end;
end;
procedure TFNewGroupProduct.btnDelClick(Sender : TObject);
begin
  PGSQL.StandartDelete(QueryMarking.FieldByName('id').AsString,
                        '"стендинг"."маркировки"', QueryMarking, '', '', '', '');
end;
procedure TFNewGroupProduct.btnRefreshClick(Sender : TObject);
begin
  QueryMarking.Refresh;
end;
procedure TFNewGroupProduct.edtCountKeyDown(Sender : TObject; var Key : Word;
                                               Shift : TShiftState);
begin
  if Key = VK_RETURN then
    FrameSave1.btnSaveClick(Sender);
end;
procedure TFNewGroupProduct.edtOrderPropertiesButtonClick(Sender : TObject;
                                                             AButtonIndex : Integer);
begin
  Application.CreateForm(TFSelectOrder, FSelectOrder);
  with FSelectOrder.FrameOrder1 do
  begin
    edtOt.Date := Now;
    edtDo.Date := Now;
    edtDo.Checked := false;
    ShowOrders();
    FSelectOrder.QueryOrderDetail.Open;
    FSelectOrder.ShowModal;
    if FrameTopPanel1.id_select = true then
    begin
      edtOrder.Text := '№ ' + QueryOrder.FieldByName('номер').AsString + ' от '
    + QueryOrder.FieldByName('дата_исполнения').AsString;
    end;
  end;
end;
procedure TFNewGroupProduct.FormShow(Sender : TObject);
begin
  FrameTopPanel1.SetLang;
  FrameSave1.SetLang;
  edtLength.SetFocus;
end;
procedure TFNewGroupProduct.FrameSave1btnSaveClick(Sender : TObject);
begin
  if s_id_stand_detail = 0 then
    InsUpdProduct(true)
  else
    InsUpdProduct(false);
  FrameSave1.btnSaveClick(Sender);
  Close;
end;
procedure TFNewGroupProduct.InsUpdProduct(id_ins : Boolean);
begin
  with Query1 do
  begin
    Close;
    if id_ins = true then
    begin
      s_id_stand_detail := PGSQL.NewID('"стендинг"."деталь_id_seq"');
      sql.Text :=
                 'INSERT INTO "стендинг"."деталь"(id, "код_стендинга", "код_плантации",'
                 + '"код_сорта", "длина", "кол_во_фулбоксов", "стеблей", "цена") VALUES ('
                 + ':id, :код_стендинга, :код_плантации, :код_сорта, :длина, :кол_во_фулбоксов,'
                 + ' :стеблей, :цена)';
    end
    else
    begin
      sql.Text :=
                 'UPDATE "стендинг"."деталь" SET "код_стендинга" = :код_стендинга,' +
                 ' "код_плантации" = :код_плантации, "код_сорта" = :код_сорта,' +
                 ' "длина" = :длина, "кол_во_фулбоксов" = :кол_во_фулбоксов,' +
                 ' "стеблей" = :стеблей, "цена" = :цена WHERE  id = :id ';
    end;
    ParamByName('id').Value := s_id_stand_detail;
    ParamByName('код_стендинга').Value := s_id_stand_edit;
    ParamByName('код_плантации').Value := s_id_plant;
    ParamByName('код_сорта').Value := s_id_sort;
    ParamByName('длина').Value := edtLength.Text;
    ParamByName('кол_во_фулбоксов').Value := edtFB.Value;
    ParamByName('стеблей').Value := edtCount.Text;
    ParamByName('цена').Value := edtPrice.Text;
    ExecSQL;
  end;
end;
procedure TFNewGroupProduct.ShowMarking(id_locate : Integer = 0);
begin
  with QueryMarking do
  begin
    Close;
    ParamByName('id').AsInteger := s_id_stand_detail;
    Open;
    Locate('id', id_locate, []);
  end;
end;
end.
