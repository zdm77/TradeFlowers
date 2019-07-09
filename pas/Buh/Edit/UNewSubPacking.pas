unit UNewSubPacking;

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
  AdvEdit,
  Data.DB,
  MemDS,
  DBAccess,
  Uni,
  cxStyles,
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxNavigator,
  cxDBData,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  sCurrEdit,
  cxCalc,
  cxCurrencyEdit,
  cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue;

type
  TFNewSubPacking = class(TForm)
    GroupOsn: TcxGroupBox;
    lbl1: TcxLabel;
    edtTara: TAdvEdit;
    FrameTopPanel1: TFrameTopPanel;
    dsSubPacking: TDataSource;
    QuerySubPacking: TUniQuery;
    Query1: TUniQuery;
    GridAvtoPacking: TcxGrid;
    GridAvtoPackingDBTableView1: TcxGridDBTableView;
    GridAvtoPackingLevel1: TcxGridLevel;
    GridAvtoPackingDBTableView1_: TcxGridDBColumn;
    GridAvtoPackingDBTableView1DBColumn: TcxGridDBColumn;
    Column����: TcxGridDBColumn;
    GridAvtoPackingDBTableView1Column1: TcxGridDBColumn;
    edtCount: TsCalcEdit;
    lbl3: TLabel;
    Column���: TcxGridDBColumn;
    edtVes: TsCalcEdit;
    Label1: TLabel;
    Column��������: TcxGridDBColumn;
    Column�����������: TcxGridDBColumn;
    QueryUp: TUniQuery;
    dsUp: TUniDataSource;
    lbl4: TLabel;
    edtType: TcxLookupComboBox;
    procedure btnAddClick(Sender: TObject);
    procedure FrameTopPanel1btnSelClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GridAvtoPackingDBTableView1DblClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure Column����GetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
  private
    { Private declarations }
  public
    s_id_sub_packing_ADD: Integer;
    s_id_packing_ADD: Integer;
    procedure ShowSubPacking(s_id_locate: string = '');
    procedure ShowUp(id_locate: Integer = 0);
    { Public declarations }
  end;

var
  FNewSubPacking: TFNewSubPacking;

implementation

{$R *.dfm}

uses
  UNewBoxForPacking,
  PGSQL,
  UNewPacking,
  UOsn,
  UDataModule1;

procedure TFNewSubPacking.btnAddClick(Sender: TObject);
begin
  if (edtTara.Text <> '  .  .    ') And (edtType.Text <> '') then
  begin
    if s_id_sub_packing_ADD = 0 then
    begin
      if Application.MessageBox('��������� ��� �� ��������. ���������?',
        '������', MB_YESNO + MB_ICONQUESTION) = mrYes then
      begin
        with Query1 do
        begin
          s_id_sub_packing_ADD :=
            PGSQL.NewID('"���������"."�������_���������_id_seq"');
          Close;
          sql.Text := 'INSERT INTO "���������"."�������_���������"' +
            '( id,  "���_�������",  "���_��������",  "����","���-��", ���_������'
            + ') VALUES (:id,  :���_�������,  :���_��������, :����, :c, :���_������);';
          ParamByName('id').AsInteger := s_id_sub_packing_ADD;
          ParamByName('���_�������').AsInteger := s_id_packing_ADD;
          ParamByName('���_��������').AsString := edtType.EditValue;
          ParamByName('����').AsString := edtTara.Text;
          ParamByName('c').AsString := edtCount.Text;
          ParamByName('���_������').AsString := edtVes.Text;
          ExecSQL;
        end;
      end
      else
        Abort;
    end;
    Application.CreateForm(TFNewBoxForPacking, FNewBoxForPacking);
    with FNewBoxForPacking do
    begin
      // ���������� ����� �������
      edtNumberBox.Text := IntToStr(QuerySubPacking.RecordCount + 1);
      s_id_sub_packing := s_id_sub_packing_ADD;
      ShowBox;
      s_id_up := edtType.EditValue;
      ShowModal;
      ShowSubPacking(edtNumberBox.Text);
    end;
  end
  else
    Application.MessageBox
      ('�� ��������� �������� ��������. ����������� �� ��������.', '������',
      MB_OK + MB_ICONERROR);
end;

procedure TFNewSubPacking.btnDelClick(Sender: TObject);
begin
  if Application.MessageBox
    ('�� ������������� ������ ������� ������� � ��� ��������� � ��� �������?',
    '������', MB_YESNO + MB_ICONWARNING) = mrYes then
  begin
    with Query1 do
    begin
      Close;
      sql.Text :=
        'delete from  "���������"."�������_������_������" where ���_���������='
        + IntToStr(s_id_sub_packing_ADD) + ' and �����_�������=' +
        QuerySubPacking.FieldByName('�����_�������').AsString;
      ExecSQL;
      ShowSubPacking();
    end;
  end;
end;

procedure TFNewSubPacking.btnEditClick(Sender: TObject);
begin
  Application.CreateForm(TFNewBoxForPacking, FNewBoxForPacking);
  with FNewBoxForPacking do
  begin
    // ���������� ����� �������
    edtNumberBox.Text := QuerySubPacking.FieldByName('�����_�������').AsString;
    s_id_sub_packing := s_id_sub_packing_ADD;
    ShowBox(QuerySubPacking.FieldByName('���_����_��������').AsInteger);
    s_id_up := edtType.EditValue;
    ShowModal;
    ShowSubPacking(edtNumberBox.Text);
  end;
end;

procedure TFNewSubPacking.btnRefreshClick(Sender: TObject);
begin
  ShowSubPacking();
end;

procedure TFNewSubPacking.Column����GetDisplayText
  (Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
begin
  // if AText <> '' then
  // AText := FormatCurr('0.00' + FNewPacking.������, StrToCurr(AText));
end;

procedure TFNewSubPacking.FormShow(Sender: TObject);
begin
  with FOsn do
    case FNewPacking.edt������.ItemIndex of
      0:
        begin
          Column����.Summary.FooterFormat := ������.Properties.DisplayFormat;
          Column����.RepositoryItem := ������;
        end;
      1:
        begin
          Column����.Summary.FooterFormat := ����.Properties.DisplayFormat;
          Column����.RepositoryItem := ����;
        end;
      2:
        begin
          Column����.Summary.FooterFormat := �����.Properties.DisplayFormat;
          Column����.RepositoryItem := �����;
        end;
    end;
  ShowSubPacking;
end;

procedure TFNewSubPacking.FrameTopPanel1btnSelClick(Sender: TObject);
begin
  with Query1 do
  begin
    Close;
    sql.Text := 'update "���������"."�������_���������" ' +
      ' set ���_��������=:���_��������, "���-��"=:c, ����=:����, ���_������=:���_������ where id='
      + IntToStr(s_id_sub_packing_ADD);
    ParamByName('���_��������').AsString := edtType.EditValue;
    if edtTara.Text <> '' then
      ParamByName('����').AsString := edtTara.Text
    else
      ParamByName('����').AsString := edtTara.EmptyText;
    ParamByName('c').AsFloat := edtCount.Value;
    ParamByName('���_������').AsFloat := edtVes.Value;
    ExecSQL;
  end;
end;

procedure TFNewSubPacking.GridAvtoPackingDBTableView1DblClick(Sender: TObject);
begin
  btnEditClick(Sender);
end;

procedure TFNewSubPacking.ShowSubPacking(s_id_locate: string = '');
begin
  with QuerySubPacking do
  begin
    Close;
    sql.Text := 'SELECT   pd."�����_�������", sum(pd."���_��_�������") �������,'
      + '  sum(pd."����"*pd."���_��_�������") ����, sum(pd."���"*pd."���_��_�������") ���,'
      + ' count(pd.id) �������, ���_����_��������, ���_��������,tu.name ��������     '
      + ' FROM   "���������"."�������_������_������" pd' +
      ' left join "���������"."���_��������" tu on (tu.id=pd."���_����_��������")'
      + '   where pd."���_���������"=' + IntToStr(s_id_sub_packing_ADD);
    sql.Add(' group by pd."�����_�������", ���_����_��������, ���_��������,tu.name '
      + ' order by �����_�������');
    Open;
    Locate('�����_�������', s_id_locate, []);
  end;
end;

procedure TFNewSubPacking.ShowUp(id_locate: Integer = 0);
begin
  with QueryUp do
  begin
    sql.CLear;
    sql.Add(' SELECT');
    sql.Add(' id,');
    sql.Add(' name');
    sql.Add(' FROM');
    sql.Add(' "���������"."����_��������" ;');
    Open;
    if id_locate <> 0 then
      edtType.EditValue := id_locate
    else
      edtType.EditValue := Fields[0].AsInteger;
  end;
end;

end.
