unit UNewAirLine;

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
  dxSkinsCore,

  dxSkinscxPCPainter,

  cxPC,
  UFrameSave,
  UFrameUniName,
  MemDS,
  DBAccess,
  Uni,
  UFrameTopPanel,
  cxStyles,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxEdit,
  DB,
  cxDBData,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  cxContainer,
  cxGroupBox,
  cxNavigator,

  dxSkinDevExpressStyle,

   dxSkinsDefaultPainters, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFNewAirLine = class(TForm)
    FrameSave1: TFrameSave;
    Query1: TUniQuery;
    QueryTimes: TUniQuery;
    dsTimes: TDataSource;
    cxGroupBox1: TcxGroupBox;
    FrameTopPanel1: TFrameTopPanel;
    GridStatWork: TcxGrid;
    ViewStatWork: TcxGridDBTableView;
    ColumnName: TcxGridDBColumn;
    ColumnTimeВылет: TcxGridDBColumn;
    ColumnTimeПрилет: TcxGridDBColumn;
    LevelStatWork: TcxGridLevel;
    FrameUniName1: TFrameUniName;
    procedure FormShow(Sender: TObject);
    procedure FrameSave1btnSaveClick(Sender: TObject);
    procedure FrameTopPanel1btnAddClick(Sender: TObject);
    procedure FrameTopPanel1btnDelClick(Sender: TObject);
    procedure FrameUniName1edtNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrameUniName1edtUniNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrameUniName1edtUniNamePropertiesEditValueChanged
      (Sender: TObject);
    procedure FrameUniName1edtNamePropertiesEditValueChanged(Sender: TObject);
    procedure FrameUniName1edtRegNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrameUniName1edtRegNamePropertiesEditValueChanged
      (Sender: TObject);
    procedure FrameTopPanel1btnEditClick(Sender: TObject);
    procedure FrameTopPanel1btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    s_id_AirLine: Integer;
    procedure EnableSave;
    procedure InsUpdAirLine(id_ins: boolean);
    procedure SetLang;
    procedure ShowTimes;
    { Public declarations }
  end;

var
  FNewAirLine: TFNewAirLine;

implementation

{$R *.dfm}

uses
  UPasswd,
  PGSQL,
  UNewShedule;

procedure TFNewAirLine.EnableSave;
begin
  with FrameUniName1 do
  begin
    if (edtUniName.Text <> '') and (edtRegName.Text <> '') and
      (edtName.Text <> '') then
    begin
      FrameSave1.btnSave.Enabled := true;
      FrameTopPanel1.btnAdd.Enabled := true;
    end
    else
    begin
      FrameSave1.btnSave.Enabled := false;
      FrameTopPanel1.btnAdd.Enabled := false;
    end;
  end;
  if QueryTimes.RecordCount <> 0 then
  begin
    FrameTopPanel1.btnEdit.Enabled := true;
    FrameTopPanel1.btnDel.Enabled := true;
    FrameTopPanel1.btnRefresh.Enabled := true;
  end
  else
  begin
    FrameTopPanel1.btnEdit.Enabled := false;
    FrameTopPanel1.btnDel.Enabled := false;
    FrameTopPanel1.btnRefresh.Enabled := false;
  end;
end;

procedure TFNewAirLine.FormShow(Sender: TObject);
begin
  FrameUniName1.edtUniName.SetFocus;
  EnableSave;
end;

procedure TFNewAirLine.FrameSave1btnSaveClick(Sender: TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  if s_id_AirLine = 0 then
    InsUpdAirLine(true)
  else
    InsUpdAirLine(false);
  Close;
end;

procedure TFNewAirLine.FrameTopPanel1btnAddClick(Sender: TObject);
begin
  if s_id_AirLine = 0 then
    InsUpdAirLine(true);
  Application.CreateForm(TFNewTimeFly, FNewTimeFly);
  with FNewTimeFly do
  begin
    s_id_airline_for_edit := s_id_AirLine;
    FrameSave1.SetLang;
    SetLang;
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      ShowTimes;
      EnableSave;
    end;
  end;
end;

procedure TFNewAirLine.FrameTopPanel1btnDelClick(Sender: TObject);
begin
  PGSQL.StandartDelete(QueryTimes.FieldByName('id').AsString,
    '"авиалинии"."график_вылета"', QueryTimes, '', '', '', '');
  EnableSave;
end;

procedure TFNewAirLine.FrameTopPanel1btnEditClick(Sender: TObject);
begin
  Application.CreateForm(TFNewTimeFly, FNewTimeFly);
  with FNewTimeFly do
  begin
    s_id_airline_for_edit := s_id_AirLine;
    s_id_time := QueryTimes.FieldByName('id').AsInteger;
    edtDays.Text := QueryTimes.FieldByName('день').Value;
    edtTimeВылет.Time := QueryTimes.FieldByName('время_вылета').Value;
    edtTimeПрилет.Time := QueryTimes.FieldByName('время_прилета').Value;
    FrameSave1.SetLang;
    SetLang;
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      ShowTimes;
    end;
  end;
end;

procedure TFNewAirLine.FrameTopPanel1btnRefreshClick(Sender: TObject);
begin
  ShowTimes;
end;

procedure TFNewAirLine.FrameUniName1edtNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFNewAirLine.FrameUniName1edtNamePropertiesEditValueChanged
  (Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewAirLine.FrameUniName1edtRegNameKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFNewAirLine.FrameUniName1edtRegNamePropertiesEditValueChanged
  (Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewAirLine.FrameUniName1edtUniNameKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFNewAirLine.FrameUniName1edtUniNamePropertiesEditValueChanged
  (Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewAirLine.InsUpdAirLine(id_ins: boolean);
begin
  with Query1 do
  begin
    Close;
    if id_ins = true then
    begin
      s_id_AirLine := PGSQL.NewID('"авиалинии"."авиалинии_id_seq"');
      SQL.Text :=
        'INSERT INTO "авиалинии"."авиалинии"(id, name, uni_name, reg_name) ' +
        'VALUES (:id, :name, :uni_name, :reg_name)';
    end
    else
      SQL.Text :=
        'UPDATE  "авиалинии"."авиалинии" SET name = :name, uni_name = :uni_name,'
        + 'reg_name = :reg_name WHERE id = :id';
    ParamByName('id').AsInteger := s_id_AirLine;
    with FrameUniName1 do
    begin
      ParamByName('name').AsString := edtName.Text;
      ParamByName('uni_name').AsString := edtUniName.Text;
      ParamByName('reg_name').AsString := edtRegName.Text;
    end;
    ExecSQL;
  end;
end;

procedure TFNewAirLine.SetLang;
begin
  case FPasswd.Lang of
    0:
      begin
        Caption := 'Авиалиния';
      end;
    1:
      begin
        Caption := 'Airline';
      end;
    2:
      begin
        Caption := 'La línea aérea';
      end;
  end;
end;

procedure TFNewAirLine.ShowTimes;
begin
  with QueryTimes do
  begin
    Close;
    SQL.Text := 'select * from "авиалинии"."график_вылета" where код_авиалинии='
      + IntToStr(s_id_AirLine);
    Open;
  end;
end;

end.
