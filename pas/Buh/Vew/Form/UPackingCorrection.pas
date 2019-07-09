unit UPackingCorrection;

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
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  MemDS,
  DBAccess,
  Uni,
  UFrameTopPanel,
  cxCalc,
  cxGridBandedTableView,
  cxGridDBBandedTableView,
  cxContainer,
  cxGroupBox,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue;

type
  TFPackingCorrection = class(TForm)
    FrameTopPanel1: TFrameTopPanel;
    QueryPackingCorrection: TUniQuery;
    dsPackingCorrection: TDataSource;
    GridAvtoPacking: TcxGrid;
    GridAvtoPackingLevel1: TcxGridLevel;
    ViewPacking: TcxGridDBBandedTableView;
    ViewPackingcode: TcxGridDBBandedColumn;
    ViewPackingDBBandedColumn: TcxGridDBBandedColumn;
    ViewPackingDBBandedColumn1: TcxGridDBBandedColumn;
    ViewPackingDBBandedColumn2: TcxGridDBBandedColumn;
    ViewPackingDBBandedColumn3: TcxGridDBBandedColumn;
    ViewPackingDBBandedColumn4: TcxGridDBBandedColumn;
    ViewPackingDBBandedColumn5: TcxGridDBBandedColumn;
    Column����: TcxGridDBBandedColumn;
    ViewPacking_2: TcxGridDBBandedColumn;
    ViewPacking__: TcxGridDBBandedColumn;
    Column���: TcxGridDBBandedColumn;
    Query1: TUniQuery;
    Query2: TUniQuery;
    Column1�������: TcxGridDBBandedColumn;
    QueryGroup: TUniQuery;
    dsGroup: TDataSource;
    cxGroupBox1: TcxGroupBox;
    cxGrid1: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridDBBandedTableView1code: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1DBBandedColumn: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1DBBandedColumn1: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1_: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1__: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    procedure FormShow(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure FrameTopPanel1btnSelClick(Sender: TObject);
    procedure btnRazdelClick(Sender: TObject);
    procedure ViewPackingDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    s_id_tpd: Integer;
    procedure ShowCorrect(s_id_locate: Integer = 0);
    procedure ShowGroup;
    { Public declarations }
  end;

var
  FPackingCorrection: TFPackingCorrection;

implementation

{$R *.dfm}

uses
  UDataModule1,
  UNewCorrectPacking,
  UOsn;

procedure TFPackingCorrection.btnEditClick(Sender: TObject);
var
  new_val: Double;
begin
  Application.CreateForm(TFNewCorrectPacking, FNewCorrectPacking);
  with FNewCorrectPacking do
  begin
    // edtPriceOld.Text := QueryPackingCorrection.FieldByName('����').AsString;
    // edt������������.Text := QueryPackingCorrection.FieldByName('���').AsString;
    if QueryPackingCorrection.FieldByName('����_�������������').AsString <> ''
    then
    begin
      if QueryPackingCorrection.FieldByName('����_�������������').AsString = '-'
      then
        edt��������.ItemIndex := 1;
    end;
    edt�����������.Text := QueryPackingCorrection.FieldByName
      ('��������_�������������').AsString;
    if QueryPackingCorrection.FieldByName('���_����_�������������').AsString <> ''
    then
    begin
      if QueryPackingCorrection.FieldByName('���_����_�������������').AsString = '-'
      then
        edt�����������.ItemIndex := 1;
    end;
    edt�����������.Text := QueryPackingCorrection.FieldByName
      ('���_��������_�������������').AsString;
    ShowModal;
    if (FrameSave1.id_save = true) then
    begin
      with Query1 do
      begin
        Close;
        sql.Text := 'update "���������"."�������_������_������" set ' +
          ' ����_�������������=' + QuotedStr(edt��������.Text) +
          ', ��������_�������������=' + ':c' + ' , ����_�������������=���� ' +
          edt��������.Text + ':c' + ' , ���_����_�������������=' +
          QuotedStr(edt�����������.Text) + ', ���_��������_�������������=' +
          ':v' + ' , ���_�������������=��� ' + edt�����������.Text + ':v' +
          ' where ���_���������= ' + QueryPackingCorrection.FieldByName
          ('���_���������').AsString + ' and �����=' +
          QueryPackingCorrection.FieldByName('�����').AsString;
        ParamByName('c').AsFloat := edt�����������.Value;
        ParamByName('v').AsFloat := edt�����������.Value;
        ExecSQL;
      end;
    end;
  end;
end;

procedure TFPackingCorrection.btnRazdelClick(Sender: TObject);
begin
  if Application.MessageBox('�� ������������� �������� �������������?',
    '������', MB_YESNO + MB_ICONWARNING) = mrYes then
  begin
    with Query1 do
    begin
      Close;
      sql.Text := 'UPDATE "���������"."�������_������_������"  ' +
        ' SET   ����_�������������=����,  "����_�������������" = null,' +
        '  "��������_�������������"= 0,   ���_�������������=���,' +
        '  "���_����_�������������" = Null,  "���_��������_�������������" = 0  '
        + ' where ���_���������= ' + QueryPackingCorrection.FieldByName
        ('���_���������').AsString;
      ExecSQL;
      ShowCorrect;
    end;
  end;
end;

procedure TFPackingCorrection.FormShow(Sender: TObject);
begin
  ShowCorrect;
  ShowGroup;
end;

procedure TFPackingCorrection.FrameTopPanel1btnSelClick(Sender: TObject);
begin
  if Application.MessageBox
    ('�� ������������� ������ ��������� ��������? ��������! ��� ������ ������� ������ ������� ��������� �������������.',
    '������', MB_YESNO + MB_ICONWARNING) = mrYes then
  begin
    with Query1 do
    begin
      Close;
      sql.Text := 'UPDATE "���������"."�������_������_������"  ' +
        ' SET  "����" = ����_�������������,  "����_�������������" = null,' +
        '  "��������_�������������"= 0,  "���" = ���_�������������,' +
        '  "���_����_�������������" = Null,  "���_��������_�������������" = 0  '
        + ' where ���_���������= ' + QueryPackingCorrection.FieldByName
        ('���_���������').AsString;
      ExecSQL;
      ShowCorrect;
    end;
  end;
end;

procedure TFPackingCorrection.ShowCorrect(s_id_locate: Integer = 0);
begin
  with QueryPackingCorrection do
  begin
    Close;
    sql.Text :=
      'SELECT t.code,  t.name AS "���",  tpd."�����",  tpd."���_���������",' +
      ' sum(tpd."����" * tpd."���_��_�������") as ����,' +
      ' sum(tpd."���_��_�������") as �������,' +
      '   sum(tpd."���" * tpd."���_��_�������") as ���,' +
      '  COALESCE(tpd."����_�������������", '''') || '''' || tpd."��������_�������������" as �������������,'
      + '   sum(tpd."����_�������������" * tpd."���_��_�������") as' +
      '   ����_�������������, COALESCE(tpd."���_����_�������������", '''') || '''' ||'
      + '   tpd."���_��������_�������������" as ���_�������������,' +
      '   sum(tpd."���_�������������" * tpd."���_��_�������") as' +
      '   ���_����_�������������,tp."���" as ������, tpd."����_�������������", '
      + ' tpd."��������_�������������",tpd.���_��������_�������������, tpd.���_����_�������������'
      + ' ,sum(tpd."����_�������������" * tpd."���_��_�������")/ sum(tpd."���_��_�������") as ����_������'
      + ' FROM "���������"."���������" p ' +
      '   INNER JOIN "���������"."����" t ON (p."���_����" = t.id)' +
      '   INNER JOIN "���������"."�������_������_������" tpd ON (p.id =' +
      '   tpd."���_������") ' +
      ' inner join "���������"."�������_���������" tp on tp.id=tpd."���_���������"'
      + ' where tp."���_�������"=' + IntToStr(s_id_tpd) +
      ' GROUP BY t.code,  t.name, tpd."�����",' +
      '   tpd."���_���������", COALESCE(tpd."����_�������������", '''') || '''' ||'
      + '   tpd."��������_�������������",  COALESCE(tpd."���_����_�������������", '''') || '''' ||'
      + '   tpd."���_��������_�������������",  tp."���",tpd."����_�������������",tpd."��������_�������������"'
      + ' ,tpd.���_��������_�������������, tpd.���_����_�������������' +
      ' order by tpd.�����';
    Open;
    ViewPacking.ViewData.Expand(false);
  end;
end;

procedure TFPackingCorrection.ShowGroup;
begin
  with QueryGroup do
  begin
    Close;
    Open;
  end;
end;

procedure TFPackingCorrection.ViewPackingDblClick(Sender: TObject);
begin
  btnEditClick(Sender);
end;

end.
