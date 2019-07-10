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
  cxDBTL, cxTLData, cxSplitter, cxGroupBox, MemTableDataEh, DataDriverEh,
  MemTableEh;
type
  TFChatDB = class(TForm)
    QueryUsers : TUniQuery;
    dsUsers : TDataSource;
    dsMessage : TDataSource;
    QueryMessage : TUniQuery;
    Query1 : TUniQuery;
    imgSmall : TcxImageList;
    tmr1 : TTimer;
    ds2 : TDataSource;
    cxGroupBox1 : TcxGroupBox;
    btn1 : TButton;
    grpMark : TcxGroupBox;
    lstClients : TcxListView;
    cxSplitter1 : TcxSplitter;
    cxSplitter2 : TcxSplitter;
    cxGroupBox3 : TcxGroupBox;
    cxGrid1 : TcxGrid;
    cxGridDBTableView1 : TcxGridDBTableView;
    cxGridDBColumn1 : TcxGridDBColumn;
    cxGridDBTableView1Column1 : TcxGridDBColumn;
    cxGridLevel1 : TcxGridLevel;
    cxGroupBox4 : TcxGroupBox;
    btnSend : TcxButton;
    cxGroupBox5 : TcxGroupBox;
    memoMessage : TcxMemo;
    memo1 : TcxMemo;
    btnCopy : TcxButton;
    cxButton1 : TcxButton;
    Query2 : TUniQuery;
    memPr : TMemTableEh;
    dataDriverP : TDataSetDriverEh;
    ClientDataSet1 : TClientDataSet;
    btnOrder2 : TcxButton;
    procedure FormClose(Sender : TObject; var Action : TCloseAction);
    procedure FormCreate(Sender : TObject);
    procedure btnSendClick(Sender : TObject);
    procedure memoMessageKeyDown(Sender : TObject; var Key : Word; Shift : TShiftState);
    procedure memoMessageKeyUp(Sender : TObject; var Key : Word; Shift : TShiftState);
    procedure cxGridDBColumn1CustomDrawCell(Sender : TcxCustomGridTableView; ACanvas : TcxCanvas;
                                               AViewInfo : TcxGridTableDataCellViewInfo; var ADone : Boolean);
    procedure lstClientsClick(Sender : TObject);
    procedure tmr1Timer(Sender : TObject);
    procedure btn1Click(Sender : TObject);
    procedure FormShow(Sender : TObject);
    procedure lstClientsCustomDrawItem(Sender : TCustomListView; Item : TListItem; State : TCustomDrawState;
                                          var DefaultDraw : Boolean);
    procedure btnCopyClick(Sender : TObject);
    procedure btnOrder2Click(Sender : TObject);
    procedure memPrFilterRecord(DataSet : TDataSet; var Accept : Boolean);
  private
  var
    procedure showUsers();
    procedure showMessages();
    procedure sendMessages();
    procedure showMessages2(id_client : Integer);
    function getStateMessages(id_client : Integer) : Boolean;
    procedure updateRead(id_client : Integer);
    procedure updateReadAll;
    procedure sendMessageAdmin;
  var
    str : string;
    idClientChat : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;
  
  function returnSQL(name_table : string; lst : TStringList) : string;
  procedure addGlobalSql(query : TUniQuery; field_name : string);
var
  FChatDB : TFChatDB;
  globalSql : string;
implementation
uses
  UDataModule1, UPasswd, ULogin, ProductClass, UNewOrderFromChat;
{$R *.dfm}

procedure TFChatDB.updateReadAll;
var
  ItemN : TListItem;
  I : Integer;
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
procedure TFChatDB.updateRead(id_client : Integer);
begin
  with Query1 do
  begin
    Close;
    sql.Text := 'update chat.chat set read=1 where id_client=:id_client';
    ParamByName('id_client').AsInteger := id_client;
    ExecSQL;
  end;
end;
function TFChatDB.getStateMessages(id_client : Integer) : Boolean;
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
procedure TFChatDB.showMessages2(id_client : Integer);
begin
  with QueryMessage do
  begin
    Close;
    sql.Text := 'select * from chat.chat where 1=1 ';
    if id_client = 0 then
      id_client := QueryUsers.FieldByName('id').AsInteger;
    // sql.Add(' and id_user=:id_user');
    // ParamByName('id_user').AsInteger := FPasswd.id_user;
    // else
    // begin
    sql.Add(' and id_client=:id_client ');
    ParamByName('id_client').AsInteger := id_client;
    // end;
    sql.Add('  order by dt_m desc');
    Open;
  end;
end;
procedure TFChatDB.sendMessageAdmin();
begin
  QueryUsers.First;
  while not QueryUsers.eof do
  begin
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
      ParamByName('id_client').AsInteger := QueryUsers.FieldByName('id').AsInteger;
      ParamByName('message').AsString := memoMessage.Text;
      ParamByName('adm').AsInteger := 1;
      ParamByName('read').AsInteger := 1;
      ParamByName('read_client').AsInteger := 0;
      ExecSQL;
      QueryUsers.Next;
    end;
  end;
  showMessages2(idClientChat);
  // ShowMessage(str);
  memoMessage.SetFocus;
  memoMessage.Lines.Text := str;
  memoMessage.SelectAll;
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
    sql.Text := 'select * from chat.chat where id_user=:id_user and id_client=:id_client order by dt_m desc';
    ParamByName('id_user').AsInteger := FPasswd.id_user;
    ParamByName('id_client').AsInteger := idClientChat;
    Open;
  end;
end;
procedure TFChatDB.showUsers;
var
  ItemN : TListItem;
begin
  idClientChat := FLogin.idClient;
  if idClientChat = 0 then
  begin
    with QueryUsers do
    begin
      Close;
      sql.Text := 'select id, name from "����������"."����������" where id_group=1 and pid<>0 order by name';
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
    QueryUsers.First;
    showMessages2(idClientChat);
  end
  else
  begin
    lstClients.Visible := False;
    with Query1 do
    begin
      Close;
      sql.Text := 'select id from "����������"."����������" where id_group=1 and ���_�������=' + IntToStr(idClientChat);
      Open;
      First;
      idClientChat := Fields[0].AsInteger;
      showMessages2(idClientChat);
    end;
  end;
end;
procedure TFChatDB.tmr1Timer(Sender : TObject);
begin
  updateReadAll;
end;
function returnSQL(name_table : string; lst : TStringList) : string;
var
  I : Integer;
begin
  // TODO -cMM: returnSQL default body inserted
  // Result := 'select id, uni_name from ' + name_table + ' where Upper(uni_name)=' +
  // QuotedStr(AnsiUpperCase(trim(lst[0])));
  Result := 'select id, uni_name from ' + name_table + ' where  Upper(uni_name) Like ''%' + AnsiUpperCase(trim(lst[I])
                                                                                                           ) + '%'' ';
  for I := 1 to lst.Count - 1 do
  begin
    Result := Result + ' OR Upper(uni_name) Like ''%' + AnsiUpperCase(trim(lst[I])) + '%'' ';
    // Result := Result + ' OR Upper(uni_name)=' + QuotedStr(AnsiUpperCase(trim(lst[I])));
  end;
end;
function returnSQLStr(name_table : string; str : string) : string;
var
  I : Integer;
begin
  // TODO -cMM: returnSQL default body inserted
  // Result := 'select id, uni_name from ' + name_table + ' where Upper(uni_name)=' +
  // QuotedStr(AnsiUpperCase(trim(lst[0])));
  Result := 'select id, uni_name from ' + name_table + ' where  Upper(uni_name) Like ''%' + AnsiUpperCase(trim(str)
                                                                                                           ) + '%'' ';
end;
procedure addGlobalSql(query : TUniQuery; field_name : string);
begin
  with query do
  begin
    if globalSql <> '' then
      globalSql := globalSql + ' AND '
    else
      globalSql := 'select * from ���������.��������� where ';
    globalSql := globalSql + field_name + ' in (';
    while not eof do
    begin
      globalSql := globalSql + Fields[0].AsString + ',';
      Next;
    end;
    globalSql := copy(globalSql, 0, globalSql.Length - 1) + ')';
  end;
end;
procedure TFChatDB.btn1Click(Sender : TObject);
type
  PMyList = ^AList;
  AList = record
    I : Integer;
    C : string;
  end;
var
  substr, findT : string;
  fL : TStringList;
  p, I, j : Integer;
  lengthP : Double;
  MyList : TList;
  ARecord : PMyList;
begin
  // mem1.Active := True;
  // with Query1 do
  // begin
  // Close;
  // sql.Text := 'select * from ���������.��������� order by id ';
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
  MyList := TList.Create;
  New(ARecord);
  ARecord^.I := 100;
  ARecord^.C := 'Z';
  MyList.Add(ARecord);
  Application.CreateForm(TFNewOrderFromChat, FNewOrderFromChat);
  with FNewOrderFromChat do
  begin
    // substr:='dsfjk dksfj kdsfj';
    // i := length(Str);
    // MStream := TMemoryStream.Create;
    // MStream.WriteBuffer(i, SizeOf(i));
    // if i > 0 then
    // MStream.WriteBuffer(PChar(substr)^, i);
    // MStream.WriteBuffer(MyList, 800);
    // MStream.Read(MyList, 1);
    // MStream.seek(0, 0);
    // mempr.sa
    // MStream.Free;
  end;
end;
procedure TFChatDB.btnCopyClick(Sender : TObject);
// type
// PMyList = ^AList;
// AList = record
// I: Integer;
// C: string;
// end;
var
  fL : TStringList;
  I, j, counter, l : Integer;
  lengthP : Double;
  CountOrd, str : string;
    // MyList: TList;
    // ARecord: PMyList;
begin
  if idClientChat > 0 then
  begin
    // MyList := TList.Create;
    Application.CreateForm(TFNewOrderFromChat, FNewOrderFromChat);
    memo1.Lines.Clear;
    fL := TStringList.Create;
    try
      fL.Delimiter := ',';
      fL.StrictDelimiter := True;
      counter := 0;
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
              fL.DelimitedText := copy(str, 0, l - 1);
              CountOrd := trim(copy(str, l + 1, str.Length));
            end;
            // �������� ���������� ���
            Close;
            sql.Text := returnSQL('"���������"."����"', fL);
            // memo1.Lines.Add(sql.Text);
            Open;
            if RecordCount > 0 then
            begin
              addGlobalSql(Query1, '���_����');
            end;
            // �������� ���������� ���������
            Close;
            sql.Text := returnSQL('"���������"."���������"', fL);
            Open;
            // memo1.Lines.Add('����� ���');
            if RecordCount > 0 then
            begin
              addGlobalSql(Query1, '���_���������');
            end;
            // memo1.Lines.Add(globalSql);
            // �������� ���������� ����
            Close;
            sql.Text := returnSQL('"���������"."�����"', fL);
            Open;
            // memo1.Lines.Add(sql.Text);
            // memo1.Lines.Add('����� ����');
            if RecordCount > 0 then
            begin
              addGlobalSql(Query1, '���_�����');
            end;
            // memo1.Lines.Add(globalSql);
            // �������� ���������� ����� ���� ���� �����
            for I := 0 to fL.Count - 1 do
            begin
              lengthP := StrToFloatDef(trim(fL[I]), 0);
              if lengthP <> 0 then
              begin
                globalSql := globalSql + ' AND uni_name Like ''%' + AnsiUpperCase(FloatToStr(lengthP)) + '%''';
                Break;
              end;
            end;
            // memo1.Lines.Add(globalSql);
            if globalSql <> '' then
            begin
              // with memPr do
              // begin
              // Filter := globalSql;
              // if Active = False then
              // Active := True;
              // Filtered := False;
              // Filtered := True;
              Close;
              sql.Text := globalSql;
              Open;
              // FNewOrderFromChat.Table1.DataController.BeginUpdate;
              if RecordCount = 0 then
              begin
                FNewOrderFromChat.Table1.DataController.Append;
                FNewOrderFromChat.Table1.DataController.SetValue(counter, FNewOrderFromChat.columnName.Index,
                                                                  memoMessage.Lines[j]);
                FNewOrderFromChat.Table1.DataController.SetValue(counter, FNewOrderFromChat.columnCount.Index,
                                                                  CountOrd);
                FNewOrderFromChat.Table1.DataController.Post(True);
                counter := counter + 1;
              end;
              while not eof do
              begin
                FNewOrderFromChat.Table1.DataController.Append;
                FNewOrderFromChat.Table1.DataController.SetValue(counter, FNewOrderFromChat.columnName.Index,
                                                                  FieldByName('uni_name').AsString);
                FNewOrderFromChat.Table1.DataController.SetValue(counter, FNewOrderFromChat.columnID.Index,
                                                                  FieldByName('id').AsString);
                FNewOrderFromChat.Table1.DataController.SetValue(counter, FNewOrderFromChat.columnCount.Index,
                                                                  CountOrd);
                // memo1.Lines.Add(FieldByName('uni_name').AsString);
                Query2.Close;
                Query2.sql.Text := 'SELECT  st.uni_name,  pl.uni_name,  tp.uni_name,  s.uni_name ' +
              ' FROM  "���������"."���������" pl  INNER JOIN "���������"."������" st ON (pl."���_������" = st.id) '
              + '  INNER JOIN "���������"."���������" p ON (p."���_���������" = pl.id) ' +
              '  INNER JOIN "���������"."�����" s ON (p."���_�����" = s.id) ' +
              '  INNER JOIN "���������"."����" tp ON (s."���_����" = tp.id) ' +
              '  AND (p."���_����" = tp.id) where p.id=' + Fields[0].AsString;
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
                // end;
              end;
            end;
          end;
        end;
      end;
    finally
      fL.Free
    end;
    // FNewOrderFromChat.Table1.DataController. EndUpdate;
    FNewOrderFromChat.setIDMarking(idClientChat);
    FNewOrderFromChat.Show;
  end
  else
  begin
    Application.MessageBox('�� ������� ����������', '���������', MB_OK);
  end;
  // Application.CreateForm(TFNewOrderFromChat, FNewOrderFromChat);
  // memo1.Lines.Clear;
  // fL := TStringList.Create;
  // try
  // fL.Delimiter := ',';
  // fL.StrictDelimiter := True;
  // counter := 0;
  // // memo1.Lines.Clear;
  // // findT := AnsiUpperCase(memoMessage.Text);
  // // for I := 0 to fL.Count - 1 do   fl[i]=trim
  // with Query1 do
  // begin
  // for j := 0 to memoMessage.Lines.Count - 1 do
  // begin
  // CountOrd := '1';
  // str := trim(AnsiUpperCase(memoMessage.Lines[j]));
  // if (str.Length > 0) then
  // begin
  // lengthP := 0;
  // globalSql := '';
  // l := pos('-', str);
  // if (l = 0) then
  // fL.DelimitedText := str
  // else
  // begin
  // // SetLength(memoMessage.Lines[j], 5);
  // fL.DelimitedText := Copy(str, 0, l - 1);
  // CountOrd := trim(Copy(str, l + 1, str.Length));
  // end;
  // // �������� ���������� ���
  // Close;
  // sql.Text := returnSQL('"���������"."����"', fL);
  // Open;
  // // memo1.Lines.Add(sql.Text);
  // // memo1.Lines.Add('����� ���');
  // if RecordCount > 0 then
  // begin
  // addGlobalSql(Query1, '���_����');
  // end;
  // // memo1.Lines.Add(globalSql);
  // // �������� ���������� ���������
  // Close;
  // sql.Text := returnSQL('"���������"."���������"', fL);
  // Open;
  // // memo1.Lines.Add(sql.Text);
  // // memo1.Lines.Add('����� ���');
  // if RecordCount > 0 then
  // begin
  // addGlobalSql(Query1, '���_���������');
  // end;
  // // memo1.Lines.Add(globalSql);
  // // �������� ���������� ����
  // Close;
  // sql.Text := returnSQL('"���������"."�����"', fL);
  // Open;
  // // memo1.Lines.Add(sql.Text);
  // // memo1.Lines.Add('����� ����');
  // if RecordCount > 0 then
  // begin
  // addGlobalSql(Query1, '���_�����');
  // end;
  // // memo1.Lines.Add(globalSql);
  // // �������� ���������� ����� ���� ���� �����
  // for I := 1 to fL.Count - 1 do
  // begin
  // lengthP := StrToFloatDef(trim(fL[I]), 0);
  // if lengthP <> 0 then
  // begin
  // globalSql := globalSql + ' AND uni_name Like ''%' +
  // AnsiUpperCase(FloatToStr(lengthP)) + '%''';
  // Break;
  // end;
  // end;
  // memo1.Lines.Add(globalSql);
  // if globalSql <> '' then
  // begin
  // Close;
  // sql.Text := globalSql;
  // Open;
  // while not eof do
  // begin
  // FNewOrderFromChat.Table1.DataController.Append;
  // FNewOrderFromChat.Table1.DataController.SetValue(counter, FNewOrderFromChat.columnName.Index,
  // FieldByName('uni_name').AsString);
  // FNewOrderFromChat.Table1.DataController.SetValue(counter, FNewOrderFromChat.columnID.Index,
  // FieldByName('id').AsString);
  // FNewOrderFromChat.Table1.DataController.SetValue(counter, FNewOrderFromChat.columnCount.Index, CountOrd);
  // //  memo1.Lines.Add(FieldByName('uni_name').AsString);
  // Query2.Close;
  // Query2.sql.Text := 'SELECT  st.uni_name,  pl.uni_name,  tp.uni_name,  s.uni_name ' +
  // ' FROM  "���������"."���������" pl  INNER JOIN "���������"."������" st ON (pl."���_������" = st.id) '
  // + '  INNER JOIN "���������"."���������" p ON (p."���_���������" = pl.id) ' +
  // '  INNER JOIN "���������"."�����" s ON (p."���_�����" = s.id) ' +
  // '  INNER JOIN "���������"."����" tp ON (s."���_����" = tp.id) ' +
  // '  AND (p."���_����" = tp.id) where p.id=' + Fields[0].AsString;
  // Query2.Open;
  // FNewOrderFromChat.Table1.DataController.SetValue(counter, FNewOrderFromChat.columnCountry.Index,
  // Query2.Fields[0].AsString);
  // FNewOrderFromChat.Table1.DataController.SetValue(counter, FNewOrderFromChat.columnPlant.Index,
  // Query2.Fields[1].AsString);
  // FNewOrderFromChat.Table1.DataController.SetValue(counter, FNewOrderFromChat.columnType.Index,
  // Query2.Fields[2].AsString);
  // FNewOrderFromChat.Table1.DataController.SetValue(counter, FNewOrderFromChat.columnSort.Index,
  // Query2.Fields[3].AsString);
  // FNewOrderFromChat.Table1.DataController.Post(True);
  // counter := counter + 1;
  // Next;
  // end;
  // end;
  // end;
  // end;
  // end;
  // finally
  // fL.Free
  // end;
  // FNewOrderFromChat.Show;
end;
procedure TFChatDB.btnOrder2Click(Sender : TObject);
var
  fL : TStringList;
  I, j, counter, l, IDPlant, IDSort : Integer;
  lengthP : Double;
  str, plantName, sortName, realSort, lenP, uni_name, steems, price : string;
  CountOrd : Double;
  strPlant : string;
begin
  if idClientChat > 0 then
  begin
    // MyList := TList.Create;
    Application.CreateForm(TFNewOrderFromChat, FNewOrderFromChat);
    memo1.Lines.Clear;
    fL := TStringList.Create;
    try
      fL.Delimiter := ',';
      fL.StrictDelimiter := True;
      counter := 0;
        // nextPlant := 0;
      with Query1 do
      begin
        for j := 0 to memoMessage.Lines.Count - 1 do
        begin
          l := 0;
          CountOrd := 0;
          str := trim(AnsiUpperCase(memoMessage.Lines[j]));
          if (str.Length > 0) then
          begin
            fL.DelimitedText := str;
            lengthP := 0;
            // if nextPlant = 0 then
            globalSql := '';
            // ���� FB, HB , QB
            l := pos('FB', str);
            lenP := '';
            sortName := '';
            uni_name := '';
            steems := '';
            price := '';
            if l <> 0 then
              CountOrd := StrToInt(trim(str.Substring(0, l - 1)))
            else
            begin
              l := pos('HB', str);
              if l <> 0 then
                CountOrd := StrToFloat(trim(str.Substring(0, l - 1))) / 2
              else
              begin
                l := pos('QB', str);
                if l <> 0 then
                  CountOrd := StrToFloat(trim(str.Substring(0, l - 1))) / 4
              end;
            end;
            // nextPlant := 0;
            // ���� �� ����� ���-�� ������ ���������
            if CountOrd = 0 then
            begin
              strPlant := '';
              // nextPlant := 1;
              Close;
              sql.Text := returnSQL('"���������"."���������"', fL);
              Open;
              if RecordCount > 0 then
              begin
                plantName := FieldByName('uni_name').AsString;
                IDPlant := FieldByName('id').AsInteger;
                // addGlobalSql(Query1, '���_���������');
                strPlant := ' and ���_��������� in (' + FieldByName('id').AsString + ')';
              end;
            end
            else
            begin
              // ���� ��������
              if l <> 0 then
              begin
                // �� ������ �����
                str := trim(str.Substring(l + 1, str.Length));
                for I := 0 to str.Length - 1 do
                begin
                  if StrToIntDef(str.Substring(I, 1), 0) = 0 then
                    sortName := sortName + str.Substring(I, 1)
                  else
                  begin
                    l := I;
                    Break;
                  end;
                end;
                // ����
                Close;
                sql.Text := returnSQLStr('"���������"."�����"', sortName);
                Open;
                if RecordCount > 0 then
                begin
                  IDSort := FieldByName('id').AsInteger;
                  realSort := FieldByName('uni_name').AsString;
                  addGlobalSql(Query1, '���_�����');
                end
                else
                  realSort := '';
                // �����
                str := trim(str.Substring(l, str.Length));
                l := 0;
                for I := 0 to str.Length - 1 do
                begin
                  if (StrToIntDef(str.Substring(I, 1), 0) <> 0) or (str.Substring(I, 1) = '0') or
                  (str.Substring(I, 1) <> ' ') then
                  begin
                    lenP := lenP + str.Substring(I, 1);
                    l := I;
                  end
                  else
                    Break;
                end;
                if (realSort <> '') and (l <> 0) then
                  globalSql := globalSql + ' AND uni_name Like ''%' + AnsiUpperCase(lenP) + '%''';
                // ���� �������
                str := trim(str.Substring(l + 1, str.Length));
                for I := 0 to str.Length - 1 do
                begin
                  // if AnsiUpperCase(str.Substring(I, 1)) = '�' then
                  // begin
                  // Continue;
                  // end;
                  if (StrToIntDef(str.Substring(I, 1), 0) <> 0) or (str.Substring(I, 1) = '0') then
                  begin
                    steems := steems + str.Substring(I, 1);
                    l := I;
                  end
                  else
                    Break;
                end;
                // ����
                str := trim(str.Substring(l + 1, str.Length));
                for I := 0 to str.Length - 1 do
                begin
                  // if AnsiUpperCase(str.Substring(I, 1)) = '�' then
                  // begin
                  // Continue;
                  // end;
                  if (StrToIntDef(str.Substring(I, 1), 0) <> 0) or (str.Substring(I, 1) = '0') or
                  (str.Substring(I, 1) = ',') or (str.Substring(I, 1) = '.') or (str.Substring(I, 1) = '/') then
                  begin
                    price := price + str.Substring(I, 1);
                    l := I;
                  end
                  else
                    Break;
                end;
              end;
              // if globalSql <> '' then
              // begin
              // with Query2 do
              // begin
              // Close;
              // sql.Text := globalSql + strPlant;
              // Open;
              // if RecordCount > 0 then
              // uni_name := FieldByName('uni_name').AsString
              //
              // end;
              // end;
              FNewOrderFromChat.Table1.DataController.Append;
              FNewOrderFromChat.Table1.DataController.SetValue(counter, FNewOrderFromChat.columnCount.Index, CountOrd);
              FNewOrderFromChat.Table1.DataController.SetValue(counter, FNewOrderFromChat.columnPlant.Index, plantName);
              FNewOrderFromChat.Table1.DataController.SetValue(counter, FNewOrderFromChat.columnSort.Index, sortName);
              // FNewOrderFromChat.Table1.DataController.SetValue(counter, FNewOrderFromChat.columnName.Index, uni_name);
              FNewOrderFromChat.Table1.DataController.SetValue(counter, FNewOrderFromChat.columnLength.Index, lenP);
              FNewOrderFromChat.Table1.DataController.SetValue(counter, FNewOrderFromChat.columnIDPlant.Index, IDPlant);
              FNewOrderFromChat.Table1.DataController.SetValue(counter, FNewOrderFromChat.columnIdSort.Index, IDSort);
              FNewOrderFromChat.Table1.DataController.SetValue(counter, FNewOrderFromChat.columnSteems.Index, steems);
              FNewOrderFromChat.Table1.DataController.SetValue(counter, FNewOrderFromChat.columnPrice.Index, price);
              counter := counter + 1;
              FNewOrderFromChat.Table1.DataController.Post(True);
            end;
          end;
        end;
      end;
    finally
    end;
    FNewOrderFromChat.setIDMarking(idClientChat);
    FNewOrderFromChat.Show;
  end;
end;
procedure TFChatDB.btnSendClick(Sender : TObject);
begin
  if (FLogin.idClient = 0) then
    sendMessageAdmin
  else
    sendMessages;
end;
procedure TFChatDB.cxGridDBColumn1CustomDrawCell(Sender : TcxCustomGridTableView; ACanvas : TcxCanvas;
                                                    AViewInfo : TcxGridTableDataCellViewInfo; var ADone : Boolean);
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
procedure TFChatDB.FormClose(Sender : TObject; var Action : TCloseAction);
begin
  Action := caFree;
  FChatDB := nil;
end;
procedure TFChatDB.FormCreate(Sender : TObject);
begin
  showUsers;
end;
procedure TFChatDB.FormShow(Sender : TObject);
var
  I : Integer;
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
  // memPr.Active := True;
end;
procedure TFChatDB.lstClientsClick(Sender : TObject);
var
  I : Integer;
  idBefore : Integer;
begin
  if (lstClients.ItemFocused <> nil) then
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
end;
procedure TFChatDB.lstClientsCustomDrawItem(Sender : TCustomListView; Item : TListItem; State : TCustomDrawState;
                                               var DefaultDraw : Boolean);
begin
  Sender.Canvas.Brush.Color := TColor(Item.Data);
end;
procedure TFChatDB.memoMessageKeyDown(Sender : TObject; var Key : Word; Shift : TShiftState);
begin
  if ([ssCtrl] = Shift) and (Key = VK_RETURN) then
    sendMessages
end;
procedure TFChatDB.memoMessageKeyUp(Sender : TObject; var Key : Word; Shift : TShiftState);
begin
  if ([ssCtrl] <> Shift) and (Key <> VK_RETURN) then
    str := memoMessage.Lines.Text;
end;
procedure TFChatDB.memPrFilterRecord(DataSet : TDataSet; var Accept : Boolean);
begin
  DataSet.Filter := memPr.Filter;
end;
end.
