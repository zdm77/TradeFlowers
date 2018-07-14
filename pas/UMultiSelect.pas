unit UMultiSelect;

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
  cxListBox,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  cxGroupBox,
  MemDS,
  DBAccess,
  Uni,
  UFrameSave,
  Vcl.StdCtrls,
  Menus,
  cxButtons,
  cxDBEdit,
  Vcl.DBCtrls,
  sDBListBox,
  sDBLookupListBox,
  cxLabel,
  cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  cxNavigator,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue;

type
  TFMultiSelect = class(TForm)
    FrameSave1: TFrameSave;
    QuerySource: TUniQuery;
    dsSource: TDataSource;
    Query1: TUniQuery;
    Group3: TcxGroupBox;
    GroupDest: TcxGroupBox;
    GroupSource: TcxGroupBox;
    QueryDist: TUniQuery;
    dsDist: TDataSource;
    GridDest: TcxGrid;
    ViewDest: TcxGridDBTableView;
    ColumnName: TcxGridDBColumn;
    LevelStatWork: TcxGridLevel;
    btnAddAll: TcxButton;
    btnAdd: TcxButton;
    btnDelAll: TcxButton;
    GroupDetail: TcxGroupBox;
    QuerySelDetail: TUniQuery;
    dsSelDetail: TDataSource;
    edtDetail: TcxLookupComboBox;
    lblDetail: TcxLabel;
    btnDel: TcxButton;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    procedure FormShow(Sender: TObject);
    procedure FrameSave1btnSaveClick(Sender: TObject);
    procedure lstDistDblClick(Sender: TObject);
    procedure ViewDestDblClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnAddAllClick(Sender: TObject);
    procedure btnDelAllClick(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure lstSourceDblClick(Sender: TObject);
    procedure edtDetailPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    id_clear: Boolean;
    id_not: string;
    table_name: string;
    id_never_not: string;
    id_never_delete: string;
    caption_detail: string;
    s_id_detatils: string;
    table_detail: string;
    name_detail: string;
    id_type: Integer;
    procedure AddDist;
    procedure DelDist;
    procedure ShowDetail(id_locate: Integer = 0);
    procedure ShowDist(id_locate: Integer = 0);
    procedure ShowSource(id_locate: Integer = 0);
    { Public declarations }
  end;

var
  FMultiSelect: TFMultiSelect;

implementation

uses
  USplash,
  UPasswd,
  UDialogMy;
{$R *.dfm}

procedure TFMultiSelect.AddDist;
begin
  FSplash.Show();
  FSplash.Update;
  if id_not <> '' then
    id_not := id_not + ',' + Trim(QuerySource.FieldByName('id').AsString)
  else
    id_not := Trim(QuerySource.FieldByName('id').AsString);
  QuerySource.Next;
  ShowSource(QuerySource.FieldByName('id').AsInteger);
  ShowDist();
  GroupDest.SetFocus;
  FSplash.Close;
end;

procedure TFMultiSelect.btnAddAllClick(Sender: TObject);
begin
  FSplash.Show();
  FSplash.Update;
  with QuerySource do
  begin
    First;
    while not eof do
    begin
      if id_not <> '' then
        id_not := id_not + ',' + QuerySource.FieldByName('id').AsString
      else
        id_not := QuerySource.FieldByName('id').AsString;
      Next;
    end;
  end;
  ShowSource();
  ShowDist();
  FSplash.Close;
end;

procedure TFMultiSelect.btnAddClick(Sender: TObject);
begin
  AddDist;
end;

procedure TFMultiSelect.btnDelClick(Sender: TObject);
begin
  DelDist;
end;

procedure TFMultiSelect.btnDelAllClick(Sender: TObject);
begin
  FSplash.Show();
  FSplash.Update;
  QueryDist.Close;
  id_not := '';
  ShowSource();
  FSplash.Close;
end;

procedure TFMultiSelect.cxGridDBTableView1DblClick(Sender: TObject);
begin
  DelDist;
end;

procedure TFMultiSelect.DelDist;
var
  id: string;
begin
  // id := ArrID[lstDist.ItemIndex];
  // if id_type = 1 then // сорт
  // begin
  // // проверяем нет ли привязанных позиций
  // with Query1 do
  // begin
  // Close;
  // sql.Text := 'select id from "продукция"."продукция" where pid in(' +
  // ' select id from "продукция"."продукция" where код_структуры=5 ' +
  // ' and код_детализации=' + QueryDist.FieldByName('id').AsString + ')';
  // Open;
  // if RecordCount > 0 then
  // begin
  // case FPasswd.edtLang.ItemIndex of
  // 0:
  // ErrorDialog('У сорта имеются позиции. Удаление не возможно.',
  // 'У сорта имеются позиции. Удалите все позиции сорта и повторите попытку.',
  // '');
  // 1:
  // ErrorDialog
  // ('In the variety available positions. Removal is not possible.',
  // 'In the variety available positions. Remove all items of class and try again.',
  // '');
  // 2:
  // ErrorDialog
  // ('En las posiciones de variedades disponibles. La eliminación no es posible.',
  // 'En las posiciones de variedades disponibles. Eliminar todos los elementos de la clase y vuelva a intentarlo.',
  // '');
  // end;
  // Abort;
  // end;
  // end;
  // end;
  // если попытка удалить имеющейся до этого
  // ShowMessage(id_never_delete);
  // if id_never_delete = '' then
  // begin
  FSplash.Show();
  FSplash.Update;
  id := QueryDist.FieldByName('id').AsString;
  id_not := Copy(id_not, 1, Pos(id, id_not) - 1) +
    Copy(id_not, Pos(id, id_not) + Length(id) + 1, Length(id_not));
  if Copy(id_not, Length(id_not), 1) = ',' then
    id_not := Copy(id_not, 1, Length(id_not) - 1)
  else
    id_not := Copy(id_not, 1, Length(id_not));
  // lstDist.Items.Delete(lstDist.ItemIndex);
  ShowSource(StrToInt(id));
  QueryDist.Next;
  ShowDist(QueryDist.FieldByName('id').AsInteger);
  FSplash.Close;
  // end;
end;

procedure TFMultiSelect.edtDetailPropertiesEditValueChanged(Sender: TObject);
begin
  ShowSource();
  ShowDist();
end;

procedure TFMultiSelect.FormShow(Sender: TObject);
begin
  if id_clear = true then
  begin
    if s_id_detatils = '' then
    begin
      ShowSource;
      ShowDist();
    end;
  end;
  id_never_delete := id_not;
end;

procedure TFMultiSelect.FrameSave1btnSaveClick(Sender: TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  Close;
end;

procedure TFMultiSelect.lstSourceDblClick(Sender: TObject);
begin
  if btnDel.Visible = true then
    DelDist;
end;

procedure TFMultiSelect.lstDistDblClick(Sender: TObject);
begin
  DelDist;
end;

procedure TFMultiSelect.ShowDetail(id_locate: Integer = 0);
begin
  with QuerySelDetail do
  begin
    Close;
    sql.Text := 'select * from ' + table_detail;
    if s_id_detatils <> '' then
      sql.Add(' where id in(' + s_id_detatils + ')');
    sql.Add(' order by name');
    Open;
    if id_locate <> 0 then
      edtDetail.EditValue := id_locate
    else
      edtDetail.EditValue := Fields[0].AsInteger;
  end;
  ShowSource();
  ShowDist();
  // TODO -cMM: TFMultiSelect.ShowDetail default body inserted
end;

procedure TFMultiSelect.ShowDist(id_locate: Integer = 0);
begin
  with QueryDist do
  begin
    Close;
    if id_not <> '' then
    begin
      sql.Text := 'select * from ' + table_name + ' where id in(' +
        id_not + ')';
      if s_id_detatils <> '' then
        sql.Add(' and ' + name_detail + '=' + IntToStr(edtDetail.EditValue));
      sql.Add(' order by name');
      Open;
      Locate('id', id_locate, [])
    end;
  end;
end;

procedure TFMultiSelect.ShowSource(id_locate: Integer = 0);
begin
  with QuerySource do
  begin
    Close;
    sql.Text := 'select * from ' + table_name + ' where 1=1 ';
    if id_not <> '' then
      sql.Add(' and id not in(' + id_not + ')');
    if id_never_not <> '' then
      sql.Add(' and id not in(' + id_never_not + ')');
    if s_id_detatils <> '' then
      sql.Add(' and ' + name_detail + '=' + IntToStr(edtDetail.EditValue));
    sql.Add(' order by name');
    Open;
    Locate('id', id_locate, [])
  end;
end;

procedure TFMultiSelect.ViewDestDblClick(Sender: TObject);
begin
  AddDist;
end;

end.
