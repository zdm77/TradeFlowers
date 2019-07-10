unit USelLang;
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
  
  cxGroupBox,
  cxRadioGroup,
  UFrameSave,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue;
type
  TFSelLang = class(TForm)
    FrameSave1 : TFrameSave;
    Group1 : TcxRadioGroup;
    procedure FormShow(Sender : TObject);
    procedure FrameSave1btnPriorClick(Sender : TObject);
    procedure FrameSave1btnSaveClick(Sender : TObject);
  private
    { Private declarations }
  public
    procedure SetLang;
    { Public declarations }
  end;

var
  FSelLang : TFSelLang;
implementation
{$R *.dfm}

uses
  UPasswd;
procedure TFSelLang.FormShow(Sender : TObject);
begin
  SetLang;
end;
procedure TFSelLang.FrameSave1btnPriorClick(Sender : TObject);
begin
  Close;
end;
procedure TFSelLang.FrameSave1btnSaveClick(Sender : TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  Close;
end;
procedure TFSelLang.SetLang;
begin
  Group1.ItemIndex := FPasswd.Lang;
  case FPasswd.Lang of
    2 :
    begin
      Group1.Caption := 'La lengua del informe';
      Group1.Properties.Items[0].Caption := 'Ruso ';
      Group1.Properties.Items[1].Caption := 'Inglés';
      Group1.Properties.Items[2].Caption := 'Español';
      FrameSave1.btnSave.Caption := 'OK';
      FrameSave1.btnPrior.Caption := 'Anular';
    end;
  end;
  // TODO -cMM: TFSelLang.SetLang default body inserted
end;
end.
