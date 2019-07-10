unit UNewDaesWeek;
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
  
  cxLabel,
  cxTextEdit,
  cxMaskEdit,
  cxSpinEdit,
  cxTimeEdit,
  cxCheckBox,
  UFrameSave,
  cxGroupBox,
  
  dxSkinDevExpressStyle,
  
  dxSkinsDefaultPainters;
type
  TFNewDaysWeek = class(TForm)
    FrameSave1 : TFrameSave;
    Group1 : TcxGroupBox;
    chkПн : TcxCheckBox;
    chkВт : TcxCheckBox;
    chkСр : TcxCheckBox;
    chkЧт : TcxCheckBox;
    chkПт : TcxCheckBox;
    chkСб : TcxCheckBox;
    chkВс : TcxCheckBox;
    edtTimeВылет : TcxTimeEdit;
    edtTimeПрилет : TcxTimeEdit;
    lblTimeВылет : TcxLabel;
    lblTimeПрилет : TcxLabel;
  private
    { Private declarations }
  public
    procedure SetLang;
    { Public declarations }
  end;

var
  FNewDaysWeek : TFNewDaysWeek;
implementation
{$R *.dfm}

uses
  UPasswd;
procedure TFNewDaysWeek.SetLang;
begin
  case FPasswd.Lang of
    0 :
    begin
      Caption := 'Расписание';
      chkПн.Caption := 'Понедельник';
      chkВт.Caption := 'Вторник';
      chkСр.Caption := 'Среда';
      chkЧт.Caption := 'Четверг';
      chkПт.Caption := 'Пятница';
      chkСб.Caption := 'Суббота';
      chkВс.Caption := 'Воскресенье';
      lblTimeВылет.Caption := 'Время вылета:';
      lblTimeПрилет.Caption := 'Время прилета:';
    end;
    1 :
    begin
      Caption := 'Schedule';
      chkПн.Caption := 'Monday';
      chkВт.Caption := 'Tuesday';
      chkСр.Caption := 'Wednesday';
      chkЧт.Caption := 'Thursday';
      chkПт.Caption := 'Friday';
      chkСб.Caption := 'Saturday';
      chkВс.Caption := 'Sunday';
      lblTimeВылет.Caption := 'Time of departure:';
      lblTimeПрилет.Caption := 'Time of arrival:';
    end;
    2 :
    begin
      Caption := 'El horario';
      chkПн.Caption := 'El lunes';
      chkВт.Caption := 'El martes';
      chkСр.Caption := 'El ambiente';
      chkЧт.Caption := 'El jueves';
      chkПт.Caption := 'El viernes';
      chkСб.Caption := 'El sábado';
      chkВс.Caption := 'El domingo';
      lblTimeВылет.Caption := 'El tiempo del vuelo:';
      lblTimeПрилет.Caption := 'El tiempo de la llegada:';
    end;
  end;
end;
end.
