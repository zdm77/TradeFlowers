unit UNewOplatPlant;

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
  AdvEdit,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sTooledit,
  Vcl.StdCtrls,
  UFrameSave,
  cxGroupBox,
  Data.DB,
  MemDS,
  DBAccess,
  Uni,
  sCurrEdit,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue;

type
  TFNewOplatPlant = class(TForm)
    Group1: TcxGroupBox;
    FrameSave1: TFrameSave;
    edtNumPP: TEdit;
    Label1: TLabel;
    edtDateOpl: TsDateEdit;
    Label5: TLabel;
    Label4: TLabel;
    edtPlant: TcxButtonEdit;
    lblMarking: TcxLabel;
    cal: TUniQuery;
    Query1: TUniQuery;
    edtSumOpl: TsCalcEdit;
    procedure edtDateOplChange(Sender: TObject);
    procedure edtDateOplCloseUp(Sender: TObject);
    procedure edtNumPPChange(Sender: TObject);
    procedure edtNumPPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPlantPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FrameSave1btnSaveClick(Sender: TObject);
    procedure edtPlantPropertiesChange(Sender: TObject);
    procedure edtSumOplChange(Sender: TObject);
    procedure edtSumOplKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edtDateOplKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrameSave1btnNextClick(Sender: TObject);
  private
    abort_close: Boolean;
    { Private declarations }
  public
    id_plant: Integer;
    s_ins_upd: Boolean;
    s_id_oplata: Integer;
    procedure EnableSave;
    procedure InsUpdOplat(ins_upd: Boolean);
    { Public declarations }
  end;

var
  FNewOplatPlant: TFNewOplatPlant;

implementation

{$R *.dfm}

uses
  USelectPlant,
  UPasswd,
  USplash,
  PGSQL,
  UBuh,
  UFacturPlant;

procedure TFNewOplatPlant.edtDateOplChange(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewOplatPlant.edtDateOplCloseUp(Sender: TObject);
begin
  edtSumOpl.SetFocus;
end;

procedure TFNewOplatPlant.edtDateOplKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    edtSumOpl.SetFocus;
end;

procedure TFNewOplatPlant.edtNumPPChange(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewOplatPlant.edtNumPPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    edtDateOpl.SetFocus;
end;

procedure TFNewOplatPlant.edtPlantPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.CreateForm(TFSelectPlant, FSelectPlant);
  with FSelectPlant do
  begin
    ColumnSel.Visible := false;
    ColumnColorGrid.DataBinding.FieldName := 'код_позиции_заказа';
    use_color := True;
    // with QuerySelect do
    // begin
    // Close;
    // sql.Text :=
    // 'SELECT pt.id,  pt.name,  pt.brand,  pt."код_страны",  pt.uni_name,' +
    // ' pt.reg_name,  pt."примечание",  p."код_позиции_заказа" FROM' +
    // '  "продукция"."плантации" pt  LEFT JOIN "маркировки"."желаемые_плантации" '
    // + ' p ON (pt.id = p."код_плантации" and  "код_позиции_заказа"=' +
    // IntToStr(id_order_edit) + ')' +
    // ' WHERE  pt.id NOT IN (SELECT "код_плантации" FROM ' +
    // ' "маркировки"."запрет_плантаций" where  "код_позиции_заказа"=' +
    // IntToStr(id_order_edit) + ' )' +
    // ' order by p."код_позиции_заказа", name    ';
    // Open;
    // end;
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
      id_plant := QuerySelect.FieldByName('id').AsInteger;
      case FPasswd.Lang of
        0:
          edtPlant.Text := QuerySelect.FieldByName('name').AsString;
        1:
          edtPlant.Text := QuerySelect.FieldByName('uni_name').AsString;
        2:
          edtPlant.Text := QuerySelect.FieldByName('reg_name').AsString;
      end;
      FSplash.Show();
      FSplash.Update;
      FSplash.Close;
    end;
  end;
  FSplash.Close;
end;

procedure TFNewOplatPlant.edtPlantPropertiesChange(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewOplatPlant.edtSumOplChange(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewOplatPlant.edtSumOplKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // StringRepace();
  if FrameSave1.btnSave.Enabled = True then
    if Key = VK_RETURN then
    begin
      if Application.MessageBox('Вы хотите продолжить ввод платежей?', 'Вопрос',
        MB_YESNO + MB_ICONQUESTION) = mrYes then
      begin
        FrameSave1btnNextClick(Sender);
      end
      else
        FrameSave1btnSaveClick(Sender);
    end;
end;

procedure TFNewOplatPlant.EnableSave;
begin
  if (edtPlant.Text <> '') and (edtDateOpl.Text <> '  .  .    ') and
    (edtSumOpl.Text <> '0,00') and (edtNumPP.Text <> '') then
  begin
    FrameSave1.btnSave.Enabled := True;
    FrameSave1.btnNext.Enabled := True;
  end
  else
  begin
    FrameSave1.btnSave.Enabled := false;
    FrameSave1.btnNext.Enabled := false;
  end;
end;

procedure TFNewOplatPlant.FormShow(Sender: TObject);
begin
  EnableSave;
  edtNumPP.SetFocus;
end;

procedure TFNewOplatPlant.FrameSave1btnNextClick(Sender: TObject);
begin
  InsUpdOplat(s_ins_upd);
  edtNumPP.Text := '';
  edtSumOpl.Text := '';
  edtDateOpl.Text := '  .  .    ';
  edtNumPP.SetFocus;
  s_ins_upd := True;
end;

procedure TFNewOplatPlant.FrameSave1btnSaveClick(Sender: TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  InsUpdOplat(s_ins_upd);
  if abort_close = false then
    Close;
end;

procedure TFNewOplatPlant.InsUpdOplat(ins_upd: Boolean);
begin
  abort_close := false;
  with Query1 do
  begin
    // проверяем уникальность номера п/п
    // Close;
    // SQL.Text:='select номер_пп from "бух"."бух_оплата_плантации"';
    try
      SQL.Clear;
      if ins_upd = True then
      begin
        SQL.Add(' INSERT INTO');
        SQL.Add(' "бух"."бух_оплата_плантации"');
        SQL.Add(' (id,');
        SQL.Add(' "номер_пп",');
        SQL.Add(' "код_плантации",');
        SQL.Add(' "дата_пп",');
        SQL.Add(' "сумма_пп"');
        SQL.Add(' )');
        SQL.Add(' VALUES (:id,');
        SQL.Add(' :номер_пп,');
        SQL.Add(' :код_плантации,');
        SQL.Add(' :дата_пп,');
        SQL.Add(' :сумма_пп');
        SQL.Add(' );');
        s_id_oplata := PGSQL.NewID('"бух"."бух_оплата_плантации_id_seq"');
      end
      else
      begin
        SQL.Add(' UPDATE');
        SQL.Add(' "бух"."бух_оплата_плантации"');
        SQL.Add(' SET');
        SQL.Add(' "номер_пп" = :номер_пп,');
        SQL.Add(' "код_плантации" = :код_плантации,');
        SQL.Add(' "дата_пп" = :дата_пп,');
        SQL.Add(' "сумма_пп" = :сумма_пп');
        SQL.Add(' ');
        SQL.Add(' WHERE');
        SQL.Add(' id = :id');
      end;
      ParamByName('id').AsInteger := s_id_oplata;
      ParamByName('номер_пп').AsString := edtNumPP.Text;
      ParamByName('код_плантации').AsInteger := id_plant;
      ParamByName('дата_пп').AsDate := edtDateOpl.Date;
      ParamByName('сумма_пп').AsString := edtSumOpl.Text;
      ExecSQL;
      if Assigned(FBuh) then
        FBuh.FrameOplataPlant1.ShowOpl(s_id_oplata);
      if Assigned(FFacturPlant) then
        FFacturPlant.ShowFact(FFacturPlant.QueryFacturPlant.FieldByName('о_код')
          .AsInteger);
    except
      Application.MessageBox('Введен не уникальный номер п/п.', 'Ошибка.',
        MB_OK + MB_ICONERROR);
      abort_close := True;
    end;
  end;
end;

end.
