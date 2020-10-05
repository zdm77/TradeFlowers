unit UFrameRole;
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
  cxStyles,
  dxSkinsCore,
  
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxEdit,
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
  Uni,
  cxNavigator,
  Vcl.StdCtrls,
  
  dxSkinDevExpressStyle,
  
  dxSkinsDefaultPainters, dxSkinOffice2007Blue, dxDateRanges;
type
  TFrameRole = class(TFrame)
    QueryRole : TUniQuery;
    dsRole : TDataSource;
    FrameTopPanel1 : TFrameTopPanel;
    GridUsers : TcxGrid;
    ViewUsers : TcxGridDBTableView;
    ColumnUniName : TcxGridDBColumn;
    ColumnName : TcxGridDBColumn;
    ColumnRegName : TcxGridDBColumn;
    LevelOrg : TcxGridLevel;
    Query1 : TUniQuery;
    procedure btnAddClick(Sender : TObject);
    procedure btnEditClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure btnRefreshClick(Sender : TObject);
    procedure ViewUsersDblClick(Sender : TObject);
  private
    { Private declarations }
  public
    procedure SetLang;
    procedure ShowRole(id_locate : Integer = 0);
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  ULang,
  UPasswd,
  UNewUniName,
  PGSQL,
  UDialogMy;
procedure TFrameRole.btnAddClick(Sender : TObject);
begin
  Application.CreateForm(TFNewUniName, FNewUniName);
  with FNewUniName.FrameUniName1 do
  begin
    SetLang;
    chkUseName.Visible := false;
    EnableSave;
    FNewUniName.ShowModal;
    if FNewUniName.FrameSave1.id_save = true then
    begin
      PGSQL.StandartInsert('"пользователи"."роли_id_seq"',
                            '"пользователи"."роли"', edtName.Text, edtUniName.Text, edtRegName.Text,
                            QueryRole);
    end;
  end;
end;
procedure TFrameRole.btnDelClick(Sender : TObject);
var
  s : string;
begin
  case FPasswd.edtLang.ItemIndex of
    0 : s := 'Связанные пользователи';
    1 : s := 'Associated users';
    2 : s := 'Los usuarios vinculados';
  end;
  if QueryRole.FieldByName('id').AsInteger <> 1 then
    PGSQL.StandartDelete(QueryRole.FieldByName('id').AsString,
                          '"пользователи"."роли"', QueryRole, 'код_роли',
                          '"пользователи"."пользователи"', 'name', s)
  else
  begin
    case FPasswd.edtLang.ItemIndex of
      0 : ErrorDialog('Данную запись удалять запрещено.', '', '');
      1 : ErrorDialog('This entry delete prohibited.', '', '');
      2 : ErrorDialog('Se prohíbe quitar la anotación dada.', '', '');
    end;
  end;
end;
procedure TFrameRole.btnEditClick(Sender : TObject);
begin
  Application.CreateForm(TFNewUniName, FNewUniName);
  with FNewUniName.FrameUniName1 do
  begin
    edtName.Text := QueryRole.FieldByName('name').AsString;
    edtUniName.Text := QueryRole.FieldByName('uni_name').AsString;
    edtRegName.Text := QueryRole.FieldByName('reg_name').AsString;
    SetLang;
    chkUseName.Visible := false;
    EnableSave;
    FNewUniName.ShowModal;
    if FNewUniName.FrameSave1.id_save = true then
    begin
      PGSQL.StandartUpdate(QueryRole.FieldByName('id').AsString,
                            '"пользователи"."роли"', edtName.Text, edtUniName.Text, edtRegName.Text,
                            QueryRole);
    end;
  end;
end;
procedure TFrameRole.btnRefreshClick(Sender : TObject);
begin
  QueryRole.Refresh;
end;
procedure TFrameRole.SetLang;
begin
  ULang.TranslateGridCaption(ColumnUniName, ColumnRegName, ColumnName);
end;
procedure TFrameRole.ShowRole(id_locate : Integer = 0);
begin
  with QueryRole do
  begin
    Close;
    sql.Text := 'select * from "пользователи"."роли" where id<>1';
    Open;
    Locate('id', id_locate, []);
  end;
end;
procedure TFrameRole.ViewUsersDblClick(Sender : TObject);
begin
  btnEditClick(Sender);
end;
end.
