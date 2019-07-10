unit UFramePrikulingBuh;
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
  cxNavigator,
  Data.DB,
  cxDBData,
  cxCheckBox,
  cxCalc,
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
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue, dxSkinOffice2007Blue, dxSkinsDefaultPainters;
type
  TFramePrikulingBuh = class(TFrame)
    FrameTopPanel1 : TFrameTopPanel;
    GridAWB : TcxGrid;
    ViewAWB : TcxGridDBTableView;
    ColumnДата : TcxGridDBColumn;
    ColumnMnemo : TcxGridDBColumn;
    ColumnMnemoNUM : TcxGridDBColumn;
    ColumnAWBNum : TcxGridDBColumn;
    ColumnKargo : TcxGridDBColumn;
    ColumnАвиалиния : TcxGridDBColumn;
    ColumnFB : TcxGridDBColumn;
    ColumnBOX : TcxGridDBColumn;
    ColumnВес : TcxGridDBColumn;
    ColumnСтоимость : TcxGridDBColumn;
    ColumnOrg : TcxGridDBColumn;
    ColumnID : TcxGridDBColumn;
    LevelOrg : TcxGridLevel;
    QueryPrik : TUniQuery;
    dsPrik : TDataSource;
    ColumnПрикулинг : TcxGridDBColumn;
    procedure FrameTopPanel1btnArchPropertiesEditValueChanged(Sender : TObject);
    procedure btnRefreshClick(Sender : TObject);
  private
    { Private declarations }
  public
    procedure ShowPrikul;
    { Public declarations }
  end;
implementation
{$R *.dfm}

procedure TFramePrikulingBuh.btnRefreshClick(Sender : TObject);
begin
  ShowPrikul;
end;
procedure TFramePrikulingBuh.FrameTopPanel1btnArchPropertiesEditValueChanged
  (Sender : TObject);
begin
  ShowPrikul;
end;
procedure TFramePrikulingBuh.ShowPrikul;
begin
  with QueryPrik do
  begin
    SQL.Clear;
    SQL.Add(' SELECT k.name,');
    SQL.Add(' a.id, a.код_организации,');
    SQL.Add(' a."код_карго",');
    SQL.Add(' a."номер_awb",');
    SQL.Add(' a."дата_вылета", a.код_авиалинии,');
    SQL.Add(' air.name air_name_rus, air.uni_name air_name_en, air.reg_name air_name_esp,');
    SQL.Add(' o."name" организация,');
    SQL.Add(' sum(sa."стоимость") стоимость,');
    SQL.Add(' sum(sa."sum_FB") FB,');
    SQL.Add(' sum(sa."sum_BOX") BOXS,');
    SQL.Add(' sum(sa."вес") вес');
    SQL.Add(' , a.мнемо, мнемо_номер,  a."прикулинг" as Прикулинг');
    SQL.Add(' FROM "бух".awb a');
    SQL.Add(' INNER JOIN "карго"."агенства" k ON (a."код_карго" = k.id)');
    SQL.Add(' LEFT join "бух".sub_awb sa on (sa."код_AWB" = a.id)');
    SQL.Add(' inner join "организация"."организации" o on (a."код_организации" = o.id)');
    SQL.Add(' LEFT join "авиалинии"."авиалинии" air on (a.код_авиалинии = air.id)');
    SQL.Add(' inner join "траки"."траки" tr on (sa."код_трака"=tr.id)');
    SQL.Add(' inner join "бух"."расчет_прикулинг" rpr on (rpr."код_трака"=tr.id)');
    SQL.Add(' inner join "прикулинг"."агенства" pr on (pr.id=rpr."код_прикулинга")');
    SQL.Add(' where a.архив_awb=:i_arch');
    SQL.Add(' group by k.name, a.код_организации,');
    SQL.Add(' a.id,');
    SQL.Add(' a."код_карго",');
    SQL.Add(' a."номер_awb",');
    SQL.Add(' a."вес",');
    SQL.Add(' a."дата_вылета",');
    SQL.Add(' o."name",');
    SQL.Add(' a.код_авиалинии, air.name, air.uni_name,air.reg_name');
    SQL.Add(' , a.мнемо, мнемо_номер, a."прикулинг" ');
    SQL.Add(' order by дата_вылета DESC');
    if FrameTopPanel1.btnArch.EditValue = true then
      ParamByName('i_arch').AsInteger := 1
    else
      ParamByName('i_arch').AsInteger := 0;
    Open;
  end;
end;
end.
