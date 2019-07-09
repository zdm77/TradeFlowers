unit UTimer;
{
  Author: Medvedev D. V.
  Company: IVC
}

interface

uses
  Windows,
  Classes,
  Forms,
  SysUtils;

type
  THRTimer = class;

  // отдельный поток для нашего таймера
  TTimerThread = class(TThread)
  private
    { Private declarations }
    FOwner: THRTimer;
  protected
    procedure Execute; override;
  end;

  // сам таймер
  THRTimer = class(TComponent)
  private
    FInterval: Double;
    FOnTimer: TNotifyEvent;
    FStartTime: Double;
    FClockRate: Double;
    FExists: Boolean;
    FEnabled: Boolean;
    FThread: TTimerThread;
    FPriority: TThreadPriority;
    procedure SetEnabled(Value: Boolean);
    procedure SetInterval(const Value: Double);
    procedure SetPriority(const Value: TThreadPriority);
  public
    constructor Create(AOwner: TComponent); override;
    function ReadTimer: Double;
  protected
    function StartTimer: Boolean;
    procedure Timer; virtual;
  published
    property Exists: Boolean read FExists;
    property Enabled: Boolean read FEnabled write SetEnabled;
    property Interval: Double read FInterval write SetInterval;
    property OnTimer: TNotifyEvent read FOnTimer write FOnTimer;
    property Priority: TThreadPriority read FPriority write SetPriority;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('MDV', [THRTimer]);
end;

// THRTimer
procedure THRTimer.SetEnabled(Value: Boolean);
begin
  if FEnabled = Value then
    Exit
  else
    FEnabled := Value;
  if FEnabled then // включили таймер
  begin
    StartTimer;
    FThread := TTimerThread.Create(false);
    FThread.FOwner := Self;
    FThread.FreeOnTerminate := true;
    FThread.Priority := FPriority;
  end
  else // выключили таймер
    FThread.Terminate;
end;

procedure THRTimer.SetInterval(const Value: Double);
begin
  if FInterval <> Value then
  begin
    if Enabled then
    begin
      Enabled := false;
      FInterval := Value;
      Enabled := true;
    end
    else
      FInterval := Value;
  end;
end;

procedure THRTimer.Timer;
begin
  if not(csDesigning in ComponentState) then
    if Assigned(FOnTimer) then
      FOnTimer(Self);
end;

constructor THRTimer.Create(AOwner: TComponent);
var
  QW: Int64;
begin
  inherited Create(AOwner);
  FExists := QueryPerformanceFrequency(QW);
  FClockRate := QW;
  FEnabled := false;
  FInterval := 1000;
  FPriority := tpNormal;
end;

function THRTimer.StartTimer: Boolean;
var
  QW: Int64;
begin
  Result := QueryPerformanceCounter(QW);
  FStartTime := QW;
end;

function THRTimer.ReadTimer: Double;
var
  ET: Int64;
begin
  QueryPerformanceCounter(ET);
  Result := 1000.0 * (ET - FStartTime) / FClockRate;
end;

// TTimerThread
procedure TTimerThread.Execute;
var
  StartT: Double; // начальное время отсчёта
  TickCounter: Integer; // количество "тиков" таймера
begin
  TickCounter := 1;
  StartT := FOwner.ReadTimer;
  // пока не завершили поток или программу
  while not(Terminated or Application.Terminated) do
  begin
    if (FOwner.ReadTimer - StartT) >= FOwner.FInterval * TickCounter then
    begin
      Synchronize(FOwner.Timer);
      Inc(TickCounter);
    end;
  end;
end;

procedure THRTimer.SetPriority(const Value: TThreadPriority);
begin
  if FPriority <> Value then
    FPriority := Value;
end;

end.
