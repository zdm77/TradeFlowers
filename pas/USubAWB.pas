unit USubAWB;

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
  
  UFrameTopPanel,
  Vcl.StdCtrls,
  AdvEdit,
  cxTextEdit,
  cxMaskEdit,
  cxButtonEdit,
  cxGroupBox,
  cxStyles,
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxNavigator,
  Data.DB,
  cxDBData,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  MemDS,
  DBAccess,
  Uni,
  cxGridExportLink,
  Winapi.ShellAPI,
  cxGridBandedTableView,
  cxGridDBBandedTableView,
  cxCalc,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sCurrEdit,
  Vcl.Menus,
  cxButtons,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue, dxSkinOffice2007Blue, dxSkinsDefaultPainters;

type
  TFSubAWB = class(TForm)
    Group1: TcxGroupBox;
    lblМарикровка: TLabel;
    edtMarking: TcxButtonEdit;
    lblВес: TLabel;
    Label2: TLabel;
    FrameTopPanel1: TFrameTopPanel;
    QuerySubAWB: TUniQuery;
    dsSubAWB: TDataSource;
    QuerySubAWB1: TUniQuery;
    GridSubAWB: TcxGrid;
    LevelOrg: TcxGridLevel;
    GridSubAWBDBBandedTableView1: TcxGridDBBandedTableView;
    ColumnFB: TcxGridDBBandedColumn;
    ColumnBOX: TcxGridDBBandedColumn;
    ColumnLДата: TcxGridDBBandedColumn;
    ColumnНомер: TcxGridDBBandedColumn;
    ColumnСумма: TcxGridDBBandedColumn;
    GridSubAWBDBBandedTableView1_5: TcxGridDBBandedColumn;
    GridSubAWBDBBandedTableView1_6: TcxGridDBBandedColumn;
    ColumnПлантация: TcxGridDBBandedColumn;
    ColumnFBфакт: TcxGridDBBandedColumn;
    ColumnBOXфакт: TcxGridDBBandedColumn;
    QueryTrack: TUniQuery;
    dsTrack: TDataSource;
    edtTrack: TcxLookupComboBox;
    lblТрак: TLabel;
    Query1: TUniQuery;
    edtWeight: TsCalcEdit;
    edtStoim: TsCalcEdit;
    btnCalc: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtMarkingPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure ViewSubAWBDblClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure GridSubAWBDBBandedTableView1DblClick(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnRazdelClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure edtWeightChange(Sender: TObject);
    procedure edtTrackPropertiesChange(Sender: TObject);
    procedure btnCalcClick(Sender: TObject);
  private
    { Private declarations }
  public
    s_id_awb_for_sub: Integer;
    s_id_SubAWB: Integer;
    s_id_marking: Integer;
    IDSave: Boolean;
    s_id_airLine: Integer;
    s_id_Kargo_SUB: Integer;
    СтоимостьАвиалинии: Double;
    s_Вес: Double;
    Detect_Change_Weight: Boolean;
    procedure Access;
    procedure EnableAdd;
    procedure InsUpdSubAWB(id_ins: Boolean);
    procedure InsUpdDetail(id_ins: Boolean; FB: Double = 0; BOX: Integer = 0);
    procedure SetLang;
    procedure ShowSubAWB(id_locate: Integer = 0);
    procedure ShowTrack(id_locate: Integer = 0);
    procedure РасчетСтоимости;
    { Public declarations }
  end;

var
  FSubAWB: TFSubAWB;

implementation

{$R *.dfm}

uses
  USelect,
  UPasswd,
  PGSQL,
  UNewSubAWBDetail,
  UFEditFact;

procedure TFSubAWB.Access;
begin
  if (FPasswd.ID_ROLE <> 1) then
  begin
    with Query1 do
    begin
      { доступ }
      Close;
      sql.Text := 'select * from "пользователи"."доступ"  where код_роли=' +
        IntToStr(FPasswd.ID_ROLE);
      Open;
      FrameTopPanel1.btnFilter.Enabled :=
        FieldByName('бух_баланс_плантаций_просмотр').AsBoolean;
    end;
  end;
end;

procedure TFSubAWB.btnAddClick(Sender: TObject);
begin
  if s_id_SubAWB <> 0 then
  begin
    Application.CreateForm(TFNewSubAWBDetail, FNewSubAWBDetail);
    with FNewSubAWBDetail do
    begin
      edtPlantPropertiesButtonClick(Sender, 0);
      ShowModal;
      if FrameSave1.id_save = true then
      begin
        IDSave := true;
        InsUpdDetail(true);
        // РасчетСтоимости;
      end;
    end;
    EnableAdd;
  end;
end;

procedure TFSubAWB.btnCalcClick(Sender: TObject);
begin
  РасчетСтоимости;
end;

procedure TFSubAWB.btnDelClick(Sender: TObject);
begin
  PGSQL.StandartDelete(QuerySubAWB.FieldByName('id').AsString,
    '"бух"."sub_awb_detail"', QuerySubAWB, '', '', '', '');
  InsUpdSubAWB(FALSE);
end;

procedure TFSubAWB.btnEditClick(Sender: TObject);
begin
  if QuerySubAWB.Fields[0].AsString <> '' then
  begin
    Application.CreateForm(TFNewSubAWBDetail, FNewSubAWBDetail);
    with FNewSubAWBDetail do
    begin
      s_id_plant := QuerySubAWB.FieldByName('код_плантации').AsInteger;
      edtPlant.Text := QuerySubAWB.FieldByName('name').AsString;
      edtFB.Text := QuerySubAWB.FieldByName('кол_во_fb').AsString;
      edtBox.Text := QuerySubAWB.FieldByName('кол_во').AsString;
      ShowModal;
      if FrameSave1.id_save = true then
      begin
        IDSave := true;
        InsUpdDetail(FALSE);
      end;
    end;
  end;
end;

procedure TFSubAWB.btnExportClick(Sender: TObject);
begin
  ExportGridToExcel(FPasswd.GetVar('TEMP') + '\subAWB', GridSubAWB, true, true,
    true, 'xls');
  ShellExecute(Handle, nil, PChar(FPasswd.GetVar('TEMP') + '\subAWB.xls'), nil,
    nil, SW_RESTORE);
end;

procedure TFSubAWB.btnFilterClick(Sender: TObject);
begin
  with Query1 do
  begin
  end;
  Application.CreateForm(TFEditFact, FEditFact);
  with FEditFact do
  begin
    if QuerySubAWB.FieldByName('дата_фактуры').AsString <> '' then
      edtDateFact.Date := QuerySubAWB.FieldByName('дата_фактуры').AsDateTime
    else
      edtDateFact.Date := Now;
    edtNum.Text := QuerySubAWB.FieldByName('номер_фактуры').AsString;
    edtSumFact.Text := QuerySubAWB.FieldByName('сумма_фактуры').AsString;
    // edtDateOpl.Text := QueryFacturPlant.FieldByName('дата_оплаты').AsString;
    // edtSumOpl.Text := QueryFacturPlant.FieldByName('сумма_оплаты').AsString;
    s_id_detail := QuerySubAWB.FieldByName('id').AsInteger;
    ShowOpl();
    edtFB.Text := QuerySubAWB.FieldByName('FB_фактура').AsString;
    edtBox.Text := QuerySubAWB.FieldByName('BOX_фактура').AsString;
    ID_CHANGE := FALSE;
    ShowPretenz;
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      ShowSubAWB();
    end;
  end;
end;

procedure TFSubAWB.btnRazdelClick(Sender: TObject);
var
  FB, BOX: string;
begin
  if QuerySubAWB.Fields[0].AsString <> '' then
  begin
    Application.CreateForm(TFNewSubAWBDetail, FNewSubAWBDetail);
    with FNewSubAWBDetail do
    begin
      s_id_plant := QuerySubAWB.FieldByName('код_плантации').AsInteger;
      edtPlant.Text := QuerySubAWB.FieldByName('name').AsString;
      edtPlant.Enabled := FALSE;
      FB := QuerySubAWB.FieldByName('кол_во_fb').AsString;
      edtFB.Text := FB;
      BOX := QuerySubAWB.FieldByName('кол_во').AsString;
      edtBox.Text := BOX;
      ShowModal;
      if FrameSave1.id_save = true then
      begin
        if (FB <> edtFB.Text) and (BOX <> edtBox.Text) then
        begin
          if StrToFloat(edtFB.Text) > StrToFloat(FB) then
          begin
            Application.MessageBox
              ('Разделяемое значение FB должно быть меньше исходного. Разделение не возможно.',
              'Ошибка', MB_OK + MB_ICONERROR);
            Abort;
          end;
          if StrToFloat(edtBox.Text) > StrToFloat(BOX) then
          begin
            Application.MessageBox
              ('Разделяемое значение количества коробок должно быть меньше исходного. Разделение не возможно.',
              'Ошибка', MB_OK + MB_ICONERROR);
            Abort;
          end;
          // сначала добавляем
          InsUpdDetail(true);
          // обновляем предыдущий
          QuerySubAWB.Prior;
          InsUpdDetail(FALSE, StrToFloat(FB) - StrToFloat(edtFB.Text),
            StrToInt(BOX) - StrToInt(edtBox.Text));
        end
        else
          Application.MessageBox
            ('Данные о количестве FB и коробок должны отличаться от исходных. Разделение не возможно.',
            'Ошибка', MB_OK + MB_ICONERROR);
      end;
    end;
  end;
end;

procedure TFSubAWB.btnRefreshClick(Sender: TObject);
begin
  ShowSubAWB(QuerySubAWB.FieldByName('id').AsInteger);
end;

procedure TFSubAWB.btnSaveClick(Sender: TObject);
begin
  IDSave := true;
  if s_id_SubAWB = 0 then
    InsUpdSubAWB(true)
  else
    InsUpdSubAWB(FALSE);
  EnableAdd;
end;

procedure TFSubAWB.edtMarkingPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.CreateForm(TFSelect, FSelect);
  with FSelect do
  begin
    Caption := 'Выберите маркировку';
    lstTree.Visible := true;
    GridSelect.Visible := FALSE;
    ShowSelect('"маркировки"."маркировки"', '', FALSE, true);
    ShowModal;
    if FrameTopPanel1.id_select = true then
    begin
      s_id_marking := QuerySelect.FieldByName('id').AsInteger;
      EnableAdd;
      // if s_id_SubAWB = 0 then
      // InsUpdSubAWB(true)
      // else
      // InsUpdSubAWB(false);
      case FPasswd.Lang of
        0:
          edtMarking.Text := QuerySelect.FieldByName('name').AsString;
        1:
          edtMarking.Text := QuerySelect.FieldByName('uni_name').AsString;
        2:
          edtMarking.Text := QuerySelect.FieldByName('reg_name').AsString;
      end;
    end;
  end;
end;

procedure TFSubAWB.edtTrackPropertiesChange(Sender: TObject);
begin
  EnableAdd;
end;

procedure TFSubAWB.edtWeightChange(Sender: TObject);
begin
  EnableAdd;
  РасчетСтоимости;
  if s_Вес <> edtWeight.Value then
    Detect_Change_Weight := true;
end;

procedure TFSubAWB.EnableAdd;
begin
  with FrameTopPanel1 do
  begin
    if (edtMarking.Text <> '') and (edtWeight.Text <> '') and
      (edtWeight.Text <> '0') and (edtTrack.Text <> '') then
    begin
      btnSave.Enabled := true;
      if s_id_SubAWB <> 0 then
      begin
        btnAdd.Enabled := true;
        if QuerySubAWB.Active = true then
        begin
          if QuerySubAWB.Fields[0].AsString <> '' then
          begin
            btnEdit.Enabled := true;
            btnDel.Enabled := true;
          end;
        end;
      end;
    end
    else
    begin
      btnAdd.Enabled := FALSE;
      btnEdit.Enabled := FALSE;
      btnDel.Enabled := FALSE;
      btnSave.Enabled := FALSE;
    end;
    if s_id_SubAWB <> 0 then
    begin
    end
    else
    begin
    end;
  end;
end;

procedure TFSubAWB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // if QuerySubAWB.Active = true then
  // if (s_id_SubAWB <> 0) and (QuerySubAWB.Fields[0].AsString <> '') then
  // InsUpdSubAWB(false);
  if IDSave = true then
  begin
    if (s_id_SubAWB <> 0) then
      InsUpdSubAWB(FALSE)
  end
end;

procedure TFSubAWB.FormShow(Sender: TObject);
begin
  SetLang;
  FrameTopPanel1.SetLang;
  if edtMarking.Text <> '' then
    edtWeight.SetFocus;
  Access;
  s_Вес := edtWeight.Value;
  EnableAdd;
end;

procedure TFSubAWB.GridSubAWBDBBandedTableView1DblClick(Sender: TObject);
begin
  if FrameTopPanel1.btnEdit.Enabled = true then
    btnEditClick(Sender);
end;

procedure TFSubAWB.InsUpdSubAWB(id_ins: Boolean);
var
  f, b: string;
  prikul, doc, ves: Double;
begin
  with QuerySubAWB1 do
  begin
    if id_ins = true then
    begin
{$REGION 'Вставка'}
      s_id_SubAWB := NewID('"бух".sub_awb_id_seq');
      sql.Clear;
      sql.Add(' INSERT INTO');
      sql.Add(' "бух"."sub_awb"');
      sql.Add(' (');
      sql.Add(' id,');
      sql.Add(' "код_AWB",');
      sql.Add(' "код_маркировки",');
      sql.Add(' "вес",');
      sql.Add(' "стоимость", "код_трака"');
      sql.Add(' )');
      sql.Add(' VALUES (');
      sql.Add(' :id,');
      sql.Add(' :код_AWB,');
      sql.Add(' :код_маркировки,');
      sql.Add(' :вес,');
      sql.Add(' :стоимость, :код_трака');
      sql.Add(' );');
{$ENDREGION};
    end
    else
    begin
{$REGION 'Обновление'}
      Close;
      sql.Text :=
        'select sum(кол_во_fb), sum (кол_во) from "бух".sub_awb_detail' +
        ' where код_sub_awb=' + IntToStr(s_id_SubAWB);
      Open;
      f := Fields[0].AsString;
      b := Fields[1].AsString;
      sql.Clear;
      sql.Add(' UPDATE');
      sql.Add(' "бух"."sub_awb"');
      sql.Add(' SET');
      sql.Add(' "код_AWB" = :код_AWB,');
      sql.Add(' "код_маркировки" = :код_маркировки,');
      sql.Add(' "вес" = :вес,');
      sql.Add(' "стоимость" = :стоимость,');
      sql.Add(' "sum_FB"=:sum_FB,');
      sql.Add(' "sum_BOX"=:sum_BOX, "код_трака"=:код_трака');
      sql.Add(' WHERE');
      sql.Add(' id = :id');
      if f <> '' then
        ParamByName('sum_FB').AsString := f;
      if b <> '' then
        ParamByName('sum_BOX').AsString := b;
    end;
{$ENDREGION};
    ParamByName('id').AsInteger := s_id_SubAWB;
    ParamByName('код_AWB').AsInteger := s_id_awb_for_sub;
    ParamByName('код_маркировки').AsInteger := s_id_marking;
    ParamByName('вес').AsString := edtWeight.Text;
    ParamByName('стоимость').AsString := edtStoim.Text;
    if edtTrack.Text <> '' then
      ParamByName('код_трака').AsInteger := edtTrack.EditValue;
    ExecSQL;
    // обновляем данные по авб для прикулинга
    // if True then
    //
    // sql.Clear;
    // sql.Add( ' SELECT' );
    // sql.Add( ' pr."код_трака",' );
    // sql.Add( ' pr."код_прикулинга",' );
    // sql.Add( ' pa."стоимость",' );
    // sql.Add( ' pa."оформление"' );
    // sql.Add( ' FROM' );
    // sql.Add( ' "прикулинг"."агенства" pa' );
    // sql.Add( ' INNER JOIN "бух"."расчет_прикулинг" pr ON (pa.id = pr."код_прикулинга")' );
    // sql.Add( ' where pr.код_трака=' + IntToStr( edtTrack.EditValue ) );
    // Open;
    // if Fields[ 0 ].AsString <> ''
    // then
    // begin
    // prikul := FieldByName( 'стоимость' ).Value;
    // doc := FieldByName( 'оформление' ).Value;
    // sql.Clear;
    // sql.Add( ' select sum(sa."вес")' );
    // sql.Add( ' from "бух".awb a' );
    // sql.Add( ' INNER join "бух".sub_awb sa on (sa."код_AWB" = a.id)' );
    // sql.Add( ' where a.id = ' + IntToStr( s_id_awb_for_sub ) );
    // Open;
    // if Fields[ 0 ].AsString <> ''
    // then
    // begin
    // ves := Fields[ 0 ].Value;
    // Close;
    // sql.Text := 'update "бух".awb set прикулинг=' +
    // FloatToStr( prikul * ves + doc ) + ' where id = ' +
    // IntToStr( s_id_awb_for_sub );
    // ExecSQL;
    // end;
    // end;
  end;
end;

procedure TFSubAWB.InsUpdDetail(id_ins: Boolean; FB: Double = 0;
  BOX: Integer = 0);
var
  id_detail: Integer;
begin
  // if QuerySubAWB.Active = true then
  // begin
  with QuerySubAWB1 do
  begin
    if id_ins = true then
    begin
{$REGION 'Вставка'}
      Close;
      id_detail := NewID('"бух".sub_awb_detail_id_seq');
      sql.Clear;
      sql.Add(' INSERT INTO');
      sql.Add(' "бух"."sub_awb_detail"');
      sql.Add(' (');
      sql.Add(' id,');
      sql.Add(' "код_sub_awb",');
      sql.Add(' "код_плантации",');
      sql.Add(' "кол_во_fb",');
      sql.Add(' "кол_во"');
      sql.Add(' )');
      sql.Add(' VALUES (');
      sql.Add(' :id,');
      sql.Add(' :код_sub_awb,');
      sql.Add(' :код_плантации,');
      sql.Add(' :кол_во_fb,');
      sql.Add(' :кол_во');
      sql.Add(' );');
{$ENDREGION};
    end
    else
    begin
{$REGION 'Обновление'}
      id_detail := QuerySubAWB.FieldByName('id').AsInteger;
      sql.Clear;
      sql.Add(' UPDATE');
      sql.Add(' "бух"."sub_awb_detail"');
      sql.Add(' SET');
      sql.Add(' "код_sub_awb" = :код_sub_awb,');
      sql.Add(' "код_плантации" = :код_плантации,');
      sql.Add(' "кол_во_fb" = :кол_во_fb,');
      sql.Add(' "кол_во" = :кол_во');
      sql.Add(' ');
      sql.Add(' WHERE');
      sql.Add(' id = :id');
    end;
{$ENDREGION};
    ParamByName('id').AsInteger := id_detail;
    ParamByName('код_sub_awb').Value := s_id_SubAWB;
    ParamByName('код_плантации').Value := FNewSubAWBDetail.s_id_plant;
    if FB = 0 then
      ParamByName('кол_во_fb').AsString := FNewSubAWBDetail.edtFB.Text
    else
      ParamByName('кол_во_fb').AsFloat := FB;
    if BOX = 0 then
      ParamByName('кол_во').AsString := FNewSubAWBDetail.edtBox.Text
    else
      ParamByName('кол_во').AsInteger := BOX;
    ExecSQL;
    // {$REGION 'Добавляем нулевую оплату'}
    // if id_ins = true then
    // begin
    // SQL.Clear;
    // SQL.Add(' INSERT INTO');
    // SQL.Add(' "бух"."оплата"');
    // SQL.Add(' (');
    // SQL.Add(' "код_детали_awb"');
    // SQL.Add(' )');
    // SQL.Add(' VALUES (');
    // SQL.Add(' :код_детали_awb');
    // SQL.Add(' );');
    // ParamByName('код_детали_awb').Value := id_detail;
    // ExecSQL;
    // end;
    // {$ENDREGION};
    ShowSubAWB(id_detail)
  end;
  // end;
end;

procedure TFSubAWB.SetLang;
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
        GridSubAWBDBBandedTableView1.Bands[0].Caption :=
          'El resguardo de transporte aéreo';
        GridSubAWBDBBandedTableView1.Bands[1].Caption := 'La factura';
        ColumnПлантация.Caption := 'La plantación';
        ColumnFB.Caption := 'La cantidad FB';
        ColumnFBфакт.Caption := 'La cantidad FB';
        ColumnBOX.Caption := 'La cantidad de las cajas';
        ColumnBOXфакт.Caption := 'La cantidad de las cajas';
        ColumnLДата.Caption := 'La fecha';
        ColumnНомер.Caption := 'El número';
        ColumnСумма.Caption := 'La suma';
        lblМарикровка.Caption := 'La marca:';
        lblВес.Caption := 'El peso:';
        lblТрак.Caption := 'Trak:';
      end;
  end;
end;

procedure TFSubAWB.ShowSubAWB(id_locate: Integer = 0);
begin
  with QuerySubAWB do
  begin
    sql.Clear;
    sql.Add(' SELECT sad.*,');
    sql.Add(' pl.name');
    sql.Add(' FROM "бух".sub_awb_detail sad');
    sql.Add(' INNER JOIN "продукция"."плантации" pl ON (sad."код_плантации" = pl.id)');
    sql.Add(' where sad."код_sub_awb" = ' + IntToStr(s_id_SubAWB));
    sql.Add(' order by name, id');
    Open;
    Locate('id', id_locate, []);
  end;
  GridSubAWBDBBandedTableView1.ApplyBestFit(nil, true, true);
end;

procedure TFSubAWB.ShowTrack(id_locate: Integer = 0);
begin
  with QueryTrack do
  begin
    Close;
    sql.Text := 'select * from "траки"."траки" order by UNI_NAME';
    Open;
    if id_locate <> 0 then
      edtTrack.EditValue := id_locate
    else
      edtTrack.EditValue := Fields[0].AsInteger;
  end;
end;

procedure TFSubAWB.ViewSubAWBDblClick(Sender: TObject);
begin
  btnEditClick(Sender);
end;

procedure TFSubAWB.РасчетСтоимости;
begin
  if edtWeight.Text <> '' then
  begin
    with Query1 do
    begin
      Close;
      sql.Text := 'select * from "карго"."тарифы" where код_карго=' +
        IntToStr(s_id_Kargo_SUB) + ' and код_авиалинии=' +
        IntToStr(s_id_airLine);
      Open;
      СтоимостьАвиалинии := FieldByName('общая_стоимость').AsFloat *
        StrToFloat(edtWeight.Text) + FieldByName('фито').AsFloat +
        FieldByName('awb').AsFloat + FieldByName('доп_сборы').AsFloat +
        FieldByName('термодатчик').AsFloat;
      edtStoim.Text := FloatToStr(СтоимостьАвиалинии);
    end;
  end;
end;

end.
