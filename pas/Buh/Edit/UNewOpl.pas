unit UNewOpl;
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
  UFrameSave,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sTooledit,
  Vcl.StdCtrls,
  AdvEdit,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue;
type
  TFNewOpl = class(TForm)
    FrameSave1 : TFrameSave;
    Group1 : TcxGroupBox;
    edtSumOpl : TAdvEdit;
    Label5 : TLabel;
    Label4 : TLabel;
    edtDateOpl : TsDateEdit;
    Label1 : TLabel;
    edtNumPP : TEdit;
    procedure edtDateOplCloseUp(Sender : TObject);
    procedure edtDateOplKeyDown(Sender : TObject; var Key : Word;
                                   Shift : TShiftState);
    procedure edtNumPPKeyDown(Sender : TObject; var Key : Word;
                                 Shift : TShiftState);
    procedure edtSumOplKeyDown(Sender : TObject; var Key : Word;
                                  Shift : TShiftState);
    procedure FormShow(Sender : TObject);
    procedure FrameSave1btnSaveClick(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNewOpl : TFNewOpl;
implementation
{$R *.dfm}

procedure TFNewOpl.edtDateOplCloseUp(Sender : TObject);
begin
  edtSumOpl.SetFocus;
end;
procedure TFNewOpl.edtDateOplKeyDown(Sender : TObject; var Key : Word;
                                        Shift : TShiftState);
begin
  if Key = VK_RETURN then
    edtSumOpl.SetFocus;
end;
procedure TFNewOpl.edtNumPPKeyDown(Sender : TObject; var Key : Word;
                                      Shift : TShiftState);
begin
  if Key = VK_RETURN then
    edtDateOpl.SetFocus;
end;
procedure TFNewOpl.edtSumOplKeyDown(Sender : TObject; var Key : Word;
                                       Shift : TShiftState);
begin
  if Key = VK_RETURN then
    FrameSave1btnSaveClick(Sender);
end;
procedure TFNewOpl.FormShow(Sender : TObject);
begin
  edtNumPP.SetFocus;
end;
procedure TFNewOpl.FrameSave1btnSaveClick(Sender : TObject);
var
  q : Double;
begin
  try
    q := StrToFloat(edtSumOpl.Text);
  except
    Application.MessageBox('Заполните поле сумма.', 'Ошибка',
                            MB_OK + MB_ICONERROR);
    edtSumOpl.SetFocus;
    Abort;
  end;
  if (edtDateOpl.Text <> '  .  .    ') then
  begin
    FrameSave1.btnSaveClick(Sender);
    Close;
  end
  else
  begin
    Application.MessageBox('Необходимо ввести дату.', 'Ошибка',
                            MB_OK + MB_ICONERROR);
    edtDateOpl.SetFocus;
  end;
end;
end.
