unit USplash;
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
  cxProgressBar,
  Vcl.StdCtrls,
  cxGroupBox,
  
  Vcl.ExtCtrls,
  ActiveX,
  
  UTimer,
  AdvSmoothSplashScreen, cxLabel,
  
  dxSkinDevExpressStyle, dxSkinsDefaultPainters;
type
  TNewThread = class(TThread)
  private
    procedure SetBegin;
    procedure SetEnd;
    procedure SetConOptions;
    procedure SetError;
  protected
    procedure Execute; override;
  public
    // DComCon:TDComConnection;
  end;

type
  TFSplash = class(TForm)
    edt1 : TEdit;
    lblComment : TcxLabel;
    procedure FormShow(Sender : TObject);
    procedure FormClose(Sender : TObject; var Action : TCloseAction);
  private
    ToolTipThread : TThread;
    Tmr : Double;
    { Private declarations }
  public
    TWork : Double;
    procedure ShowHint;
    procedure Timer(Sender : TObject);
    { Public declarations }
  end;

var
  FSplash : TFSplash;

var
  T : Thrtimer;
implementation
uses
  UPasswd;
{$R *.dfm}

procedure TFSplash.Timer(Sender : TObject);
begin
  // Tmr := Tmr + 0.001;
  // case FPasswd.Lang of
  // 0:
  // lblTime.Caption := 'Выполнено за: ';
  // 1:
  // lblTime.Caption := 'Performed for the: ';
  // 2:
  // lblTime.Caption := 'Cumplido por: ';
  // end;
  // lblTime.Caption := lblTime.Caption + FloatToStr(Tmr) + ' с.';
  // TWork := Tmr;
end;
procedure TNewThread.SetBegin;
begin
  // UpDateform2.Button1.Enabled:=False;
end;
procedure TNewThread.SetEnd;
begin
  // UpDateForm2.Label1.Caption:='ГОТОВО!!!!!!!';
end;
procedure TNewThread.SetError;
begin
  // UpDateForm2.Label1.Caption:='Нет подключения к серверу';
end;
procedure TNewThread.SetConOptions;
begin
end;
procedure TNewThread.Execute;
begin
  // inherited;
  // CoInitialize(nil);
  // Synchronize(SetBegin);
  // // SetConOptions;
  // try
  // finally
  // end;
  // // if DCOMCON.Connected then
  // // BEGIN
  // // DM.cdsPersonal.ApplyUpdates(-1);
  // // END
  // // else Synchronize(SetError);
  // // if DCOMCON.Connected then DCOMCON.Close;
  // // DCOMCON.Free;
  // Synchronize(SetEnd);
  // CoUninitialize();
end;
procedure TFSplash.FormClose(Sender : TObject; var Action : TCloseAction);
begin
  // Anim1.Animate := false;
end;
procedure TFSplash.FormShow(Sender : TObject);
begin
  // Anim1.Animate := True;
  Tmr := 0;
  // case FPasswd.Lang of
  // 0:
  // begin
  // Caption := 'Выполнение запросов';
  // lblText.Caption := 'Выполняются запросы к БД. Подождите пожалуйста.';
  // end;
  // 1:
  // begin
  // Caption := 'Query execution';
  // lblText.Caption := 'Performs queries to the database. Please wait.'
  // end;
  // 2:
  // begin
  // Caption := 'Ejecución de las interpelaciones';
  // lblText.Caption :=
  // 'Se cumplen las interpelaciones a la base. Esperen por favor.'
  // end;
  // end;
  // Tmr := 0;
  // T := Thrtimer.Create(self);
  // T.Interval := 1000;
  // T.OnTimer := Timer;
  // T.Enabled := true;
end;
procedure TFSplash.ShowHint;
begin
end;
end.
