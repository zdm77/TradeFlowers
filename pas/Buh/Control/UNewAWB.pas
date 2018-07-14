unit UNewAWB;

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
  
  Vcl.ComCtrls,
  AdvDateTimePicker,
  cxGroupBox,
  UFrameTopPanel,
  Vcl.StdCtrls,
  cxTextEdit,
  cxMaskEdit,
  cxButtonEdit,
  cxStyles,
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
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
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sTooledit,
  cxCalc,
  cxGridExportLink,
  Winapi.ShellAPI,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  UFrameSave,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue;

type
  TFNewAWB = class(TForm)
    Group1: TcxGroupBox;
    lblKargo: TLabel;
    lblNum: TLabel;
    FrameTopPanel1: TFrameTopPanel;
    QueryNewAWB: TUniQuery;
    dsNewAWB: TDataSource;
    QueryNewAWB1: TUniQuery;
    GridAWB: TcxGrid;
    ViewAWB: TcxGridDBTableView;
    LevelOrg: TcxGridLevel;
    ColumnВес: TcxGridDBColumn;
    ColumnСтоимость: TcxGridDBColumn;
    ColumnМаркировка: TcxGridDBColumn;
    lblDate: TLabel;
    ColumnFB: TcxGridDBColumn;
    ColumnBox: TcxGridDBColumn;
    ColumnПрикулинг: TcxGridDBColumn;
    ColumnТранспорт: TcxGridDBColumn;
    edtDate: TDateTimePicker;
    edtOrg: TcxLookupComboBox;
    lblOrg: TLabel;
    QueryOrg: TUniQuery;
    dsOrg: TDataSource;
    edtNum: TMaskEdit;
    lblАвиалиния: TLabel;
    edtАвиалиния: TcxLookupComboBox;
    QueryАвиалиния: TUniQuery;
    dsАвиалиния: TDataSource;
    lblТрак: TLabel;
    QueryTrack: TUniQuery;
    dsTrack: TDataSource;
    edtTrack: TcxLookupComboBox;
    lbl1: TLabel;
    edtKargo: TcxLookupComboBox;
    QueryKargo: TUniQuery;
    dsKargo: TDataSource;
    Label1: TLabel;
    edtPrikul: TcxLookupComboBox;
    QueryPrikul: TUniQuery;
    dsPrikul: TDataSource;
    procedure edtDateChange(Sender: TObject);
    procedure edtNumChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edtKargoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure ViewAWBDblClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure edtАвиалинияPropertiesCloseUp(Sender: TObject);
    procedure edtTrackPropertiesCloseUp(Sender: TObject);
    procedure edtKargoPropertiesCloseUp(Sender: TObject);
    procedure edtPrikulPropertiesCloseUp(Sender: TObject);
    procedure edtKargoPropertiesEditValueChanged(Sender: TObject);
  private
  public
    s_id_awb: Integer;
    s_id_kargo: Integer;
    s_id_prikul: Integer;
    Вес: Double;
    IDSave: Boolean;
    DetectChange: Boolean;
    procedure EnableAdd;
    procedure InsUpdAWB(id_ins: Boolean);
    procedure SetLang;
    procedure ShowAirLines(id_locate: Integer = 0);
    procedure ShowNewAWB(id_locate: Integer = 0);
    procedure ShowOrg(id_locate: Integer = 0);
    procedure ShowTrack(id_locate: Integer = 0);
    procedure ShowKargo(id_locate: Integer = 0);
    procedure ShowPrikul(id_locate: Integer = 0);
    procedure UpdPrikul;
    { Public declarations }
  end;

var
  FNewAWB: TFNewAWB;

implementation

{$R *.dfm}

uses
  UPasswd,
  USelect,
  PGSQL,
  UBuh,
  USubAWB,
  UOsn,
  UDataModule1;

procedure TFNewAWB.btnAddClick(Sender: TObject);
begin
  if s_id_awb <> 0 then
  begin
    Application.CreateForm(TFSubAWB, FSubAWB);
    with FSubAWB do
    begin
      s_id_awb_for_sub := s_id_awb;
      edtMarkingPropertiesButtonClick(Sender, 0);
      // ShowTrack();
      ShowTrack(FNewAWB.edtTrack.EditValue);
      s_id_airLine := edtАвиалиния.EditValue;
      s_id_Kargo_SUB := s_id_kargo;
      РасчетСтоимости;
      ShowModal;
      if s_id_SubAWB <> 0 then
      begin
        ShowNewAWB(s_id_SubAWB);
        FNewAWB.EnableAdd;
        if edtPrikul.Enabled = true then
          UpdPrikul;
      end;
    end;
  end;
end;

procedure TFNewAWB.btnDelClick(Sender: TObject);
begin
  PGSQL.StandartDelete(QueryNewAWB.FieldByName('id').AsString, '"бух".sub_awb',
    QueryNewAWB, '', '', '', '');
  EnableAdd;
  if edtPrikul.Enabled = true then
    UpdPrikul;
end;

procedure TFNewAWB.btnEditClick(Sender: TObject);
begin
  if QueryNewAWB.Fields[0].AsString <> '' then
  begin
    Application.CreateForm(TFSubAWB, FSubAWB);
    with FSubAWB do
    begin
      s_id_awb_for_sub := s_id_awb;
      s_id_SubAWB := QueryNewAWB.FieldByName('id').AsInteger;
      s_id_marking := QueryNewAWB.FieldByName('код_маркировки').AsInteger;
      edtMarking.Text := QueryNewAWB.FieldByName('name').AsString;
      edtWeight.Text := QueryNewAWB.FieldByName('вес').AsString;
      edtStoim.Text := QueryNewAWB.FieldByName('стоимость').AsString;
      ShowSubAWB();
      // ShowTrack(QueryNewAWB.FieldByName('код_трака').AsInteger);
      ShowTrack(FNewAWB.edtTrack.EditValue);
      s_id_airLine := edtАвиалиния.EditValue;
      s_id_Kargo_SUB := s_id_kargo;
      if QueryNewAWB.FieldByName('стоимость').AsInteger <> 0 then
        edtStoim.Text := QueryNewAWB.FieldByName('стоимость').AsString
      else
        РасчетСтоимости;
      ShowModal;
      // if Detect_Change_Weight=true then ShowMessage('изменен вес');
      if s_id_SubAWB <> 0 then
        ShowNewAWB(s_id_SubAWB);
      if edtPrikul.Enabled = true then
        UpdPrikul;
    end;
  end;
end;

procedure TFNewAWB.btnExportClick(Sender: TObject);
begin
  ExportGridToExcel(FPasswd.GetVar('TEMP') + '\AWB', GridAWB, true, true,
    true, 'xls');
  ShellExecute(Handle, nil, PChar(FPasswd.GetVar('TEMP') + '\AWB.xls'), nil,
    nil, SW_RESTORE);
end;

procedure TFNewAWB.btnSaveClick(Sender: TObject);
begin
  IDSave := true;
  if s_id_awb = 0 then
    InsUpdAWB(true)
  else
    InsUpdAWB(false);
  EnableAdd;
  DetectChange := false;
end;

procedure TFNewAWB.edtDateChange(Sender: TObject);
begin
  Caption := 'AWB №: ' + edtNum.Text;
  EnableAdd;
  DetectChange := true;
end;

procedure TFNewAWB.edtKargoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.CreateForm(TFSelect, FSelect);
  with FSelect do
  begin
    ShowSelect('"карго"."агенства"', '', false);
    ShowModal;
    if FrameTopPanel1.id_select = true then
    begin
      s_id_kargo := QuerySelect.FieldByName('id').AsInteger;
      // if s_id_awb = 0 then
      // InsUpdAWB(true)
      // else
      // InsUpdAWB(false);
      case FPasswd.Lang of
        0:
          edtKargo.Text := QuerySelect.FieldByName('name').AsString;
        1:
          edtKargo.Text := QuerySelect.FieldByName('uni_name').AsString;
        2:
          edtKargo.Text := QuerySelect.FieldByName('reg_name').AsString;
      end;
    end;
  end;
  EnableAdd;
end;

procedure TFNewAWB.edtKargoPropertiesCloseUp(Sender: TObject);
begin
  DetectChange := true;
end;

procedure TFNewAWB.edtKargoPropertiesEditValueChanged(Sender: TObject);
begin
  s_id_kargo := edtKargo.EditValue;
end;

procedure TFNewAWB.edtNumChange(Sender: TObject);
begin
  Caption := 'AWB №: ' + edtNum.Text;
  EnableAdd;
  DetectChange := true;
end;

procedure TFNewAWB.edtPrikulPropertiesCloseUp(Sender: TObject);
begin
  DetectChange := true;
end;

procedure TFNewAWB.edtTrackPropertiesCloseUp(Sender: TObject);
begin
  DetectChange := true;
  edtPrikul.Enabled := QueryTrack.FieldByName('учет_прикулинг').AsBoolean;
  if edtPrikul.Enabled = true then
    ShowPrikul()
  else
    QueryPrikul.Close;
  EnableAdd;
  // with QueryNewAWB1 do
  // begin
  // SQL.Clear;
  /// /      SQL.Add( ' SELECT' );
  /// /      SQL.Add( ' pa.id' );
  /// /      SQL.Add( ' FROM' );
  /// /      SQL.Add( ' "бух"."расчет_прикулинг" rp' );
  /// /      SQL.Add( ' INNER JOIN "траки"."траки" tt ON (rp."код_трака" = tt.id)' );
  /// /      SQL.Add( ' INNER JOIN "прикулинг"."агенства" pa ON (rp."код_прикулинга" = pa.id)' );
  //
  // SQL.Add( ' select  rp."код_трака"=' + IntToStr( edtTrack.EditValue ) );
  // Open;
  // if Fields[ 0 ].AsString <> ''
  // then
  // begin
  // ShowPrikul( Fields[ 0 ].AsInteger );
  // edtPrikul.Enabled := true;
  // end;
  // end;
end;

procedure TFNewAWB.edtАвиалинияPropertiesCloseUp(Sender: TObject);
begin
  EnableAdd;
  DetectChange := true;
end;

procedure TFNewAWB.EnableAdd;
begin
  try
    with FrameTopPanel1 do
    begin
      if (edtNum.Text <> '') and (edtDate.Checked = true) and
        (edtKargo.Text <> '') and (edtАвиалиния.Text <> '') and
        (edtTrack.Text <> '') then
      begin
        btnAdd.Enabled := true;
        btnSave.Enabled := true;
      end
      else
      begin
        btnAdd.Enabled := false;
        btnSave.Enabled := false;
      end;
      if QueryNewAWB.Active = true then
      begin
        if QueryNewAWB.Fields[0].AsString <> '' then
        begin
          btnEdit.Enabled := true;
          btnDel.Enabled := true;
          btnExport.Enabled := true;
        end
        else
        begin
          btnEdit.Enabled := false;
          btnDel.Enabled := false;
          btnExport.Enabled := false;
        end;
      end;
      if s_id_awb = 0 then
        btnAdd.Enabled := false;
    end;
  except
  end;
end;

procedure TFNewAWB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if IDSave = true then
  begin
    if s_id_awb <> 0 then
      InsUpdAWB(false);
    if Assigned(FBuh) then
      FBuh.FrameAWB1.ShowAWB(s_id_awb);
  end;
  Action := caFree;
  FNewAWB := nil;
end;

procedure TFNewAWB.FormShow(Sender: TObject);
begin
  SetLang;
  FrameTopPanel1.SetLang;
  // with FOsn do
  // begin
  // ColumnВес.Summary.FooterFormat := КгГр.Properties.DisplayFormat;
  // ColumnВес.RepositoryItem := КгГр;
  // ColumnСтоимость.Summary.FooterFormat := Доллар.Properties.DisplayFormat;
  // ColumnВес.RepositoryItem := Доллар;
  // end;
  edtNum.SetFocus;
  EnableAdd;
  if edtDate.Checked = false then
  begin
    edtDate.date := Now;
    edtDate.Checked := false;
  end;
  if FPasswd.ID_ROLE = 1 then
  begin
    lblOrg.Visible := true;
    edtOrg.Visible := true;
  end;
end;

procedure TFNewAWB.InsUpdAWB(id_ins: Boolean);
begin
  if DetectChange = true then
  begin
    with QueryNewAWB1 do
    begin
      if id_ins = true then
      begin
{$REGION 'Вставка'}
        s_id_awb := NewID('"бух".awb_id_seq');
        SQL.Clear;
        SQL.Add(' INSERT INTO');
        SQL.Add(' "бух"."awb"');
        SQL.Add(' (');
        SQL.Add(' id,');
        SQL.Add(' "код_карго",');
        SQL.Add(' "номер_awb",');
        SQL.Add(' "код_пользователя",');
        SQL.Add(' "дата_вылета",');
        SQL.Add(' "код_организации"');
        SQL.Add(' ,"код_авиалинии", код_трака, прикулинг, код_прикулинга');
        SQL.Add(' )');
        SQL.Add(' VALUES (');
        SQL.Add(' :id,');
        SQL.Add(' :код_карго,');
        SQL.Add(' :номер_awb,');
        SQL.Add(' :код_пользователя,');
        SQL.Add(' :дата_вылета,');
        SQL.Add(' :код_организации');
        SQL.Add(' ,:код_авиалинии, :код_трака, :прикулинг, :код_прикулинга');
        SQL.Add(' );');
{$ENDREGION};
      end
      else
      begin
{$REGION 'Обновление'}
        SQL.Clear;
        SQL.Add(' UPDATE');
        SQL.Add(' "бух"."awb"');
        SQL.Add(' SET');
        SQL.Add(' код_организации=:код_организации, "код_карго" = :код_карго,');
        SQL.Add(' "номер_awb" = :номер_awb, код_авиалинии=:код_авиалинии,');
        SQL.Add(' "код_пользователя" = :код_пользователя,');
        SQL.Add(' "дата_вылета" = :дата_вылета, код_трака=:код_трака, прикулинг=:прикулинг, код_прикулинга=:код_прикулинга');
        SQL.Add(' WHERE');
        SQL.Add(' id = :id');
      end;
{$ENDREGION};
      if FPasswd.ID_ROLE <> 1 then
        ParamByName('код_организации').Value := FPasswd.ID_ORG
      else
        ParamByName('код_организации').Value := edtOrg.EditValue;
      ParamByName('id').Value := s_id_awb;
      ParamByName('дата_вылета').Value := edtDate.date;
      // if s_id_kargo <> 0 then
      ParamByName('код_карго').Value := edtKargo.EditValue;
      ParamByName('код_пользователя').Value := FPasswd.ID_USER;
      ParamByName('код_авиалинии').Value := edtАвиалиния.EditValue;
      ParamByName('номер_awb').Value := edtNum.Text;
      ParamByName('код_трака').Value := edtTrack.EditValue;
      if edtPrikul.Enabled = true then
      begin
        ParamByName('код_прикулинга').Value := edtPrikul.EditValue;
      end;
      ExecSQL;
      if (edtPrikul.Enabled = true) and (s_id_prikul <> edtPrikul.EditValue) and
        (s_id_prikul <> 0) then
      begin
        if Application.MessageBox('Изменен прикулинг, пересчитать стоимость?',
          'Вопрос', MB_YESNO + MB_ICONWARNING) = mrYes then
        begin
          UpdPrikul;
          s_id_prikul := edtPrikul.EditValue;
        end
        else
          Abort;
      end
      else
      begin
        if edtPrikul.Enabled = true then
        begin
          UpdPrikul;
          s_id_prikul := edtPrikul.EditValue;
        end;
      end;
    end;
    // ShowMessage( 'были изменения' );
  end
  // else ShowMessage('небыло изменений');
end;

procedure TFNewAWB.SetLang;
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
        ColumnМаркировка.Caption := 'La marca';
        ColumnFB.Caption := 'La cantidad FB';
        ColumnBox.Caption := 'La cantidad de las cajas';
        ColumnВес.Caption := 'El peso';
        lblDate.Caption := 'Fecha AWB:';
        lblKargo.Caption := 'El cargo:';
        lblАвиалиния.Caption := 'Aerolineas:';
        edtАвиалиния.Properties.ListFieldNames := 'reg_name';
      end;
  end;
end;

procedure TFNewAWB.ShowAirLines(id_locate: Integer = 0);
begin
  with QueryАвиалиния do
  begin
    Close;
    SQL.Text := 'select * from  "авиалинии"."авиалинии" order by name';
    Open;
    edtАвиалиния.EditValue := id_locate;
  end;
end;

procedure TFNewAWB.ShowNewAWB(id_locate: Integer = 0);
begin
{$REGION 'MyRegion'}
  with QueryNewAWB do
  begin
    SQL.Clear;
    SQL.Add(' SELECT');
    SQL.Add(' sa.id, sa.стоимость,');
    SQL.Add(' sa."код_маркировки",');
    SQL.Add(' sa."вес",');
    SQL.Add(' sa."стоимость",');
    SQL.Add(' sa."sum_BOX",');
    SQL.Add(' sa."sum_FB",');
    SQL.Add(' m.name,');
    SQL.Add(' 2200/18*sa."sum_BOX" as Транспорт,');
    SQL.Add(' sa."вес"*0.18+7.5 as Прикулинг, sa."код_трака"');
    SQL.Add(' FROM');
    SQL.Add(' "бух".sub_awb sa');
    SQL.Add(' INNER JOIN "маркировки"."маркировки" m ON (sa."код_маркировки" = m.id)');
    SQL.Add('  where sa."код_AWB"=' + IntToStr(s_id_awb));
    SQL.Add(' order by name');
    Open;
    Locate('id', id_locate, []);
  end;
{$ENDREGION};
end;

procedure TFNewAWB.ShowOrg(id_locate: Integer = 0);
begin
  with QueryOrg do
  begin
    Close;
    SQL.Text := 'SELECT * FROM "организация"."организации" where  id_del=0 order by name';
    Open;
    Locate('id', id_locate, []);
    edtOrg.EditValue := id_locate
  end;
end;

procedure TFNewAWB.ShowTrack(id_locate: Integer = 0);
begin
  with QueryTrack do
  begin
    Close;
    SQL.Text := 'select * from "траки"."траки" order by UNI_NAME';
    Open;
    if id_locate <> 0 then
      edtTrack.EditValue := id_locate
      // else
      // edtTrack.EditValue := Fields[ 0 ].AsInteger;
  end;
end;

procedure TFNewAWB.ShowKargo(id_locate: Integer = 0);
begin
  with QueryKargo do
  begin
    Close;
    SQL.Text := 'select * from "карго"."агенства" order by name';
    Open;
    if id_locate <> 0 then
      edtKargo.EditValue := id_locate
    else
      edtKargo.EditValue := Fields[0].AsInteger;
  end;
end;

procedure TFNewAWB.ShowPrikul(id_locate: Integer = 0);
begin
  with QueryPrikul do
  begin
    Close;
    SQL.Text := 'SELECT * from "прикулинг"."агенства"';
    Open;
    if id_locate <> 0 then
      edtPrikul.EditValue := id_locate
    else
      edtPrikul.EditValue := Fields[0].AsInteger;
  end;
end;

procedure TFNewAWB.UpdPrikul;
var
  prikul: Double;
begin
  with QueryNewAWB1 do
  begin
    Close;
    SQL.Text := 'select sum(вес) from "бух".sub_awb where "код_AWB"=' +
      IntToStr(s_id_awb);
    Open;
    Вес := Fields[0].AsFloat;
    if Вес <> 0 then
    begin
      Close;
      SQL.Text :=
        'select стоимость, оформление from  "прикулинг"."агенства" where id= ' +
        IntToStr(edtPrikul.EditValue);
      Open;
      prikul := Fields[0].Value * Вес + Fields[1].Value;
      Close;
      SQL.Text := 'update "бух".awb set прикулинг=:p ' + ' where id = ' +
        IntToStr(s_id_awb);
      ParamByName('p').Value := prikul;
      ExecSQL;
      // ShowMessage( FloatToStr( prikul ) );
    end
    else
    begin
      Close;
      SQL.Text := 'update "бух".awb set прикулинг=0 where id = ' +
        IntToStr(s_id_awb);
      ExecSQL;
    end;
  end;
  // end
  // else
  // ShowMessage( 'пустой вес' );
end;

procedure TFNewAWB.ViewAWBDblClick(Sender: TObject);
begin
  btnEditClick(Sender);
end;

end.
