unit UPrepReportPedido;

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
  
  cxCheckBox,
  cxTextEdit,
  cxMaskEdit,
  cxButtonEdit,
  UFrameSave,
  Vcl.ComCtrls,
  AdvDateTimePicker,
  Vcl.StdCtrls,
  cxRadioGroup,
  cxLabel,
  cxGroupBox,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue;

type
  TFPrepReportPedido = class(TForm)
    FrameSave1: TFrameSave;
    Group1: TcxGroupBox;
    edtMark: TcxButtonEdit;
    chkMark: TcxCheckBox;
    edtДатаВылета: TAdvDateTimePicker;
    lblДатаВылета: TcxLabel;
    chkAll: TcxRadioButton;
    chkНевыполненные: TcxRadioButton;
    chkПлантация: TcxCheckBox;
    edtПлантация: TcxButtonEdit;
    chkСорт: TcxCheckBox;
    edtСорт: TcxButtonEdit;
    chkЗаказ: TcxCheckBox;
    procedure chkMarkPropertiesEditValueChanged(Sender: TObject);
    procedure chkНевыполненныеClick(Sender: TObject);
    procedure chkПлантацияPropertiesEditValueChanged(Sender: TObject);
    procedure chkСортPropertiesEditValueChanged(Sender: TObject);
    procedure edtMarkPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtПлантацияPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FrameSave1btnSaveClick(Sender: TObject);
    procedure edtСортPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure chkAllClick(Sender: TObject);
  private
    { Private declarations }
  public
    id_marking, id_plant, id_sort: Integer;
    { Public declarations }
  end;

var
  FPrepReportPedido: TFPrepReportPedido;

implementation

uses
  USelect,
  USelectPlant,
  UPasswd,
  USplash,
  USelectSort;
{$R *.dfm}

procedure TFPrepReportPedido.chkAllClick(Sender: TObject);
begin
  chkЗаказ.Checked := chkНевыполненные.Checked;
end;

procedure TFPrepReportPedido.chkMarkPropertiesEditValueChanged(Sender: TObject);
begin
  edtMark.Enabled := chkMark.Checked;
  if (chkMark.Checked = true) and (edtMark.Text = '') then
    edtMarkPropertiesButtonClick(Sender, 0);
end;

procedure TFPrepReportPedido.chkНевыполненныеClick(Sender: TObject);
begin
  chkЗаказ.Checked := not chkНевыполненные.Checked;
end;

procedure TFPrepReportPedido.chkПлантацияPropertiesEditValueChanged
  (Sender: TObject);
begin
  edtПлантация.Enabled := chkПлантация.Checked;
  if (chkПлантация.Checked = true) and (edtПлантация.Text = '') then
    edtПлантацияPropertiesButtonClick(Sender, 0);
end;

procedure TFPrepReportPedido.chkСортPropertiesEditValueChanged(Sender: TObject);
begin
  edtСорт.Enabled := chkСорт.Checked;
  if (chkСорт.Checked = true) and (edtСорт.Text = '') then
    edtСортPropertiesButtonClick(Sender, 0);
end;

procedure TFPrepReportPedido.edtMarkPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.CreateForm(TFSelect, FSelect);
  with FSelect do
  begin
    Caption := 'Выберите маркировку';
    lstTree.Visible := true;
    GridSelect.Visible := false;
    ShowSelect('"маркировки"."маркировки"', '', false, true);
    ShowModal;
    if FrameTopPanel1.id_select = true then
    begin
      edtMark.Text := QuerySelect.FieldByName('uni_name').AsString;
      id_marking := QuerySelect.FieldByName('id').AsInteger;
    end;
  end;
end;

procedure TFPrepReportPedido.edtПлантацияPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.CreateForm(TFSelectPlant, FSelectPlant);
  with FSelectPlant do
  begin
    ColumnSel.Visible := false;
    Caption := 'Выберите плантацию';
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
    if FrameTopPanel1.id_select = true then
    begin
      id_plant := QuerySelect.FieldByName('id').AsInteger;
      case FPasswd.Lang of
        0:
          edtПлантация.Text := QuerySelect.FieldByName('name').AsString;
        1:
          edtПлантация.Text := QuerySelect.FieldByName('uni_name').AsString;
        2:
          edtПлантация.Text := QuerySelect.FieldByName('reg_name').AsString;
      end;
    end;
  end;
end;

procedure TFPrepReportPedido.edtСортPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.CreateForm(TFSelectSort, FSelectSort);
  with FSelectSort do
  begin
    ShowModal;
    if FrameSort1.FrameTopPanel1.id_select = true then
    begin
      id_sort := FrameSort1.QuerySort.FieldByName('id').AsInteger;
      case FPasswd.Lang of
        0:
          edtСорт.Text := FrameSort1.QuerySort.FieldByName('name').AsString;
        1:
          edtСорт.Text := FrameSort1.QuerySort.FieldByName('uni_name').AsString;
        2:
          edtСорт.Text := FrameSort1.QuerySort.FieldByName('reg_name').AsString;
      end;
    end;
  end;
end;

procedure TFPrepReportPedido.FrameSave1btnSaveClick(Sender: TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  if chkMark.Checked = false then
    id_marking := 0;
  if chkПлантация.Checked = false then
    id_plant := 0;
  if chkСорт.Checked = false then
    id_sort := 0;
  Close;
end;

end.
