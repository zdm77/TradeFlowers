unit UReportClients;

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
  
  cxLabel,
  cxDropDownEdit,
  cxTextEdit,
  cxMaskEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  cxCheckBox,
  cxGroupBox,
  UFrameSave,
  Data.DB,
  MemDS,
  DBAccess,
  Uni,     
    
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue;

type
  TFReportClients = class(TForm)
    FrameSave1: TFrameSave;
    Group1: TcxGroupBox;
    chkStat: TcxCheckBox;
    edtStat: TcxLookupComboBox;
    edtOrder: TcxComboBox;
    cxLabel1: TcxLabel;
    QueryStat: TUniQuery;
    dsStat: TDataSource;
    procedure chkStatClick(Sender: TObject);
    procedure FrameSave1btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    id_exe: Boolean;
    { Public declarations }
  end;

var
  FReportClients: TFReportClients;

implementation

{$R *.dfm}

procedure TFReportClients.chkStatClick(Sender: TObject);
begin
  edtStat.Enabled := chkStat.Checked;
  if edtStat.Enabled = true then
  begin
    QueryStat.Open;
    edtStat.EditValue := QueryStat.Fields[0].AsInteger;
  end
  else
    QueryStat.Close;
end;

procedure TFReportClients.FrameSave1btnSaveClick(Sender: TObject);
begin
  id_exe := true;
  Close;
end;

end.
