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
    Column���� : TcxGridDBColumn;
    ColumnMnemo : TcxGridDBColumn;
    ColumnMnemoNUM : TcxGridDBColumn;
    ColumnAWBNum : TcxGridDBColumn;
    ColumnKargo : TcxGridDBColumn;
    Column��������� : TcxGridDBColumn;
    ColumnFB : TcxGridDBColumn;
    ColumnBOX : TcxGridDBColumn;
    Column��� : TcxGridDBColumn;
    Column��������� : TcxGridDBColumn;
    ColumnOrg : TcxGridDBColumn;
    ColumnID : TcxGridDBColumn;
    LevelOrg : TcxGridLevel;
    QueryPrik : TUniQuery;
    dsPrik : TDataSource;
    Column��������� : TcxGridDBColumn;
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
    SQL.Add(' a.id, a.���_�����������,');
    SQL.Add(' a."���_�����",');
    SQL.Add(' a."�����_awb",');
    SQL.Add(' a."����_������", a.���_���������,');
    SQL.Add(' air.name air_name_rus, air.uni_name air_name_en, air.reg_name air_name_esp,');
    SQL.Add(' o."name" �����������,');
    SQL.Add(' sum(sa."���������") ���������,');
    SQL.Add(' sum(sa."sum_FB") FB,');
    SQL.Add(' sum(sa."sum_BOX") BOXS,');
    SQL.Add(' sum(sa."���") ���');
    SQL.Add(' , a.�����, �����_�����,  a."���������" as ���������');
    SQL.Add(' FROM "���".awb a');
    SQL.Add(' INNER JOIN "�����"."��������" k ON (a."���_�����" = k.id)');
    SQL.Add(' LEFT join "���".sub_awb sa on (sa."���_AWB" = a.id)');
    SQL.Add(' inner join "�����������"."�����������" o on (a."���_�����������" = o.id)');
    SQL.Add(' LEFT join "���������"."���������" air on (a.���_��������� = air.id)');
    SQL.Add(' inner join "�����"."�����" tr on (sa."���_�����"=tr.id)');
    SQL.Add(' inner join "���"."������_���������" rpr on (rpr."���_�����"=tr.id)');
    SQL.Add(' inner join "���������"."��������" pr on (pr.id=rpr."���_����������")');
    SQL.Add(' where a.�����_awb=:i_arch');
    SQL.Add(' group by k.name, a.���_�����������,');
    SQL.Add(' a.id,');
    SQL.Add(' a."���_�����",');
    SQL.Add(' a."�����_awb",');
    SQL.Add(' a."���",');
    SQL.Add(' a."����_������",');
    SQL.Add(' o."name",');
    SQL.Add(' a.���_���������, air.name, air.uni_name,air.reg_name');
    SQL.Add(' , a.�����, �����_�����, a."���������" ');
    SQL.Add(' order by ����_������ DESC');
    if FrameTopPanel1.btnArch.EditValue = true then
      ParamByName('i_arch').AsInteger := 1
    else
      ParamByName('i_arch').AsInteger := 0;
    Open;
  end;
end;
end.
