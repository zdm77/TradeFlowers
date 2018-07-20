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
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNewOrderFromChat: TFNewOrderFromChat;

implementation

{$R *.dfm}

procedure TFNewOrderFromChat.btn1Click(Sender: TObject);
begin
  Table1.DataController.Append;
  Table1.DataController.SetValue(0,0,'1212');

  Table1.DataController.Post(true);
   Table1.DataController.Append;
  Table1.DataController.SetValue(1,0,'1212');

  Table1.DataController.Post(true);
end;

end.
