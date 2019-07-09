unit UNewOrgName;

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
  Vcl.StdCtrls,
  Data.DB,
  DBAccess,
  Uni,
  MemDS,
  cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  UFrameUniName,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue;

type
  TFNewOrgName = class(TForm)
    FrameSave1: TFrameSave;
    Group1: TcxGroupBox;
    lblOrg: TLabel;
    edtOrg: TcxLookupComboBox;
    QueryOrg: TUniQuery;
    dsOrg: TUniDataSource;
    FrameUniName1: TFrameUniName;
    procedure FormShow(Sender: TObject);
    procedure FrameSave1btnSaveClick(Sender: TObject);
    procedure edtOrgPropertiesEditValueChanged(Sender: TObject);
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
  private
    { Private declarations }
  public
    s_id_org: Integer;
    procedure EnableSave;
    procedure ShowOrg;
    { Public declarations }
  end;

var
  FNewOrgName: TFNewOrgName;

implementation

{$R *.dfm}

uses
  UPasswd;

procedure TFNewOrgName.edtOrgPropertiesEditValueChanged(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewOrgName.EnableSave;
begin
  if (FrameUniName1.edtUniName.Text <> '') and
    (FrameUniName1.edtName.Text <> '') and (FrameUniName1.edtRegName.Text <> '')
    and (edtOrg.Text <> '') then
    FrameSave1.btnSave.Enabled := True
  else
    FrameSave1.btnSave.Enabled := false;
end;

procedure TFNewOrgName.FormShow(Sender: TObject);
begin
  FrameUniName1.SetLang;
  FrameUniName1.edtUniName.SetFocus;
  EnableSave;
end;

procedure TFNewOrgName.FrameSave1btnSaveClick(Sender: TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  Close;
end;

procedure TFNewOrgName.FrameUniName1edtNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFNewOrgName.FrameUniName1edtNamePropertiesEditValueChanged
  (Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewOrgName.FrameUniName1edtRegNameKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFNewOrgName.FrameUniName1edtRegNamePropertiesEditValueChanged
  (Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewOrgName.FrameUniName1edtUniNameKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFNewOrgName.FrameUniName1edtUniNamePropertiesEditValueChanged
  (Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewOrgName.ShowOrg;
begin
  with QueryOrg do
  begin
    Close;
    Open;
    edtOrg.EditValue := s_id_org;
  end;
end;

end.
