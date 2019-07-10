unit UFramePritenz;
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
  cxStyles,
  dxSkinsCore,
  
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxEdit,
  cxNavigator,
  Data.DB,
  cxDBData,
  cxCurrencyEdit,
  cxLabel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGridLevel,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  UFrameTopPanel,
  MemDS,
  DBAccess,
  Uni,
  cxGridExportLink,
  shellapi,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue, dxSkinOffice2007Blue, dxSkinsDefaultPainters;
type
  TFramePritenz = class(TFrame)
    QueryPritenz : TUniQuery;
    dsPritenz : TDataSource;
    FrameTopPanel1 : TFrameTopPanel;
    GridPritenz : TcxGrid;
    ViewAWB : TcxGridDBTableView;
    LevelOrg : TcxGridLevel;
    ViewAWB_3 : TcxGridDBColumn;
    ViewAWBname : TcxGridDBColumn;
    ViewAWB_6 : TcxGridDBColumn;
    ViewAWB_7 : TcxGridDBColumn;
    ViewAWB__ : TcxGridDBColumn;
    ViewAWB_8 : TcxGridDBColumn;
    ColumnPlant : TcxGridDBColumn;
    Query1 : TUniQuery;
    Column����� : TcxGridDBColumn;
    procedure btnExportClick(Sender : TObject);
    procedure btnEditClick(Sender : TObject);
    procedure ViewAWBDblClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure btnRefreshClick(Sender : TObject);
    procedure FrameTopPanel1btnArchPropertiesEditValueChanged(Sender : TObject);
  private
    { Private declarations }
  public
    procedure ShowPritenz(id_locate : Integer = 0);
    procedure UpdatePritenz(id_del : Boolean = False);
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  UPasswd,
  UFEditPitenz;
procedure TFramePritenz.btnDelClick(Sender : TObject);
begin
  if (QueryPritenz.FieldByName('������_���������').AsString <> 'ok') then
  begin
    if Application.MessageBox('�� ������������� ������ ������� ���������?',
                               '������.', MB_YESNO + MB_ICONQUESTION) = mrYes then
    begin
      UpdatePritenz(true);
    end;
  end
  else
  begin
    Application.MessageBox
      ('� ������ �������� �������� � �������������� ���������. �������� � �������������.',
        '������', MB_OK + MB_ICONERROR);
  end;
end;
procedure TFramePritenz.btnEditClick(Sender : TObject);
begin
  if QueryPritenz.RecordCount > 0 then
  begin
    Application.CreateForm(TFEditPritenz, FEditPritenz);
    with FEditPritenz do
    begin
      with FramePretenzEdit1 do
      begin
        s_id_manager := QueryPritenz.FieldByName('���_���������_���������')
      .AsInteger;
        s_marking := QueryPritenz.FieldByName('name').AsString;
        s_user := QueryPritenz.FieldByName('u_name').AsString;
        s_date_fly := QueryPritenz.FieldByName('����_������').AsString;
        s_num_awb := QueryPritenz.FieldByName('�����_awb').AsString;
        s_plant := QueryPritenz.FieldByName('name_plant').AsString;
        s_numFact := QueryPritenz.FieldByName('�����_�������').AsString;
        s_manager := QueryPritenz.FieldByName('u_name').AsString;
        if QueryPritenz.FieldByName('photo1').AsString <> '' then
          edtphoto1.Text := QueryPritenz.FieldByName('photo1').AsString;
        if QueryPritenz.FieldByName('photo2').AsString <> '' then
          edtphoto2.Text := QueryPritenz.FieldByName('photo2').AsString;
        if QueryPritenz.FieldByName('photo3').AsString <> '' then
          edtphoto3.Text := QueryPritenz.FieldByName('photo3').AsString;
        s_date := QueryPritenz.FieldByName('����_���������').AsString;
        edtNum.Text := QueryPritenz.FieldByName('�����_���������').AsString;
        edtDatePrit.Date := QueryPritenz.FieldByName('����_���������')
      .AsDateTime;
        edt��������������.Text := QueryPritenz.FieldByName
        ('�����_���������').AsString;
        edtSumGoodPrit.Text := QueryPritenz.FieldByName
        ('����������_�����_���������').AsString;
        mmo������������.Text := QueryPritenz.FieldByName
        ('�����_���������_���').AsString;
        mmo������������.Text := QueryPritenz.FieldByName
        ('�����_���������_���').AsString;
        mmo���������������.Text := QueryPritenz.FieldByName
        ('�����_����������_�����').AsString;
        if QueryPritenz.FieldByName('������_���������').AsString = 'ok' then
        begin
          chkExePrit.Checked := true;
          if FPasswd.ID_ROLE <> 1 then
          begin
            edtDatePrit.Enabled := False;
            edt��������������.Enabled := False;
            edtSumGoodPrit.Enabled := False;
            chkExePrit.Enabled := False;
            mmo������������.Enabled := False;
            mmo������������.Enabled := False;
            mmo���������������.Enabled := False;
          end;
        end;
        s_id_sub_awb := QueryPritenz.FieldByName('id').AsInteger;
        s_id_plant := QueryPritenz.FieldByName('���_���������').AsInteger;
        ShowProductsW;
        ShowManager;
        ShowSostav();
        ShowModal;
        if FrameSave1.id_save = true then
        begin
          UpdatePritenz();
        end;
      end;
    end;
  end;
end;
procedure TFramePritenz.btnExportClick(Sender : TObject);
var
  s : string;
begin
  s := FPasswd.GetVar('TEMP') + '\���������';
  ExportGridToExcel(s, GridPritenz, true, true, true, 'xls');
  ShellExecute(Handle, nil, PChar(s + '.xls'), nil, nil, SW_RESTORE);
end;
procedure TFramePritenz.btnRefreshClick(Sender : TObject);
begin
  ShowPritenz(QueryPritenz.FieldByName('id').AsInteger);
end;
procedure TFramePritenz.FrameTopPanel1btnArchPropertiesEditValueChanged
  (Sender : TObject);
begin
  ShowPritenz();
end;
procedure TFramePritenz.ShowPritenz(id_locate : Integer = 0);
begin
{$REGION 'MyRegion'}
  with QueryPritenz do
  begin
    // SQL.Clear;
    // SQL.Add(' SELECT sum(sp."����" * sp."�������" + sp."���������_����������")');
    // SQL.Add(' "�����_���������",');
    // SQL.Add(' a.id id_awb,');
    // SQL.Add(' a.�����_awb,');
    // SQL.Add(' sad.id,');
    // SQL.Add(' sa.id sa_id,');
    // SQL.Add(' sa."���_����������",');
    // SQL.Add(' sad."����_�������",');
    // SQL.Add(' sad."�����_�������",');
    // SQL.Add(' sad."�����_�������",');
    // SQL.Add(' a.����_������,');
    // SQL.Add(' m.name,');
    // SQL.Add(' sad."����_���������",');
    // SQL.Add(' sad."����������_�����_���������",');
    // SQL.Add(' sad."������_���������",');
    // SQL.Add(' pl.name name_plant,');
    // SQL.Add(' sad."���_���������",');
    // SQL.Add(' sad."�����_���������_���",');
    // SQL.Add(' sad."�����_���������_���",');
    // SQL.Add(' sad."�����_����������_�����",');
    // SQL.Add(' sad."�����_���������",');
    // SQL.Add(' u.name as u_name,');
    // SQL.Add(' sad.���_���������_���������,');
    // SQL.Add(' sad.photo1,');
    // SQL.Add(' sad.photo2,');
    // SQL.Add(' sad.photo3');
    // SQL.Add(' FROM "���".sub_awb_detail sad');
    // SQL.Add(' INNER JOIN "���".sub_awb sa ON (sad."���_sub_awb" = sa.id)');
    // SQL.Add(' INNER JOIN "���".awb a ON (sa."���_AWB" = a.id)');
    // SQL.Add(' INNER JOIN "����������"."����������" m ON (sa."���_����������" = m.id)');
    // SQL.Add(' inner join "���������"."���������" pl on (pl.id = sad."���_���������")');
    // SQL.Add(' left join "������������"."������������" u on (u.id =');
    // SQL.Add(' sad."���_���������_���������")');
    // SQL.Add(' left join "���"."������_���������" sp on sp."���_sub_awb_detail" = sad.id');
    // SQL.Add(' where sad."����_���������" is not null');
    // SQL.Add(' group by a.id,');
    // SQL.Add(' a.�����_awb,');
    // SQL.Add(' sad.id,');
    // SQL.Add(' sa.id,');
    // SQL.Add(' sa."���_����������",');
    // SQL.Add(' sad."����_�������",');
    // SQL.Add(' sad."�����_�������",');
    // SQL.Add(' sad."�����_�������",');
    // SQL.Add(' a.����_������,');
    // SQL.Add(' m.name,');
    // SQL.Add(' sad."����_���������",');
    // SQL.Add(' sad."�����_���������",');
    // SQL.Add(' sad."����������_�����_���������",');
    // SQL.Add(' sad."������_���������",');
    // SQL.Add(' pl.name,');
    // SQL.Add(' sad."���_���������",');
    // SQL.Add(' sad."�����_���������_���",');
    // SQL.Add(' sad."�����_���������_���",');
    // SQL.Add(' sad."�����_����������_�����",');
    // SQL.Add(' sad."�����_���������",');
    // SQL.Add(' u.name,');
    // SQL.Add(' sad.���_���������_���������,');
    // SQL.Add(' sad.photo1,');
    // SQL.Add(' sad.photo2,');
    // SQL.Add(' sad.photo3');
    SQL.Clear;
    SQL.Add(' SELECT a.id id_awb, a.�����_awb,');
    SQL.Add(' sad.id,');
    SQL.Add(' sa.id sa_id,');
    SQL.Add(' sa."���_����������",');
    SQL.Add(' sad."����_�������",');
    SQL.Add(' sad."�����_�������",');
    SQL.Add(' sad."�����_�������", a.����_������,');
    SQL.Add(' m.name,');
    SQL.Add(' sad."����_���������",');
    SQL.Add(' sad."�����_���������",');
    SQL.Add(' sad."����������_�����_���������",');
    SQL.Add(' sad."������_���������",');
    SQL.Add(' pl.name name_plant, sad."���_���������",');
    SQL.Add('  sad."�����_���������_���",');
    SQL.Add(' sad."�����_���������_���",');
    SQL.Add(' sad."�����_����������_�����",');
    SQL.Add(' sad."�����_���������", u.name as u_name, sad.���_���������_���������,');
    SQL.Add(' sad.photo1, sad.photo2, sad.photo3');
    SQL.Add(' FROM "���".sub_awb_detail sad');
    SQL.Add(' INNER JOIN "���".sub_awb sa ON (sad."���_sub_awb" = sa.id)');
    SQL.Add(' INNER JOIN "���".awb a ON (sa."���_AWB" = a.id)');
    SQL.Add(' INNER JOIN "����������"."����������" m ON (sa."���_����������" = m.id)');
    SQL.Add(' inner join "���������"."���������" pl on (pl.id = sad."���_���������")');
    SQL.Add(' left join "������������"."������������" u on (u.id = sad."���_���������_���������")');
    SQL.Add(' where sad."����_���������" is not null ');
    if FrameTopPanel1.btnArch.EditValue = true then
      SQL.Add(' and a."�����_awb"=1')
    else
      SQL.Add(' and a."�����_awb"=0');
    SQL.Add(' order by ����_��������� DESC');
    Open;
    Locate('id', id_locate, []);
  end;
{$ENDREGION};
end;
procedure TFramePritenz.UpdatePritenz(id_del : Boolean = False);
begin
  with FEditPritenz do
  begin
    with FramePretenzEdit1 do
    begin
      with Query1 do
      begin
        SQL.Clear;
        SQL.Add(' UPDATE "���"."sub_awb_detail"');
        SQL.Add(' SET "����_���������" = :����_���������,');
        SQL.Add(' "�����_���������" = :�����_���������,');
        SQL.Add(' "�����_���������" = :�����_���������,');
        SQL.Add(' "����������_�����_���������" = :����������_�����_���������,');
        SQL.Add(' "������_���������" = :������_���������,');
        SQL.Add(' "�����_���������_���" = :�����_���������_���,');
        SQL.Add(' "�����_���������_���" = :�����_���������_���,');
        SQL.Add(' "�����_����������_�����" = :�����_����������_�����,');
        if edtManager.Text <> '' then
          SQL.Add(' "���_���������_���������" = :���_���������_���������');
        if edtphoto1.Text <> '' then
          SQL.Add(' ,"photo1" = :photo1');
        if edtphoto2.Text <> '' then
          SQL.Add(', "photo2" = :photo2');
        if edtphoto3.Text <> '' then
          SQL.Add(', "photo3" = :photo3');
        SQL.Add(' WHERE id = :id');
        if id_del = False then
        begin
          if chkExePrit.Checked = true then
            ParamByName('������_���������').AsString := 'ok';
          ParamByName('����_���������').AsDate := edtDatePrit.DateTime;
          ParamByName('�����_���������').AsString := edt��������������.Text;
          ParamByName('����������_�����_���������').AsString :=
                                                               edtSumGoodPrit.Text;
          ParamByName('�����_���������_���').AsString := mmo������������.Text;
          ParamByName('�����_���������_���').AsString := mmo������������.Text;
          ParamByName('�����_����������_�����').AsString :=
                                                           mmo���������������.Text;
          ParamByName('�����_���������').AsString := edtNum.Text;
          if edtManager.Text <> '' then
            ParamByName('���_���������_���������').AsInteger :=
                                                               edtManager.EditValue;
          if edtphoto1.Text <> '' then
            ParamByName('photo1').AsString := edtphoto1.Text;
          if edtphoto2.Text <> '' then
            ParamByName('photo2').AsString := edtphoto2.Text;
          if edtphoto3.Text <> '' then
            ParamByName('photo3').AsString := edtphoto3.Text;
        end;
        ParamByName('id').AsInteger := QueryPritenz.FieldByName('id').AsInteger;
        ExecSQL;
      end;
      ShowPritenz(QueryPritenz.FieldByName('id').AsInteger);
    end;
  end;
end;
procedure TFramePritenz.ViewAWBDblClick(Sender : TObject);
begin
  btnEditClick(Sender);
end;
end.
