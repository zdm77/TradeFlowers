unit UNewOrderFromChat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinOffice2007Blue,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Vcl.StdCtrls, cxGridCustomTableView,
  cxGridTableView, cxGridCustomView, cxClasses, cxGridLevel, cxGrid, cxCheckBox;

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
    procedure Table1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    MStream: TStream;
    { Public declarations }
  end;

var
  FNewOrderFromChat: TFNewOrderFromChat;

implementation

{$R *.dfm}

uses USelectProduct;

procedure TFNewOrderFromChat.Table1DblClick(Sender: TObject);
var
  i: integer;
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

    end;
  end;
end;

end.
