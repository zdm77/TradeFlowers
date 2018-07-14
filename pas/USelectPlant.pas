unit USelectPlant;

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
  DB,
  cxDBData,
  cxCheckBox,
  cxContainer,
  cxLabel,
  cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  cxGroupBox,
  Vcl.ImgList,
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
  UFrameTopPanel,
  cxNavigator,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue;

type
  TFSelectPlant = class(TForm)
    FrameTopPanel1: TFrameTopPanel;
    GridSelect: TcxGrid;
    ViewSelect: TcxGridDBTableView;
    ColumnSel: TcxGridDBColumn;
    ColumnUniName: TcxGridDBColumn;
    ColumnColorGrid: TcxGridDBColumn;
    LevelOrg: TcxGridLevel;
    QuerySelect: TUniQuery;
    dsSelect: TDataSource;
    il1: TImageList;
    GroupDetail: TcxGroupBox;
    edtDetail: TcxLookupComboBox;
    lblDetail: TcxLabel;
    QueryDetail: TUniQuery;
    dsDetail: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FrameTopPanel1btnSelClick(Sender: TObject);
    procedure ViewSelectCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure ViewSelectDblClick(Sender: TObject);
    procedure ViewSelectKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtDetailPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  protected
  public
    use_color: Boolean;
    ID_ORDER_NOT: Integer;
    procedure SetLang;
    procedure ShowCountry;
    procedure ShowPlant;
    { Public declarations }
  end;

var
  FSelectPlant: TFSelectPlant;

implementation

uses
  UPasswd;
{$R *.dfm}

procedure TFSelectPlant.edtDetailPropertiesEditValueChanged(Sender: TObject);
begin
  ShowPlant;
end;

procedure TFSelectPlant.FormShow(Sender: TObject);
begin
  SetLang;
  ViewSelect.ViewData.FilterRow.Focused := True;
  ViewSelect.Columns[1].Focused := True;
  GridSelect.SetFocus;
  ViewSelect.Controller.EditingController.EditingItem := ViewSelect.Columns[1];
end;

procedure TFSelectPlant.FrameTopPanel1btnSelClick(Sender: TObject);
begin
  FrameTopPanel1.id_select := True;
  Close;
end;

procedure TFSelectPlant.SetLang;
begin
  case FPasswd.Lang of
    0:
      begin
        if Caption = '' then
          Caption := 'Выбор';
        ColumnSel.Caption := 'Выбрать';
        ColumnUniName.Caption := 'Наименование';
        ColumnUniName.DataBinding.FieldName := 'name';
      end;
    1:
      begin
        if Caption = '' then
          Caption := 'Choice';
        ColumnSel.Caption := 'Select';
        ColumnUniName.Caption := 'Name';
        ColumnUniName.DataBinding.FieldName := 'uni_name';
      end;
    2:
      begin
        if Caption = '' then
          Caption := 'La elección';
        ColumnSel.Caption := 'Escoger';
        ColumnUniName.Caption := 'El nombre';
        ColumnUniName.DataBinding.FieldName := 'reg_name';
      end;
  end;
end;

procedure TFSelectPlant.ShowCountry;
begin
  with QueryDetail do
  begin
    Close;
    sql.Text := 'select * from продукция.страны order by приоритет';
    Open;
    edtDetail.EditValue := Fields[0].AsInteger;
  end;
end;

procedure TFSelectPlant.ShowPlant;
begin
  with QuerySelect do
  begin
    Close;
    sql.Text :=
      'SELECT pt.id,  pt.name,  pt.brand,  pt."код_страны",  pt.uni_name,' +
      ' pt.reg_name,  pt."примечание",  p."код_позиции_заказа" FROM' +
      '  "продукция"."плантации" pt  LEFT JOIN "маркировки"."желаемые_плантации" '
      + ' p ON (pt.id = p."код_плантации" and  "код_позиции_заказа"=' +
      IntToStr(ID_ORDER_NOT) + ')' +
      ' WHERE  pt.id NOT IN (SELECT "код_плантации" FROM ' +
      ' "маркировки"."запрет_плантаций" where  "код_позиции_заказа"=' +
      IntToStr(ID_ORDER_NOT) + ' ) and pt.код_страны=' +
      IntToStr(edtDetail.EditValue) +
      ' order by p."код_позиции_заказа", name    ';
    Open;
  end;
end;

procedure TFSelectPlant.ViewSelectCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if use_color = True then
  begin
    if AViewInfo.GridRecord.Values[2] > 0 then
    begin
      ACanvas.Brush.color := $00B9FFB9;
      ACanvas.Font.color := clBlack;
    end;
  end;
end;

procedure TFSelectPlant.ViewSelectDblClick(Sender: TObject);
begin
  FrameTopPanel1btnSelClick(Sender);
end;

procedure TFSelectPlant.ViewSelectKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    FrameTopPanel1btnSelClick(Sender);
end;

end.
