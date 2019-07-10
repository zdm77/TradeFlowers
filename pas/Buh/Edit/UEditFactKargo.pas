unit UEditFactKargo;
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
  
  cxStyles,
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxNavigator,
  Data.DB,
  cxDBData,
  cxCalc,
  MemDS,
  DBAccess,
  Uni,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  UFrameTopPanel,
  AdvEdit,
  Vcl.StdCtrls,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sTooledit,
  cxGroupBox,
  UFrameSave,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue;
type
  TFEditFactKargo = class(TForm)
    FrameSave1 : TFrameSave;
    Group1 : TcxGroupBox;
    lblДата : TLabel;
    lblНомер : TLabel;
    lblСуммаФактуры : TLabel;
    edtDateFact : TsDateEdit;
    edtNum : TEdit;
    edtSumFact : TAdvEdit;
    cxGroupBox1 : TcxGroupBox;
    FrameTopPanel1 : TFrameTopPanel;
    GridAWB : TcxGrid;
    ViewAWB : TcxGridDBTableView;
    ColumnДата : TcxGridDBColumn;
    ColumnСумма : TcxGridDBColumn;
    ColumnРазница : TcxGridDBColumn;
    LevelOrg : TcxGridLevel;
    QueryOpl : TUniQuery;
    dsOpl : TDataSource;
    QueryOpl1 : TUniQuery;
    Query1 : TUniQuery;
    lblСуммаAWB : TLabel;
    edtSumAWB : TAdvEdit;
    ColumnNum : TcxGridDBColumn;
    edtПретензия : TAdvEdit;
    lblПретензия : TLabel;
    procedure FormClose(Sender : TObject; var Action : TCloseAction);
    procedure FormShow(Sender : TObject);
    procedure FrameSave1btnSaveClick(Sender : TObject);
    procedure btnAddClick(Sender : TObject);
    procedure btnEditClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure edtDateFactCloseUp(Sender : TObject);
    procedure edtDateFactKeyDown(Sender : TObject; var Key : Word;
                                    Shift : TShiftState);
    procedure edtNumKeyDown(Sender : TObject; var Key : Word; Shift : TShiftState);
    procedure edtSumAWBKeyDown(Sender : TObject; var Key : Word;
                                  Shift : TShiftState);
    procedure ViewAWBDblClick(Sender : TObject);
  private
    { Private declarations }
  public
    s_id_detail : Integer;
    sum_fact, претензия : string;
    procedure Access;
    procedure SetLang;
    procedure ShowOpl(id_locate : Integer = 0);
    procedure UpdateAfterOpl(s_v : Double);
    procedure UpdateOpl;
    { Public declarations }
  end;

var
  FEditFactKargo : TFEditFactKargo;
implementation
{$R *.dfm}

uses
  UFacturKargo,
  UNewOpl,
  UPasswd,
  PGSQL;
procedure TFEditFactKargo.Access;
begin
  with FPasswd do
  begin
    { доступ }
    if (ID_ROLE <> 1) and (ID_ROLE <> 12) then
    begin
      FrameTopPanel1.btnEdit.Enabled := False;
      FrameTopPanel1.btnDel.Enabled := False;
    end;
  end;
end;
procedure TFEditFactKargo.btnAddClick(Sender : TObject);
var
  v : Double;
begin
  Application.CreateForm(TFNewOpl, FNewOpl);
  with FNewOpl do
  begin
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      // проверяем промежуточные данные
      // сумма
      with QueryOpl1 do
      begin
        if QueryOpl.Fields[0].AsString <> '' then
        begin
          // определяем предыдущий
          Close;
          SQL.Text := 'select разница from "бух"."оплата_awb"' +
        ' where код_awb=' + IntToStr(s_id_detail) + ' and дата<=:d ' +
        ' order by дата DESC,  ID  LIMIT 1';
          ParamByName('d').AsString := FNewOpl.edtDateOpl.Text;
          Open;
          if Fields[0].AsString <> '' then
            v := Fields[0].AsFloat + StrToFloat(FNewOpl.edtSumOpl.Text)
          else
            v := StrToFloat(FNewOpl.edtSumOpl.Text) -
          StrToFloat(edtSumFact.Text);
          Close;
          SQL.Text :=
                     'select * from "бух"."оплата_awb" where дата>:d and код_awb=' +
                     IntToStr(s_id_detail) + ' order by дата';
          Open;
          if Fields[0].AsString <> '' then
          begin
            UpdateAfterOpl(v - StrToFloat(edtПретензия.Text));
          end;
        end
        else
          v := StrToFloat(FNewOpl.edtSumOpl.Text) - StrToFloat(edtSumFact.Text);
{$REGION 'Вставка'}
        SQL.Clear;
        SQL.Add(' INSERT INTO');
        SQL.Add(' "бух"."оплата_awb"');
        SQL.Add(' (');
        SQL.Add(' "код_awb",');
        SQL.Add(' "дата",');
        SQL.Add(' "сумма",');
        SQL.Add(' "разница", номер_пп');
        SQL.Add(' )');
        SQL.Add(' VALUES (');
        SQL.Add(' :код_awb,');
        SQL.Add(' :дата,');
        SQL.Add(' :сумма,');
        SQL.Add(' :разница, :номер_пп');
        SQL.Add(' );');
        ParamByName('код_awb').AsInteger := s_id_detail;
        ParamByName('дата').AsString := FNewOpl.edtDateOpl.Text;
        ParamByName('сумма').AsString := FNewOpl.edtSumOpl.Text;
        ParamByName('номер_пп').AsString := edtNumPP.Text;
        ParamByName('разница').AsFloat := v;
        ExecSQL;
        ShowOpl();
      end;
{$ENDREGION};
    end;
  end;
end;
procedure TFEditFactKargo.btnDelClick(Sender : TObject);
begin
  PGSQL.StandartDelete(QueryOpl.FieldByName('id').AsString,
                        '"бух"."оплата_awb"', QueryOpl, '', '', '', '');
  with QueryOpl1 do
  begin
    Close;
    SQL.Text := QueryOpl.SQL.Text;
    Open;
    UpdateAfterOpl(-StrToFloat(edtSumFact.Text) +
    StrToFloat(edtПретензия.Text));
    ShowOpl();
  end;
end;
procedure TFEditFactKargo.btnEditClick(Sender : TObject);
begin
  Application.CreateForm(TFNewOpl, FNewOpl);
  with FNewOpl do
  begin
    edtSumOpl.Text := QueryOpl.FieldByName('сумма').AsString;
    edtDateOpl.Text := QueryOpl.FieldByName('дата').AsString;
    edtNumPP.Text := QueryOpl.FieldByName('номер_пп').AsString;
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      with QueryOpl1 do
      begin
        SQL.Clear;
        SQL.Add(' UPDATE');
        SQL.Add(' "бух"."оплата_awb"');
        SQL.Add(' SET');
        SQL.Add(' "дата" = :дата,');
        SQL.Add(' "сумма" = :сумма,');
        SQL.Add(' "номер_пп" = :номер_пп');
        SQL.Add(' WHERE');
        SQL.Add(' id = :id');
        ParamByName('id').AsInteger := QueryOpl.FieldByName('id').AsInteger;
        ParamByName('дата').AsString := edtDateOpl.Text;
        ParamByName('сумма').AsString := edtSumOpl.Text;
        ParamByName('номер_пп').AsString := edtNumPP.Text;
        ExecSQL;
        Close;
        SQL.Text := QueryOpl.SQL.Text;
        Open;
        UpdateAfterOpl(-StrToFloat(edtSumFact.Text) -
        StrToFloat(edtПретензия.Text));
        ShowOpl(QueryOpl.FieldByName('id').AsInteger);
      end;
    end;
  end;
end;
procedure TFEditFactKargo.edtDateFactCloseUp(Sender : TObject);
begin
  edtNum.SetFocus;
end;
procedure TFEditFactKargo.edtDateFactKeyDown(Sender : TObject; var Key : Word;
                                                Shift : TShiftState);
begin
  if Key = VK_RETURN then
    edtNum.SetFocus;
end;
procedure TFEditFactKargo.edtNumKeyDown(Sender : TObject; var Key : Word;
                                           Shift : TShiftState);
begin
  if Key = VK_RETURN then
    edtSumAWB.SetFocus;
end;
procedure TFEditFactKargo.edtSumAWBKeyDown(Sender : TObject; var Key : Word;
                                              Shift : TShiftState);
begin
  if Key = VK_RETURN then
    edtSumFact.SetFocus;
end;
procedure TFEditFactKargo.FormClose(Sender : TObject; var Action : TCloseAction);
begin
  UpdateOpl;
  if ((sum_fact <> edtSumFact.Text) or (претензия <> edtПретензия.Text)) and
  (QueryOpl.Fields[0].AsString <> '') then
  begin
    with QueryOpl1 do
    begin
      Close;
      SQL.Text := QueryOpl.SQL.Text;
      Open;
      UpdateAfterOpl(-StrToFloat(edtSumFact.Text) +
      StrToFloat(edtПретензия.Text));
    end;
  end;
end;
procedure TFEditFactKargo.FormShow(Sender : TObject);
begin
  SetLang;
  sum_fact := edtSumFact.Text;
  претензия := edtПретензия.Text;
  Access;
end;
procedure TFEditFactKargo.FrameSave1btnSaveClick(Sender : TObject);
begin
  Close;
end;
procedure TFEditFactKargo.SetLang;
begin
  case FPasswd.Lang of
    1 :
    begin
      // // Caption := 'Directories';
      // ItemТовары.Caption := 'Nomenclature';
      // ItemКлиент.Caption := 'Clients';
      // ItemСтраны.Caption := 'Country';
      // ItemТипы.Caption := 'Types';
      // ItemСвойства.Caption := 'Properties';
      // ItemПлантации.Caption := 'Plantation';
      // ItemСорта.Caption := 'Grades';
      // ItemОрганизация.Caption := 'Organization';
      // ItemПользователи.Caption := 'Users';
      // ItemРоль.Caption := 'The role';
      // GroupОснова.Caption := 'Main';
      // GroupСтруктура.Caption := 'Structure';
      // GroupОрг.Caption := 'Organization';
      // GroupАдмин.Caption := 'Administration';
      // ItemКарго.Caption := 'Cargo';
      // ItemАвиалинии.Caption := 'Airlines';
    end;
    2 :
    begin
      Caption := 'La factura del Cargo';
      ColumnNum.Caption := 'El número';
      ColumnСумма.Caption := 'La suma';
      ColumnРазница.Caption := 'La diferencia';
      ColumnДата.Caption := 'La fecha';
      lblДата.Caption := 'La fecha';
      lblНомер.Caption := 'El número';
      lblСуммаФактуры.Caption := 'La suma AWB';
      lblСуммаAWB.Caption := 'La suma de factura';
      lblПретензия.Caption := 'La pretensión';
    end;
  end;
  FrameTopPanel1.SetLang;
  FrameSave1.SetLang;
end;
procedure TFEditFactKargo.ShowOpl(id_locate : Integer = 0);
begin
  with QueryOpl do
  begin
    SQL.Clear;
    SQL.Add(' SELECT');
    SQL.Add(' * from "бух"."оплата_awb"');
    SQL.Add(' where код_awb=' + IntToStr(s_id_detail));
    SQL.Add(' order by дата, id');
    Open;
    Locate('id', id_locate, []);
  end;
end;
procedure TFEditFactKargo.UpdateAfterOpl(s_v : Double);
begin
  with Query1 do
  begin
    Close;
    SQL.Text := 'update "бух"."оплата_awb" set разница=:разница where id=:id';
    while not QueryOpl1.Eof do
    begin
      s_v := s_v + QueryOpl1.FieldByName('сумма').AsFloat;
      Close;
      ParamByName('разница').AsFloat := s_v;
      ParamByName('id').AsInteger := QueryOpl1.FieldByName('id').AsInteger;
      ExecSQL;
      QueryOpl1.Next;
    end;
  end;
end;
procedure TFEditFactKargo.UpdateOpl;
begin
{$REGION 'Обновляем данные'}
  with QueryOpl1 do
  begin
    SQL.Clear;
    SQL.Add(' UPDATE');
    SQL.Add(' "бух"."awb"');
    SQL.Add(' SET');
    SQL.Add(' "стоимость" = :стоимость,');
    SQL.Add(' "дата_фактуры_карго" = :дата_фактуры_карго,');
    SQL.Add(' "номер_фактуры_карго" = :номер_фактуры_карго,');
    SQL.Add(' "сумма_фактуры_карго" = :сумма_фактуры_карго,');
    SQL.Add(' "претензия" = :претензия,');
    SQL.Add(' "разница" = :разница');
    SQL.Add(' ');
    SQL.Add(' WHERE');
    SQL.Add(' id = :id');
    ParamByName('id').AsInteger := s_id_detail;
    if edtDateFact.Text <> '  .  .    ' then
      ParamByName('дата_фактуры_карго').AsString := edtDateFact.Text;
    ParamByName('номер_фактуры_карго').AsString := edtNum.Text;
    ParamByName('сумма_фактуры_карго').AsString := edtSumFact.Text;
    // if edtDateOpl.Text <> '  .  .    ' then
    // ParamByName('дата_оплаты').AsString := edtDateOpl.Text;
    // ParamByName('сумма_оплаты').AsString := edtSumOpl.Text;
    ParamByName('стоимость').AsString := edtSumAWB.Text;
    ParamByName('претензия').AsString := edtПретензия.Text;
    ParamByName('разница').AsFloat := StrToFloat(edtПретензия.Text) -
  StrToFloat(edtSumFact.Text);
    ExecSQL;
    FFacturKargo.ShowFact(s_id_detail);
  end;
{$ENDREGION};
end;
procedure TFEditFactKargo.ViewAWBDblClick(Sender : TObject);
begin
  btnEditClick(Sender);
end;
end.
