unit UFrameStatFacturPlant;
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
  
  cxStyles,
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxNavigator,
  Data.DB,
  cxDBData,
  cxCalc,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGridLevel,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  MemDS,
  DBAccess,
  Uni,
  Vcl.StdCtrls,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sTooledit,
  cxGroupBox,
  cxGridExportLink,
  Winapi.ShellAPI,
  Vcl.Menus,
  cxButtons,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue, dxSkinOffice2007Blue, dxSkinsDefaultPainters;
type
  TFrameStatFacturPlant = class(TFrame)
    Group1 : TcxGroupBox;
    edtOt : TsDateEdit;
    edtDo : TsDateEdit;
    QueryStatFactur : TUniQuery;
    dsStatFactur : TDataSource;
    GridStatFact : TcxGrid;
    ViewUsers : TcxGridDBTableView;
    LevelOrg : TcxGridLevel;
    ViewUsers_ : TcxGridDBColumn;
    ViewUsers_1 : TcxGridDBColumn;
    ViewUsers_2 : TcxGridDBColumn;
    ViewUsersname : TcxGridDBColumn;
    ViewUsersname_1 : TcxGridDBColumn;
    Label1 : TLabel;
    btnExcel : TcxButton;
    Label2 : TLabel;
    procedure edtDoChange(Sender : TObject);
    procedure edtDoCloseUp(Sender : TObject);
    procedure edtDoKeyDown(Sender : TObject; var Key : Word; Shift : TShiftState);
    procedure edtOtCloseUp(Sender : TObject);
    procedure edtOtKeyDown(Sender : TObject; var Key : Word; Shift : TShiftState);
    procedure btnExcelClick(Sender : TObject);
  private
    { Private declarations }
  public
    procedure ShowStatFact;
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  UOsn,
  UPasswd;
procedure TFrameStatFacturPlant.btnExcelClick(Sender : TObject);
begin
  ExportGridToExcel(FPasswd.GetVar('TEMP') + '\stat_fact', GridStatFact, true,
                     true, true, 'xls');
  ShellExecute(Handle, nil, PChar(FPasswd.GetVar('TEMP') + '\stat_fact.xls'),
                nil, nil, SW_RESTORE);
end;
procedure TFrameStatFacturPlant.edtDoChange(Sender : TObject);
begin
  ShowStatFact;
end;
procedure TFrameStatFacturPlant.edtDoCloseUp(Sender : TObject);
begin
  ShowStatFact;
end;
procedure TFrameStatFacturPlant.edtDoKeyDown(Sender : TObject; var Key : Word;
                                                Shift : TShiftState);
begin
  if Key = VK_RETURN then
    ShowStatFact;
end;
procedure TFrameStatFacturPlant.edtOtCloseUp(Sender : TObject);
begin
  ShowStatFact;
end;
procedure TFrameStatFacturPlant.edtOtKeyDown(Sender : TObject; var Key : Word;
                                                Shift : TShiftState);
begin
  if Key = VK_RETURN then
    ShowStatFact;
end;
procedure TFrameStatFacturPlant.ShowStatFact;
begin
  with QueryStatFactur do
  begin
    Close;
    SQL.Text := 'SELECT sad."�����_�������",  sad."����_�������",' +
  '  sad."�����_�������",        m.name,        pl.name' +
  ' FROM "���".sub_awb_detail sad      INNER JOIN "���������"."���������" pl ON (sad."���_���������" = pl.id)'
  + '      inner join "���".sub_awb sa on (sa.id = sad."���_sub_awb")' +
  '      inner join "����������"."����������" m on (m.id = sa."���_����������")'
  + ' where sad."�����_�������" <> 0';
    if edtOt.Text <> '  .  .    ' then
    begin
      SQL.Add(' and sad."����_�������">=:d1');
      ParamByName('d1').AsDateTime := edtOt.Date;
    end;
    if edtDo.Text <> '  .  .    ' then
    begin
      SQL.Add(' and sad."����_�������"<=:d2');
      ParamByName('d2').AsDateTime := edtOt.Date;
    end;
    SQL.Add(' order by pl.name, sad."����_�������"');
    Open;
  end;
end;
end.
