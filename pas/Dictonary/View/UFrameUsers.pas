unit UFrameUsers;
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
  cxGroupBox,
  MemDS,
  DBAccess,
  Uni,
  UFrameTopPanel,
  cxNavigator,
  dxbar,
  
  dxSkinDevExpressStyle,
  
  dxSkinsDefaultPainters, dxSkinOffice2007Blue, dxDateRanges;
type
  TFrameUsers = class(TFrame)
    FrameTopPanel1 : TFrameTopPanel;
    Query1 : TUniQuery;
    QueryUsers : TUniQuery;
    dsUsers : TDataSource;
    GroupOrg : TcxGroupBox;
    cxGrid1 : TcxGrid;
    cxGridDBTableView1 : TcxGridDBTableView;
    cxGridDBColumn1 : TcxGridDBColumn;
    cxGridLevel1 : TcxGridLevel;
    GroupUsers : TcxGroupBox;
    GridUsers : TcxGrid;
    ViewStatWork : TcxGridDBTableView;
    ColumnName : TcxGridDBColumn;
    LevelStatWork : TcxGridLevel;
    QueryOrg : TUniQuery;
    dsOrg : TDataSource;
    ColumnLogin : TcxGridDBColumn;
    procedure btnEditClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure btnAddClick(Sender : TObject);
    procedure ViewStatWorkDblClick(Sender : TObject);
    procedure btnRazdelClick(Sender : TObject);
  private
    { Private declarations }
  public
    procedure ShowOrg;
    procedure ShowUsers(id_locate : integer = 0);
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  UNewUser,
  UPasswd,
  PGSQL,
  UParamPC;
procedure TFrameUsers.btnAddClick(Sender : TObject);
begin
  Application.CreateForm(TFNewUser, FNewUser);
  with FNewUser do
  begin
    s_id_org := QueryOrg.FieldByName('id').AsInteger;
    ShowOrg;
    ShowRole;
    ShowModal;
    if FrameSave1.id_save = true then
      ShowUsers(s_id_user);
  end;
end;
procedure TFrameUsers.btnDelClick(Sender : TObject);
begin
  PGSQL.StandartDelete(QueryUsers.FieldByName('id').AsString,
                        '"пользователи"."пользователи"', QueryUsers, '', '', '', '')
end;
procedure TFrameUsers.btnEditClick(Sender : TObject);
begin
  Application.CreateForm(TFNewUser, FNewUser);
  with FNewUser do
  begin
    edtName.Text := QueryUsers.FieldByName('name').AsString;
    edtPass.Text := QueryUsers.FieldByName('пароль').AsString;
    edtPasswdConfirm.Text := QueryUsers.FieldByName('пароль').AsString;
    edtRole.EditValue := QueryUsers.FieldByName('код_роли').AsInteger;
    edtEmail.Text := QueryUsers.FieldByName('почта').AsString;
    edtPhone.Text := QueryUsers.FieldByName('телефон').AsString;
    mmoAdress.Text := QueryUsers.FieldByName('адрес').AsString;
    edtLogin.Text := QueryUsers.FieldByName('Login').AsString;
    s_id_user := QueryUsers.FieldByName('id').AsInteger;
    s_id_org := QueryOrg.FieldByName('id').AsInteger;
    s_id_role := QueryUsers.FieldByName('код_роли').AsInteger;
    ShowOrg;
    ShowRole;
    ShowModal;
    if FrameSave1.id_save = true then
      ShowUsers(s_id_user);
  end;
end;
procedure TFrameUsers.btnRazdelClick(Sender : TObject);
begin
  Application.CreateForm(TFParamPC, FParamPC);
  FParamPC.Show;
end;
procedure TFrameUsers.ShowOrg;
begin
  QueryOrg.Close;
  QueryOrg.Open;
  QueryOrg.Locate('id', FPasswd.ID_ORG, []);
  ShowUsers();
end;
procedure TFrameUsers.ShowUsers(id_locate : integer = 0);
begin
  QueryUsers.Close;
  QueryUsers.Open;
  QueryUsers.Locate('id', id_locate, []);
  if FPasswd.ID_ROLE = 1 then
    FrameTopPanel1.btnRazdel.Visible := ivAlways;
  ViewStatWork.ApplyBestFit(nil, false, false);
end;
procedure TFrameUsers.ViewStatWorkDblClick(Sender : TObject);
begin
  btnEditClick(Sender);
end;
end.
