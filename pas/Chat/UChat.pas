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
    // 1 - сервер, 2 - клиент
    Rec : Boolean;
    // отметка записи пользователя в список
    Name : String;
    // имя (ник)
    Image : Byte;
    // индекс иконки
  end;

var
  FChat : TFChat;
  i, j, com, ContList : Byte;
  len, pos, x : Word;
  text, StrUserList : String;
  UpdDo : Boolean;
  Buf : array [0..3] of Byte;
  UserMas : array [0..255] of TUserList; // массив объектов
  UItems : TListItem;
implementation
{$R *.dfm}

procedure TFChat.UpdateUserMas();
begin
  // очищаем массив с информацией
  for i := 1 to 255 do
  begin
    UserMas[i].Status := 0;
    UserMas[i].Rec := False;
    UserMas[i].Name := ' Неизвестный ';
    UserMas[i].Image := 0;
  end;
  // заполняем данные пользователей
  if sockServer.Socket.ActiveConnections <> 0 then
  begin
    for i := 1 to sockServer.Socket.ActiveConnections do
    begin
      UserMas[i].Status := 2;
      UserMas[i].Name := 'Неизвестный';
      UserMas[i].Image := 0;
      sockServer.Socket.Connections[i].SendText('1');
    end;
  end;
end;
procedure TFChat.UpdateUserList();
begin
  // очищаем список клиентов UserListView.Items.Clear;
  // очищаем переменную
  StrUserList := '';
  // обнуляем пометку записи
  ContList := 0;
  // пробегаем по диапазону каналов
  for i := 0 to 255 do
  begin
    // если запись не пустая
    if UserMas[i].Status <> 0 then
    begin
      // добавим в UserListView строку
      UItems := listUsers.Items.Add;
      UItems.Caption := UserMas[i].Name;
      UItems.ImageIndex := UserMas[i].Image;
      // если пользователь не записан
      if UserMas[i].Rec = False then
        ContList := 1;
      // составляем строку пользователей
      StrUserList := StrUserList + UserMas[i].Name + Chr(152);
    end;
  end;
  // если все пользователи отметились, и есть хоть один канал
  if (ContList = 0) and (sockServer.Socket.ActiveConnections <> 0) then
  begin
    // пробегаем по всем открытым каналам
    for i := 0 to sockServer.Socket.ActiveConnections - 1 do
    begin
      // отправим строку списка пользователей (код команды - 2)
      sockServer.Socket.Connections[i].SendText('2' + StrUserList);
    end;
  end;
end;
procedure TFChat.btnSendClick(Sender : TObject);
begin
  // проверка, в каком режиме находится программа
  if sockServer.Active = True then
      // отправляем сообщение с сервера всем пользователям
    for i := 0 to sockServer.Socket.ActiveConnections - 1 do
      sockServer.Socket.Connections[i].SendText('0[' + TimeToStr(Time) + '] ' +
      NikEdit.text + ': ' + TextEdit.text)
  else
      // отправляем сообщение с клиента
    sockClient.Socket.SendText('0[' + TimeToStr(Time) + '] ' + NikEdit.text +
    ': ' + TextEdit.text);
  // отобразим сообщение в ChatMemo
  ChatMemo.Lines.Add('[' + TimeToStr(Time) + ']' + NikEdit.Text + ': ' + TextEdit.text);
  // очищаем TextEdit
  TextEdit.Clear;
end;
procedure TFChat.btnServerClick(Sender : TObject);
begin
  if btnServer.Tag = 0 then
  begin
    // клавишу ClientBtn и поля HostEdit, PortEdit, NikEdit заблокируем
    ClientBtn.Enabled := False;
    HostEdit.Enabled := False;
    PortEdit.Enabled := False;
    NikEdit.Enabled := False;
    // запишем указанный порт в ServerSocket
    sockServer.Port := StrToInt(PortEdit.text);
    // запускаем сервер
    sockServer.Active := True;
    // добавим в ChatMemo сообщение с временем создания
    ChatMemo.Lines.Add('[' + TimeToStr(Time) + '] Сервер создан.');
    // изменяем тэг
    btnServer.Tag := 1;
    // меняем надпись клавиши
    btnServer.Caption := 'Закрыть сервер';
    // включаем таймер сервера
    tmrServer.Enabled := True;
    // вписываем параметры сервера
    UserMas[0].Status := 1;
    UserMas[0].Rec := True;
    UserMas[0].Name := NikEdit.text;
    UserMas[0].Image := 1;
    // разрешаем обновление
    UpdDo := True;
  end
  else
  begin
    // выключаем таймер сервера
    tmrServer.Enabled := False;
    // стираем параметры сервера
    UserMas[0].Status := 0;
    UserMas[0].Rec := False;
    UserMas[0].Name := 'Неизвестный';
    UserMas[0].Image := 0;
    // разрешаем обновление
    UpdDo := True;
    // очищаем список клиентов
    listUsers.Items.Clear;
    // клавишу ClientBtn и поля HostEdit, PortEdit, NikEdit разблокируем
    ClientBtn.Enabled := True;
    HostEdit.Enabled := True;
    PortEdit.Enabled := True;
    NikEdit.Enabled := True;
    // закрываем сервер
    sockServer.Active := False;
    // выводим сообщение в ChatMemo
    ChatMemo.Lines.Add('[' + TimeToStr(Time) + '] сервер закрыт.');
    // возвращаем тэгу исходное значение
    btnServer.Tag := 0;
    // возвращаем исходную надпись клавиши
    btnServer.Caption := 'Создать сервер';
  end;
end;
procedure TFChat.ClientBtnClick(Sender : TObject);
begin
  if ClientBtn.Tag = 0 then
  begin
    // клавишу ServerBtn и поля HostEdit, PortEdit заблокируем
    btnServer.Enabled := False;
    HostEdit.Enabled := False;
    PortEdit.Enabled := False;
    // запишем указанный порт в ClientSocket
    sockClient.Port := StrToInt(PortEdit.text);
    // запишем хост и адрес (одно значение HostEdit в оба)
    sockClient.Host := HostEdit.text;
    sockClient.Address := HostEdit.text;
    // запускаем клиента
    sockClient.Active := True;
    // изменяем тэг
    ClientBtn.Tag := 1;
    // меняем надпись клавиши
    ClientBtn.Caption := 'Отключиться';
  end
  else
  begin
    // клавишу ServerBtn и поля HostEdit, PortEdit разблокируем
    btnServer.Enabled := True;
    HostEdit.Enabled := True;
    PortEdit.Enabled := True;
    // закрываем клиента
    sockClient.Active := False;
    // очищаем список клиентов
    listUsers.Items.Clear;
    // выводим сообщение в ChatMemo
    ChatMemo.Lines.Add('[' + TimeToStr(Time) + '] Сессия закрыта.');
    // возвращаем тэгу исходное значение
    ClientBtn.Tag := 0;
    // возвращаем исходную надпись клавиши
    ClientBtn.Caption := ' Подключиться ';
  end;
end;
procedure TFChat.FormClose(Sender : TObject; var Action : TCloseAction);
begin
  Action := caFree;
  FChat := nil;
end;
procedure TFChat.sockClientConnect(Sender : TObject; Socket : TCustomWinSocket);
begin
  ChatMemo.Lines.Add('[' + TimeToStr(Time) + '] Подключение к серверу.');
end;
procedure TFChat.sockClientDisconnect(Sender : TObject;
                                         Socket : TCustomWinSocket);
begin
  ChatMemo.Lines.Add('[' + TimeToStr(Time) + '] Сервер не найден.');
end;
procedure TFChat.sockClientRead(Sender : TObject; Socket : TCustomWinSocket);
begin
  // получим текст, код комманды, длину строки
  text := Socket.ReceiveText();
  com := StrToInt(Copy(text, 1, 1));
  len := Length(text) - 1;
  // определение комманд
  case com of
      // добавим в ChatMemo сообщение с сервера
    0 : ChatMemo.Lines.Add(Copy(text, 2, len));
      // отошлем свой ник на сервер
    1 : sockClient.Socket.SendText('1' + NikEdit.text);
      // примем строку списка пользователей
    2 :
    begin
      // очищаем список клиентов
      listUsers.Items.Clear;
      // добавим ключ конца строки (т.к. вырезка символов с задержкой)
      text := text + Chr(152);
      // укажем начальный символ
      pos := 2;
      // обнулим счетчик символов
      x := 0;
      // пробегаем по длине строки списка
      for j := 2 to len + 1 do
      begin
        // записываем в счетчик сдвиг
        x := x + 1;
        // если найден ключ (отделение ников в строке)
        if Copy(text, j, 1) = Chr(152) then
        begin
          // добавим в UserListView строку
          UItems := listUsers.Items.Add;
          UItems.Caption := Copy(text, pos, x - 1);
          // укажем соответствующую иконку пользователя
          if pos > 2 then
            UItems.ImageIndex := 0
          else
            UItems.ImageIndex := 1;
          // изменим текущую позицию в строке списка
          pos := j + 1;
          // обнулим счетчик символов
          x := 0;
        end;
      end;
    end;
  end;
end;
procedure TFChat.sockServerClientConnect(Sender : TObject;
                                            Socket : TCustomWinSocket);
begin
  // добавим в ChatMemo сообщение с временем подключения клиента
  ChatMemo.Lines.Add('[' + TimeToStr(Time) + '] Подключился клиент.');
  // разрешаем обновление
  UpdDo := True;
end;
procedure TFChat.sockServerClientDisconnect(Sender : TObject;
                                               Socket : TCustomWinSocket);
begin
  // добавим в ChatMemo сообщение с временем отключения клиента
  ChatMemo.Lines.Add('[' + TimeToStr(Time) + '] Клиент отключился.');
  // разрешаем обновление
  UpdDo := True;
end;
procedure TFChat.tmrServerTimer(Sender : TObject);
begin
  // условие на наличие установленных каналов
  if sockServer.Socket.ActiveConnections <> 0 then
  begin
    // цикл по существующим каналам
    for i := 1 to sockServer.Socket.ActiveConnections do
    begin
      // сохраним пакет (если ничего не прислали, по пакет пустой)
      text := sockServer.Socket.Connections[i].ReceiveText();
      // условие, что пакет не пуст
      if text <> '' then
      begin
        // получим код команды, длину строки
        com := StrToInt(Copy(text, 1, 1));
        len := Length(text) - 1;
        // определение команд
        case com of
            // код приема сообщения
          0 :
          begin
            // добавим в ChatMemo сообщение клиента
            ChatMemo.Lines.Add(Copy(text, 2, len));
            // разошлем сообщение пользователям (кроме того, кто прислал)
            for j := 0 to sockServer.Socket.ActiveConnections - 1 do
            begin
              if (j + 1) <> i then
                sockServer.Socket.Connections[j]
                .SendText('0' + Copy(text, 2, len));
            end;
          end;
            // код приема ника клиента
          1 :
          begin
            // запишем в массив полученный ник
            UserMas[i].Name := Copy(text, 2, len);
            // отметим, что пользователь записан в список
            UserMas[i].Rec := True;
            // обновляем список
            UpdateUserList;
          end;
        end;
      end;
    end;
  end;
  // разрешение на выполнение процедур обновления
  if UpdDo = True then
  begin
    // обновляем массив пользователей
    UpdateUserMas;
    // обновляем список пользователей
    UpdateUserList;
    // блокируем разрешение
    UpdDo := False;
  end;
end;
end.
