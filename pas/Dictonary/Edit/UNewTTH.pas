unit UNewTTH;

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
  uni,
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
  DB,
  cxDBData,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  UFrameTopPanel,
  cxGroupBox,
  UFrameUniName,
  UFrameSave,
  MemDS,
  DBAccess,
  cxNavigator,

  dxSkinDevExpressStyle,

   dxSkinsDefaultPainters;

type
  TFNewTTH = class(TForm)
    FrameSave1: TFrameSave;
    FrameUniName1: TFrameUniName;
    cxGroupBox1: TcxGroupBox;
    FrameTopPanel3: TFrameTopPanel;
    GridType: TcxGrid;
    ViewType: TcxGridDBTableView;
    ColumnUniName: TcxGridDBColumn;
    ColumnName: TcxGridDBColumn;
    ColumnRegName: TcxGridDBColumn;
    LevelOrg: TcxGridLevel;
    QueryTTHAdd: TUniQuery;
    dsTTHAdd: TDataSource;
    procedure FrameSave1btnSaveClick(Sender: TObject);
    procedure FrameUniName1edtNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrameUniName1edtRegNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrameUniName1edtUniNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure ViewTypeDblClick(Sender: TObject);
    procedure FrameUniName1edtUniNamePropertiesEditValueChanged
      (Sender: TObject);
    procedure FrameUniName1edtNamePropertiesEditValueChanged(Sender: TObject);
    procedure FrameUniName1edtRegNamePropertiesEditValueChanged
      (Sender: TObject);
  private
    procedure InsertProp;
    { Private declarations }
  public
    s_id_type: string;
    s_id: Integer;
    procedure EnableSave;
    procedure SetLang;
    procedure ShowTTHDetail;
    procedure UpdateProp;
    { Public declarations }
  end;

var
  FNewTTH: TFNewTTH;

implementation

{$R *.dfm}

uses
  UDataModule1,
  PGSQL,
  UNewUniName,
  UPasswd,
  ULang;

procedure TFNewTTH.btnAddClick(Sender: TObject);
var
  Query1: TUniQuery;
begin
  if s_id = 0 then
  begin
    if Application.MessageBox('Свойство еще не сохранено. Сохранить?', 'Вопрос',
      MB_YESNO + MB_ICONQUESTION) = mrYes then
    begin
      InsertProp;
    end
    else
      Abort;
  end;
  Application.CreateForm(TFNewUniName, FNewUniName);
  with FNewUniName.FrameUniName1 do
  begin
    SetLang;
    chkUseName.Visible := false;
    EnableSave;
    FNewUniName.ShowModal;
    if FNewUniName.FrameSave1.id_save = true then
    begin
      // s_id := PGSQL.NewID('"продукция"."свойства_значения_id_seq"');
      Query1 := TUniQuery.Create(nil);
      Query1.Connection := DM1.dbUpd;
      with Query1 do
      begin
        Close;
        sql.Text :=
          'insert into "продукция"."свойства_значения" (код_свойства, name, uni_name, reg_name)'
          + ' values (:код_свойства, :name, :uni_name, :reg_name) ';
        ParamByName('код_свойства').AsInteger := s_id;
        // ParamByName('id').AsInteger := id;
        ParamByName('name').AsString := edtName.Text;
        ParamByName('uni_name').AsString := edtUniName.Text;
        ParamByName('reg_name').AsString := edtRegName.Text;
        ExecSQL;
        ShowTTHDetail;
      end;
    end;
  end;
end;

procedure TFNewTTH.btnEditClick(Sender: TObject);
var
  Query1: TUniQuery;
begin
  Application.CreateForm(TFNewUniName, FNewUniName);
  with FNewUniName.FrameUniName1 do
  begin
    edtName.Text := QueryTTHAdd.FieldByName('name').AsString;
    edtUniName.Text := QueryTTHAdd.FieldByName('uni_name').AsString;
    edtRegName.Text := QueryTTHAdd.FieldByName('reg_name').AsString;
    SetLang;
    chkUseName.Visible := false;
    EnableSave;
    FNewUniName.ShowModal;
    if FNewUniName.FrameSave1.id_save = true then
    begin
      // UpdateProp;
      // s_id := PGSQL.NewID('"продукция"."свойства_значения_id_seq"');
      Query1 := TUniQuery.Create(nil);
      Query1.Connection := DM1.dbUpd;
      with Query1 do
      begin
        Close;
        sql.Text :=
          'update  "продукция"."свойства_значения" set name=:name, uni_name=:uni_name,'
          + '  reg_name=:reg_name where id=:id';
        ParamByName('id').AsInteger := QueryTTHAdd.FieldByName('id').AsInteger;
        ParamByName('name').AsString := edtName.Text;
        ParamByName('uni_name').AsString := edtUniName.Text;
        ParamByName('reg_name').AsString := edtRegName.Text;
        ExecSQL;
        ShowTTHDetail;
      end;
    end;
  end;
end;

procedure TFNewTTH.EnableSave;
begin
  with FrameUniName1 do
  begin
    if (edtName.Text <> '') and (edtUniName.Text <> '') and
      (edtRegName.Text <> '') then
    begin
      FrameTopPanel3.btnAdd.Enabled := true;
      FrameTopPanel3.btnDel.Enabled := true;
      FrameTopPanel3.btnEdit.Enabled := true;
      FrameSave1.btnSave.Enabled := true;
    end
    else
    begin
      FrameTopPanel3.btnAdd.Enabled := false;
      FrameTopPanel3.btnDel.Enabled := false;
      FrameTopPanel3.btnEdit.Enabled := false;
      FrameSave1.btnSave.Enabled := false;
      FrameSave1.btnNext.Enabled := false;
    end;
    if QueryTTHAdd.RecordCount > 0 then
      FrameTopPanel3.btnDel.Enabled := true
    else
      FrameTopPanel3.btnDel.Enabled := false;
  end;
end;

procedure TFNewTTH.FormShow(Sender: TObject);
begin
  SetLang();
  FrameUniName1.SetLang;
  FrameTopPanel3.SetLang;
  FrameSave1.SetLang;
  ULang.TranslateGridCaption(ColumnUniName, ColumnRegName, ColumnName);
end;

procedure TFNewTTH.FrameSave1btnSaveClick(Sender: TObject);
begin
  if s_id = 0 then
    InsertProp
  else
    UpdateProp;
  Close;
end;

procedure TFNewTTH.FrameUniName1edtNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFNewTTH.FrameUniName1edtNamePropertiesEditValueChanged
  (Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewTTH.FrameUniName1edtRegNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFNewTTH.FrameUniName1edtRegNamePropertiesEditValueChanged
  (Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewTTH.FrameUniName1edtUniNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFNewTTH.FrameUniName1edtUniNamePropertiesEditValueChanged
  (Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewTTH.InsertProp;
var
  Query1: TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  // DM1.dbUpd.StartTransaction;
  s_id := PGSQL.NewID('"продукция"."типы_свойства_id_seq"');
  with Query1 do
  begin
    Close;
    sql.Text :=
      'insert into "продукция"."типы_свойства" (id, код_типа, name, uni_name, reg_name, use_name, uniq)'
      + ' values (:id, :код_типа, :name, :uni_name, :reg_name, :use_name, :uniq) ';
    ParamByName('код_типа').AsString := s_id_type;
    ParamByName('id').AsInteger := s_id;
    ParamByName('name').AsString := FrameUniName1.edtName.Text;
    ParamByName('uni_name').AsString := FrameUniName1.edtUniName.Text;
    ParamByName('reg_name').AsString := FrameUniName1.edtRegName.Text;
    ParamByName('use_name').AsBoolean := FrameUniName1.chkUseName.Checked;
    ParamByName('uniq').AsBoolean := FrameUniName1.chkUniq.Checked;
    ExecSQL;
    // DM1.dbUpd.Commit;
  end;
  // TODO -cMM: TForm1.InsertProp default body inserted
end;

procedure TFNewTTH.SetLang;
begin
  case FPasswd.Lang of
    0:
      begin
        Caption := 'Свойство';
      end;
    1:
      begin
        Caption := 'Property';
      end;
    2:
      begin
        Caption := 'La propiedad';
      end;
  end;
end;

procedure TFNewTTH.ShowTTHDetail;
begin
  with QueryTTHAdd do
  begin
    Close;
    sql.Text :=
      'select * from "продукция"."свойства_значения" where код_свойства=' +
      IntToStr(s_id) + ' order by id';
    Open;
  end;
end;

procedure TFNewTTH.UpdateProp;
var
  Query1: TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  with FrameUniName1 do
  begin
    with Query1 do
    begin
      Close;
      sql.Text :=
        'update  "продукция"."типы_свойства" set name=:name, uni_name=:uni_name, '
        + 'reg_name=:reg_name, use_name=:use_name, uniq=:uniq' + ' where id=' +
        IntToStr(s_id);
      ParamByName('name').AsString := edtName.Text;
      ParamByName('uni_name').AsString := edtUniName.Text;
      ParamByName('reg_name').AsString := edtRegName.Text;
      ParamByName('use_name').AsBoolean := chkUseName.Checked;
      ParamByName('uniq').AsBoolean := chkUniq.Checked;
      ExecSQL;
    end;
  end;
  // TODO -cMM: TFNewTTH.UpdateProp default body inserted
end;

procedure TFNewTTH.ViewTypeDblClick(Sender: TObject);
begin
  btnEditClick(Sender);
end;

end.
