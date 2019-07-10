unit UType;
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
  DB,
  cxDBData,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  MemDS,
  DBAccess,
  Uni,
  cxTextEdit,
  cxLabel,
  cxGroupBox,
  UFrameSave,
  UFrameTopPanel,
  UFrameUniName,
  Vcl.StdCtrls,
  cxNavigator,
  
  dxSkinDevExpressStyle, dxSkinsDefaultPainters, dxSkinOffice2007Blue;
type
  TFType = class(TForm)
    FrameSave1 : TFrameSave;
    QueryCountry : TUniQuery;
    dsCountry : TDataSource;
    GroupCountry : TcxGroupBox;
    GridUsers : TcxGrid;
    ViewUsers : TcxGridDBTableView;
    ColumnUniName : TcxGridDBColumn;
    ColumnName : TcxGridDBColumn;
    LevelOrg : TcxGridLevel;
    FrameTopPanel1 : TFrameTopPanel;
    ColumnRegName : TcxGridDBColumn;
    FrameUniName1 : TFrameUniName;
    edtCode : TEdit;
    lblRegName : TcxLabel;
    procedure btnAddClick(Sender : TObject);
    procedure edtNameKeyUp(Sender : TObject; var Key : Word; Shift : TShiftState);
    procedure FormShow(Sender : TObject);
    procedure edtUniNameKeyUp(Sender : TObject; var Key : Word;
                                 Shift : TShiftState);
    procedure FrameSave1btnSaveClick(Sender : TObject);
    procedure btnRefreshClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure edtUniNamePropertiesChange(Sender : TObject);
    procedure FormClose(Sender : TObject; var Action : TCloseAction);
    procedure FrameUniName1edtNamePropertiesChange(Sender : TObject);
    procedure FrameUniName1edtRegNamePropertiesChange(Sender : TObject);
  private
    procedure AddCountry;
    procedure AddCountryNew;
    procedure DropTmp;
    procedure EnableSave;
    procedure InsertType;
    procedure UpdateType;
    { Private declarations }
  public
    s_id_type : Integer;
    procedure DelCountry(s_id_country : Integer);
    procedure SetLang;
    procedure ShowCountry;
    { Public declarations }
  end;

var
  FType : TFType;
implementation
{$R *.dfm}

uses
  USelect,
  UDataModule1,
  PGSQL,
  ULang,
  UPasswd,
  UMultiSelect,
  USplash,
  UDialogMy;
procedure TFType.AddCountry;
var
  Query1, Query2, Query3 : TUniQuery;
begin
  with FrameUniName1 do
  begin
    Query1 := TUniQuery.Create(nil);
    Query1.Connection := DM1.db1;
    Query2 := TUniQuery.Create(nil);
    Query2.Connection := DM1.db1;
    Query3 := TUniQuery.Create(nil);
    Query3.Connection := DM1.db1;
    Query2.Close;
    Query2.SQL.Text := 'insert into продукция.продукция (pid, код_структуры, ' +
  ' код_детализации, name, uni_name, reg_name, id_group) values ' +
  ' (:pid, 3, :код_детализации, :name, :uni_name, :reg_name,1)';
    Query3.Close;
    Query3.SQL.Text := 'select id from продукция.продукция where ' +
  ' код_детализации=:код_детализации and код_структуры=2';
    with FSelect.QuerySelect do
    begin
      First;
      while not Eof do
      begin
        if FieldByName('id_sel').AsInteger = 1 then
        begin
          Query3.Close;
          Query3.ParamByName('код_детализации').AsInteger := FieldByName('id')
        .AsInteger;
          Query3.Open;
          if Query3.Fields[0].AsInteger <> 0 then
          begin
            Query2.Close;
            Query2.ParamByName('pid').AsInteger := Query3.Fields[0].AsInteger;
            Query2.ParamByName('код_детализации').AsInteger := s_id_type;
            Query2.ParamByName('name').AsString := edtName.Text;
            Query2.ParamByName('uni_name').AsString := edtUniName.Text;
            Query2.ParamByName('reg_name').AsString := edtRegName.Text;
            Query2.ExecSQL;
            Query1.Close;
            Query1.SQL.Text :=
                              'insert into продукция.тип_страна (код_типа, код_страны) values '
                              + ' (:код_типа, :код_страны)';
            Query1.ParamByName('код_типа').AsInteger := s_id_type;
            Query1.ParamByName('код_страны').AsInteger := FieldByName('id')
          .AsInteger;
            Query1.ExecSQL;
          end;
        end;
        Next;
      end;
    end;
  end;
end;
procedure TFType.AddCountryNew;
var
  Query1, Query2, Query3, Query4 : TUniQuery;
  id : Integer;
begin
  FSplash.Show();
  FSplash.Update;
  with FrameUniName1 do
  begin
    Query1 := TUniQuery.Create(nil);
    Query1.Connection := DM1.dbUpd;
    Query2 := TUniQuery.Create(nil);
    Query2.Connection := DM1.dbUpd;
    Query3 := TUniQuery.Create(nil);
    Query3.Connection := DM1.dbUpd;
    Query4 := TUniQuery.Create(nil);
    Query4.Connection := DM1.dbUpd;
    Query2.Close;
    Query2.SQL.Text :=
                      'insert into продукция.продукция (id, pid, код_структуры, ' +
                      ' код_детализации, name, uni_name, reg_name, id_group, tree, level_val) values '
                      + ' (:id, :pid, 3, :код_детализации, :name, :uni_name, :reg_name,1, :tree, :level_val)';
    Query3.Close;
    Query3.SQL.Text := 'select id, tree from продукция.продукция where ' +
  ' код_детализации=:код_детализации and код_структуры=2';
    Query4.Close;
    Query4.SQL.Text :=
                      'select id from "продукция"."продукция" where код_структуры = 2 and    ' +
                      '  id in (select pid from "продукция"."продукция"  where код_структуры = 3 and'
                      + ' код_детализации = ' + IntToStr(s_id_type) + ') ' +
                      ' and код_детализации=:id_country';
    if FMultiSelect.QueryDist.Active = True then
    begin
      try
          // DM1.dbUpd.StartTransaction;
        with FMultiSelect.QueryDist do
        begin
          First;
          while not Eof do
          begin
            Query4.Close;
            Query4.ParamByName('id_country').AsInteger := FieldByName('id')
          .AsInteger;
            Query4.Open;
            if Query4.Fields[0].AsString = '' then
            begin
              Query3.Close;
              Query3.ParamByName('код_детализации').AsInteger :=
                                                                FieldByName('id').AsInteger;
              Query3.Open;
              if Query3.Fields[0].AsInteger <> 0 then
              begin
                id := PGSQL.NewID('"продукция"."продукция_id_seq"');
                Query2.Close;
                Query2.ParamByName('id').AsInteger := id;
                Query2.ParamByName('pid').AsInteger :=
                                                      Query3.Fields[0].AsInteger;
                Query2.ParamByName('код_детализации').AsInteger := s_id_type;
                Query2.ParamByName('name').AsString := edtName.Text;
                Query2.ParamByName('uni_name').AsString := edtUniName.Text;
                Query2.ParamByName('reg_name').AsString := edtRegName.Text;
                Query2.ParamByName('tree').AsString :=
                                                      PGSQL.GetNewTree(Query3.Fields[0].AsInteger,
                                                                        Query3.Fields[1].AsString);
                Query2.ParamByName('level_val').AsInteger := PGSQL.Level_Val;
                Query2.ExecSQL;
                Query1.Close;
                Query1.SQL.Text :=
                                  'insert into продукция.тип_страна (код_типа, код_страны, код_товара) values '
                                  + ' (:код_типа, :код_страны, :код_товара)';
                Query1.ParamByName('код_типа').AsInteger := s_id_type;
                Query1.ParamByName('код_страны').AsInteger := FieldByName('id')
              .AsInteger;
                Query1.ParamByName('код_товара').AsInteger := id;
                Query1.ExecSQL;
              end;
            end;
            Next;
          end;
          // DM1.dbUpd.Commit;
        end;
      except
          // DM1.dbUpd.Rollback;
      end;
    end;
  end;
  with FMultiSelect.QuerySource do
  begin
    First;
    if RecordCount > 0 then
    begin
      while not Eof do
      begin
        PGSQL.DelCountry(FieldByName('id').AsInteger, s_id_type);
        Next;
      end;
    end;
  end;
  FSplash.Close;
  ShowCountry;
end;
procedure TFType.btnAddClick(Sender : TObject);
begin
  DM1.db1.StartTransaction;
  if s_id_type = 0 then
  begin
    if Application.MessageBox('Тип еще не сохранен. Сохранить?', 'Вопрос',
                               MB_YESNO + MB_ICONQUESTION) = mrYes then
    begin
      InsertType;
    end
    else
    begin
      DM1.db1.Rollback;
      Abort;
    end;
  end;
  // Application.CreateForm(TFMultiSelect, FMultiSelect);
  // with FMultiSelect do
  // begin
  // table_name := '"продукция"."страны"';
  // with Query1 do
  // begin
  // Close;
  // SQL.Text := 'select * from "продукция"."страны" where id in ' +
  // ' (select код_страны from "продукция"."тип_страна" where код_типа=' +
  // IntToStr(s_id_type) + ')';
  // Open;
  // while not Eof do
  // begin
  // id_not := id_not + FieldByName('id').AsString + ',';
  // Next;
  // end;
  // id_not := Copy(id_not, 1, length(id_not) - 1);
  // end;
  // id_clear := True;
  // ShowModal;
  // if FrameSave1.id_save = True then
  // AddCountryNew;
  // end;
  Application.CreateForm(TFSelect, FSelect);
  with FSelect do
  begin
    ShowSelect('продукция.страны', 'where id not in ' +
    ' (select код_страны from продукция.тип_страна where код_типа=' +
    IntToStr(s_id_type) + ')');
    ShowModal;
    if FrameTopPanel1.id_select = True then
    begin
      AddCountry;
      ShowCountry;
      DM1.db1.Commit;
      DropTmp;
    end
    else
    begin
      DM1.db1.Rollback;
    end;
  end;
end;
procedure TFType.btnDelClick(Sender : TObject);
var
  Query1 : TUniQuery;
begin
  case FPasswd.edtLang.ItemIndex of
    0 : QuestionDialog('Удаление', 'Вы действительно хотите удалить позицию?');
    1 : QuestionDialog('Removal', 'You really want to remove a position? ');
    2 : QuestionDialog('Desaparición', 'Queréis quitar realmente la posición?');
  end;
  if UDialogMy.Dlg.Execute = 100 then
  begin
    PGSQL.DelCountry(QueryCountry.FieldByName('id').AsInteger, s_id_type);
    ShowCountry;
  end;
end;
procedure TFType.btnRefreshClick(Sender : TObject);
begin
  ShowCountry;
end;
procedure TFType.DelCountry(s_id_country : Integer);
var
  tree : string;
  id : Integer;
begin
  // DM1.dbUpd.StartTransaction;
  with DM1.QueryUpd do
  begin
    Close;
    SQL.Text :=
               'SELECT  "продукция"."продукция".id, "продукция"."продукция".tree' +
               ' FROM  "продукция"."тип_страна" ts  INNER JOIN "продукция"."продукция" ON '
               + '(ts."код_товара" = "продукция"."продукция".id) where ts."код_страны"='
               + IntToStr(s_id_country);
    Open;
    tree := FieldByName('tree').AsString;
    id := FieldByName('id').AsInteger;
    Close;
    SQL.Text := 'SELECT  pt."код_типа", pt."код_плантации" FROM' +
  ' "продукция"."продукция" p  INNER JOIN "продукция"."плантация_тип" pt ON (p.id = pt."код_товара")'
  + '  where tree like ''' + tree + '%''';
    Open;
    while not Eof do
    begin
      PGSQL.DelType(Fields[0].AsInteger, Fields[1].AsInteger);
      Next;
    end;
    Close;
    SQL.Text :=
               'select код_товара from "продукция"."тип_страна" where код_страны=' +
               IntToStr(s_id_country) + ' and код_типа=' + IntToStr(s_id_type);
    Open;
    // DM1.dbUpd.StartTransaction;
    try
      Close;
      SQL.Text := 'delete from "продукция"."тип_страна"  where код_типа=' +
    IntToStr(s_id_type) + ' and код_страны=' + IntToStr(s_id_country);
      ExecSQL;
      Close;
      SQL.Text := 'delete from "продукция"."продукция" where id=' +
    IntToStr(id);
      ExecSQL;
        // DM1.dbUpd.Commit;
      ShowCountry;
    except
        // DM1.dbUpd.Rollback;
    end;
  end;
end;
procedure TFType.DropTmp;
var
  Query1 : TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.db1;
  Query1.Close;
  Query1.SQL.Text := 'drop table tmp';
  Query1.ExecSQL;
end;
procedure TFType.edtNameKeyUp(Sender : TObject; var Key : Word;
                                 Shift : TShiftState);
begin
  EnableSave;
end;
procedure TFType.edtUniNameKeyUp(Sender : TObject; var Key : Word;
                                    Shift : TShiftState);
begin
  EnableSave;
end;
procedure TFType.edtUniNamePropertiesChange(Sender : TObject);
begin
  EnableSave;
end;
procedure TFType.EnableSave;
begin
  with FrameUniName1 do
  begin
    if (edtName.Text <> '') and (edtUniName.Text <> '') and
    (edtRegName.Text <> '') then
    begin
      FrameTopPanel1.btnAdd.Enabled := True;
      FrameTopPanel1.btnDel.Enabled := True;
      FrameSave1.btnSave.Enabled := True;
    end
    else
    begin
      FrameTopPanel1.btnAdd.Enabled := false;
      FrameTopPanel1.btnDel.Enabled := false;
      FrameSave1.btnSave.Enabled := false;
    end;
    if QueryCountry.RecordCount > 0 then
      FrameTopPanel1.btnDel.Enabled := True
    else
      FrameTopPanel1.btnDel.Enabled := false;
  end;
end;
procedure TFType.FormClose(Sender : TObject; var Action : TCloseAction);
begin
  FSplash.Close;
end;
procedure TFType.FormShow(Sender : TObject);
begin
  FrameSave1.SetLang;
  SetLang;
  FrameTopPanel1.SetLang;
  FrameUniName1.edtUniName.SetFocus;
  FrameUniName1.SetLang;
  ULang.TranslateGridCaption(ColumnUniName, ColumnRegName, ColumnName);
  // EnableSave;
end;
procedure TFType.FrameSave1btnSaveClick(Sender : TObject);
begin
  if s_id_type = 0 then
    InsertType
  else
    UpdateType;
  FrameSave1.btnSaveClick(Sender);
  Close;
end;
procedure TFType.FrameUniName1edtNamePropertiesChange(Sender : TObject);
begin
  EnableSave;
end;
procedure TFType.FrameUniName1edtRegNamePropertiesChange(Sender : TObject);
begin
  EnableSave;
end;
procedure TFType.InsertType;
var
  Query1 : TUniQuery;
begin
  with FrameUniName1 do
  begin
    Query1 := TUniQuery.Create(nil);
    Query1.Connection := DM1.db1;
    with Query1 do
    begin
      s_id_type := PGSQL.NewID('продукция.типы_id_seq');
      Close;
      SQL.Text :=
                 'insert into продукция.типы (id, name, uni_name, reg_name, code) values '
                 + ' (:id, :name, :uni_name, :reg_name, :code)';
      ParamByName('id').AsInteger := s_id_type;
      ParamByName('name').AsString := edtName.Text;
      ParamByName('uni_name').AsString := edtUniName.Text;
      ParamByName('reg_name').AsString := edtRegName.Text;
      ParamByName('code').AsString := edtCode.Text;
      ExecSQL;
      try
          // DM1.db1.Commit;
          // DM1.db1.StartTransaction;
      except
      end;
    end;
  end;
end;
procedure TFType.SetLang;
begin
  case FPasswd.Lang of
    0 :
    begin
      Caption := 'Типы';
      GroupCountry.Caption := 'Страны';
    end;
    1 :
    begin
      Caption := 'Types';
      GroupCountry.Caption := 'Страны';
    end;
    2 :
    begin
      Caption := 'Los tipos';
      GroupCountry.Caption := 'Los países';
    end;
  end;
end;
procedure TFType.ShowCountry;
begin
  with QueryCountry do
  begin
    Close;
    SQL.Text := 'SELECT s.*, p.код_товара FROM  "продукция"."тип_страна" p ' +
  '  INNER JOIN "продукция"."страны" s ON (p."код_страны" = s.id) where p.код_типа='
  + IntToStr(s_id_type);
    Open;
    EnableSave;
  end;
end;
procedure TFType.UpdateType;
var
  Query1 : TUniQuery;
begin
  with FrameUniName1 do
  begin
    Query1 := TUniQuery.Create(nil);
    Query1.Connection := DM1.db1;
    with Query1 do
    begin
      Close;
      SQL.Text :=
                 'update продукция.типы set name=:name, uni_name=:uni_name, reg_name=:reg_name '
                 + ', code=:code where id=' + IntToStr(s_id_type);
      ParamByName('name').AsString := edtName.Text;
      ParamByName('uni_name').AsString := edtUniName.Text;
      ParamByName('reg_name').AsString := edtRegName.Text;
      ParamByName('code').AsString := edtCode.Text;
      ExecSQL;
    end;
  end;
end;
end.
