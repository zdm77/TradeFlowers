unit UChat;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ImgList,
  Vcl.ComCtrls, System.Win.ScktComp;
type
  TFChat = class(TForm)
    PortEdit : TEdit;
    HostEdit : TEdit;
    NikEdit : TEdit;
    TextEdit : TEdit;
    ChatMemo : TMemo;
    ClientBtn : TButton;
    btnServer : TButton;
    btnSend : TButton;
    sockClient : TClientSocket;
    sockServer : TServerSocket;
    listUsers : TListView;
    img1 : TImageList;
    tmrServer : TTimer;
    procedure FormClose(Sender : TObject; var Action : TCloseAction);
    procedure tmrServerTimer(Sender : TObject);
    procedure btnServerClick(Sender : TObject);
    procedure sockServerClientConnect(Sender : TObject;
                                         Socket : TCustomWinSocket);
    procedure UpdateUserList();
    procedure UpdateUserMas();
    procedure sockServerClientDisconnect(Sender : TObject;
                                            Socket : TCustomWinSocket);
    procedure btnSendClick(Sender : TObject);
    procedure ClientBtnClick(Sender : TObject);
    procedure sockClientRead(Sender : TObject; Socket : TCustomWinSocket);
    procedure sockClientConnect(Sender : TObject; Socket : TCustomWinSocket);
    procedure sockClientDisconnect(Sender : TObject; Socket : TCustomWinSocket);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Type
  TUserList = object
    Status : Byte;
    // 1 - ������, 2 - ������
    Rec : Boolean;
    // ������� ������ ������������ � ������
    Name : String;
    // ��� (���)
    Image : Byte;
    // ������ ������
  end;

var
  FChat : TFChat;
  i, j, com, ContList : Byte;
  len, pos, x : Word;
  text, StrUserList : String;
  UpdDo : Boolean;
  Buf : array [0..3] of Byte;
  UserMas : array [0..255] of TUserList; // ������ ��������
  UItems : TListItem;
implementation
{$R *.dfm}

procedure TFChat.UpdateUserMas();
begin
  // ������� ������ � �����������
  for i := 1 to 255 do
  begin
    UserMas[i].Status := 0;
    UserMas[i].Rec := False;
    UserMas[i].Name := ' ����������� ';
    UserMas[i].Image := 0;
  end;
  // ��������� ������ �������������
  if sockServer.Socket.ActiveConnections <> 0 then
  begin
    for i := 1 to sockServer.Socket.ActiveConnections do
    begin
      UserMas[i].Status := 2;
      UserMas[i].Name := '�����������';
      UserMas[i].Image := 0;
      sockServer.Socket.Connections[i].SendText('1');
    end;
  end;
end;
procedure TFChat.UpdateUserList();
begin
  // ������� ������ �������� UserListView.Items.Clear;
  // ������� ����������
  StrUserList := '';
  // �������� ������� ������
  ContList := 0;
  // ��������� �� ��������� �������
  for i := 0 to 255 do
  begin
    // ���� ������ �� ������
    if UserMas[i].Status <> 0 then
    begin
      // ������� � UserListView ������
      UItems := listUsers.Items.Add;
      UItems.Caption := UserMas[i].Name;
      UItems.ImageIndex := UserMas[i].Image;
      // ���� ������������ �� �������
      if UserMas[i].Rec = False then
        ContList := 1;
      // ���������� ������ �������������
      StrUserList := StrUserList + UserMas[i].Name + Chr(152);
    end;
  end;
  // ���� ��� ������������ ����������, � ���� ���� ���� �����
  if (ContList = 0) and (sockServer.Socket.ActiveConnections <> 0) then
  begin
    // ��������� �� ���� �������� �������
    for i := 0 to sockServer.Socket.ActiveConnections - 1 do
    begin
      // �������� ������ ������ ������������� (��� ������� - 2)
      sockServer.Socket.Connections[i].SendText('2' + StrUserList);
    end;
  end;
end;
procedure TFChat.btnSendClick(Sender : TObject);
begin
  // ��������, � ����� ������ ��������� ���������
  if sockServer.Active = True then
      // ���������� ��������� � ������� ���� �������������
    for i := 0 to sockServer.Socket.ActiveConnections - 1 do
      sockServer.Socket.Connections[i].SendText('0[' + TimeToStr(Time) + '] ' +
      NikEdit.text + ': ' + TextEdit.text)
  else
      // ���������� ��������� � �������
    sockClient.Socket.SendText('0[' + TimeToStr(Time) + '] ' + NikEdit.text +
    ': ' + TextEdit.text);
  // ��������� ��������� � ChatMemo
  ChatMemo.Lines.Add('[' + TimeToStr(Time) + ']' + NikEdit.Text + ': ' + TextEdit.text);
  // ������� TextEdit
  TextEdit.Clear;
end;
procedure TFChat.btnServerClick(Sender : TObject);
begin
  if btnServer.Tag = 0 then
  begin
    // ������� ClientBtn � ���� HostEdit, PortEdit, NikEdit �����������
    ClientBtn.Enabled := False;
    HostEdit.Enabled := False;
    PortEdit.Enabled := False;
    NikEdit.Enabled := False;
    // ������� ��������� ���� � ServerSocket
    sockServer.Port := StrToInt(PortEdit.text);
    // ��������� ������
    sockServer.Active := True;
    // ������� � ChatMemo ��������� � �������� ��������
    ChatMemo.Lines.Add('[' + TimeToStr(Time) + '] ������ ������.');
    // �������� ���
    btnServer.Tag := 1;
    // ������ ������� �������
    btnServer.Caption := '������� ������';
    // �������� ������ �������
    tmrServer.Enabled := True;
    // ��������� ��������� �������
    UserMas[0].Status := 1;
    UserMas[0].Rec := True;
    UserMas[0].Name := NikEdit.text;
    UserMas[0].Image := 1;
    // ��������� ����������
    UpdDo := True;
  end
  else
  begin
    // ��������� ������ �������
    tmrServer.Enabled := False;
    // ������� ��������� �������
    UserMas[0].Status := 0;
    UserMas[0].Rec := False;
    UserMas[0].Name := '�����������';
    UserMas[0].Image := 0;
    // ��������� ����������
    UpdDo := True;
    // ������� ������ ��������
    listUsers.Items.Clear;
    // ������� ClientBtn � ���� HostEdit, PortEdit, NikEdit ������������
    ClientBtn.Enabled := True;
    HostEdit.Enabled := True;
    PortEdit.Enabled := True;
    NikEdit.Enabled := True;
    // ��������� ������
    sockServer.Active := False;
    // ������� ��������� � ChatMemo
    ChatMemo.Lines.Add('[' + TimeToStr(Time) + '] ������ ������.');
    // ���������� ���� �������� ��������
    btnServer.Tag := 0;
    // ���������� �������� ������� �������
    btnServer.Caption := '������� ������';
  end;
end;
procedure TFChat.ClientBtnClick(Sender : TObject);
begin
  if ClientBtn.Tag = 0 then
  begin
    // ������� ServerBtn � ���� HostEdit, PortEdit �����������
    btnServer.Enabled := False;
    HostEdit.Enabled := False;
    PortEdit.Enabled := False;
    // ������� ��������� ���� � ClientSocket
    sockClient.Port := StrToInt(PortEdit.text);
    // ������� ���� � ����� (���� �������� HostEdit � ���)
    sockClient.Host := HostEdit.text;
    sockClient.Address := HostEdit.text;
    // ��������� �������
    sockClient.Active := True;
    // �������� ���
    ClientBtn.Tag := 1;
    // ������ ������� �������
    ClientBtn.Caption := '�����������';
  end
  else
  begin
    // ������� ServerBtn � ���� HostEdit, PortEdit ������������
    btnServer.Enabled := True;
    HostEdit.Enabled := True;
    PortEdit.Enabled := True;
    // ��������� �������
    sockClient.Active := False;
    // ������� ������ ��������
    listUsers.Items.Clear;
    // ������� ��������� � ChatMemo
    ChatMemo.Lines.Add('[' + TimeToStr(Time) + '] ������ �������.');
    // ���������� ���� �������� ��������
    ClientBtn.Tag := 0;
    // ���������� �������� ������� �������
    ClientBtn.Caption := ' ������������ ';
  end;
end;
procedure TFChat.FormClose(Sender : TObject; var Action : TCloseAction);
begin
  Action := caFree;
  FChat := nil;
end;
procedure TFChat.sockClientConnect(Sender : TObject; Socket : TCustomWinSocket);
begin
  ChatMemo.Lines.Add('[' + TimeToStr(Time) + '] ����������� � �������.');
end;
procedure TFChat.sockClientDisconnect(Sender : TObject;
                                         Socket : TCustomWinSocket);
begin
  ChatMemo.Lines.Add('[' + TimeToStr(Time) + '] ������ �� ������.');
end;
procedure TFChat.sockClientRead(Sender : TObject; Socket : TCustomWinSocket);
begin
  // ������� �����, ��� ��������, ����� ������
  text := Socket.ReceiveText();
  com := StrToInt(Copy(text, 1, 1));
  len := Length(text) - 1;
  // ����������� �������
  case com of
      // ������� � ChatMemo ��������� � �������
    0 : ChatMemo.Lines.Add(Copy(text, 2, len));
      // ������� ���� ��� �� ������
    1 : sockClient.Socket.SendText('1' + NikEdit.text);
      // ������ ������ ������ �������������
    2 :
    begin
      // ������� ������ ��������
      listUsers.Items.Clear;
      // ������� ���� ����� ������ (�.�. ������� �������� � ���������)
      text := text + Chr(152);
      // ������ ��������� ������
      pos := 2;
      // ������� ������� ��������
      x := 0;
      // ��������� �� ����� ������ ������
      for j := 2 to len + 1 do
      begin
        // ���������� � ������� �����
        x := x + 1;
        // ���� ������ ���� (��������� ����� � ������)
        if Copy(text, j, 1) = Chr(152) then
        begin
          // ������� � UserListView ������
          UItems := listUsers.Items.Add;
          UItems.Caption := Copy(text, pos, x - 1);
          // ������ ��������������� ������ ������������
          if pos > 2 then
            UItems.ImageIndex := 0
          else
            UItems.ImageIndex := 1;
          // ������� ������� ������� � ������ ������
          pos := j + 1;
          // ������� ������� ��������
          x := 0;
        end;
      end;
    end;
  end;
end;
procedure TFChat.sockServerClientConnect(Sender : TObject;
                                            Socket : TCustomWinSocket);
begin
  // ������� � ChatMemo ��������� � �������� ����������� �������
  ChatMemo.Lines.Add('[' + TimeToStr(Time) + '] ����������� ������.');
  // ��������� ����������
  UpdDo := True;
end;
procedure TFChat.sockServerClientDisconnect(Sender : TObject;
                                               Socket : TCustomWinSocket);
begin
  // ������� � ChatMemo ��������� � �������� ���������� �������
  ChatMemo.Lines.Add('[' + TimeToStr(Time) + '] ������ ����������.');
  // ��������� ����������
  UpdDo := True;
end;
procedure TFChat.tmrServerTimer(Sender : TObject);
begin
  // ������� �� ������� ������������� �������
  if sockServer.Socket.ActiveConnections <> 0 then
  begin
    // ���� �� ������������ �������
    for i := 1 to sockServer.Socket.ActiveConnections do
    begin
      // �������� ����� (���� ������ �� ��������, �� ����� ������)
      text := sockServer.Socket.Connections[i].ReceiveText();
      // �������, ��� ����� �� ����
      if text <> '' then
      begin
        // ������� ��� �������, ����� ������
        com := StrToInt(Copy(text, 1, 1));
        len := Length(text) - 1;
        // ����������� ������
        case com of
            // ��� ������ ���������
          0 :
          begin
            // ������� � ChatMemo ��������� �������
            ChatMemo.Lines.Add(Copy(text, 2, len));
            // �������� ��������� ������������� (����� ����, ��� �������)
            for j := 0 to sockServer.Socket.ActiveConnections - 1 do
            begin
              if (j + 1) <> i then
                sockServer.Socket.Connections[j]
                .SendText('0' + Copy(text, 2, len));
            end;
          end;
            // ��� ������ ���� �������
          1 :
          begin
            // ������� � ������ ���������� ���
            UserMas[i].Name := Copy(text, 2, len);
            // �������, ��� ������������ ������� � ������
            UserMas[i].Rec := True;
            // ��������� ������
            UpdateUserList;
          end;
        end;
      end;
    end;
  end;
  // ���������� �� ���������� �������� ����������
  if UpdDo = True then
  begin
    // ��������� ������ �������������
    UpdateUserMas;
    // ��������� ������ �������������
    UpdateUserList;
    // ��������� ����������
    UpdDo := False;
  end;
end;
end.
