unit UNewTypeLengthWeight;

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
  UFrameSave,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  dxSkinsCore,
  
  Vcl.StdCtrls,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sCurrEdit,
  cxGroupBox,
  cxDropDownEdit,
  cxTextEdit,
  cxMaskEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  Data.DB,
  DBAccess,
  Uni,
  MemDS,
  AdvEdit,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue;

type
  TFNewTypeLengthWeight = class(TForm)
    FrameSave1: TFrameSave;
    cxGroupBox1: TcxGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    QueryCountry: TUniQuery;
    dsCountry: TUniDataSource;
    edtCountry: TcxLookupComboBox;
    lbl3: TLabel;
    lbl4: TLabel;
    edtУпаковка: TcxLookupComboBox;
    edtLength: TcxComboBox;
    QueryUp: TUniQuery;
    dsUp: TUniDataSource;
    edtWeight: TAdvEdit;
    Query1: TUniQuery;
    procedure edtLengthKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtWeightKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FrameSave1btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    s_id_country: Integer;
    procedure ShowCountry(s_id_locate: Integer = 0);
    procedure ShowUp(id_locate: Integer = 0);
    procedure ShowДлина(id_type, id_country, id_up: Integer);
    { Public declarations }
  end;

var
  FNewTypeLengthWeight: TFNewTypeLengthWeight;

implementation

{$R *.dfm}

procedure TFNewTypeLengthWeight.edtLengthKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    edtWeight.SetFocus;
end;

procedure TFNewTypeLengthWeight.edtWeightKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    FrameSave1btnSaveClick(Sender);
end;

procedure TFNewTypeLengthWeight.FormShow(Sender: TObject);
begin
  edtWeight.SetFocus;
end;

procedure TFNewTypeLengthWeight.FrameSave1btnSaveClick(Sender: TObject);
begin
  if (edtCountry.Text <> '') and (edtУпаковка.Text <> '') and
    (edtLength.Text <> '') and (edtWeight.Text <> '0') and (edtWeight.Text <> '')
  then
  begin
    FrameSave1.btnSaveClick(Sender);
    Close;
  end
  else
    Application.MessageBox
      ('Не заполнены необходимые поля. Сохранение не возможно.', 'Ошибка.',
      MB_OK + MB_ICONERROR);
end;

procedure TFNewTypeLengthWeight.ShowCountry(s_id_locate: Integer = 0);
begin
  with QueryCountry do
  begin
    SQL.CLear;
    SQL.Add(' SELECT');
    SQL.Add(' id,');
    SQL.Add(' name,');
    SQL.Add(' uni_name,');
    SQL.Add(' reg_name,');
    SQL.Add(' quantity,');
    SQL.Add(' code,');
    SQL.Add(' "приоритет"');
    SQL.Add(' FROM');
    SQL.Add(' "продукция"."страны" ;');
    Open;
    Locate('id', s_id_locate, []);
    edtCountry.EditValue := s_id_locate;
  end;
end;

procedure TFNewTypeLengthWeight.ShowUp(id_locate: Integer = 0);
begin
  with QueryUp do
  begin
    SQL.CLear;
    SQL.Add(' SELECT');
    SQL.Add(' id,');
    SQL.Add(' name');
    SQL.Add(' FROM');
    SQL.Add(' "продукция"."виды_упаковки" ;');
    Open;
    Locate('id', id_locate, []);
    edtУпаковка.EditValue := id_locate;
  end;
end;

procedure TFNewTypeLengthWeight.ShowДлина(id_type, id_country, id_up: Integer);
begin
  with Query1 do
  begin
    SQL.CLear;
    SQL.Add(' select max(cast (t."длина" as integer)) + 10');
    SQL.Add(' from "продукция"."тип_длина_вес" t');
    SQL.Add(' where t."код_страны" = :id_country and');
    SQL.Add(' t."код_типа" = :id_type and');
    SQL.Add(' t."код_упаковки" = :id_up');
    ParamByName('id_country').Value := id_country;
    ParamByName('id_type').Value := id_type;
    ParamByName('id_up').Value := id_up;
    Open;
    if Fields[0].AsString <> '' then
      edtLength.Text := Fields[0].AsString;
  end;
end;

end.
