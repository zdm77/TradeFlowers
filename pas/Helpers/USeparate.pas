unit USeparate;
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
  
  dxSkinsdxStatusBarPainter,
  Menus,
  cxStyles,
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  DB,
  cxDBData,
  Vcl.DBCtrls,
  sDBLookupListBox,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  Vcl.StdCtrls,
  cxButtons,
  UFrameSave,
  cxLabel,
  cxTextEdit,
  dxStatusBar,
  cxGroupBox,
  MemDS,
  DBAccess,
  Uni,
  cxNavigator,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue;
type
  TFSeparate = class(TForm)
    Group1 : TcxGroupBox;
    stat1 : TdxStatusBar;
    edtNum : TcxTextEdit;
    lblNumber : TcxLabel;
    FrameSave1 : TFrameSave;
    Group3 : TcxGroupBox;
    btnAddAll : TcxButton;
    btnAdd : TcxButton;
    btnDelAll : TcxButton;
    btnDel : TcxButton;
    GroupSource : TcxGroupBox;
    GridDest : TcxGrid;
    ViewDest : TcxGridDBTableView;
    LevelStatWork : TcxGridLevel;
    GroupDest : TcxGroupBox;
    QuerySource : TUniQuery;
    dsSource : TDataSource;
    QueryDist : TUniQuery;
    dsDist : TDataSource;
    ColumnЦена : TcxGridDBColumn;
    ViewDestfb : TcxGridDBColumn;
    ColumnСтеблей : TcxGridDBColumn;
    ColumnДлина : TcxGridDBColumn;
    ColumnPlant : TcxGridDBColumn;
    ColumnSort : TcxGridDBColumn;
    procedure FormCreate(Sender : TObject);
    procedure FormShow(Sender : TObject);
  private
    { Private declarations }
  public
    s_id_factura : Integer;
    procedure SetLang;
    procedure ShowSource;
    { Public declarations }
  end;

var
  FSeparate : TFSeparate;
implementation
uses
  UPasswd;
{$R *.dfm}

procedure TFSeparate.FormCreate(Sender : TObject);
begin
  SetLang;
end;
procedure TFSeparate.FormShow(Sender : TObject);
begin
  ShowSource;
end;
procedure TFSeparate.SetLang;
begin
  case FPasswd.Lang of
    0 :
    begin
      lblNumber.Caption := 'Новый №';
      Caption := 'Разделение фактуры';
      ColumnPlant.Caption := 'Плантация';
      ColumnPlant.DataBinding.FieldName := 'pt_name';
      ColumnSort.Caption := 'Сорт';
      ColumnSort.DataBinding.FieldName := 's_name';
      ColumnДлина.Caption := 'Длина';
      ColumnСтеблей.Caption := 'Стеблей';
      ColumnЦена.Caption := 'Цена';
    end;
    1 :
    begin
      lblNumber.Caption := 'New number';
      Caption := 'Separation of the invoice';
      ColumnPlant.Caption := 'Plantation';
      ColumnPlant.DataBinding.FieldName := 'pt_uni_name';
      ColumnSort.Caption := 'Grade';
      ColumnSort.DataBinding.FieldName := 's_uni_name';
      ColumnДлина.Caption := 'Length';
      ColumnСтеблей.Caption := 'Stalks';
      ColumnЦена.Caption := 'Price';
    end;
    2 :
    begin
      lblNumber.Caption := 'Nuevo habitación';
      Caption := 'División de facturación';
      ColumnPlant.Caption := 'Finca';
      ColumnPlant.DataBinding.FieldName := 'pt_reg_name';
      ColumnSort.Caption := 'Mark';
      ColumnSort.DataBinding.FieldName := 's_reg_name';
      ColumnДлина.Caption := 'Longitud';
      ColumnСтеблей.Caption := 'Cereal';
      ColumnЦена.Caption := 'Precio';
    end;
  end;
end;
procedure TFSeparate.ShowSource;
begin
  with QuerySource do
  begin
    Close;
    SQL.Text :=
               'SELECT fd."код_фактуры", fd.id,  fd."код_сорта", fd."код_товара",' +
               ' fd."цена",  fd.fb,  fd."стеблей",  fd."длина",  fd."код_плантации",' +
               '  pt.uni_name pt_uni_name,  pt.reg_name pt_reg_name,  pt.name pt_name, '
               + ' s.name s_name,  s.uni_name s_uni_name,' +
               '  s.reg_name s_reg_name FROM' +
               '  "документы"."фактура_деталь" fd   INNER JOIN "продукция"."плантации" '
               + ' pt ON (fd."код_плантации" = pt.id)' +
               '  INNER JOIN "продукция"."сорта" s ON (fd."код_сорта" = s.id)' +
               '  INNER JOIN "продукция"."продукция" p ON (fd."код_товара" = p.id)' +
               ' where код_фактуры=' + IntToStr(s_id_factura);
    Open;
  end;
end;
end.
