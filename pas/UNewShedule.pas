unit UNewShedule;

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

  Vcl.StdCtrls,
  Vcl.Mask,
  AdvDropDown,
  AdvTimePickerDropDown,
  cxTextEdit,
  cxLabel,
  cxGroupBox,
  UFrameSave,
  Vcl.ComCtrls,
  AdvDateTimePicker,
  Data.DB,
  MemDS,
  DBAccess,
  Uni,

  dxSkinDevExpressStyle,

   dxSkinsDefaultPainters;

type
  TFNewTimeFly = class(TForm)
    FrameSave1: TFrameSave;
    Group1: TcxGroupBox;
    edtDays: TcxTextEdit;
    edtTimeВылет: TAdvDateTimePicker;
    edtTimeПрилет: TAdvDateTimePicker;
    lblTimeВылет: TcxLabel;
    lblTimeПрилет: TcxLabel;
    lblDayFly: TcxLabel;
    Query1: TUniQuery;
    procedure FrameSave1btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    s_id_time: Integer;
    s_id_airline_for_edit: Integer;
    procedure InsUpdTime(id_ins: boolean);
    procedure SetLang;
    { Public declarations }
  end;

var
  FNewTimeFly: TFNewTimeFly;

implementation

{$R *.dfm}

uses
  UPasswd,
  PGSQL;

procedure TFNewTimeFly.FrameSave1btnSaveClick(Sender: TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  if s_id_time = 0 then
    InsUpdTime(true)
  else
    InsUpdTime(false);
  close;
end;

procedure TFNewTimeFly.InsUpdTime(id_ins: boolean);
begin
  with Query1 do
  begin
    close;
    if id_ins = true then
    begin
      s_id_time := PGSQL.NewID('"авиалинии"."график_вылета_id_seq"');
      sql.Text := 'INSERT INTO "авиалинии"."график_вылета"(id, "код_авиалинии",'
        + '"день", "время_вылета", "время_прилета", "день_uni", "день_reg"' +
        ') VALUES (:id, :код_авиалинии, :день, :время_вылета, :время_прилета,' +
        ' :день_uni, :день_reg)';
    end
    else
      sql.Text :=
        'UPDATE "авиалинии"."график_вылета" SET "код_авиалинии" = :код_авиалинии,'
        + '"день" = :день, "время_вылета" = :время_вылета, "время_прилета" = :время_прилета,'
        + '"день_uni" = :день_uni, "день_reg" = :день_reg WHERE id = :id';
    ParamByName('id').AsInteger := s_id_time;
    ParamByName('код_авиалинии').AsInteger := s_id_airline_for_edit;
    ParamByName('день').Value := edtDays.Text;
    ParamByName('день_uni').Value := edtDays.Text;
    ParamByName('день_reg').Value := edtDays.Text;
    ParamByName('время_вылета').Value := edtTimeВылет.Time;
    ParamByName('время_прилета').Value := edtTimeПрилет.Time;
    ExecSQL;
  end;
end;

procedure TFNewTimeFly.SetLang;
var
  w: Integer;
begin
  case FPasswd.Lang of
    0:
      begin
        Caption := 'Расписание';
        lblTimeВылет.Caption := 'Время вылета:';
        lblTimeПрилет.Caption := 'Время прилета:';
        lblDayFly.Caption := 'Дни вылета:';
      end;
    1:
      begin
        Caption := 'Schedule';
        lblTimeВылет.Caption := 'Time of departure:';
        lblTimeПрилет.Caption := 'Time of arrival:';
        lblDayFly.Caption := 'Days of departure:';
      end;
    2:
      begin
        Caption := 'El horario';
        lblTimeВылет.Caption := 'El tiempo del vuelo:';
        lblTimeПрилет.Caption := 'El tiempo de la llegada:';
        lblDayFly.Caption := 'Los días:';
      end;
  end;
  w := Canvas.TextWidth(lblDayFly.Caption);
  if Canvas.TextWidth(lblTimeВылет.Caption) > Canvas.TextWidth(lblDayFly.Caption)
  then
    w := Canvas.TextWidth(lblTimeВылет.Caption);
  if Canvas.TextWidth(lblTimeПрилет.Caption) >
    Canvas.TextWidth(lblTimeВылет.Caption) then
    w := Canvas.TextWidth(lblTimeПрилет.Caption);
  edtDays.Left := w + 10;
  edtTimeВылет.Left := w + 10;
  edtTimeПрилет.Left := w + 10;
end;

end.
