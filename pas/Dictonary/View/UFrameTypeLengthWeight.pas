unit UFrameTypeLengthWeight;
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
  cxNavigator,
  Data.DB,
  cxDBData,
  UFrameSearch,
  cxSplitter,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  cxGroupBox,
  UFrameTopPanel,
  MemDS,
  DBAccess,
  Uni,
  cxCalc,
  cxLabel,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue, dxSkinOffice2007Blue, dxSkinsDefaultPainters, dxDateRanges;
type
  TFrameTypeLengthWeight = class(TFrame)
    QueryType : TUniQuery;
    dsType : TDataSource;
    QueryTTH : TUniQuery;
    dsTTH : TDataSource;
    FrameTopPanel1 : TFrameTopPanel;
    GroupCountry : TcxGroupBox;
    cxGrid1 : TcxGrid;
    cxGridDBTableView1 : TcxGridDBTableView;
    ColumnCountry : TcxGridDBColumn;
    cxGridLevel1 : TcxGridLevel;
    cxspltr1 : TcxSplitter;
    Query1 : TUniQuery;
    Group1 : TcxGroupBox;
    GridUsers : TcxGrid;
    ViewUsers : TcxGridDBTableView;
    Column������ : TcxGridDBColumn;
    Column����������� : TcxGridDBColumn;
    ViewUserslength : TcxGridDBColumn;
    Column��� : TcxGridDBColumn;
    LevelOrg : TcxGridLevel;
    procedure btnAddClick(Sender : TObject);
    procedure btnEditClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure btnRefreshClick(Sender : TObject);
    procedure ViewUsersDblClick(Sender : TObject);
    procedure ViewUsersKeyDown(Sender : TObject; var Key : Word;
                                  Shift : TShiftState);
  private
    { Private declarations }
  public
    procedure ShowTTH(id_locate : Integer = 0);
    procedure ShowType;
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  UNewTypeLengthWeight,
  PGSQL,
  UOsn;
procedure TFrameTypeLengthWeight.btnAddClick(Sender : TObject);
var
  id : Integer;
begin
  Application.CreateForm(TFNewTypeLengthWeight, FNewTypeLengthWeight);
  with FNewTypeLengthWeight do
  begin
    ShowCountry(QueryTTH.FieldByName('���_������').AsInteger);
    ShowUp(QueryTTH.FieldByName('���_��������').AsInteger);
    Show�����(QueryTTH.FieldByName('���_������').AsInteger,
               QueryTTH.FieldByName('���_������').AsInteger,
               QueryTTH.FieldByName('���_��������').AsInteger);
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      with Query1 do
      begin
        // ��������� ���-�� ����� ����� �� ����
        // Close;
        // sql.Text :=
        // 'select ����� from "���������"."���_�����_���" where ���_����=' +
        // QueryType.FieldByName('id').AsString + ' and �����=:l';
        // ParamByName('l').AsString := edtLength.Text;
        // Open;
        // if Fields[0].AsString = '' then
        // begin
        id := PGSQL.NewID('"���������"."���_�����_���_id_seq"');
        Close;
{$REGION '�������'}
        with Query1 do
        begin
          SQL.Clear;
          SQL.Add(' INSERT INTO');
          SQL.Add(' "���������"."���_�����_���"');
          SQL.Add(' (');
          SQL.Add(' id,');
          SQL.Add(' "���_����",');
          SQL.Add(' "�����",');
          SQL.Add(' "���",');
          SQL.Add(' "���_������",');
          SQL.Add(' "���_��������"');
          SQL.Add(' )');
          SQL.Add(' VALUES (');
          SQL.Add(' :id,');
          SQL.Add(' :���_����,');
          SQL.Add(' :�����,');
          SQL.Add(' :���,');
          SQL.Add(' :���_������,');
          SQL.Add(' :���_��������');
          SQL.Add(' );');
          ParamByName('id').Value := id;
          ParamByName('���_����').Value := QueryType.FieldByName('id')
        .AsInteger;
          ParamByName('�����').Value := edtLength.Text;
          ParamByName('���').Value := edtWeight.Text;
          ParamByName('���_������').Value := edtCountry.EditValue;
          ParamByName('���_��������').Value := edt��������.EditValue;
          ExecSQL;
          ShowTTH(id);
        end;
{$ENDREGION};
        // end
        // else
        // Application.MessageBox
        // ('��������� ����� �� ������� ���� ��� ����������.', '������',
        // MB_OK + MB_ICONERROR);
      end;
    end;
  end;
end;
procedure TFrameTypeLengthWeight.btnDelClick(Sender : TObject);
begin
  if Application.MessageBox('�� ������������� ������ ������� ������?', '������',
                             MB_YESNO + MB_ICONWARNING) = mrYes then
  begin
    with Query1 do
    begin
      Close;
      SQL.Text := 'delete from "���������"."���_�����_���" where id=' +
    QueryTTH.FieldByName('id').AsString;
      ExecSQL;
      ShowTTH();
    end;
  end;
end;
procedure TFrameTypeLengthWeight.btnEditClick(Sender : TObject);
begin
  Application.CreateForm(TFNewTypeLengthWeight, FNewTypeLengthWeight);
  with FNewTypeLengthWeight do
  begin
    edtLength.Text := QueryTTH.FieldByName('�����').AsString;
    edtWeight.Text := QueryTTH.FieldByName('���').AsString;
    ShowCountry(QueryTTH.FieldByName('���_������').AsInteger);
    ShowUp(QueryTTH.FieldByName('���_��������').AsInteger);
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      with Query1 do
      begin
        // ��������� ���-�� ����� ����� �� ����
        // Close;
        // SQL.Text :=
        // 'select ����� from "���������"."���_�����_���" where ���_����=' +
        // QueryType.FieldByName('id').AsString + ' and �����=:l' + ' and id<>' +
        // QueryTTH.FieldByName('id').AsString;
        // ParamByName('l').AsString := edtLength.Text;
        // Open;
        // if Fields[0].AsString = '' then
        // begin
        Close;
        SQL.Text := 'UPDATE  "���������"."���_�����_���" SET "�����" = :�����,'
      + ' "���" = :���, ���_������=:���_������, ���_��������=:���_�������� '
      + '  WHERE  id = :id;';
        ParamByName('id').AsInteger := QueryTTH.FieldByName('id').AsInteger;
        ParamByName('�����').AsString := edtLength.Text;
        ParamByName('���').AsString := edtWeight.Text;
        ParamByName('���_������').Value := edtCountry.EditValue;
        ParamByName('���_��������').Value := edt��������.EditValue;
        ExecSQL;
        ShowTTH(QueryTTH.FieldByName('id').AsInteger);
        // end
        // else
        // Application.MessageBox
        // ('��������� ����� �� ������� ���� ��� ����������.', '������',
        // MB_OK + MB_ICONERROR);
      end;
    end;
  end;
end;
procedure TFrameTypeLengthWeight.btnRefreshClick(Sender : TObject);
begin
  ShowTTH(QueryTTH.FieldByName('id').AsInteger);
end;
procedure TFrameTypeLengthWeight.ShowTTH(id_locate : Integer = 0);
begin
  with QueryTTH do
  begin
    SQL.Clear;
    SQL.Add(' SELECT');
    SQL.Add(' s.name ������,');
    SQL.Add(' tdv.id,');
    SQL.Add(' tdv."���_����",');
    SQL.Add(' tdv."�����",');
    SQL.Add(' tdv."���",');
    SQL.Add(' tdv."���_������",');
    SQL.Add(' tdv."���_��������",');
    SQL.Add(' v.name ���_��������');
    SQL.Add(' FROM');
    SQL.Add(' "���������"."����_��������" v');
    SQL.Add(' INNER JOIN "���������"."���_�����_���" tdv ON (v.id = tdv."���_��������")');
    SQL.Add(' INNER JOIN "���������"."������" s ON (tdv."���_������" = s.id)');
    SQL.Add(' order by ������, ���_��������, ����� ');
    Open;
    Locate('id', id_locate, []);
  end;
end;
procedure TFrameTypeLengthWeight.ShowType;
begin
  with QueryType do
  begin
    Close;
    SQL.Text := 'SELECT t.* FROM "���������"."����" t order by ���������';
    Open;
  end;
  Column���.RepositoryItem := FOsn.������;
end;
procedure TFrameTypeLengthWeight.ViewUsersDblClick(Sender : TObject);
begin
  if FrameTopPanel1.btnEdit.Enabled = true then
    btnEditClick(Sender);
end;
procedure TFrameTypeLengthWeight.ViewUsersKeyDown(Sender : TObject;
                                                     var Key : Word; Shift : TShiftState);
begin
  if Key = VK_INSERT then
    btnAddClick(Sender);
end;
end.
