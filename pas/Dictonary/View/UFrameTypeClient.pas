unit UFrameTypeClient;
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
  UFrameTopPanel,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  dxSkinsCore,
  
  cxGroupBox,
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
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue;
type
  TFrameTypeClient = class(TFrame)
    FrameTopPanel1 : TFrameTopPanel;
    Group1 : TcxGroupBox;
    GridType : TcxGrid;
    ViewType : TcxGridDBTableView;
    LevelOrg : TcxGridLevel;
    QueryType : TUniQuery;
    dsType : TDataSource;
    cxGroupBox1 : TcxGroupBox;
    FrameTopPanel2 : TFrameTopPanel;
    GridVid : TcxGrid;
    ViewVid : TcxGridDBTableView;
    cxGridDBColumn1 : TcxGridDBColumn;
    cxGridLevel1 : TcxGridLevel;
    dsMarking : TDataSource;
    QueryMarking : TUniQuery;
    Query1 : TUniQuery;
    Query2 : TUniQuery;
    ViewTypeDBColumn : TcxGridDBColumn;
    ViewTypeDBColumn1 : TcxGridDBColumn;
    ViewTypeDBColumn2 : TcxGridDBColumn;
    ViewTypeDBColumn3 : TcxGridDBColumn;
    ViewTypeColumn1 : TcxGridDBColumn;
    procedure FrameTopPanel1btnAddClick(Sender : TObject);
    procedure FrameTopPanel1btnDelClick(Sender : TObject);
    procedure FrameTopPanel1btnEditClick(Sender : TObject);
    procedure FrameTopPanel1btnRefreshClick(Sender : TObject);
    procedure FrameTopPanel1btnSelClick(Sender : TObject);
    procedure FrameTopPanel2btnAddClick(Sender : TObject);
    procedure FrameTopPanel2btnDelClick(Sender : TObject);
    procedure FrameTopPanel2btnEditClick(Sender : TObject);
    procedure FrameTopPanel2btnRefreshClick(Sender : TObject);
    procedure FrameTopPanel2btnSelClick(Sender : TObject);
  private
    { Private declarations }
  public
    s_id_client_for_type : Integer;
    procedure ShowTypeClient(id_locate : Integer = 0);
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  UNewTypeClient,
  UMultiSelect;
procedure TFrameTypeClient.FrameTopPanel1btnAddClick(Sender : TObject);
begin
  Application.CreateForm(TFNewTypeClient, FNewTypeClient);
  with FNewTypeClient do
  begin
    ShowModal;
    if FrameSave1.id_save = True then
    begin
      with Query1 do
      begin
        SQL.Clear;
        SQL.Add(' INSERT INTO');
        SQL.Add(' "�����������"."������_���"');
        SQL.Add(' (');
        SQL.Add(' "���_�������",');
        SQL.Add(' "���_����������",');
        // SQL.Add(' "���_����_������",');
        // SQL.Add(' "���_������",');
        SQL.Add(' "���_�����"');
        SQL.Add(' )');
        SQL.Add(' VALUES (');
        SQL.Add(' :���_�������,');
        SQL.Add(' :���_����������,');
        // SQL.Add(' :���_����_������,');
        // SQL.Add(' :���_������,');
        SQL.Add(' :���_�����');
        SQL.Add(' );');
        ParamByName('���_�������').Value := s_id_client_for_type;
        // ParamByName('���_����').Value := QueryType.Fields[0].AsInteger;
        // ParamByName('���_����_������').Value := QueryVid.Fields[0].AsInteger;
        ParamByName('���_����������').Value := s_id_Marking;
        ParamByName('���_�����').Value := QueryAll.FieldByName('id').AsInteger;
        ExecSQL;
        ShowTypeClient();
      end;
    end;
  end;
end;
procedure TFrameTypeClient.FrameTopPanel1btnDelClick(Sender : TObject);
begin
  if Application.MessageBox('�� ������������� ������ ������� ������?', '������',
                             MB_YESNO + MB_ICONQUESTION) = mrYes then
  begin
    with Query1 do
    begin
      Close;
      SQL.Text := 'delete from "�����������"."������_���" where id=' +
    QueryType.FieldByName('id').AsString;
      ExecSQL;
      ShowTypeClient();
    end;
  end;
end;
procedure TFrameTypeClient.FrameTopPanel1btnEditClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameTypeClient.FrameTopPanel1btnRefreshClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameTypeClient.FrameTopPanel1btnSelClick(Sender : TObject);
begin
  with Query1 do
  begin
    Query2.SQL.Text := '';
    Close;
    SQL.Text := 'select * from "�����������"."����" order by id';
    Open;
    Query2.Close;
    Query2.SQL.Text :=
                      'insert into "�����������"."������_���" (���_�������, ���_����) ' +
                      ' values (:���_�������, :���_����)';
    while not eof do
    begin
      Query2.ParamByName('���_�������').AsInteger := s_id_client_for_type;
      Query2.ParamByName('���_����').AsInteger := FieldByName('id').AsInteger;
      Query2.ExecSQL;
      Next;
    end;
    ShowTypeClient();
  end;
end;
procedure TFrameTypeClient.FrameTopPanel2btnAddClick(Sender : TObject);
begin
  // Application.CreateForm(TFMultiSelect, FMultiSelect);
  // with FMultiSelect do
  // begin
  // table_name := '"����������"."����������"';
  // Query1.Close;
  // Query1.SQL.Text := 'select id from "����������"."����������" where ���_������� is not null or id_group=1';
  // Query1.Open;
  // while not Query1.Eof do
  // begin
  // id_never_not:=Query1.Fields[0].AsString+','+id_never_not;
  // Query1.Next;
  // end;
  // id_never_not := Copy(id_never_not,1,Length(id_never_not)-1);
  // //ShowMessage(id_never_not);
  // id_clear := True;
  // ShowModal;
  // if FrameSave1.id_save = True then
  // begin
  // Query1.Close;
  // Query1.SQL.Text := '';
  // with QueryDist do
  // begin
  // while not eof do
  // begin
  // Next;
  // end;
  // end;
  // end;
  // end;
end;
procedure TFrameTypeClient.FrameTopPanel2btnDelClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameTypeClient.FrameTopPanel2btnEditClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameTypeClient.FrameTopPanel2btnRefreshClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameTypeClient.FrameTopPanel2btnSelClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameTypeClient.ShowTypeClient(id_locate : Integer = 0);
begin
  with QueryType do
  begin
    SQL.Clear;
    // SQL.Add(' SELECT DISTINCT');
    // SQL.Add(' kv.id,');
    // SQL.Add(' kv."���_�������",');
    // SQL.Add(' kv."���_����",');
    // SQL.Add(' v.name AS v_name,');
    // SQL.Add(' vp.name AS vp_name,');
    // SQL.Add(' kv."���_����_������",');
    // SQL.Add(' kv."���_������",');
    // SQL.Add(' cur.name cur_name');
    // SQL.Add(' FROM');
    // SQL.Add(' "�����������"."������_���" kv');
    // SQL.Add(' INNER JOIN "�����������"."����" v ON (kv."���_����" = v.id)');
    // SQL.Add(' INNER JOIN "�����������"."����_������" vp ON (kv."���_����_������" = vp.id)');
    // SQL.Add(' INNER JOIN public."������" cur ON (kv."���_������" = cur.id)');
    // SQL.Add(' where kv."���_�������"=' + IntToStr(s_id_client_for_type));
    // SQL.Add(' ORDER BY');
    // SQL.Add(' "���_����"');
    SQL.Add(' SELECT');
    SQL.Add(' s.name "������",');
    SQL.Add(' v.name "���",');
    SQL.Add(' st."���_����_��������",');
    SQL.Add(' st."���_������",');
    SQL.Add(' st."���_������",');
    SQL.Add(' st."���_����",');
    SQL.Add(' kv.id,');
    SQL.Add(' tt.name "��� ������",');
    SQL.Add(' vl.name "������",');
    SQL.Add(' kv."���_�������",');
    SQL.Add(' m.name "����������"');
    SQL.Add(' FROM');
    SQL.Add(' "�����������"."������_���" st');
    SQL.Add(' INNER JOIN "���������"."������" s ON (st."���_������" = s.id)');
    SQL.Add(' INNER JOIN "�����������"."����" v ON (st."���_����" = v.id)');
    SQL.Add(' INNER JOIN "�����������"."����_�������" tt ON (st."���_����_��������" = tt.id)');
    SQL.Add(' INNER JOIN public."������" vl ON (st."���_������" = vl.id)');
    SQL.Add(' inner join "�����������"."������_���" kv on (kv.���_�����=st.id)');
    SQL.Add(' inner join "����������"."����������" m on (kv.���_����������=m.id)');
    SQL.Add(' where kv."���_�������"=' + IntToStr(s_id_client_for_type));
    Open;
    Locate('id', id_locate, []);
  end;
end;
end.
