unit UNewUser;

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

  cxGroupBox,
  UFrameUniName,
  cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  cxLabel,
  Menus,
  UFrameSave,
  Vcl.StdCtrls,
  cxButtons,
  cxMemo,
  Data.DB,
  MemDS,
  DBAccess,
  Uni,
  dxSkinscxPCPainter,
  cxPCdxBarPopupMenu,
  cxStyles,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxNavigator,
  cxDBData,
  cxCheckBox,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  UFrameTopPanel,
  cxPC,
  dxBarBuiltInMenu,

  dxSkinDevExpressStyle,

   dxSkinsDefaultPainters;

type
  TFNewUser = class(TForm)
    QueryRole: TUniQuery;
    dsRole: TDataSource;
    Query1: TUniQuery;
    Page1: TcxPageControl;
    tabОсн: TcxTabSheet;
    Group2: TcxGroupBox;
    lblKorp: TLabel;
    lblConfitm: TLabel;
    lblLogin: TLabel;
    edtRole: TcxLookupComboBox;
    Label2: TcxLabel;
    Label1: TcxLabel;
    edtPhone: TcxTextEdit;
    edtEmail: TcxTextEdit;
    Label4: TcxLabel;
    LabelPass: TcxLabel;
    edtPass: TcxTextEdit;
    edtPasswdConfirm: TcxTextEdit;
    LabelConfPass: TcxLabel;
    cxlbl3: TcxLabel;
    mmoAdress: TcxMemo;
    btnAdres: TcxButton;
    FrameSave1: TFrameSave;
    edtName: TcxTextEdit;
    tabБезопасность: TcxTabSheet;
    FrameTopPanel1: TFrameTopPanel;
    GridStatWork: TcxGrid;
    ViewStatWork: TcxGridDBTableView;
    LevelStatWork: TcxGridLevel;
    edtLogin: TcxTextEdit;
    dsAccess: TDataSource;
    QueryAccess: TUniQuery;
    ViewStatWorkname_pc: TcxGridDBColumn;
    ViewStatWorkid_hard: TcxGridDBColumn;
    ViewStatWorkmac: TcxGridDBColumn;
    ViewStatWorkaccount: TcxGridDBColumn;
    ViewStatWorkDBColumn: TcxGridDBColumn;
    QueryOrgUPD: TUniQuery;
    dsOrg: TUniDataSource;
    edtOrg: TcxLookupComboBox;
    lblOrg: TcxLabel;
    ColumnDate: TcxGridDBColumn;
    procedure edtEmailKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtNameKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edtNamePropertiesChange(Sender: TObject);
    procedure edtPassKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtPassPropertiesChange(Sender: TObject);
    procedure edtPasswdConfirmPropertiesChange(Sender: TObject);
    procedure btnAdresClick(Sender: TObject);
    procedure edtPassEnter(Sender: TObject);
    procedure edtPasswdConfirmEnter(Sender: TObject);
    procedure FrameSave1btnSaveClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure ViewStatWorkDblClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    s_id_org: integer;
    s_id_role: integer;
    s_id_user: integer;
    begin_pass: string;
    procedure EnableSave;
    procedure InsUpdUser(id_ins: boolean);
    procedure ShowAccess;
    procedure ShowOrg;
    procedure ShowRole;
    { Public declarations }
  end;

var
  FNewUser: TFNewUser;

implementation

{$R *.dfm}

uses
  UPasswd,
  PGSQL,
  UDialogMy,
  UParamPC;

procedure TFNewUser.btnAddClick(Sender: TObject);
begin
  Application.CreateForm(TFParamPC, FParamPC);
  with FParamPC do
  begin
    edtPCName.Text := PGSQL.GetComputerNetName;
    edtHDD.Text := PGSQL.GetHDDSn;
    edtUser.Text := PGSQL.GetUserFromWindows;
    edtMAC.Text := PGSQL.GetMACAddress;
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      with Query1 do
      begin
        Close;
        SQL.Text :=
          'INSERT INTO  "пользователи"."безопасность"(id_user,  name_pc,' +
          '  id_hard,  mac,  account, "разрешить") VALUES (:id_user,  :name_pc,'
          + '  :id_hard,  :mac,  :account, :разрешить);';
        ParamByName('id_user').AsInteger := s_id_user;
        ParamByName('name_pc').AsString := edtPCName.Text;
        ParamByName('id_hard').AsString := edtHDD.Text;
        ParamByName('mac').AsString := edtMAC.Text;
        ParamByName('account').AsString := edtUser.Text;
        ParamByName('разрешить').AsBoolean := chkAccess.Checked;
        ExecSQL;
        ShowAccess;
      end;
    end;
  end;
end;

procedure TFNewUser.btnAdresClick(Sender: TObject);
begin
  SelectAddress(mmoAdress, 0, 0, 0, 0, '', '', '', '');
end;

procedure TFNewUser.btnDelClick(Sender: TObject);
begin
  PGSQL.StandartDelete(QueryAccess.FieldByName('id').AsString,
    '"пользователи"."безопасность" ', QueryAccess, '', '', '', '');
end;

procedure TFNewUser.btnEditClick(Sender: TObject);
begin
  Application.CreateForm(TFParamPC, FParamPC);
  with FParamPC do
  begin
    edtPCName.Text := QueryAccess.FieldByName('name_pc').AsString;
    edtHDD.Text := QueryAccess.FieldByName('id_hard').AsString;
    edtUser.Text := QueryAccess.FieldByName('account').AsString;
    edtMAC.Text := QueryAccess.FieldByName('mac').AsString;
    chkAccess.Checked := QueryAccess.FieldByName('разрешить').AsBoolean;
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      with Query1 do
      begin
        Close;
        SQL.Text :=
          'UPDATE  "пользователи"."безопасность" SET  name_pc = :name_pc,' +
          '  id_hard = :id_hard,  mac = :mac,  account = :account,' +
          '  "разрешить" = :разрешить, date_add=:date_add WHERE  id = :id;';
        ParamByName('name_pc').AsString := edtPCName.Text;
        ParamByName('id_hard').AsString := edtHDD.Text;
        ParamByName('mac').AsString := edtMAC.Text;
        ParamByName('account').AsString := edtUser.Text;
        ParamByName('разрешить').AsBoolean := chkAccess.Checked;
        ParamByName('date_add').AsDateTime := Now;
        ParamByName('id').AsInteger := QueryAccess.FieldByName('id').AsInteger;
        ExecSQL;
        ShowAccess;
      end;
    end;
  end;
end;

procedure TFNewUser.btnRefreshClick(Sender: TObject);
begin
  ShowAccess;
end;

procedure TFNewUser.edtEmailKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFNewUser.edtNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFNewUser.edtNamePropertiesChange(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewUser.edtPassEnter(Sender: TObject);
begin
  edtPass.SelectAll;
end;

procedure TFNewUser.edtPassKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFNewUser.edtPassPropertiesChange(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewUser.edtPasswdConfirmEnter(Sender: TObject);
begin
  edtPasswdConfirm.SelectAll;
end;

procedure TFNewUser.edtPasswdConfirmPropertiesChange(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewUser.EnableSave;
begin
  if (edtName.Text <> '') and (edtLogin.Text <> '') and (edtPass.Text <> '') and
    (edtPasswdConfirm.Text <> '') and (edtPass.Text = edtPasswdConfirm.Text)
  then
    FrameSave1.btnSave.Enabled := true
  else
    FrameSave1.btnSave.Enabled := False;
  if (edtPass.Text <> '') and (edtPasswdConfirm.Text <> '') then
  begin
    if (edtPass.Text = edtPasswdConfirm.Text) then
      lblConfitm.Caption := 'Пароли совпадают'
    else
      lblConfitm.Caption := 'Пароли не совпадают';
  end
  else
    lblConfitm.Caption := 'Введите пароли';
end;

procedure TFNewUser.FormShow(Sender: TObject);
begin
  Page1.ActivePageIndex := 0;
  begin_pass := edtPass.Text;
  edtLogin.SetFocus;
  EnableSave;
  if FPasswd.ID_ROLE <> 1 then
    tabБезопасность.Enabled := False
  else
    ShowAccess;
end;

procedure TFNewUser.FrameSave1btnSaveClick(Sender: TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  if s_id_user = 0 then
    InsUpdUser(true)
  else
    InsUpdUser(False);
end;

procedure TFNewUser.InsUpdUser(id_ins: boolean);
var
  s: string;
begin
  with Query1 do
  begin
    Close;
    if id_ins = true then
    begin
      s_id_user := PGSQL.NewID('"пользователи"."пользователи_id_seq"');
      SQL.Text := 'INSERT INTO "пользователи"."пользователи"(id,' +
        'login, name, "пароль",  "код_роли",  "код_организации",  "почта",  "телефон",  "адрес") '
        + 'VALUES (:id, :login,  :name,  :пароль,  :код_роли,  :код_организации,  :почта, :телефон,  :адрес'
        + ');'
    end
    else
      SQL.Text := 'UPDATE "пользователи"."пользователи"  SET   login = :login,'
        + ' name = :name,  "пароль" = :пароль,  "код_роли" = :код_роли,' +
        ' "код_организации" = :код_организации,  "почта" = :почта,  "телефон" = :телефон,'
        + '  "адрес" = :адрес WHERE  id = :id';
    ParamByName('id').AsInteger := s_id_user;
    ParamByName('name').AsString := edtName.Text;
    ParamByName('пароль').AsString := edtPass.Text;
    ParamByName('код_роли').AsInteger := edtRole.EditValue;
    ParamByName('код_организации').AsInteger := edtOrg.EditValue;
    ParamByName('почта').AsString := edtEmail.Text;
    ParamByName('телефон').AsString := edtPhone.Text;
    ParamByName('адрес').AsString := mmoAdress.Text;
    ParamByName('Login').AsString := edtLogin.Text;
    try
      ExecSQL;
      if id_ins = False then
      begin
        if begin_pass <> edtPass.Text then
        begin
          Close;
          SQL.Text :=
            'UPDATE "пользователи"."пользователи"  SET "пароль" =md5(пароль) WHERE  id ='
            + IntToStr(s_id_user);
          ExecSQL;
        end;
      end;
      FNewUser.Close;
    except
      s_id_user := 0;
      case FPasswd.edtLang.ItemIndex of
        0:
          ErrorDialog('Пользователь с таким логином уже существует',
            '', '', '');
        1:
          ErrorDialog('A user with that login already exists', '', '', '');
        2:
          ErrorDialog('El usuario con tal login existe ya', '', '', '');
      end;
    end;
  end;
end;

procedure TFNewUser.ShowAccess;
begin
  with QueryAccess do
  begin
    Close;
    SQL.Text := 'select * from "пользователи"."безопасность" where id_user=' +
      IntToStr(s_id_user) + ' order by date_add DESC';
    Open;
  end;
end;

procedure TFNewUser.ShowOrg;
begin
  QueryOrgUPD.Close;
  QueryOrgUPD.Open;
  edtOrg.EditValue := s_id_org;
end;

procedure TFNewUser.ShowRole;
begin
  with QueryRole do
  begin
    case FPasswd.edtLang.ItemIndex of
      0:
        edtRole.Properties.ListFieldNames := 'name';
      1:
        edtRole.Properties.ListFieldNames := 'uni_name';
      2:
        edtRole.Properties.ListFieldNames := 'reg_name';
    end;
    Close;
    SQL.Text := 'select * from пользователи.роли where id<>1';
    Open;
    if s_id_role <> 0 then
      edtRole.EditValue := s_id_role
    else
      edtRole.EditValue := Fields[0].AsInteger;
  end;
end;

procedure TFNewUser.ViewStatWorkDblClick(Sender: TObject);
begin
  btnEditClick(Sender);
end;

end.
