unit UNewAvtoForPacking;

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
  
  Vcl.StdCtrls,
  cxLabel,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sTooledit,
  cxGroupBox,
  UFrameTopPanel,
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
  cxClasses,
  cxGridCustomView,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGrid,     
    
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue;

type
  TFNewAvtoForPacking = class(TForm)
    FrameTopPanel1: TFrameTopPanel;
    GroupOsn: TcxGroupBox;
    edtOt: TsDateEdit;
    cxLabel1: TcxLabel;
    lbl1: TcxLabel;
    edtFIO: TEdit;
    edtPhone: TEdit;
    cxLabel3: TcxLabel;
    edtNumAvto: TEdit;
    cxLabel2: TcxLabel;
    GridAvtoPackingDBTableView1: TcxGridDBTableView;
    GridAvtoPackingLevel1: TcxGridLevel;
    GridAvtoPacking: TcxGrid;
    QueryAvtoPacking: TUniQuery;
    dsAvtoPacking: TDataSource;
    Query1: TUniQuery;
    GridAvtoPackingDBTableView1DBColumn: TcxGridDBColumn;
    GridAvtoPackingDBTableView1DBColumn1: TcxGridDBColumn;
    GridAvtoPackingDBTableView1_2: TcxGridDBColumn;
    GridAvtoPackingDBTableView1_3: TcxGridDBColumn;
    procedure btnAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure GridAvtoPackingDBTableView1DblClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure FrameTopPanel1btnSelClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    s_id_AvtoPacking: Integer;
    procedure ShowAvtoPacking(s_id_locate: Integer = 0);
    { Public declarations }
  end;

var
  FNewAvtoForPacking: TFNewAvtoForPacking;

implementation

{$R *.dfm}

uses
  PGSQL,
  UNewPacking;

procedure TFNewAvtoForPacking.btnAddClick(Sender: TObject);
begin
  if (edtOt.Text <> '  .  .    ') And (edtFIO.Text <> '') and
    (edtNumAvto.Text <> '') then
  begin
    if s_id_AvtoPacking = 0 then
    begin
      if Application.MessageBox
        ('���������� ��� ������� ��� �� ��������. ���������?', '������',
        MB_YESNO + MB_ICONQUESTION) = mrYes then
      begin
        with Query1 do
        begin
          s_id_AvtoPacking :=
            PGSQL.NewID('"���������"."�������_������_id_seq"');
          Close;
          sql.Text := 'INSERT INTO "���������"."�������_������_����"' +
            '(id, "���_�����", "����_��������", "���_��������",' +
            '  "�������_��������") VALUES (:id, :���_�����,' +
            ' :����_��������, :���_��������,  :�������_��������);';
          ParamByName('id').AsInteger := s_id_AvtoPacking;
          ParamByName('���_�����').AsString := edtNumAvto.Text;
          ParamByName('����_��������').AsDate := edtOt.Date;
          ParamByName('���_��������').AsString := edtFIO.Text;
          ParamByName('�������_��������').AsString := edtPhone.Text;
          ExecSQL;
        end;
      end
      else
        Abort;
    end;
    Application.CreateForm(TFNewPacking, FNewPacking);
    with FNewPacking do
    begin
      s_id_avto_packing_add := s_id_AvtoPacking;
      s_id_packing := 0;
      ShowModal;
      ShowAvtoPacking(s_id_packing);
    end;
  end
  else
    Application.MessageBox
      ('�� ��������� �������� ��������. ����������� �� ��������.', '������',
      MB_OK + MB_ICONERROR);
end;

procedure TFNewAvtoForPacking.btnDelClick(Sender: TObject);
begin
  if QueryAvtoPacking.Fields[0].AsString <> '' then
  begin
    if Application.MessageBox
      ('�� ������������� ������ ������� ������ � ��� ��������� � ��� �������?',
      '������', MB_YESNO + MB_ICONWARNING) = mrYes then
    begin
      with Query1 do
      begin
        Close;
        sql.Text := 'delete from  "���������"."�������_������" where id=' +
          QueryAvtoPacking.FieldByName('id').AsString;
        ExecSQL;
        ShowAvtoPacking();
      end;
    end;
  end;
end;

procedure TFNewAvtoForPacking.btnEditClick(Sender: TObject);
begin
  if QueryAvtoPacking.Fields[0].AsString <> '' then
  begin
    Application.CreateForm(TFNewPacking, FNewPacking);
    with FNewPacking do
    begin
      s_id_packing := QueryAvtoPacking.FieldByName('id').AsInteger;
      s_id_avto_packing_add := QueryAvtoPacking.FieldByName('���_�������_����')
        .AsInteger;
      s_id_client := QueryAvtoPacking.FieldByName('���_�������').AsInteger;
      s_id_postav := QueryAvtoPacking.FieldByName('���_����������').AsInteger;
      edtOt.Date := QueryAvtoPacking.FieldByName('����_�������').AsDateTime;
      edtNum.Text := QueryAvtoPacking.FieldByName('�����_�������').AsString;
      edtPostav.Text := QueryAvtoPacking.FieldByName('���������').AsString;
      edtClient.Text := QueryAvtoPacking.FieldByName('������').AsString;
      ShowModal;
      ShowAvtoPacking(s_id_packing);
    end;
  end;
end;

procedure TFNewAvtoForPacking.btnRefreshClick(Sender: TObject);
begin
  ShowAvtoPacking(QueryAvtoPacking.FieldByName('id').AsInteger);
end;

procedure TFNewAvtoForPacking.FormShow(Sender: TObject);
begin
  ShowAvtoPacking();
end;

procedure TFNewAvtoForPacking.FrameTopPanel1btnSelClick(Sender: TObject);
begin
  if (edtOt.Text <> '  .  .    ') And (edtFIO.Text <> '') and
    (edtNumAvto.Text <> '') then
  begin
    with Query1 do
    begin
      if s_id_AvtoPacking = 0 then
      begin
        s_id_AvtoPacking := PGSQL.NewID('"���������"."�������_������_id_seq"');
        Close;
        sql.Text := 'INSERT INTO "���������"."�������_������_����"' +
          '(id, "���_�����", "����_��������", "���_��������",' +
          '  "�������_��������") VALUES (:id, :���_�����,' +
          ' :����_��������, :���_��������,  :�������_��������);';
        ParamByName('id').AsInteger := s_id_AvtoPacking;
        ParamByName('���_�����').AsString := edtNumAvto.Text;
        ParamByName('����_��������').AsDate := edtOt.Date;
        ParamByName('���_��������').AsString := edtFIO.Text;
        ParamByName('�������_��������').AsString := edtPhone.Text;
        ExecSQL;
      end
      else
      begin
        Close;
        sql.Text := 'UPDATE  "���������"."�������_������_����"  ' +
          'SET  "���_�����" = :���_�����,' +
          '  "����_��������" = :����_��������,' +
          '  "���_��������" = :���_��������,' +
          '  "�������_��������" = :�������_��������' + ' WHERE  id = :id;';
        ParamByName('id').AsInteger := s_id_AvtoPacking;
        ParamByName('���_��������').AsString := edtFIO.Text;
        ParamByName('���_�����').AsString := edtNumAvto.Text;
        ParamByName('�������_��������').AsString := edtPhone.Text;
        ParamByName('����_��������').AsDate := edtOt.Date;
        ExecSQL;
        ShowAvtoPacking();
      end;
    end;
  end
  else
    Application.MessageBox
      ('�� ��������� �������� ��������. ����������� �� ��������.', '������',
      MB_OK + MB_ICONERROR);
end;

procedure TFNewAvtoForPacking.GridAvtoPackingDBTableView1DblClick
  (Sender: TObject);
begin
  btnEditClick(Sender);
end;

procedure TFNewAvtoForPacking.ShowAvtoPacking(s_id_locate: Integer = 0);
begin
  with QueryAvtoPacking do
  begin
    Close;
    sql.Text := 'SELECT c.name ������,  p.name ���������,  pk.id,' +
      '  pk."���_�������_����",  pk."���_�������",  pk."���_����������",' +
      '  pk."�����_�������",  pk."����_�������" FROM' +
      '  "���������"."�������_������" pk' +
      '  INNER JOIN "�����������"."�������" c ON (pk."���_�������" = c.id)' +
      '  INNER JOIN "�����������"."�������" p ON (pk."���_����������" = p.id)' +
      ' where ���_�������_����= ' + IntToStr(s_id_AvtoPacking);
    Open;
  end;
end;

end.
