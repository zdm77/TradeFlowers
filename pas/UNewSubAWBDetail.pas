unit UNewSubAWBDetail;

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
  cxButtonEdit,
  cxGroupBox,
  UFrameSave,
  Vcl.StdCtrls,
  AdvEdit,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue;

type
  TFNewSubAWBDetail = class(TForm)
    FrameSave1: TFrameSave;
    Group1: TcxGroupBox;
    edtPlant: TcxButtonEdit;
    lblMarking: TcxLabel;
    edtFB: TAdvEdit;
    Label2: TLabel;
    edtBox: TAdvEdit;
    Label1: TLabel;
    procedure edtBoxKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtFBKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtPlantPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure FrameSave1btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    s_id_plant: Integer;
    { Public declarations }
  end;

var
  FNewSubAWBDetail: TFNewSubAWBDetail;

implementation

{$R *.dfm}

uses
  USelectPlant,
  UPasswd;

procedure TFNewSubAWBDetail.edtBoxKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    FrameSave1btnSaveClick(Sender);
end;

procedure TFNewSubAWBDetail.edtFBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    edtBox.SetFocus;
end;

procedure TFNewSubAWBDetail.edtPlantPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.CreateForm(TFSelectPlant, FSelectPlant);
  with FSelectPlant do
  begin
    ColumnSel.Visible := false;
    case FPasswd.Lang of
      0:
        Caption := 'Выбор плантации';
      1:
        Caption := 'Elección de la plantación';
      2:
        Caption := 'Selection of plantations';
    end;
    ShowCountry;
    ShowModal;
    if FrameTopPanel1.id_select = True then
    begin
      s_id_plant := QuerySelect.FieldByName('id').AsInteger;
      case FPasswd.Lang of
        0:
          edtPlant.Text := QuerySelect.FieldByName('name').AsString;
        1:
          edtPlant.Text := QuerySelect.FieldByName('uni_name').AsString;
        2:
          edtPlant.Text := QuerySelect.FieldByName('reg_name').AsString;
      end;
    end;
  end;
end;

procedure TFNewSubAWBDetail.FormShow(Sender: TObject);
begin
  if edtPlant.Text <> '' then
    edtFB.SetFocus;
end;

procedure TFNewSubAWBDetail.FrameSave1btnSaveClick(Sender: TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  Close;
end;

end.
