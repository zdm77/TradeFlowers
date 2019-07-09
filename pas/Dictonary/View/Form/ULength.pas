unit ULength;

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

  Vcl.StdCtrls,
  AdvEdit,
  UFrameSave,
  cxGroupBox,
  cxLabel,
  uni,
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
  MemDS,
  DBAccess,
  cxNavigator,

  dxSkinDevExpressStyle,

   dxSkinsDefaultPainters;

type
  TFLength = class(TForm)
    Group1: TcxGroupBox;
    FrameSave1: TFrameSave;
    edtValue: TAdvEdit;
    lblValue: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    FrameTopPanel3: TFrameTopPanel;
    GridType: TcxGrid;
    ViewType: TcxGridDBTableView;
    ColumnUniName: TcxGridDBColumn;
    ColumnName: TcxGridDBColumn;
    ColumnRegName: TcxGridDBColumn;
    LevelOrg: TcxGridLevel;
    dsSortLength: TDataSource;
    QuerySortLength: TUniQuery;
    procedure edtValueKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrameSave1btnSaveClick(Sender: TObject);
    procedure FrameTopPanel3btnAddClick(Sender: TObject);
  private
    { Private declarations }
  public
    s_id_length: Integer;
    procedure AddSort;
    procedure DropTmp;
    function InsLength: Boolean;
    procedure ShowSort;
    function UpdLength: Boolean;
    { Public declarations }
  end;

var
  FLength: TFLength;

implementation

{$R *.dfm}

uses
  UDataModule1,
  PGSQL,
  UDialogMy,
  UPasswd,
  USelect;

procedure TFLength.AddSort;
var
  Query1, Query2, Query3: TUniQuery;
begin
  DM1.dbUpd.StartTransaction;
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  Query2 := TUniQuery.Create(nil);
  Query2.Connection := DM1.dbUpd;
  Query3 := TUniQuery.Create(nil);
  Query3.Connection := DM1.dbUpd;
  Query1.Close;
  Query1.SQL.Text :=
    'insert into продукция.длина_сорт (код_длины, код_сорта) values ' +
    ' (:код_длины, :код_сорта)';
  Query2.Close;
  Query2.SQL.Text := 'insert into продукция.продукция (pid, код_структуры, ' +
    ' код_детализации, name, uni_name, reg_name, id_group) values ' +
    ' (:pid, 6, :код_детализации, :name, :uni_name, :reg_name,0)';
  Query3.Close;
  Query3.SQL.Text := 'select id, pid from "продукция"."продукция" ' +
    ' where код_детализации = :код_сорта and код_структуры = 5';
  with FSelect.QuerySelect do
  begin
    First;
    while not Eof do
    begin
      if FieldByName('id_sel').AsInteger = 1 then
      begin
        Query1.Close;
        Query1.ParamByName('код_сорта').AsInteger := FieldByName('id')
          .AsInteger;
        Query1.ParamByName('код_длины').AsInteger := s_id_length;
        Query1.ExecSQL;
        Query3.Close;
        Query3.ParamByName('код_сорта').AsInteger := FieldByName('id')
          .AsInteger;
        Query3.Open;
        Query2.Close;
        Query2.ParamByName('pid').AsInteger := Query3.FieldByName('id')
          .AsInteger;
        Query2.ParamByName('код_детализации').AsInteger := s_id_length;
        Query2.ParamByName('name').AsString := edtValue.Text;
        Query2.ParamByName('uni_name').AsString := edtValue.Text;
        Query2.ParamByName('reg_name').AsString := edtValue.Text;
        Query2.ExecSQL;
      end;
      Next;
    end;
    DM1.dbUpd.Commit;
    ShowSort;
  end;
end;

procedure TFLength.DropTmp;
var
  Query1: TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.db1;
  Query1.Close;
  Query1.SQL.Text := 'drop table tmp';
  Query1.ExecSQL;
end;

procedure TFLength.edtValueKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if s_id_length = 0 then
    if (FrameSave1.btnSave.Enabled = true) and (Key = VK_RETURN) then
      if InsLength = true then
        Close;
end;

procedure TFLength.FrameSave1btnSaveClick(Sender: TObject);
begin
  if s_id_length = 0 then
  begin
    if InsLength = true then
      Close;
  end
  else
  begin
    if UpdLength = true then
      Close;
  end;
end;

procedure TFLength.FrameTopPanel3btnAddClick(Sender: TObject);
begin
  if s_id_length = 0 then
  begin
    if Application.MessageBox('Длина еще не сохранена. Сохранить?', 'Вопрос',
      MB_YESNO + MB_ICONQUESTION) = mrYes then
      InsLength
    else
      Abort;
  end;
  DM1.db1.StartTransaction;
  Application.CreateForm(TFSelect, FSelect);
  with FSelect do
  begin
    ShowSelect('продукция.сорта', 'where id not in (select код_сорта ' +
      ' from продукция.длина_сорт  where код_длины=' +
      IntToStr(s_id_length) + ')');
    ShowModal;
    if FrameTopPanel1.id_select = true then
    begin
      DM1.db1.Commit;
      DropTmp;
      AddSort;
    end
    else
    begin
      DM1.db1.Rollback;
    end;
  end;
end;

function TFLength.InsLength: Boolean;
var
  Query1: TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  DM1.dbUpd.StartTransaction;
  with Query1 do
  begin
    s_id_length := PGSQL.NewID('продукция.длины_id_seq');
    SQL.Text :=
      'insert into продукция.длины (id, name, uni_name, reg_name) values ' +
      ' (:id, :name, :uni_name, :reg_name )';
    ParamByName('id').AsInteger := s_id_length;
    ParamByName('name').AsString := edtValue.Text;
    ParamByName('uni_name').AsString := edtValue.Text;
    ParamByName('reg_name').AsString := edtValue.Text;
    try
      ExecSQL;
      DM1.dbUpd.Commit;
      Result := true;
    except
      case FPasswd.edtLang.ItemIndex of
        0:
          ErrorDialog('Добавление невозможно', '',
            'Длина с таким значение уже существует.');
        1:
          ErrorDialog('Adding it is impossible to', '',
            'Length with a value already exists. ');
        2:
          ErrorDialog('La adición es imposible', '',
            'La longitud con tal el significado existe ya.');
      end;
      DM1.dbUpd.Rollback;
      Result := False;
    end;
  end;
end;

procedure TFLength.ShowSort;
begin
  with QuerySortLength do
  begin
    Close;
    SQL.Text := 'SELECT s.* FROM "продукция"."длина_сорт" sd INNER JOIN ' +
      ' "продукция"."сорта" s ON (sd."код_сорта" = s.id) where sd.код_длины=' +
      IntToStr(s_id_length);
    Open;
  end;
end;

function TFLength.UpdLength: Boolean;
var
  Query1: TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  DM1.dbUpd.StartTransaction;
  with Query1 do
  begin
    SQL.Text :=
      'update продукция.длины  set name=:name, uni_name=:name, reg_name=:name '
      + '  where id=' + IntToStr(s_id_length);
    // ParamByName('id').AsInteger := s_id_length;
    ParamByName('name').AsString := edtValue.Text;
    // ParamByName('uni_name').AsString := edtValue.Text;
    // ParamByName('reg_name').AsString := edtValue.Text;
    try
      ExecSQL;
      DM1.dbUpd.Commit;
      Result := true;
    except
      case FPasswd.edtLang.ItemIndex of
        0:
          ErrorDialog('Добавление невозможно', '',
            'Длина с таким значение уже существует.');
        1:
          ErrorDialog('Adding it is impossible to', '',
            'Length with a value already exists. ');
        2:
          ErrorDialog('La adición es imposible', '',
            'La longitud con tal el significado existe ya.');
      end;
      DM1.dbUpd.Rollback;
      Result := False;
    end;
  end;
end;

end.
