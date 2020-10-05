unit UFrameAWB;
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
  UFrameTopPanel,
  cxCalc,
  cxGridExportLink,
  Winapi.ShellAPI,
  Vcl.StdCtrls,
  cxCheckBox,
  Vcl.ExtCtrls,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue, dxSkinOffice2007Blue, dxSkinsDefaultPainters, dxDateRanges;
type
  TFrameAWB = class(TFrame)
    FrameTopPanel1 : TFrameTopPanel;
    QueryAWB : TUniQuery;
    dsAWB : TDataSource;
    Query1 : TUniQuery;
    GridAWB : TcxGrid;
    ViewAWB : TcxGridDBTableView;
    LevelOrg : TcxGridLevel;
    ColumnKargo : TcxGridDBColumn;
    ColumnAWBNum : TcxGridDBColumn;
    ColumnДата : TcxGridDBColumn;
    ColumnFB : TcxGridDBColumn;
    ColumnBOX : TcxGridDBColumn;
    ColumnВес : TcxGridDBColumn;
    ColumnСтоимость : TcxGridDBColumn;
    ColumnOrg : TcxGridDBColumn;
    ColumnID : TcxGridDBColumn;
    ColumnАвиалиния : TcxGridDBColumn;
    ColumnMnemo : TcxGridDBColumn;
    ColumnMnemoNUM : TcxGridDBColumn;
    procedure btnAddClick(Sender : TObject);
    procedure btnEditClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure btnRefreshClick(Sender : TObject);
    procedure ViewAWBDblClick(Sender : TObject);
    procedure btnExportClick(Sender : TObject);
    procedure FrameTopPanel1btnArchPropertiesEditValueChanged(Sender : TObject);
  private
    { Private declarations }
  public
    procedure ShowAWB(id_locate : Integer = 0);
    procedure SetLang;
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  UNewAWB,
  PGSQL,
  UPasswd;
procedure TFrameAWB.btnAddClick(Sender : TObject);
begin
  Application.CreateForm(TFNewAWB, FNewAWB);
  FNewAWB.ShowOrg(FPasswd.ID_ORG);
  FNewAWB.ShowAirLines();
  FNewAWB.ShowTrack();
  FNewAWB.ShowKargo();
  // FNewAWB.ShowPrikul();
  FNewAWB.Show;
end;
procedure TFrameAWB.btnDelClick(Sender : TObject);
begin
  PGSQL.StandartDelete(QueryAWB.FieldByName('id').AsString, '"бух".awb',
                        QueryAWB, '', '', '', '');
end;
procedure TFrameAWB.btnEditClick(Sender : TObject);
begin
  if QueryAWB.Fields[0].AsString <> '' then
  begin
    Application.CreateForm(TFNewAWB, FNewAWB);
    with FNewAWB do
    begin
      s_id_awb := QueryAWB.FieldByName('id').AsInteger;
      s_id_kargo := QueryAWB.FieldByName('код_карго').AsInteger;
      edtKargo.Text := QueryAWB.FieldByName('name').AsString;
      edtNum.Text := QueryAWB.FieldByName('номер_awb').AsString;
      if QueryAWB.FieldByName('дата_вылета').AsString <> '' then
        edtDate.Date := QueryAWB.FieldByName('дата_вылета').AsDateTime;
      FNewAWB.ShowNewAWB();
      FNewAWB.ShowOrg(QueryAWB.FieldByName('код_организации').AsInteger);
      FNewAWB.ShowAirLines(QueryAWB.FieldByName('код_авиалинии').AsInteger);
      FNewAWB.ShowTrack(QueryAWB.FieldByName('код_трака').AsInteger);
      FNewAWB.ShowKargo(QueryAWB.FieldByName('код_карго').AsInteger);
      // FNewAWB.edtАвиалиния.Enabled := false;
      if QueryAWB.FieldByName('код_прикулинга').AsInteger <> 0 then
      begin
        ShowPrikul(QueryAWB.FieldByName('код_прикулинга').AsInteger);
        edtPrikul.Enabled := True;
        s_id_prikul := QueryAWB.FieldByName('код_прикулинга').AsInteger;
        Вес := QueryAWB.FieldByName('вес').AsFloat;
      end;
      FNewAWB.Show;
      EnableAdd;
    end;
  end;
end;
procedure TFrameAWB.btnExportClick(Sender : TObject);
begin
  ExportGridToExcel(FPasswd.GetVar('TEMP') + '\AWB', GridAWB, True, True,
                     True, 'xls');
  ShellExecute(Handle, nil, PChar(FPasswd.GetVar('TEMP') + '\AWB.xls'), nil,
                nil, SW_RESTORE);
end;
procedure TFrameAWB.btnRefreshClick(Sender : TObject);
begin
  ShowAWB(QueryAWB.FieldByName('id').AsInteger);
end;
procedure TFrameAWB.FrameTopPanel1btnArchPropertiesEditValueChanged
  (Sender : TObject);
begin
  ShowAWB();
end;
procedure TFrameAWB.ShowAWB(id_locate : Integer = 0);
begin
  with QueryAWB do
  begin
    sql.Clear;
    sql.Add(' SELECT k.name,');
    sql.Add(' a.id, a.код_организации,a.код_трака,');
    sql.Add(' a."код_карго",');
    sql.Add(' a."номер_awb",');
    sql.Add(' a."дата_вылета", a.код_авиалинии,  ');
    sql.Add('air.name air_name_rus, air.uni_name air_name_en, air.reg_name air_name_esp,');
    sql.Add(' o."name" организация,');
    sql.Add(' sum(sa."стоимость") стоимость,');
    sql.Add(' sum(sa."sum_FB") FB,');
    sql.Add(' sum(sa."sum_BOX") BOXS,');
    sql.Add(' sum(sa."вес") вес');
    sql.Add(', a.мнемо, мнемо_номер, a.код_прикулинга ');
    sql.Add(' FROM "бух".awb a');
    sql.Add(' INNER JOIN "карго"."агенства" k ON (a."код_карго" = k.id)');
    sql.Add(' LEFT join "бух".sub_awb sa on (sa."код_AWB" = a.id)');
    sql.Add(' inner join "организация"."организации" o on (a."код_организации" = o.id)');
    sql.Add(' LEFT join "авиалинии"."авиалинии" air on (a.код_авиалинии = air.id)');
    if FrameTopPanel1.btnArch.EditValue = True then
      sql.Add(' where a."архив_awb"=1')
    else
      sql.Add(' where a."архив_awb"=0');
    if FPasswd.ID_ROLE <> 1 then
      if FPasswd.ID_MAIN_ORG = 0 then
      begin
        sql.Add(' and код_организации=' + inttostr(FPasswd.ID_ORG));
      end;
    sql.Add(' group by k.name, a.код_организации, a.код_трака,');
    sql.Add(' a.id,');
    sql.Add(' a."код_карго",');
    sql.Add(' a."номер_awb",');
    sql.Add(' a."вес",');
    sql.Add(' a."дата_вылета",');
    sql.Add(' o."name",');
    sql.Add(' a.код_авиалинии, air.name, air.uni_name,air.reg_name ');
    sql.Add(', a.мнемо, мнемо_номер, a.код_прикулинга');
    sql.Add(' order by дата_вылета DESC');
    Open;
    Locate('id', id_locate, []);
  end;
end;
procedure TFrameAWB.SetLang;
begin
  case FPasswd.Lang of
    1 :
    begin
      // // Caption := 'Directories';
      // ItemТовары.Caption := 'Nomenclature';
      // ItemКлиент.Caption := 'Clients';
      // ItemСтраны.Caption := 'Country';
      // ItemТипы.Caption := 'Types';
      // ItemСвойства.Caption := 'Properties';
      // ItemПлантации.Caption := 'Plantation';
      // ItemСорта.Caption := 'Grades';
      // ItemОрганизация.Caption := 'Organization';
      // ItemПользователи.Caption := 'Users';
      // ItemРоль.Caption := 'The role';
      // GroupОснова.Caption := 'Main';
      // GroupСтруктура.Caption := 'Structure';
      // GroupОрг.Caption := 'Organization';
      // GroupАдмин.Caption := 'Administration';
      // ItemКарго.Caption := 'Cargo';
      // ItemАвиалинии.Caption := 'Airlines';
    end;
    2 :
    begin
      // Caption := 'Guías';
      ColumnДата.Caption := 'La fecha del vuelo';
      ColumnAWBNum.Caption := '№ AWB';
      ColumnKargo.Caption := 'El cargo';
      ColumnFB.Caption := 'La cantidad FB';
      ColumnBOX.Caption := 'La cantidad de las cajas';
      ColumnВес.Caption := 'El peso';
      ColumnOrg.Caption := 'La organización';
      ColumnАвиалиния.Caption := 'Aerolineas';
    end;
  end;
  case FPasswd.edtLangData.ItemIndex of
    0 :
    begin
      ColumnАвиалиния.DataBinding.FieldName := 'air_name_rus';
    end;
    2 :
    begin
      ColumnАвиалиния.DataBinding.FieldName := 'air_name_esp';
    end;
  end;
end;
procedure TFrameAWB.ViewAWBDblClick(Sender : TObject);
begin
  if FrameTopPanel1.btnEdit.Enabled = True then
    btnEditClick(Sender);
end;
end.
