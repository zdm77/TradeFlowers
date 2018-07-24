unit UNewOrderFromChat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinOffice2007Blue,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Vcl.StdCtrls, cxGridCustomTableView,
  cxGridTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxCheckBox,
  cxContainer, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Vcl.ComCtrls, AdvDateTimePicker, cxTextEdit, cxLabel, cxMaskEdit,
  cxButtonEdit, cxGroupBox, UMarkingClass, UOrderClass, UFrameSave,
  UFrameTopPanel, Vcl.ImgList;

type
  TFNewOrderFromChat = class(TForm)
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Table1: TcxGridTableView;
    columnName: TcxGridColumn;
    btn1: TButton;
    columnID: TcxGridColumn;
    columnCountry: TcxGridColumn;
    columnType: TcxGridColumn;
    columnSort: TcxGridColumn;
    columnCount: TcxGridColumn;
    columnPlant: TcxGridColumn;
    columnCheck: TcxGridColumn;
    Groupÿ‡ÔÍ‡: TcxGroupBox;
    GroupOsn: TcxGroupBox;
    edtKargo: TcxButtonEdit;
    lblKargo: TcxLabel;
    edtMarking: TcxButtonEdit;
    lblMarking: TcxLabel;
    edtNum: TcxTextEdit;
    lblNumber: TcxLabel;
    edtƒ‡Ú‡¬˚ÎÂÚ‡: TAdvDateTimePicker;
    edtƒ‡Ú‡«‡Í‡Á‡: TAdvDateTimePicker;
    lblFito: TcxLabel;
    GroupDop: TcxGroupBox;
    edtTrack: TcxButtonEdit;
    edtPricooling: TcxButtonEdit;
    lblTrack: TcxLabel;
    lblPricooling: TcxLabel;
    edtFito: TcxLookupComboBox;
    il1: TImageList;
    Style1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    FrameTopPanel1: TFrameTopPanel;
    FrameSave1: TFrameSave;
    procedure FormShow(Sender: TObject);
    procedure Table1DblClick(Sender: TObject);
  private
  var
    IDMarking: Integer;
    Order: TOrderClass;
    { Private declarations }
  public
    procedure setIDMarking(id : integer);
    // MStream: TStream;
    { Public declarations }
  end;

var
  FNewOrderFromChat: TFNewOrderFromChat;

implementation

{$R *.dfm}

uses USelectProduct, UDataModule1;
procedure TFNewOrderFromChat.setIDMarking(id : integer);
begin
   IDMarking:=id;
end;
procedure TFNewOrderFromChat.FormShow(Sender: TObject);
begin
  Order := TOrderClass.Create(IDMarking);
  edtMarking.Text := Order.NameMarking;
  edtKargo.Text := Order.NameKargo;
  edtTrack.Text := Order.NameTrack;
  edtPricooling.Text := Order.NamePricooling;
end;

procedure TFNewOrderFromChat.Table1DblClick(Sender: TObject);
var
  i: Integer;
begin
  Application.CreateForm(TFSelectProduct, FSelectProduct);
  with FSelectProduct do
  begin
    ShowModal;
    if IDSelect = true then
    begin
      i := Table1.DataController.GetEditingRecordIndex;
      Table1.DataController.SetValue(i, FNewOrderFromChat.columnCountry.Index,
        memPr.FieldByName('country').AsString);
      Table1.DataController.SetValue(i, FNewOrderFromChat.columnType.Index,
        memPr.FieldByName('tpe').AsString);
      Table1.DataController.SetValue(i, FNewOrderFromChat.columnPlant.Index,
        memPr.FieldByName('plant').AsString);
      Table1.DataController.SetValue(i, FNewOrderFromChat.columnSort.Index,
        memPr.FieldByName('sort').AsString);
      Table1.DataController.SetValue(i, FNewOrderFromChat.columnID.Index,
        memPr.FieldByName('id').AsString);
      Table1.DataController.SetValue(i, FNewOrderFromChat.columnName.Index,
        memPr.FieldByName('uni_name').AsString);
    end;
  end;
end;

end.
