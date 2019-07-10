unit UBackUp;
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
  DADump,
  UniDump,
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
  cxNavigator,
  Data.DB,
  cxDBData,
  cxCheckBox,
  Vcl.StdCtrls,
  Vcl.Mask,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  MemDS,
  DBAccess,
  Uni,
  cxGridLevel,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue;
type
  TBackUp = class(TForm)
    dump1 : TUniDump;
    cxGrid1DBTableView1 : TcxGridDBTableView;
    cxGrid1Level1 : TcxGridLevel;
    cxGrid1 : TcxGrid;
    QueryBalance : TUniQuery;
    dsBalance : TDataSource;
    cxGrid1DBTableView1name : TcxGridDBColumn;
    cxGrid1DBTableView1q : TcxGridDBColumn;
    MaskEdit1 : TMaskEdit;
    procedure dump1BackupProgress(Sender : TObject; ObjectName : string;
                                     ObjectNum, ObjectCount, Percent : Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BackUp : TBackUp;
implementation
{$R *.dfm}

uses
  UDataModule1;
procedure TBackUp.dump1BackupProgress(Sender : TObject; ObjectName : string;
                                         ObjectNum, ObjectCount, Percent : Integer);
begin
  Caption := ObjectName + ' [' + IntToStr(Percent) + ' %]';
  Application.ProcessMessages;
end;
end.
