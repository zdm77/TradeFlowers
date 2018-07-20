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
  cxDBTL, cxTLData, cxSplitter, cxGroupBox;

type
  TFChatDB = class(TForm)
    QueryUsers: TUniQuery;
    dsUsers: TDataSource;
    dsMessage: TDataSource;
    QueryMessage: TUniQuery;
    Query1: TUniQuery;
    imgSmall: TcxImageList;
    tmr1: TTimer;
    ds2: TDataSource;
    cxGroupBox1: TcxGroupBox;
    btn1: TButton;
    grpMark: TcxGroupBox;
    lstClients: TcxListView;
    cxSplitter1: TcxSplitter;
    cxSplitter2: TcxSplitter;
    cxGroupBox3: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGroupBox4: TcxGroupBox;
    btnSend: TcxButton;
    cxGroupBox5: TcxGroupBox;
    memoMessage: TcxMemo;
    memo1: TcxMemo;
    btnCopy: TcxButton;
    cxButton1: TcxButton;
    Query2: TUniQuery;
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
    procedure FormShow(Sender: TObject);
    procedure lstClientsCustomDrawItem(Sender: TCustomListView; Item: TListItem;
      State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure btnCopyClick(Sender: TObject);
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
    idClientChat: Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

function returnSQL(name_table: string; lst: TStringList): string;
procedure addGlobalSql(query: TUniQuery; field_name: string);

var
  FChatDB: TFChatDB;
  globalSql: string;

implementation

uses
  UDataModule1, UPasswd, ULogin, ProductClass, UNewOrderFromChat;
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
  showMessages2(idClientChat);
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
      // sql.Add(' and id_user=:id_user');
      // ParamByName('id_user').AsInteger := FPasswd.id_user;
    end
    else
    begin
      sql.Add(' and id_client=:id_client ');
      ParamByName('id_client').AsInteger := id_client;
    end;
    sql.Add('  order by dt_m desc');
    Open;
  end;
end;

procedure TFChatDB.sendMessages();
begin
  if idClientChat = 0 then
    idClientChat := lstClients.Items[0].StateIndex;
  with Query1 do
  begin
    Close;
    sql.Text := 'insert into chat.chat (';
    sql.Add('message,');
    sql.Add('id_client,');
    // sql.Add('id_user, ');
    sql.Add('adm, read ,read_client');
    sql.Add(')');
    sql.Add(' values (');
    sql.Add(':message, ');
    sql.Add(':id_client, ');
    // sql.Add(':id_user, ');
    sql.Add(':adm, :read, :read_client');
    sql.Add(')');
    // ParamByName('id_user').AsInteger := FPasswd.id_user;
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
    showMessages2(idClientChat);
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
    lstClients.Items[0].Selected := True;
    showMessages2(idClientChat);
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

function returnSQL(name_table: string; lst: TStringList): string;
var
  I: Integer;
begin
  // TODO -cMM: returnSQL default body inserted
  Result := 'select id, uni_name from ' + name_table + ' where Upper(uni_name)=' +
    QuotedStr(AnsiUpperCase(trim(lst[0])));
  for I := 1 to lst.Count - 1 do
  begin
    Result := Result + ' OR Upper(uni_name)=' + QuotedStr(AnsiUpperCase(trim(lst[I])));
  end;
end;

procedure addGlobalSql(query: TUniQuery; field_name: string);
begin
  with query do
  begin
    if globalSql <> '' then
      globalSql := globalSql + ' AND '
    else
      globalSql := 'select * from продукция.продукция where ';
    globalSql := globalSql + field_name + ' in (';
    while not eof do
    begin
      globalSql := globalSql + Fields[0].AsString;
      Next;
    end;
    globalSql := globalSql + ')';
  end;
end;

procedure TFChatDB.btn1Click(Sender: TObject);
var
  substr, findT: string;
  fL: TStringList;
  p, I, j: Integer;
  lengthP: Double;
begin
  // mem1.Active := True;
  // with Query1 do
  // begin
  // Close;
  // sql.Text := 'select * from продукция.продукция order by id ';
  // Open;
  // while not eof do
  // begin
  // mem1.Append;
  // mem1.FieldByName('name').AsString := FieldByName('name').AsString;
  // mem1.FieldByName('id').AsInteger := FieldByName('id').AsInteger;
  // mem1.FieldByName('pid').AsInteger := FieldByName('pid').AsInteger;
  // mem1.Post;
  // Next;
  // end;
  // end;
end;

procedure TFChatDB.btnCopyClick(Sender: TObject);
var
  fL: TStringList;
  I, j, counter, l: Integer;
  lengthP: Double;
  CountOrd, str: string;
begin
  Application.CreateForm(TFNewOrderFromChat, FNewOrderFromChat);
  memo1.Lines.Clear;
  fL := TStringList.Create;
  try
    fL.Delimiter := ',';
    fL.StrictDelimiter := True;
    counter := 0;
    // memo1.Lines.Clear;
    // findT := AnsiUpperCase(memoMessage.Text);
    // for I := 0 to fL.Count - 1 do   fl[i]=trim
    with Query1 do
    begin
      for j := 0 to memoMessage.Lines.Count - 1 do
      begin
        CountOrd := '1';
        str := trim(AnsiUpperCase(memoMessage.Lines[j]));
        if (str.Length > 0) then
        begin
          lengthP := 0;
          globalSql := '';
          l := pos('-', str);
          if (l = 0) then
            fL.DelimitedText := str
          else
          begin
            // SetLength(memoMessage.Lines[j], 5);
            fL.DelimitedText := Copy(str, 0, l - 1);
            CountOrd := trim(Copy(str, l + 1, str.Length));
          end;
          // пытаемся определить тип
          Close;
          sql.Text := returnSQL('"продукция"."типы"', fL);
          Open;
          // memo1.Lines.Add(sql.Text);
          // memo1.Lines.Add('Нашли тип');
          if RecordCount > 0 then
          begin
            addGlobalSql(Query1, 'код_типа');
          end;
          // memo1.Lines.Add(globalSql);
          // пытаемся определить плантацию
          Close;
          sql.Text := returnSQL('"продукция"."плантации"', fL);
          Open;
          // memo1.Lines.Add(sql.Text);
          // memo1.Lines.Add('Нашли тип');
          if RecordCount > 0 then
          begin
            addGlobalSql(Query1, 'код_плантации');
          end;
          // memo1.Lines.Add(globalSql);
          // пытаемся определить сорт
          Close;
          sql.Text := returnSQL('"продукция"."сорта"', fL);
          Open;
          // memo1.Lines.Add(sql.Text);
          // memo1.Lines.Add('Нашли сорт');
          if RecordCount > 0 then
          begin
            addGlobalSql(Query1, 'код_сорта');
          end;
          // memo1.Lines.Add(globalSql);
          // пытаемся определить длину если есть число
          for I := 1 to fL.Count - 1 do
          begin
            lengthP := StrToFloatDef(trim(fL[I]), 0);
            if lengthP <> 0 then
            begin
              globalSql := globalSql + ' AND uni_name Like ''%' +
                AnsiUpperCase(FloatToStr(lengthP)) + '%''';
              Break;
            end;
          end;
          memo1.Lines.Add(globalSql);
          if globalSql <> '' then
          begin
            Close;
            sql.Text := globalSql;
            Open;
            while not eof do
            begin
              FNewOrderFromChat.Table1.DataController.Append;
              FNewOrderFromChat.Table1.DataController.SetValue(counter, FNewOrderFromChat.columnName.Index,
                FieldByName('uni_name').AsString);
              FNewOrderFromChat.Table1.DataController.SetValue(counter, FNewOrderFromChat.columnID.Index,
                FieldByName('id').AsString);
              FNewOrderFromChat.Table1.DataController.SetValue(counter, FNewOrderFromChat.columnCount.Index, CountOrd);
            //  memo1.Lines.Add(FieldByName('uni_name').AsString);
              Query2.Close;
              Query2.sql.Text := 'SELECT  st.uni_name,  pl.uni_name,  tp.uni_name,  s.uni_name ' +
                ' FROM  "продукция"."плантации" pl  INNER JOIN "продукция"."страны" st ON (pl."код_страны" = st.id) '
                + '  INNER JOIN "продукция"."продукция" p ON (p."код_плантации" = pl.id) ' +
                '  INNER JOIN "продукция"."сорта" s ON (p."код_сорта" = s.id) ' +
                '  INNER JOIN "продукция"."типы" tp ON (s."код_типа" = tp.id) ' +
                '  AND (p."код_типа" = tp.id) where p.id=' + Fields[0].AsString;
              Query2.Open;
              FNewOrderFromChat.Table1.DataController.SetValue(counter, FNewOrderFromChat.columnCountry.Index,
                Query2.Fields[0].AsString);
              FNewOrderFromChat.Table1.DataController.SetValue(counter, FNewOrderFromChat.columnPlant.Index,
                Query2.Fields[1].AsString);
              FNewOrderFromChat.Table1.DataController.SetValue(counter, FNewOrderFromChat.columnType.Index,
                Query2.Fields[2].AsString);
              FNewOrderFromChat.Table1.DataController.SetValue(counter, FNewOrderFromChat.columnSort.Index,
                Query2.Fields[3].AsString);
              FNewOrderFromChat.Table1.DataController.Post(True);
              counter := counter + 1;
              Next;
            end;
          end;
        end;
      end;
    end;
  finally
    fL.Free
  end;
  FNewOrderFromChat.Show;
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

procedure TFChatDB.FormShow(Sender: TObject);
var
  I: Integer;
begin
  if idClientChat <> 0 then
    grpMark.Width := 0
  else
  begin
    lstClients.SetFocus;
    for I := 0 to lstClients.Items.Count - 1 do
    begin
      lstClients.Items[I].Data := Pointer(clWhite);
    end;
    // idClientChat := lstClients.items[0].StateIndex;
  end;
  memoMessage.SetFocus;
end;

procedure TFChatDB.lstClientsClick(Sender: TObject);
var
  I: Integer;
  idBefore: Integer;
begin
  try
    idClientChat := lstClients.ItemFocused.StateIndex;
    idBefore := lstClients.ItemFocused.Index;
    updateRead(idClientChat);
    lstClients.ItemFocused.ImageIndex := -1;
    for I := 0 to lstClients.Items.Count - 1 do
    begin
      lstClients.Items[I].Data := Pointer(clWhite);
    end;
    lstClients.Selected.Data := Pointer(clRed);
    lstClients.Repaint;
    showMessages2(idClientChat);
    memoMessage.SetFocus;
  except
    lstClients.Items[idBefore].Selected := True;
    lstClients.Selected.Data := Pointer(clRed);
    lstClients.Repaint;
  end;
end;

procedure TFChatDB.lstClientsCustomDrawItem(Sender: TCustomListView; Item: TListItem;
  State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  Sender.Canvas.Brush.Color := TColor(Item.Data);
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
