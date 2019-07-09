unit UNewReceipt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, 
   dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, MemDS, DBAccess, Uni,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, UFrameTopPanel, cxContainer,
  Vcl.StdCtrls, Vcl.Mask, sMaskEdit, sCustomComboEdit, sToolEdit, cxGroupBox;

type
  TFNewReceipt = class(TForm)
    FrameTopPanel1: TFrameTopPanel;
    GridStatWork: TcxGrid;
    ViewReceipt: TcxGridDBTableView;
    ViewReceiptuni_name: TcxGridDBColumn;
    ViewReceiptm_uni_name: TcxGridDBColumn;
    ColumnNum: TcxGridDBColumn;
    ViewReceiptDBColumn: TcxGridDBColumn;
    ViewReceipts_uni_name: TcxGridDBColumn;
    ViewReceiptDBColumn1: TcxGridDBColumn;
    ViewReceipt__: TcxGridDBColumn;
    ViewReceiptDBColumn4: TcxGridDBColumn;
    ViewReceiptDBColumn2: TcxGridDBColumn;
    ViewReceiptDBColumn3: TcxGridDBColumn;
    ViewReceipt_5: TcxGridDBColumn;
    LevelStatWork: TcxGridLevel;
    Query1: TUniQuery;
    QueryNewReceipt: TUniQuery;
    dsNewReceipt: TDataSource;
    cxGroupBox1: TcxGroupBox;
    sDateEdit1: TsDateEdit;
    Label1: TLabel;
  private
    { Private declarations }
  public
    IDReceipt: Integer;
    procedure ShowNewReceipt(id_locate: Integer = 0);
    { Public declarations }
  end;

var
  FNewReceipt: TFNewReceipt;

implementation

{$R *.dfm}

procedure TFNewReceipt.ShowNewReceipt(id_locate: Integer = 0);
begin
  with QueryNewReceipt do
  begin
    SQL.Clear;
    SQL.Add(' SELECT');
    SQL.Add(' pl.uni_name uni_name,');
    SQL.Add(' p."код_поставщика",');
    SQL.Add(' m.uni_name m_uni_name,');
    SQL.Add(' m.name m_name,');
    SQL.Add(' m.reg_name m_reg_name ,');
    SQL.Add(' pl.reg_name  pl_reg_name,');
    SQL.Add(' pl.name pl_name,');
    SQL.Add(' p.id_locate,');
    SQL.Add(' p."код_поступления",');
    SQL.Add(' p."код_маркировки",');
    SQL.Add(' p."номер_коробки",');
    SQL.Add(' p."коробок",');
    SQL.Add(' p."код_сорта",');
    SQL.Add(' p."длина",');
    SQL.Add(' p."кол_в_коробке",');
    SQL.Add(' p."цена",');
    SQL.Add(' p."кратность",');
    SQL.Add(' p."целая_коробка",');
    SQL.Add(' s.name s_name,');
    SQL.Add(' s.uni_name s_uni_name,');
    SQL.Add(' s.reg_name  s_reg_name,');
    SQL.Add(' p."коробок"*p."кол_в_коробке" итог');
    SQL.Add(' FROM');
    SQL.Add(' "поступления"."поступление_деталь" p');
    SQL.Add(' INNER JOIN "продукция"."плантации" pl ON (p."код_поставщика" = pl.id_locate)');
    SQL.Add(' INNER JOIN "маркировки"."маркировки" m ON (p."код_маркировки" = m.id_locate)');
    SQL.Add(' INNER JOIN "продукция"."сорта" s ON (p."код_сорта" = s.id_locate)');
    SQL.Add(' where  код_поступления=' + IntToStr(IDReceipt));
    SQL.Add(' order by номер_коробки');
    Open;
    Locate('id_locate', id_locate, []);
  end;
end;

end.
