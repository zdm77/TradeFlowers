unit UNewPeduidoAWB;
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
  DBGridEh,
  Vcl.StdCtrls,
  Vcl.Mask,
  DBCtrlsEh,
  DBLookupEh,
  Data.DB,
  MemDS,
  DBAccess,
  Uni,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  dxSkinsCore,
  
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  Vcl.ComCtrls,
  cxTextEdit,
  cxMaskEdit,
  cxButtonEdit,
  cxGroupBox,
  UFrameSave,
  DBGridEhGrouping,
  ToolCtrlsEh,
  DBGridEhToolCtrls,
  DynVarsEh,
  GridsEh,
  DBAxisGridsEh,
  UFrameTopPanel,
  cxStyles,
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxNavigator,
  cxDBData,
  cxGridLevel,
  cxClasses,
  cxGridCustomView,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGrid,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue;
type
  TFNewPeduidoAWB = class(TForm)
    Group1 : TcxGroupBox;
    lblKargo : TLabel;
    lblNum : TLabel;
    lblDate : TLabel;
    lblOrg : TLabel;
    lblАвиалиния : TLabel;
    edtDate : TDateTimePicker;
    edtNum : TMaskEdit;
    FrameSave1 : TFrameSave;
    FrameTopPanel1 : TFrameTopPanel;
    QueryАвиалиния : TUniQuery;
    dsАвиалиния : TDataSource;
    edtKARGO : TDBLookupComboboxEh;
    QueryKARGO : TUniQuery;
    dsKARGO : TDataSource;
    Query1 : TUniQuery;
    QueryOrg : TUniQuery;
    dsORG : TDataSource;
    QuerySubAWBPedido : TUniQuery;
    dsSubAWBPedido : TDataSource;
    ViewSubAWBPedido : TcxGridDBTableView;
    LevelSubAWBPedido : TcxGridLevel;
    GridSubAWBPedido : TcxGrid;
    edtOrg : TDBLookupComboboxEh;
    ViewSubAWBPedidot_name : TcxGridDBColumn;
    ViewSubAWBPedidom_name : TcxGridDBColumn;
    ColumnType : TcxGridDBColumn;
    ColumnFito : TcxGridDBColumn;
    ColumnPricul : TcxGridDBColumn;
    edtАвиалиния : TDBLookupComboboxEh;
    procedure btnAddClick(Sender : TObject);
    procedure edtKARGOChange(Sender : TObject);
    procedure edtNumChange(Sender : TObject);
    procedure edtOrgChange(Sender : TObject);
    procedure edtАвиалинияChange(Sender : TObject);
    procedure FormShow(Sender : TObject);
    procedure FrameSave1btnSaveClick(Sender : TObject);
    procedure FrameTopPanel1btnEditClick(Sender : TObject);
    procedure ViewSubAWBPedidoDblClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
  private
    { Private declarations }
  public
    s_date_pedido_awb : TDate;
    s_id_kargo : Integer;
    IDAWB : Integer;
    MaxПорядок : Integer;
    procedure DetectMaxПорядок;
    procedure EnableSave;
    procedure InsUpdMnemoAWB(id_ins : smallint);
    procedure InsUpdMnemoSubAWB(id_ins : smallint);
    procedure ShowAirLines(id_locate : Integer = 0);
    procedure ShowKARGO(id_locate : Integer = 0);
    procedure ShowORG(id_locate : Integer = 0);
    procedure ShowSubAEBPedido(id_locate : Integer = 0);
    { Public declarations }
  end;

var
  FNewPeduidoAWB : TFNewPeduidoAWB;
implementation
{$R *.dfm}

uses
  UPasswd,
  USelect,
  UNewPedidoAWBDetail,
  PGSQL;
procedure TFNewPeduidoAWB.btnAddClick(Sender : TObject);
begin
  if IDAWB = 0 then
  begin
    if Application.MessageBox('Сохранить данные AWB?', 'Вопрос',
                               MB_YESNO + MB_ICONQUESTION) = mrYes then
    begin
      InsUpdMnemoAWB(0);
    end
    else
      Abort;
  end;
  Application.CreateForm(TFNewPedidoAWBDetail, FNewPedidoAWBDetail);
  with FNewPedidoAWBDetail do
  begin
    s_date_pedido_awb_new := s_date_pedido_awb;
    ShowMarking;
    ShowTrack();
    ShowFITO();
    ShowPricul();
    if QuerySubAWBPedido.RecordCount = 0 then
      edtType.Text := 'guia madre'
    else
    begin
      edtType.Text := 'guia hija';
      edtПорядок.Value := MaxПорядок;
    end;
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      InsUpdMnemoSubAWB(0);
    end;
  end;
  EnableSave;
end;
procedure TFNewPeduidoAWB.btnDelClick(Sender : TObject);
begin
  if Application.MessageBox('Вы действительно хотите удалить запись?',
                             'Вопрос.', MB_YESNO + MB_ICONQUESTION) = mrYes then
  begin
    with Query1 do
    begin
      Close;
      sql.Text := 'delete from "бух".sub_awb where id=' +
    QuerySubAWBPedido.FieldByName('id').AsString;
      ExecSQL;
      ShowSubAEBPedido();
    end;
  end;
  EnableSave;
end;
procedure TFNewPeduidoAWB.DetectMaxПорядок;
begin
  with Query1 do
  begin
    Close;
    sql.Text := 'select max(порядок) from "бух".sub_awb  where "код_AWB"=' +
  IntToStr(IDAWB) + ' and порядок is not null';
    Open;
    if Fields[0].AsString <> '' then
      MaxПорядок := Fields[0].AsInteger
    else
      MaxПорядок := 1;
  end;
end;
procedure TFNewPeduidoAWB.edtKARGOChange(Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewPeduidoAWB.edtNumChange(Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewPeduidoAWB.edtOrgChange(Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewPeduidoAWB.edtАвиалинияChange(Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewPeduidoAWB.EnableSave;
begin
  with FrameTopPanel1 do
  begin
    if (edtNum.Text <> '   -    -    ') and (edtKARGO.Text <> '') and
    (edtАвиалиния.Text <> '') and (edtOrg.Text <> '') then
    begin
      btnAdd.Enabled := true;
    end
    else
    begin
      btnAdd.Enabled := False;
    end;
    if QuerySubAWBPedido.RecordCount <> 0 then
    begin
      btnDel.Enabled := true;
      btnEdit.Enabled := true;
    end
    else
    begin
      btnDel.Enabled := False;
      btnEdit.Enabled := False;
    end;
  end;
  if IDAWB <> 0 then
    FrameSave1.Enabled := true
  else
    FrameSave1.Enabled := False;
end;
procedure TFNewPeduidoAWB.FormShow(Sender : TObject);
begin
  EnableSave;
  edtNum.SetFocus;
  edtDate.Date := s_date_pedido_awb;
end;
procedure TFNewPeduidoAWB.FrameSave1btnSaveClick(Sender : TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  InsUpdMnemoAWB(1);
  Close;
end;
procedure TFNewPeduidoAWB.FrameTopPanel1btnEditClick(Sender : TObject);
begin
  Application.CreateForm(TFNewPedidoAWBDetail, FNewPedidoAWBDetail);
  with FNewPedidoAWBDetail do
  begin
    s_date_pedido_awb_new := s_date_pedido_awb;
    ShowMarking(QuerySubAWBPedido.FieldByName('код_маркировки').AsInteger);
    ShowTrack(QuerySubAWBPedido.FieldByName('код_трака').AsInteger);
    edtType.Text := QuerySubAWBPedido.FieldByName('тип_мнемо').AsString;
    ShowFITO(QuerySubAWBPedido.FieldByName('код_фито').AsInteger);
    ShowPricul(QuerySubAWBPedido.FieldByName('код_прикулинга').AsInteger);
    edtПорядок.Text := QuerySubAWBPedido.FieldByName('порядок').AsString;
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      InsUpdMnemoSubAWB(1);
    end;
  end;
end;
procedure TFNewPeduidoAWB.InsUpdMnemoAWB(id_ins : smallint);
begin
  with Query1 do
  begin
    if id_ins = 0 then
    begin
      IDAWB := NewID(' "бух".awb_id_seq');
      sql.Clear;
      sql.Add(' INSERT INTO "бух"."awb"(id, "код_карго", "код_пользователя", "дата_вылета",');
      sql.Add('"код_организации", "код_авиалинии", "мнемо", "мнемо_номер")');
      sql.Add(' VALUES (:id, :код_карго, :код_пользователя, :дата_вылета, ');
      sql.Add(':код_организации, :код_авиалинии,');
      sql.Add(' :мнемо, :мнемо_номер);');
    end
    else
    begin
      sql.Clear;
      sql.Add(' UPDATE "бух"."awb"');
      sql.Add(' SET "код_карго" = :код_карго,');
      sql.Add(' "код_пользователя" = :код_пользователя,');
      sql.Add(' "дата_вылета" = :дата_вылета,');
      sql.Add(' "код_организации" = :код_организации,');
      sql.Add(' "код_авиалинии" = :код_авиалинии,');
      sql.Add(' "мнемо_номер" = :мнемо_номер,');
      sql.Add(' "мнемо" = :мнемо');
      sql.Add(' WHERE id = :id');
    end;
    ParamByName('id').Value := IDAWB;
    ParamByName('код_карго').Value := edtKARGO.KeyValue;
    ParamByName('код_пользователя').Value := FPasswd.ID_USER;
    ParamByName('дата_вылета').Value := s_date_pedido_awb;
    ParamByName('код_организации').Value := edtOrg.KeyValue;
    ParamByName('код_авиалинии').Value := edtАвиалиния.KeyValue;
    ParamByName('мнемо').Value := true;
    ParamByName('мнемо_номер').Value := edtNum.Text;
    ExecSQL;
  end;
end;
procedure TFNewPeduidoAWB.InsUpdMnemoSubAWB(id_ins : smallint);
var
  IDSABAWB : Integer;
begin
  with Query1 do
  begin
    if id_ins = 0 then
    begin
      IDSABAWB := NewID(' "бух".sub_awb_detail_id_seq');
      sql.Clear;
      sql.Add(' INSERT INTO');
      sql.Add(' "бух"."sub_awb"');
      sql.Add(' (');
      sql.Add(' id,');
      sql.Add(' "код_AWB",');
      sql.Add(' "код_маркировки",');
      sql.Add(' "тип_мнемо",');
      sql.Add(' "порядок",');
      sql.Add(' "код_фито",');
      sql.Add(' "код_прикулинга",');
      sql.Add(' "код_трака"');
      sql.Add(' )');
      sql.Add(' VALUES (');
      sql.Add(' :id,');
      sql.Add(' :код_AWB,');
      sql.Add(' :код_маркировки,');
      sql.Add(' :тип_мнемо,');
      sql.Add(' :порядок,');
      sql.Add(' :код_фито,');
      sql.Add(' :код_прикулинга,');
      sql.Add(' :код_трака');
      sql.Add(' );');
    end
    else
    begin
      IDSABAWB := QuerySubAWBPedido.FieldByName('id').AsInteger;
      sql.Clear;
      sql.Add(' UPDATE');
      sql.Add(' "бух"."sub_awb"');
      sql.Add(' SET');
      sql.Add(' "код_AWB" = :код_AWB,');
      sql.Add(' "код_маркировки" = :код_маркировки,');
      sql.Add(' "код_трака" = :код_трака,');
      sql.Add(' "тип_мнемо" = :тип_мнемо,');
      sql.Add(' "код_фито" = :код_фито,');
      sql.Add(' "код_прикулинга" = :код_прикулинга,');
      sql.Add(' "порядок" = :порядок');
      sql.Add(' ');
      sql.Add(' WHERE');
      sql.Add(' id = :id');
    end;
    ParamByName('id').Value := IDSABAWB;
    ParamByName('код_AWB').Value := IDAWB;
    ParamByName('код_маркировки').Value :=
                                          FNewPedidoAWBDetail.edtMarking.KeyValue;
    ParamByName('код_трака').Value := FNewPedidoAWBDetail.edtTrack.KeyValue;
    ParamByName('тип_мнемо').AsString := FNewPedidoAWBDetail.edtType.Text;
    if FNewPedidoAWBDetail.edtПорядок.Text <> '' then
      ParamByName('порядок').AsString := FNewPedidoAWBDetail.edtПорядок.Text;
    ParamByName('код_фито').AsInteger := FNewPedidoAWBDetail.edtFITO.KeyValue;
    ParamByName('код_прикулинга').AsInteger :=
                                              FNewPedidoAWBDetail.edtPrikul.KeyValue;
    ExecSQL;
  end;
  DetectMaxПорядок;
  ShowSubAEBPedido(IDSABAWB);
end;
procedure TFNewPeduidoAWB.ShowAirLines(id_locate : Integer = 0);
begin
  with QueryАвиалиния do
  begin
    Close;
    sql.Text := 'select * from  "авиалинии"."авиалинии" order by name';
    Open;
    edtАвиалиния.KeyValue := id_locate;
  end;
end;
procedure TFNewPeduidoAWB.ShowKARGO(id_locate : Integer = 0);
begin
  with QueryKARGO do
  begin
    Close;
    sql.Text := 'select * from  "карго"."агенства" order by uni_name';
    Open;
    edtKARGO.KeyValue := id_locate;
  end;
end;
procedure TFNewPeduidoAWB.ShowORG(id_locate : Integer = 0);
begin
  with QueryOrg do
  begin
    Close;
    sql.Text := 'SELECT * FROM "организация"."организации" where  id_del=0 order by name';
    Open;
    Locate('id', id_locate, []);
    edtOrg.KeyValue := id_locate
  end;
end;
procedure TFNewPeduidoAWB.ShowSubAEBPedido(id_locate : Integer = 0);
begin
  with QuerySubAWBPedido do
  begin
    Close;
    ParamByName('id').AsInteger := IDAWB;
    Open;
    Locate('id', id_locate, [])
  end;
end;
procedure TFNewPeduidoAWB.ViewSubAWBPedidoDblClick(Sender : TObject);
begin
  FrameTopPanel1btnEditClick(Sender);
end;
end.
