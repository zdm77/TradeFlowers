unit UFacturPlant;

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
  UFrameTopPanel,
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
  cxCalc,
  cxGridBandedTableView,
  cxGridDBBandedTableView,
  cxGridExportLink,
  Winapi.ShellAPI,
  DBSumLst,
  cxCheckBox,
  cxContainer,
  cxGroupBox,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue;

type
  TFFacturPlant = class(TForm)
    FrameTopPanel1: TFrameTopPanel;
    QueryFacturPlant: TUniQuery;
    dsFacturPlant: TDataSource;
    QueryFacturPlant1: TUniQuery;
    GridBalance: TcxGrid;
    ViewBalance: TcxGridDBBandedTableView;
    ColumnFB: TcxGridDBBandedColumn;
    ViewBalanceFB_: TcxGridDBBandedColumn;
    ColumnКоробок: TcxGridDBBandedColumn;
    ViewBalanceBOX_: TcxGridDBBandedColumn;
    ColumnСуммаФактуры: TcxGridDBBandedColumn;
    ColumnСуммаОплаты: TcxGridDBBandedColumn;
    ColumnРазница: TcxGridDBBandedColumn;
    ViewBalancename: TcxGridDBBandedColumn;
    ViewBalance_awb: TcxGridDBBandedColumn;
    ViewBalance_: TcxGridDBBandedColumn;
    ViewBalance_1: TcxGridDBBandedColumn;
    ViewBalance_2: TcxGridDBBandedColumn;
    ViewBalance_4: TcxGridDBBandedColumn;
    ColumnТрак: TcxGridDBBandedColumn;
    LevelOrg: TcxGridLevel;
    Group1: TcxGroupBox;
    ColumnДатаПретензии: TcxGridDBBandedColumn;
    ColumnСуммаПретензии: TcxGridDBBandedColumn;
    ColumnСтатусПретензии: TcxGridDBBandedColumn;
    ColumnОдобреннаяСумма: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEditClick(Sender: TObject);
    procedure ColumnРазницаCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure ViewBalanceBOX_CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure ViewBalanceDblClick(Sender: TObject);
    procedure ViewBalanceFB_CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnFilterClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure FrameTopPanel1btnRestClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FrameTopPanel1btnArchPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    id_change: Boolean;
    s_id_plant: Integer;
    procedure Access;
    procedure SetLang;
    procedure ShowFact(id_locate: Integer = 0);
    { Public declarations }
  end;

var
  FFacturPlant: TFFacturPlant;

implementation

{$R *.dfm}

uses
  UFEditFact,
  UPasswd,
  UBuh,
  USubAWB,
  UNewOplatPlant,
  PGSQL;

procedure TFFacturPlant.Access;
begin
  if True then
end;

procedure TFFacturPlant.btnEditClick(Sender: TObject);
begin
  if QueryFacturPlant.FieldByName('о_номер_awb').AsString <> '' then
  begin
    Application.CreateForm(TFEditFact, FEditFact);
    with FEditFact do
    begin
      if QueryFacturPlant.FieldByName('о_дата_фактуры').AsString <> '' then
        edtDateFact.Date := QueryFacturPlant.FieldByName('о_дата_фактуры')
          .AsDateTime
      else
        edtDateFact.Date := Now;
      edtNum.Text := QueryFacturPlant.FieldByName('о_номер_фактуры').AsString;
      edtSumFact.Text := QueryFacturPlant.FieldByName
        ('о_сумма_фактуры').AsString;
      // if QueryFacturPlant.FieldByName('о_дата_притензии').AsString <> '' then
      // edtDatePrit.Date := QueryFacturPlant.FieldByName('о_дата_притензии')
      // .AsDateTime;
      // edtSumPrit.Text := QueryFacturPlant.FieldByName
      // ('о_сумма_притензии').AsString;
      // edtSumGoodPrit.Text := QueryFacturPlant.FieldByName
      // ('о_одобренная_сумма_притензии').AsString;
      // mmoПритензияРус.Text := QueryFacturPlant.FieldByName
      // ('о_текст_притензии_рус').AsString;
      // mmoПритензияИсп.Text := QueryFacturPlant.FieldByName
      // ('о_текст_притензии_исп').AsString;
      // mmoОдобреннаяСумма.Text := QueryFacturPlant.FieldByName
      // ('о_текст_одобренной_суммы').AsString;
      // if QueryFacturPlant.FieldByName('о_статус_притензии').AsString = 'ok' then
      // begin
      // chkExePrit.Checked := True;
      // if FPasswd.ID_ROLE <> 1 then
      // begin
      // edtDatePrit.Enabled := false;
      // edtSumPrit.Enabled := false;
      // edtSumGoodPrit.Enabled := false;
      // chkExePrit.Enabled := false;
      // mmoПритензияРус.Enabled := false;
      // mmoПритензияИсп.Enabled := false;
      // mmoОдобреннаяСумма.Enabled := false;
      // end;
      // edtDateOpl.Text := QueryFacturPlant.FieldByName('дата_оплаты').AsString;
      // edtSumOpl.Text := QueryFacturPlant.FieldByName('сумма_оплаты').AsString;
      idPlant := s_id_plant;
      s_id_detail := QueryFacturPlant.FieldByName('о_код').AsInteger;
      ShowOpl();
      edtFB.Text := QueryFacturPlant.FieldByName('о_FB_фактура').AsString;
      edtBox.Text := QueryFacturPlant.FieldByName('о_BOX_фактура').AsString;
      id_change := false;
      ShowPretenz;
      ShowModal;
      if FrameSave1.id_save = True then
      begin
        id_change := True;
      end;
    end;
  end;
end;

procedure TFFacturPlant.btnExportClick(Sender: TObject);
var
  s: string;
begin
  s := FPasswd.GetVar('TEMP') + '\' + Caption + '_' +
    FormatDateTime('dd_MM_yyyy', Now);
  ExportGridToExcel(s, GridBalance, True, True, True, 'xls');
  ShellExecute(Handle, nil, PChar(s + '.xls'), nil, nil, SW_RESTORE);
end;

procedure TFFacturPlant.btnFilterClick(Sender: TObject);
begin
  Application.CreateForm(TFSubAWB, FSubAWB);
  with FSubAWB do
  begin
    s_id_awb_for_sub := QueryFacturPlant.FieldByName('о_код_awb').AsInteger;
    s_id_SubAWB := QueryFacturPlant.FieldByName('о_sa_id').AsInteger;
    s_id_marking := QueryFacturPlant.FieldByName('о_код_маркировки').AsInteger;
    edtMarking.Text := QueryFacturPlant.FieldByName('о_маркировка').AsString;
    edtWeight.Text := QueryFacturPlant.FieldByName('о_вес').AsString;
    edtStoim.Text := QueryFacturPlant.FieldByName('о_стоимость').AsString;
    ShowSubAWB(QueryFacturPlant.FieldByName('о_код').AsInteger);
    ShowTrack(QueryFacturPlant.FieldByName('о_код_трака').AsInteger);
    btnEditClick(Sender);
    ShowModal;
    if s_id_SubAWB <> 0 then
      ShowFact(s_id_SubAWB);
  end;
end;

procedure TFFacturPlant.btnRefreshClick(Sender: TObject);
begin
  ShowFact(QueryFacturPlant.FieldByName('о_код').AsInteger);
end;

procedure TFFacturPlant.ColumnРазницаCustomDrawCell
  (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Values[6] < 0 then
  begin
    ACanvas.Canvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
  end;
  if AViewInfo.GridRecord.Values[6] > 0 then
  begin
    ACanvas.Canvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
  end
end;

procedure TFFacturPlant.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(FBuh) and (id_change = True) then
    FBuh.FrameBalance1.ShowBalance(s_id_plant);
  Action := caFree;
  FFacturPlant := nil;
end;

procedure TFFacturPlant.FormShow(Sender: TObject);
begin
  SetLang;
  id_change := false;
end;

procedure TFFacturPlant.FrameTopPanel1btnArchPropertiesEditValueChanged
  (Sender: TObject);
begin
  ShowFact();
end;

procedure TFFacturPlant.FrameTopPanel1btnRestClick(Sender: TObject);
begin
  Application.CreateForm(TFNewOplatPlant, FNewOplatPlant);
  with FNewOplatPlant do
  begin
    s_ins_upd := True;
    id_plant := s_id_plant;
    edtPlant.Text := PGSQL.GetFieldFromId(s_id_plant, 'name',
      '"продукция"."плантации"');
    ShowModal;
  end;
end;

procedure TFFacturPlant.SetLang;
begin
  case FPasswd.Lang of
    1:
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
    2:
      begin
        // Caption := 'Guías';
        // GridBalanceDBBandedTableView1.Bands[1].Caption := 'Las facturas';
        // ColumnПлантация.Caption := 'La plantación';
        // ColumnFB.Caption := 'La cantidad FB';
        // ColumnBOX.Caption := 'La cantidad de las cajas';
        // ColumnFBфакт.Caption := 'La cantidad FB';
        // ColumnBOXфакт.Caption := 'La cantidad de las cajas';
        // ColumnСуммаФактур.Caption := 'La suma de facturas';
        // ColumnРазница.Caption := 'La diferencia';
        // ColumnСуммаОплат.Caption := 'La suma de pagas';
        // ColumnПритензия.Caption := 'La suma de reclamaciones';
        FrameTopPanel1.btnEdit.Caption := 'Cambiar';
        FrameTopPanel1.btnRefresh.Caption := 'Renovar';
        FrameTopPanel1.btnRest.Caption := 'Pagar';
        FrameTopPanel1.btnFilter.Caption := 'A AWB';
        FrameTopPanel1.btnExport.Caption := 'En Excel';
      end;
  end;
end;

procedure TFFacturPlant.ViewBalanceBOX_CustomDrawCell
  (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Values[2] > AViewInfo.GridRecord.Values[3] then
  begin
    ACanvas.Canvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
  end;
  if AViewInfo.GridRecord.Values[2] < AViewInfo.GridRecord.Values[3] then
  begin
    ACanvas.Canvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
  end
end;

procedure TFFacturPlant.ViewBalanceDblClick(Sender: TObject);
begin
  btnEditClick(Sender);
end;

procedure TFFacturPlant.ViewBalanceFB_CustomDrawCell
  (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Values[0] > AViewInfo.GridRecord.Values[1] then
  begin
    ACanvas.Canvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
  end;
  if AViewInfo.GridRecord.Values[0] < AViewInfo.GridRecord.Values[1] then
  begin
    ACanvas.Canvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
  end
end;

procedure TFFacturPlant.ShowFact(id_locate: Integer = 0);
var
  id_arch: Integer;
begin
  with QueryFacturPlant do
  begin
    SQL.Clear;
    // SQL.Add(' SELECT a."номер_awb",');
    // SQL.Add(' a."дата_вылета",');
    // SQL.Add(' a.id id_awb,');
    // SQL.Add(' sad.id,');
    // SQL.Add(' sa.id sa_id,');
    // SQL.Add(' sa."код_маркировки",');
    // SQL.Add(' a."вес",');
    // SQL.Add(' a."стоимость", t.id  t_id,');
    // SQL.Add(' sad."дата_фактуры",');
    // SQL.Add(' sad."номер_фактуры",');
    // SQL.Add(' sad."сумма_фактуры",');
    // SQL.Add(' sad."FB_фактура",');
    // SQL.Add(' sad."BOX_фактура",');
    // SQL.Add(' m.name, t.name трак,');
    // SQL.Add(' sad."кол_во_fb",');
    // SQL.Add(' sad."кол_во",');
    // SQL.Add(' sad."дата_притензии",');
    // SQL.Add(' sad."сумма_притензии",');
    // SQL.Add(' sad."одобренная_сумма_притензии",');
    // SQL.Add(' sad."статус_притензии",');
    // SQL.Add(' sad."текст_притензии_рус",');
    // SQL.Add(' sad."текст_притензии_исп",');
    // SQL.Add(' sad."текст_одобренной_суммы",');
    // SQL.Add(' max(o."дата") дата_оплаты,');
    // SQL.Add(' sum(o."сумма") сумма_оплаты,');
    // SQL.Add(' COALESCE(sum(o."сумма") - min(sad."сумма_фактуры"),  - min(sad."сумма_фактуры")) разница');
    // SQL.Add(' FROM "бух".sub_awb_detail sad');
    // SQL.Add(' INNER JOIN "бух".sub_awb sa ON (sad."код_sub_awb" = sa.id)');
    // SQL.Add(' INNER JOIN "бух".awb a ON (sa."код_AWB" = a.id)');
    // SQL.Add(' INNER JOIN "маркировки"."маркировки" m ON (sa."код_маркировки" = m.id)');
    // SQL.Add(' left join "бух"."оплата" o on (o."код_детали_awb" = sad.id)');
    // SQL.Add(' inner join "траки"."траки" t on (sa."код_трака"=t.id)');
    // SQL.Add(' where sad."код_плантации" = :id_plant');
    // SQL.Add(' group by a."номер_awb",');
    // SQL.Add(' a.id,');
    // SQL.Add(' a."дата_вылета",');
    // SQL.Add(' sad.id,');
    // SQL.Add(' sa.id,');
    // SQL.Add('  sa."код_маркировки",');
    // SQL.Add('  a."вес",');
    // SQL.Add('  a."стоимость", t.id ,');
    // SQL.Add(' sad."дата_фактуры",');
    // SQL.Add(' sad."номер_фактуры",');
    // SQL.Add(' sad."сумма_фактуры",');
    // SQL.Add(' sad."FB_фактура",');
    // SQL.Add(' sad."BOX_фактура",');
    // SQL.Add(' m.name,');
    // SQL.Add(' sad."кол_во_fb",');
    // SQL.Add(' sad."кол_во", t.name,');
    // SQL.Add(' sad."дата_притензии",');
    // SQL.Add(' sad."сумма_притензии",');
    // SQL.Add(' sad."одобренная_сумма_притензии",');
    // SQL.Add(' sad."статус_притензии",');
    // SQL.Add(' sad."текст_притензии_рус",');
    // SQL.Add(' sad."текст_притензии_исп",');
    // SQL.Add(' sad."текст_одобренной_суммы"');
    // SQL.Add(' order by дата_вылета DESC,');
    // SQL.Add(' name');
{$REGION 'Последний работающий'}
    // SQL.Add(' SELECT a."номер_awb",');
    // SQL.Add(' a."дата_вылета",');
    // SQL.Add(' a.id id_awb,');
    // SQL.Add(' sad.id,');
    // SQL.Add(' sa.id sa_id,');
    // SQL.Add(' sa."код_маркировки",');
    // SQL.Add(' a."вес",');
    // SQL.Add(' a."стоимость",');
    // SQL.Add(' t.id t_id,');
    // SQL.Add(' дата_фактуры дата,');
    // SQL.Add(' sad."дата_фактуры",');
    // SQL.Add(' null дата_оплаты,');
    // SQL.Add(' sad."номер_фактуры",');
    // SQL.Add(' null номер_пп, ');
    // SQL.Add(' null сумма_оплаты,');
    // SQL.Add(' sad."сумма_фактуры",');
    // SQL.Add(' sad."FB_фактура",');
    // SQL.Add(' sad."BOX_фактура",');
    // SQL.Add(' m.name,');
    // SQL.Add(' t.name трак,');
    // SQL.Add(' sad."кол_во_fb",');
    // SQL.Add(' sad."кол_во",');
    // SQL.Add(' sad."дата_притензии",');
    // SQL.Add(' sad."сумма_притензии",');
    // SQL.Add(' sad."одобренная_сумма_притензии",');
    // SQL.Add(' sad."статус_притензии",');
    // SQL.Add(' sad."текст_притензии_рус",');
    // SQL.Add(' sad."текст_притензии_исп",');
    // SQL.Add(' sad."текст_одобренной_суммы",');
    // SQL.Add(' sad."код_плантации"');
    // SQL.Add(' FROM "бух".sub_awb_detail sad');
    // SQL.Add(' INNER JOIN "бух".sub_awb sa ON (sad."код_sub_awb" = sa.id)');
    // SQL.Add(' INNER JOIN "бух".awb a ON (sa."код_AWB" = a.id)');
    // SQL.Add(' INNER JOIN "маркировки"."маркировки" m ON (sa."код_маркировки" = m.id)');
    // SQL.Add(' inner join "траки"."траки" t on (sa."код_трака" = t.id)');
    // SQL.Add(' where "код_плантации" = :id_plant');
    // SQL.Add(' union all');
    // SQL.Add(' SELECT NULL,');
    // SQL.Add(' NULL,');
    // SQL.Add(' NULL,');
    // SQL.Add(' NULL,');
    // SQL.Add(' NULL,');
    // SQL.Add(' NULL,');
    // SQL.Add(' NULL,');
    // SQL.Add(' NULL,');
    // SQL.Add(' NULL,');
    // SQL.Add(' opl."дата_пп" дата,');
    // SQL.Add(' null ,');
    // SQL.Add(' ');
    // SQL.Add(' opl."дата_пп",');
    // SQL.Add(' NULL,');
    // SQL.Add(' opl."номер_пп",');
    // SQL.Add(' opl."сумма_пп",');
    // SQL.Add(' null,');
    // SQL.Add(' NULL,');
    // SQL.Add(' NULL,');
    // SQL.Add(' NULL,');
    // SQL.Add(' NULL,');
    // SQL.Add(' NULL,');
    // SQL.Add(' NULL,');
    // SQL.Add(' NULL,');
    // SQL.Add(' NULL,');
    // SQL.Add(' NULL,');
    // SQL.Add(' NULL,');
    // SQL.Add(' NULL,');
    // SQL.Add(' NULL,');
    // SQL.Add(' NULL,');
    // SQL.Add(' код_плантации');
    // SQL.Add(' FROM "бух"."бух_оплата_плантации" opl');
    // SQL.Add(' where "код_плантации" = :id_plant');
    // SQL.Add(' order by дата');
    // ParamByName('id_plant').AsInteger := s_id_plant;
{$ENDREGION}
    if FrameTopPanel1.btnArch.EditValue = True then
      id_arch := 1
    else
      id_arch := 0;
    SQL.Add('select * from "бух"."оплата_плантаций"(' + IntToStr(s_id_plant) +
      ',' + IntToStr(id_arch) + ')');
    Open;
    Locate('о_код', id_locate, []);
    ViewBalance.ApplyBestFit(nil, True, false);
  end;
end;

end.
