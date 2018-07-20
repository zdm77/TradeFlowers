unit UChatDb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2007Blue,
  dxSkinsDefaultPainters, Vcl.StdCtrls, cxContainer, cxEdit, cxListView, Uni,
  cxStyles, dxSkinscxPCPainter, cxGrid, Data.DB, MemDS, DBAccess, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxMemo, Vcl.Menus, cxButtons, cxTextEdit, Vcl.ImgList,
  cxListBox, cxDBEdit, Vcl.ExtCtrls, Datasnap.DBClient, Datasnap.Provider,
  dxmdaset, cxTL, cxLabel, cxMaskEdit, cxTLdxBarBuiltInMenu, cxInplaceContainer,
  cxDBTL, cxTLData;

type
  TFChatDB = class(TForm)
    QueryUsers: TUniQuery;
    dsUsers: TDataSource;
    dsMessage: TDataSource;
    QueryMessage: TUniQuery;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    memoMessage: TcxMemo;
    btnSend: TcxButton;
    Query1: TUniQuery;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    lstClients: TcxListView;
    imgSmall: TcxImageList;
    tmr1: TTimer;
    btn1: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnSendClick(Sender: TObject);
    procedure memoMessageKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure memoMessageKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxGridDBColumn1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure lstClientsClick(Sender: TObject);
    procedure tmr1Timer(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    procedure showUsers();
    procedure showMessages();
    procedure sendMessages();
    procedure showMessages2(id_client: Integer);
    function getStateMessages(id_client: Integer): Boolean;
    procedure updateRead(id_client: Integer);
    procedure updateReadAll;

  var
    str: string;

  var
    idClientChat: Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FChatDB: TFChatDB;

implementation

uses
  UDataModule1, UPasswd, ULogin;
{$R *.dfm}

procedure TFChatDB.updateReadAll;
var
  ItemN: TListItem;
  I: Integer;
begin
  with Query1 do
  begin
    Close;
    sql.Text := 'select id_client, read from chat.chat where read = 0';
    Open;
    First;
    while not eof do
    begin
      for I := 0 to lstClients.Items.Count - 1 do
      begin
        ItemN := lstClients.Items[I];
        if ItemN.StateIndex = FieldByName('id_client').AsInteger then
        begin
          ItemN.ImageIndex := 1
        end;
      end;
      Next;
    end;
  end;
end;

procedure TFChatDB.updateRead(id_client: Integer);
begin
  with Query1 do
  begin
    Close;
    sql.Text := 'update chat.chat set read=1 where id_client=:id_client';
    ParamByName('id_client').AsInteger := id_client;
    ExecSQL;
  end;
end;

function TFChatDB.getStateMessages(id_client: Integer): Boolean;
begin
  Result := False;
  with Query1 do
  begin
    Close;
    sql.Text := 'select read from chat.chat where id_client=:id_client and read = 0 limit 1 ';
    ParamByName('id_client').AsInteger := id_client;
    Open;
    if RecordCount > 0 then
      Result := True;
  end;
end;

procedure TFChatDB.showMessages2(id_client: Integer);
begin
  with QueryMessage do
  begin
    Close;
    sql.Text := 'select * from chat.chat where 1=1 ';
    if id_client = 0 then
    begin
      sql.Add(' and id_user=:id_user');
      ParamByName('id_user').AsInteger := FPasswd.id_user;
    end;
    sql.Add(' and id_client=:id_client ');
    sql.Add('  order by dt_m desc');
    ParamByName('id_client').AsInteger := id_client;
    Open;
  end;
end;

procedure TFChatDB.sendMessages();
begin
  with Query1 do
  begin
    Close;
    sql.Text := 'insert into chat.chat (';
    sql.Add('message,');
    sql.Add('id_client,');
    sql.Add('id_user, ');
    sql.Add('adm, read ,read_client');
    sql.Add(')');
    sql.Add(' values (');
    sql.Add(':message, ');
    sql.Add(':id_client, ');
    sql.Add(':id_user, ');
    sql.Add(':adm, :read, :read_client');
    sql.Add(')');
    ParamByName('id_user').AsInteger := FPasswd.id_user;
    ParamByName('id_client').AsInteger := idClientChat;
    ParamByName('message').AsString := memoMessage.Text;
    if (FLogin.idClient = 0) then
    begin
      ParamByName('adm').AsInteger := 1;
      ParamByName('read').AsInteger := 1;
      ParamByName('read_client').AsInteger := 0;
    end
    else
    begin
      ParamByName('read').AsInteger := 0;
      ParamByName('adm').AsInteger := 0;
      ParamByName('read_client').AsInteger := 1;
    end;
    ExecSQL;
    showMessages;
    // ShowMessage(str);
    memoMessage.SetFocus;
    memoMessage.Lines.Text := str;
    memoMessage.SelectAll;
  end;
end;

procedure TFChatDB.showMessages();
begin
  with QueryMessage do
  begin
    Close;
    sql.Text :=
      'select * from chat.chat where id_user=:id_user and id_client=:id_client order by dt_m desc';
    ParamByName('id_user').AsInteger := FPasswd.id_user;
    ParamByName('id_client').AsInteger := idClientChat;
    Open;
  end;
end;

procedure TFChatDB.showUsers;
var
  ItemN: TListItem;
begin
  idClientChat := FLogin.idClient;
  if idClientChat = 0 then
  begin
    with QueryUsers do
    begin
      Close;
      sql.Text :=
        'select id, name from "маркировки"."маркировки" where id_group=1 and pid<>0 order by name';
      Open;
      First;
      while not eof do
      begin
        ItemN := lstClients.Items.Add;
        ItemN.Caption := FieldByName('name').AsString;
        if (getStateMessages(FieldByName('id').AsInteger) = True) then
          ItemN.ImageIndex := 1
        else
          ItemN.ImageIndex := -1;
        ItemN.StateIndex := FieldByName('id').AsInteger;
        Next;
      end;
    end;
  end
  else
  begin
    lstClients.Visible := False;
    with Query1 do
    begin
      Close;
      sql.Text := 'select id from "маркировки"."маркировки" where id_group=1 and код_клиента=' +
        IntToStr(idClientChat);
      Open;
      First;
      idClientChat := Fields[0].AsInteger;
      showMessages2(idClientChat);
    end;
  end;
end;

procedure TFChatDB.tmr1Timer(Sender: TObject);
begin
  updateReadAll;
end;

procedure TFChatDB.btn1Click(Sender: TObject);
begin
//  mem1.Active := True;
//  with Query1 do
//  begin
//    Close;
//    sql.Text := 'select * from продукция.продукция order by id ';
//    Open;
//    while not eof do
//    begin
//      mem1.Append;
//      mem1.FieldByName('name').AsString := FieldByName('name').AsString;
//      mem1.FieldByName('id').AsInteger := FieldByName('id').AsInteger;
//      mem1.FieldByName('pid').AsInteger := FieldByName('pid').AsInteger;
//      mem1.Post;
//      Next;
//    end;
//  end;
//  lst1.DataController.DataSource:=ds1;
end;

procedure TFChatDB.btnSendClick(Sender: TObject);
begin
  sendMessages;
end;

procedure TFChatDB.cxGridDBColumn1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  // memoMessage.Lines.Add(AViewInfo.GridRecord.Values[1])
  if AViewInfo.GridRecord.Values[1] = 1 then
  begin
    ACanvas.Canvas.Brush.Color := clMoneyGreen;
    ACanvas.Font.Color := clBlack;
  end
  else
  begin
    ACanvas.Canvas.Brush.Color := clWhite;
    ACanvas.Font.Color := clBlack;
  end
end;

procedure TFChatDB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FChatDB := nil;
end;

procedure TFChatDB.FormCreate(Sender: TObject);
begin
  showUsers;
end;

procedure TFChatDB.lstClientsClick(Sender: TObject);
begin
  idClientChat := lstClients.ItemFocused.StateIndex;
  updateRead(idClientChat);
  lstClients.ItemFocused.ImageIndex := -1;
  showMessages2(idClientChat);
end;

procedure TFChatDB.memoMessageKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if ([ssCtrl] = Shift) and (Key = VK_RETURN) then
    sendMessages
end;

procedure TFChatDB.memoMessageKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if ([ssCtrl] <> Shift) and (Key <> VK_RETURN) then
    str := memoMessage.Lines.Text;
end;

end.
