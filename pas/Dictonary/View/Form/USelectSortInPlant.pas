unit USelectSortInPlant;
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
  
  Vcl.Menus,
  cxStyles,
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxNavigator,
  Data.DB,
  cxDBData,
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
  Vcl.DBCtrls,
  sDBLookupListBox,
  Vcl.StdCtrls,
  cxButtons,
  cxGroupBox,
  UFrameSave,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue;
type
  TFSelectSortInPlant = class(TForm)
    FrameSave1 : TFrameSave;
    Group3 : TcxGroupBox;
    btnAddAll : TcxButton;
    btnAdd : TcxButton;
    btnDelAll : TcxButton;
    btnDel : TcxButton;
    GroupDest : TcxGroupBox;
    GroupSource : TcxGroupBox;
    GridDest : TcxGrid;
    ViewDest : TcxGridDBTableView;
    ColumnName : TcxGridDBColumn;
    LevelStatWork : TcxGridLevel;
    QuerySource : TUniQuery;
    dsSource : TDataSource;
    Query1 : TUniQuery;
    QueryDist : TUniQuery;
    dsDist : TDataSource;
    QuerySelDetail : TUniQuery;
    dsSelDetail : TDataSource;
    QuerySelOsnDb : TUniQuery;
    procedure btnAddClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure FrameSave1btnSaveClick(Sender : TObject);
    procedure lstSourceDblClick(Sender : TObject);
    procedure ViewDestDblClick(Sender : TObject);
    procedure btnAddAllClick(Sender : TObject);
  private
    { Private declarations }
  public
    id_dist, id_source : array of Integer;
    procedure ShowDist(id_locate : Integer = 0);
    procedure ShowSource(id_locate : Integer = 0);
    { Public declarations }
  end;

var
  FSelectSortInPlant : TFSelectSortInPlant;
implementation
{$R *.dfm}

uses
  UDataModule1,
  UPasswd;
procedure TFSelectSortInPlant.btnAddAllClick(Sender : TObject);
begin
  with QuerySource do
  begin
    First;
    Query1.Close;
    Query1.SQL.Text := 'insert into Назначение (id, name, uni_name, reg_name) '
  + ' values (:id, :name, :uni_name, :reg_name)';
    while not eof do
    begin
      Query1.ParamByName('id').Value := Fields[0].AsInteger;
      Query1.ParamByName('name').Value := FieldByName('name').AsString;
      Query1.ParamByName('uni_name').Value := FieldByName('uni_name').AsString;
      Query1.ParamByName('reg_name').Value := FieldByName('reg_name').AsString;
      Query1.ExecSQL;
      Next;
    end;
    Query1.Close;
    Query1.SQL.Text := 'delete from Источник';
    Query1.ExecSQL;
    ShowDist();
    ShowSource();
  end;
end;
procedure TFSelectSortInPlant.btnAddClick(Sender : TObject);
var
  id : Integer;
begin
  with Query1 do
  begin
    Close;
    SQL.Text := 'select  * from [Источник] ';
    case FPasswd.Lang of
      0 :
      begin
        SQL.Add('where name>:n order by name limit 1');
        ParamByName('n').AsString := QuerySource.FieldByName('name').AsString;
      end;
      1 :
      begin
        SQL.Add('where uni_name>:n order by uni_name limit 1');
        ParamByName('n').AsString := QuerySource.FieldByName
        ('uni_name').AsString;
      end;
      2 :
      begin
        SQL.Add('where reg_name>:n order by uni_name limit 1');
        ParamByName('n').AsString := QuerySource.FieldByName
        ('reg_name').AsString;
      end;
    end;
    Open;
    id := FieldByName('id').AsInteger;
    Close;
    SQL.Text := 'delete from Источник where id=' + QuerySource.FieldByName
    ('id').AsString;
    ExecSQL;
    Close;
    SQL.Text := 'insert into Назначение (id, name, uni_name, reg_name) ' +
  ' values (:id, :name, :uni_name, :reg_name)';
    ParamByName('id').Value := QuerySource.Fields[0].AsInteger;
    ParamByName('name').Value := QuerySource.FieldByName('name').AsString;
    ParamByName('uni_name').Value := QuerySource.FieldByName
    ('uni_name').AsString;
    ParamByName('reg_name').Value := QuerySource.FieldByName
    ('reg_name').AsString;
    ExecSQL;
    ShowDist(QuerySource.Fields[0].AsInteger);
    ShowSource(id);
  end;
end;
procedure TFSelectSortInPlant.btnDelClick(Sender : TObject);
var
  id : Integer;
begin
  with Query1 do
  begin
    Close;
    SQL.Text := 'select  * from [Назначение] ';
    case FPasswd.Lang of
      0 :
      begin
        SQL.Add('where name<:n order by name limit 1');
        ParamByName('n').AsString := QuerySource.FieldByName('name').AsString;
      end;
      1 :
      begin
        SQL.Add('where uni_name<:n order by uni_name limit 1');
        ParamByName('n').AsString := QuerySource.FieldByName
        ('uni_name').AsString;
      end;
      2 :
      begin
        SQL.Add('where reg_name<:n order by uni_name limit 1');
        ParamByName('n').AsString := QuerySource.FieldByName
        ('reg_name').AsString;
      end;
    end;
    Open;
    id := FieldByName('id').AsInteger;
    Close;
    SQL.Text := 'delete from Назначение where id=' + QueryDist.FieldByName
    ('id').AsString;
    ExecSQL;
    Close;
    SQL.Text := 'insert into Источник (id, name, uni_name, reg_name) ' +
  ' values (:id, :name, :uni_name, :reg_name)';
    ParamByName('id').Value := QueryDist.Fields[0].AsInteger;
    ParamByName('name').Value := QueryDist.FieldByName('name').AsString;
    ParamByName('uni_name').Value := QueryDist.FieldByName('uni_name').AsString;
    ParamByName('reg_name').Value := QueryDist.FieldByName('reg_name').AsString;
    ExecSQL;
    ShowSource(QueryDist.Fields[0].AsInteger);
    ShowDist(id);
  end;
end;
procedure TFSelectSortInPlant.FrameSave1btnSaveClick(Sender : TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  Close;
end;
procedure TFSelectSortInPlant.lstSourceDblClick(Sender : TObject);
begin
  btnDelClick(Sender);
end;
procedure TFSelectSortInPlant.ShowDist(id_locate : Integer = 0);
begin
  with QueryDist do
  begin
    Close;
    SQL.Text := 'select * from Назначение ';
    case FPasswd.Lang of
      0 : SQL.Add('order by name');
      1 : SQL.Add('order by uni_name');
      2 : SQL.Add('order by reg_name');
    end;
    Open;
    Locate('id', id_locate, [])
  end;
end;
procedure TFSelectSortInPlant.ShowSource(id_locate : Integer = 0);
begin
  with QuerySource do
  begin
    Close;
    SQL.Text := 'select * from Источник ';
    case FPasswd.Lang of
      0 : SQL.Add('order by name');
      1 : SQL.Add('order by uni_name');
      2 : SQL.Add('order by reg_name');
    end;
    Open;
    Locate('id', id_locate, [])
  end;
end;
procedure TFSelectSortInPlant.ViewDestDblClick(Sender : TObject);
begin
  btnAddClick(Sender);
end;
end.
