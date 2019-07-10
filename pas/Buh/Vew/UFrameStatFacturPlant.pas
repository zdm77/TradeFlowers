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
    SQL.Text := 'SELECT sad."номер_фактуры",  sad."дата_фактуры",' +
  '  sad."сумма_фактуры",        m.name,        pl.name' +
  ' FROM "бух".sub_awb_detail sad      INNER JOIN "продукция"."плантации" pl ON (sad."код_плантации" = pl.id)'
  + '      inner join "бух".sub_awb sa on (sa.id = sad."код_sub_awb")' +
  '      inner join "маркировки"."маркировки" m on (m.id = sa."код_маркировки")'
  + ' where sad."сумма_фактуры" <> 0';
    if edtOt.Text <> '  .  .    ' then
    begin
      SQL.Add(' and sad."дата_фактуры">=:d1');
      ParamByName('d1').AsDateTime := edtOt.Date;
    end;
    if edtDo.Text <> '  .  .    ' then
    begin
      SQL.Add(' and sad."дата_фактуры"<=:d2');
      ParamByName('d2').AsDateTime := edtOt.Date;
    end;
    SQL.Add(' order by pl.name, sad."дата_фактуры"');
    Open;
  end;
end;
end.
