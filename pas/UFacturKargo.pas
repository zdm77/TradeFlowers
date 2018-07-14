unit UFacturKargo;

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
  cxCalc,
  MemDS,
  DBAccess,
  Uni,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridBandedTableView,
  cxGridDBBandedTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  UFrameTopPanel,
  cxPCdxBarPopupMenu,
  cxPC,
  cxGridExportLink,
  Winapi.ShellAPI,
  cxGridDBTableView,
  cxContainer,
  Vcl.StdCtrls,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sTooledit,
  cxGroupBox,
  dxBarBuiltInMenu,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue;

type
  TFFacturKargo = class(TForm)
    FrameTopPanel1: TFrameTopPanel;
    QueryFacturKargo: TUniQuery;
    dsFacturKargo: TDataSource;
    QueryFacturKargo1: TUniQuery;
    Page1: TcxPageControl;
    tabOsn: TcxTabSheet;
    tabOpl: TcxTabSheet;
    GridBalance: TcxGrid;
    GridBalanceDBBandedTableView1: TcxGridDBBandedTableView;
    ColumnСтоимость: TcxGridDBBandedColumn;
    ColumnСуммаОплаты: TcxGridDBBandedColumn;
    ColumnРазница: TcxGridDBBandedColumn;
    ColumnНомер: TcxGridDBBandedColumn;
    ColumnДатаВылета: TcxGridDBBandedColumn;
    ColumnДатаФактура: TcxGridDBBandedColumn;
    ColumnНомерФактура: TcxGridDBBandedColumn;
    ColumnПослПлатеж: TcxGridDBBandedColumn;
    ColumnСуммаФактуры: TcxGridDBBandedColumn;
    LevelOrg: TcxGridLevel;
    QueryOplAll: TUniQuery;
    dsOplAll: TDataSource;
    cxGroupBox1: TcxGroupBox;
    GridOPl: TcxGrid;
    GridOPlDBTableView1: TcxGridDBTableView;
    ColumnОплДатаВылета: TcxGridDBColumn;
    ColumnОплНомерAWB: TcxGridDBColumn;
    ColumnОплСтоимость: TcxGridDBColumn;
    ColumnОплДатаФактуры: TcxGridDBColumn;
    ColumnОплНомерФактуры: TcxGridDBColumn;
    ColumnОплСуммаФактуры: TcxGridDBColumn;
    ColumnОплПретензия: TcxGridDBColumn;
    ColumnОплДатаОплаты: TcxGridDBColumn;
    ColumnОплОплата: TcxGridDBColumn;
    ColumnОплРазница: TcxGridDBColumn;
    ColumnОплНомерПП: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    chkDate: TCheckBox;
    edtOt: TsDateEdit;
    edtDo: TsDateEdit;
    lblDo: TLabel;
    ColumnПретензия: TcxGridDBBandedColumn;
    procedure btnEditClick(Sender: TObject);
    procedure ColumnРазницаCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure GridBalanceDBBandedTableView1DblClick(Sender: TObject);
    procedure Page1Change(Sender: TObject);
    procedure chkDateClick(Sender: TObject);
    procedure edtDoChange(Sender: TObject);
    procedure edtDoCloseUp(Sender: TObject);
    procedure edtDoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtOtCloseUp(Sender: TObject);
    procedure edtOtKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnAddClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
  private
    { Private declarations }
  public
    s_id_kargo: Integer;
    procedure SetLang;
    procedure ShowFact(id_locate: Integer = 0);
    procedure ShowOplAll;
    { Public declarations }
  end;

var
  FFacturKargo: TFFacturKargo;

implementation

{$R *.dfm}

uses
  UEditFactKargo,
  UBuh,
  UPasswd;

procedure TFFacturKargo.btnAddClick(Sender: TObject);
begin
  ShowMessage('В разработке');
end;

procedure TFFacturKargo.btnEditClick(Sender: TObject);
begin
  case Page1.ActivePageIndex of
    0:
      begin
        Application.CreateForm(TFEditFactKargo, FEditFactKargo);
        with FEditFactKargo do
        begin
          edtDateFact.Text := QueryFacturKargo.FieldByName
            ('дата_фактуры_карго').AsString;
          edtNum.Text := QueryFacturKargo.FieldByName
            ('номер_фактуры_карго').AsString;
          edtSumFact.Text := QueryFacturKargo.FieldByName
            ('сумма_фактуры_карго').AsString;
          edtSumAWB.Text := QueryFacturKargo.FieldByName('стоимость').AsString;
          // edtDateOpl.Text := QueryFacturPlant.FieldByName('дата_оплаты').AsString;
          // edtSumOpl.Text := QueryFacturPlant.FieldByName('сумма_оплаты').AsString;
          s_id_detail := QueryFacturKargo.FieldByName('id').AsInteger;
          edtПретензия.Text := QueryFacturKargo.FieldByName
            ('претензия').AsString;
          ShowOpl();
          ShowModal;
          if FrameSave1.id_save = true then
          begin
          end;
        end;
      end;
  end;
end;

procedure TFFacturKargo.btnExportClick(Sender: TObject);
begin
  case Page1.ActivePageIndex of
    0:
      ExportGridToExcel(FPasswd.GetVar('TEMP') + '\fact_kargo', GridBalance,
        true, true, true, 'xls');
    1:
      ExportGridToExcel(FPasswd.GetVar('TEMP') + '\fact_kargo', GridOPl, true,
        true, true, 'xls');
  end;
  ShellExecute(Handle, nil, PChar(FPasswd.GetVar('TEMP') + '\fact_kargo.xls'),
    nil, nil, SW_RESTORE);
end;

procedure TFFacturKargo.btnRefreshClick(Sender: TObject);
begin
  ShowFact();
  ShowOplAll;
end;

procedure TFFacturKargo.chkDateClick(Sender: TObject);
begin
  edtOt.Enabled := chkDate.Checked;
  edtDo.Enabled := chkDate.Checked;
  ShowOplAll;
end;

procedure TFFacturKargo.ColumnРазницаCustomDrawCell
  (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Values[2] < 0 then
  begin
    ACanvas.Canvas.Brush.Color := clRed;
    ACanvas.Font.Color := clWhite;
  end;
  if AViewInfo.GridRecord.Values[2] > 0 then
  begin
    ACanvas.Canvas.Brush.Color := clGreen;
    ACanvas.Font.Color := clWhite;
  end
end;

procedure TFFacturKargo.edtDoChange(Sender: TObject);
begin
  ShowOplAll;
end;

procedure TFFacturKargo.edtDoCloseUp(Sender: TObject);
begin
  ShowOplAll;
end;

procedure TFFacturKargo.edtDoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    ShowOplAll;
end;

procedure TFFacturKargo.edtOtCloseUp(Sender: TObject);
begin
  ShowOplAll;
end;

procedure TFFacturKargo.edtOtKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    ShowOplAll;
end;

procedure TFFacturKargo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(FBuh) then
    FBuh.FrameBalanceKargo1.ShowBalance(s_id_kargo);
  Action := caFree;
  FFacturKargo := nil;
end;

procedure TFFacturKargo.FormShow(Sender: TObject);
begin
  SetLang;
  Page1.ActivePageIndex := 0;
  FrameTopPanel1.btnAdd.Enabled := false;
end;

procedure TFFacturKargo.GridBalanceDBBandedTableView1DblClick(Sender: TObject);
begin
  btnEditClick(Sender);
end;

procedure TFFacturKargo.Page1Change(Sender: TObject);
begin
  if Page1.ActivePageIndex = 1 then
  begin
    FrameTopPanel1.btnAdd.Enabled := true;
    if QueryOplAll.Active = false then
      ShowOplAll;
  end
  else
    FrameTopPanel1.btnAdd.Enabled := false;
end;

procedure TFFacturKargo.SetLang;
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
        GridBalanceDBBandedTableView1.Bands[1].Caption := 'La factura';
        GridBalanceDBBandedTableView1.Bands[2].Caption :=
          'Las noticias básicas';
        GridBalanceDBBandedTableView1.Bands[3].Caption := 'La paga';
        ColumnСтоимость.Caption := 'El coste';
        ColumnСуммаОплаты.Caption := 'La suma';
        ColumnРазница.Caption := 'La diferencia';
        ColumnНомер.Caption := 'El número';
        ColumnДатаВылета.Caption := 'La fecha del vuelo';
        ColumnДатаФактура.Caption := 'La fecha';
        ColumnНомерФактура.Caption := 'El número';
        ColumnПослПлатеж.Caption := 'El último pagamento';
        ColumnСуммаФактуры.Caption := 'La suma de factura';
        ColumnПретензия.Caption := 'La reclamación';
        tabOsn.Caption := 'Las facturas';
        tabOpl.Caption := 'La paga';
        ColumnОплДатаВылета.Caption := 'La fecha del vuelo';
        ColumnОплНомерAWB.Caption := 'El número';
        ColumnОплСтоимость.Caption := 'El coste';
        ColumnОплДатаФактуры.Caption := 'La fecha de la factura';
        ColumnОплНомерФактуры.Caption := 'El número de la factura';
        ColumnОплСуммаФактуры.Caption := 'La suma de factura';
        ColumnОплПретензия.Caption := 'La pretensión';
        ColumnОплДатаОплаты.Caption := 'La fecha de la paga';
        ColumnОплОплата.Caption := 'La suma de paga';
        ColumnОплРазница.Caption := 'La diferencia';
        ColumnОплНомерПП.Caption := 'El número';
        chkDate.Caption := 'El filtro. Fecha del vuelo con:';
        lblDo.Caption := 'De:';
      end;
  end;
  FrameTopPanel1.SetLang;
end;

procedure TFFacturKargo.ShowFact(id_locate: Integer = 0);
begin
{$REGION 'MyRegion'}
  with QueryFacturKargo do
  begin
    SQL.Clear;
    SQL.Add(' SELECT a.id, a."номер_awb",');
    SQL.Add(' a."дата_вылета",');
    SQL.Add(' a."стоимость",');
    SQL.Add(' a."дата_фактуры_карго",');
    SQL.Add(' a."номер_фактуры_карго",');
    SQL.Add(' a."сумма_фактуры_карго",');
    SQL.Add(' a."претензия",');
    SQL.Add(' max(o."дата") дата_оплаты,');
    SQL.Add(' sum(o."сумма") сумма_оплаты,');
    SQL.Add(' COALESCE(sum(o."сумма") - min(a."сумма_фактуры_карго")+ min( ' +
      ' a."претензия"), - min(a."сумма_фактуры_карго")+ min(' +
      ' a."претензия")) разница');
    SQL.Add(' FROM "бух".awb a');
    SQL.Add(' left JOIN "бух"."оплата_awb" o on o."код_awb" = a.id');
    SQL.Add(' where a."код_карго"=' + IntToStr(s_id_kargo) +
      ' and a."архив_awb"=0 ');
    SQL.Add(' group by a."номер_awb",');
    SQL.Add(' a.id, a."дата_вылета",');
    SQL.Add(' a."дата_фактуры_карго",');
    SQL.Add(' a."номер_фактуры_карго",');
    SQL.Add(' a."сумма_фактуры_карго",');
    SQL.Add(' a."стоимость",');
    SQL.Add(' a."претензия"');
    SQL.Add(' order by дата_вылета ');
    Open;
    Locate('id', id_locate, []);
  end;
{$ENDREGION};
end;

procedure TFFacturKargo.ShowOplAll;
begin
  with QueryOplAll do
  begin
    SQL.Clear;
    SQL.Add(' select * from');
    SQL.Add(' (');
    SQL.Add(' SELECT a.id,');
    SQL.Add(' a."код_карго",');
    SQL.Add(' a."номер_awb",');
    SQL.Add(' a."дата_вылета",');
    SQL.Add(' a."дата_вылета" a2,');
    SQL.Add(' a."стоимость",');
    SQL.Add(' a."дата_фактуры_карго",');
    SQL.Add(' a."номер_фактуры_карго",');
    SQL.Add(' a."сумма_фактуры_карго",');
    SQL.Add(' a."претензия",');
    SQL.Add(' NULL as id_o,');
    SQL.Add(' NULL as код_awb,');
    SQL.Add(' NULL as сумма,');
    SQL.Add(' NULL as дата_оплаты,');
    SQL.Add(' a."разница" разница,');
    SQL.Add(' NULL as номер_пп, a."архив_awb"');
    SQL.Add(' FROM "бух".awb a');
    SQL.Add(' union ALL (');
    SQL.Add(' select a.id,');
    SQL.Add(' a."код_карго",');
    SQL.Add(' NULL,');
    SQL.Add(' NULL,');
    SQL.Add('  a."дата_вылета" a2,');
    SQL.Add(' NULL,');
    SQL.Add(' NULL,');
    SQL.Add(' NULL,');
    SQL.Add(' NULL,');
    SQL.Add(' NULL,');
    SQL.Add(' o.id,');
    SQL.Add(' o."код_awb",');
    SQL.Add(' o."сумма",');
    SQL.Add(' o."дата",');
    SQL.Add(' o."разница",');
    SQL.Add(' o."номер_пп", a."архив_awb" ');
    SQL.Add(' from "бух"."оплата_awb" o');
    SQL.Add(' left join "бух".awb a on (a.id = o."код_awb")');
    SQL.Add(' )');
    SQL.Add(' ) t');
    SQL.Add(' where код_карго=' + IntToStr(s_id_kargo) + '  and "архив_awb"=0');
    if chkDate.Checked = true then
    begin
      SQL.Add(' and a2 between :d1 and :d2');
      ParamByName('d1').AsString := edtOt.Text;
      if edtDo.Text <> '  .  .    ' then
        ParamByName('d2').AsString := edtDo.Text
      else
        ParamByName('d2').AsString := '01.01.3000';
    end;
    SQL.Add(' order by a2, номер_awb, id, дата_оплаты');
    Open;
  end;
end;

end.
