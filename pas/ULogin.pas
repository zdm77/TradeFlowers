unit ULogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, 
   dxSkinsdxBarPainter, cxLabel, dxBar, cxBarEditItem,
  cxClasses, cxGroupBox, Data.DB, MemDS, DBAccess, Uni, cxTextEdit,
  Vcl.StdCtrls;

type
  TFLogin = class(TForm)
    cxGroupBox1: TcxGroupBox;
    dxbrmngr1: TdxBarManager;
    Bardxbrmngr1Bar1: TdxBar;
    btnCancel: TdxBarLargeButton;
    btnOk: TdxBarLargeButton;
    chk1: TcxBarEditItem;
    edtLogin: TcxTextEdit;
    edtPass: TcxTextEdit;
    LabelPass: TcxLabel;
    edtSotr: TcxTextEdit;
    cxLabel1: TcxLabel;
    Query1: TUniQuery;
    cxLabel2: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure edtLoginKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPassKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtSotrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtLoginPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    IDClient: Integer ;
    clientName: string;
    { Public declarations }
  end;

var
  FLogin: TFLogin;

implementation

{$R *.dfm}

uses UPasswd, UDataModule1;

procedure TFLogin.FormCreate(Sender: TObject);
begin
  IDClient:=0;

end;

procedure TFLogin.btnCancelClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFLogin.btnOkClick(Sender: TObject);
begin
 if DM1.db1.Connected=false then FPasswd.ConnectDb;
  with Query1 do
  begin
    CLose;
    if edtSotr.Text <> '' then
    begin
      sql.Text :=
        'select * from  "бд"."настройки" where код_сотрудиников=:код_сотрудиников';
      ParamByName('код_сотрудиников').AsString := edtSotr.Text;
      Open;
      if Fields[0].AsString <> '' then
      begin
        Hide;
        FPasswd.ShowModal;
      end
      else
      begin
        Application.MessageBox('Не верный код для сотрудников.', 'Ошибка',
          MB_OK + MB_ICONERROR);
        Abort;
      end;
    end
    else
    begin
      sql.Text :=
        'select * from  "контрагенты"."клиенты" where login=:login and pass=:pass';
      ParamByName('login').AsString := edtLogin.Text;
      ParamByName('pass').AsString := edtPass.Text;
      Open;
      if Fields[0].AsString <> '' then
      begin
        if FieldByName('вход').AsBoolean = true then
        begin
          IDClient := FieldByName('id').AsInteger;
          clientName := FieldByName('name').AsString;
          CLose;
        end
        else
        begin
          Application.MessageBox('Доступ в систему запрещен.', 'Ошибка',
            MB_OK + MB_ICONERROR);
          Abort;
        end;
      end
      else
      begin
        Application.MessageBox('Не верный логин или пароль.', 'Ошибка',
          MB_OK + MB_ICONERROR);
        Abort;
      end;
    end;
  end;
  CLose;
end;

procedure TFLogin.edtLoginKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btnOkClick(Sender);
end;

procedure TFLogin.edtLoginPropertiesChange(Sender: TObject);
begin
  edtSotr.Text:='';
end;

procedure TFLogin.edtPassKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btnOkClick(Sender);
end;

procedure TFLogin.edtSotrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btnOkClick(Sender);
end;

end.
