unit UNewFB;

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
  Vcl.StdCtrls,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  dxSkinsCore,
  
  cxGroupBox,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sCurrEdit,
  UFrameSave,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue;

type
  TFNewFB = class(TForm)
    Group1: TcxGroupBox;
    FrameSave1: TFrameSave;
    edtFB: TsCalcEdit;
    lblFB: TLabel;
    procedure edtFBKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FrameSave1btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    id_save: Boolean;
    { Public declarations }
  end;

var
  FNewFB: TFNewFB;

implementation

{$R *.dfm}

procedure TFNewFB.edtFBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    FrameSave1btnSaveClick(Sender);
end;

procedure TFNewFB.FormShow(Sender: TObject);
begin
  edtFB.SetFocus;
end;

procedure TFNewFB.FrameSave1btnSaveClick(Sender: TObject);
begin
  id_save := True;
  Close;
end;

end.
