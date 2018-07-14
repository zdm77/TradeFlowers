unit UNewTarifTrack;

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

  cxTextEdit,
  Vcl.StdCtrls,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sCurrEdit,
  cxLabel,
  cxGroupBox,
  UFrameSave,

  dxSkinDevExpressStyle,

   dxSkinsDefaultPainters;

type
  TFNewTarifTrack = class(TForm)
    FrameSave1: TFrameSave;
    cxGroupBox2: TcxGroupBox;
    lblSum: TcxLabel;
    edtSumTarif: TsCalcEdit;
    edtName: TcxTextEdit;
    lblNameCountry: TcxLabel;
    procedure edtNameKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FrameSave1btnSaveClick(Sender: TObject);
    procedure edtNamePropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    procedure EnableSave;
    { Public declarations }
  end;

var
  FNewTarifTrack: TFNewTarifTrack;

implementation

{$R *.dfm}

procedure TFNewTarifTrack.edtNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFNewTarifTrack.edtNamePropertiesEditValueChanged(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewTarifTrack.EnableSave;
begin
  if edtName.Text <> '' then
    FrameSave1.btnSave.Enabled := true
  else
    FrameSave1.btnSave.Enabled := false;
end;

procedure TFNewTarifTrack.FormShow(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewTarifTrack.FrameSave1btnSaveClick(Sender: TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  Close;
end;

end.
