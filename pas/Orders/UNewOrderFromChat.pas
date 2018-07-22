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
  cxButtonEdit, cxGroupBox,UMarkingClass;

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
    procedure FormShow(Sender: TObject);
    procedure Table1DblClick(Sender: TObject);
  private
  var
    Marking: TMarkingClass;
    { Private declarations }
  public
    MStream: TStream;
    IDMarking: Integer;
    { Public declarations }
  end;

var
  FNewOrderFromChat: TFNewOrderFromChat;

implementation

{$R *.dfm}

uses USelectProduct;

procedure TFNewOrderFromChat.FormShow(Sender: TObject);
begin
  Marking := TMarkingClass.Create();
  Marking.setNameById(IDMarking);
  Marking.getDefaultParam;
  edtMarking.Text := Marking.getName;
  edtKargo.Text := Marking.NameKargo;
  edtTrack.Text := Marking.NameTrack;
  edtPricooling.Text := Marking.NamePricooling;
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
