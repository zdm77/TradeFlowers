unit UNewCountry;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, 
   cxLabel, cxTextEdit, UFrameUniName, cxGroupBox,
  UFrameSave;

type
  TFNewCountry = class(TForm)
    FrameSave1: TFrameSave;
    cxGroupBox1: TcxGroupBox;
    FrameUniName1: TFrameUniName;
    edtCode: TcxTextEdit;
    lblRegName: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure FrameSave1btnSaveClick(Sender: TObject);
    procedure edtUniNamePropertiesChange(Sender: TObject);
    procedure edtNamePropertiesChange(Sender: TObject);
    procedure edtCodePropertiesChange(Sender: TObject);
    procedure edtRegNamePropertiesChange(Sender: TObject);
    procedure btnTranslitClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure EnableSave;
    { Public declarations }
  end;

var
  FNewCountry: TFNewCountry;

implementation

{$R *.dfm}

procedure TFNewCountry.btnTranslitClick(Sender: TObject);
begin
FrameUniName1.btnTranslitClick(Sender);
  edtCode.SetFocus;
end;

procedure TFNewCountry.edtCodePropertiesChange(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewCountry.edtNamePropertiesChange(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewCountry.edtRegNamePropertiesChange(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewCountry.edtUniNamePropertiesChange(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewCountry.EnableSave;
begin
  if (FrameUniName1.edtUniName.Text <> '') and
    (FrameUniName1.edtRegName.Text <> '') and (FrameUniName1.edtName.Text <> '')
    and (edtCode.Text <> '') then
    FrameSave1.btnSave.Enabled := True
  else
    FrameSave1.btnSave.Enabled := False;
end;

procedure TFNewCountry.FormShow(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewCountry.FrameSave1btnSaveClick(Sender: TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  Close;
end;

end.
