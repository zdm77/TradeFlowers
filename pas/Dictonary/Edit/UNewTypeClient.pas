unit UNewTypeClient;

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
  UFrameSave,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  dxSkinsCore,
  
  Data.DB,
  DBAccess,
  Uni,
  MemDS,
  cxLabel,
  cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
      cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxCheckBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxGroupBox, cxButtonEdit;

type
  TFNewTypeClient = class(TForm)
    FrameSave1: TFrameSave;
    GridStatWork: TcxGrid;
    ViewStatWork: TcxGridDBTableView;
    LevelStatWork: TcxGridLevel;
    dsAll: TUniDataSource;
    QueryAll: TUniQuery;
    ViewStatWorkDBColumn: TcxGridDBColumn;
    ViewStatWorkDBColumn1: TcxGridDBColumn;
    ViewStatWorkDBColumn2: TcxGridDBColumn;
    ViewStatWorkDBColumn3: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    edtMarking: TcxButtonEdit;
    lblMarking: TcxLabel;
    procedure FrameSave1btnSaveClick(Sender: TObject);
    procedure edtTypePropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtMarkingPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private

    { Private declarations }
  public
   s_id_Marking: Integer;
    { Public declarations }
  end;

var
  FNewTypeClient: TFNewTypeClient;

implementation

{$R *.dfm}

uses USelect;

procedure TFNewTypeClient.edtMarkingPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.CreateForm(TFSelect, FSelect);
  with FSelect do
  begin
    Caption := 'Выберите маркировку';
    lstTree.Visible := True;
    GridSelect.Visible := false;
    ShowSelect('"маркировки"."маркировки"', ' ', false, True);
    ShowModal;

    if FrameTopPanel1.id_select = True then
    begin
      edtMarking.Text:=QuerySelect.FieldByName('name').AsString;
      s_id_Marking:=QuerySelect.FieldByName('id').AsInteger;
    end;
  end;
end;

procedure TFNewTypeClient.edtTypePropertiesEditValueChanged(Sender: TObject);
begin
  // ShowVid();
  // ShowCur();
  // ShowTypeProduct();
  // ShowCountry();
end;

procedure TFNewTypeClient.FormShow(Sender: TObject);
begin
  with QueryAll do
  begin
    Close;
    SQL.Clear;
    SQL.Add(' SELECT');
    SQL.Add(' s.name "страна",');
    SQL.Add(' v.name "тип",');
    SQL.Add(' st."код_типа_продукта",');
    SQL.Add(' st."код_страны",');
    SQL.Add(' st."код_валюты",');
    SQL.Add(' st."код_типа",');
    SQL.Add(' st.id,');
    SQL.Add(' tt.name "тип товара",');
    SQL.Add(' vl.name "валюта"');
    SQL.Add(' FROM');
    SQL.Add(' "контрагенты"."страна_тип" st');
    SQL.Add(' INNER JOIN "продукция"."страны" s ON (st."код_страны" = s.id)');
    SQL.Add(' INNER JOIN "контрагенты"."виды" v ON (st."код_типа" = v.id)');
    SQL.Add(' INNER JOIN "контрагенты"."типы_товаров" tt ON (st."код_типа_продукта" = tt.id)');
    SQL.Add(' INNER JOIN public."валюты" vl ON (st."код_валюты" = vl.id)');
    Open;
  end;
end;

procedure TFNewTypeClient.FrameSave1btnSaveClick(Sender: TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  Close;
end;

end.
