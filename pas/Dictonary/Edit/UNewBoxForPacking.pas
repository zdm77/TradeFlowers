unit UNewBoxForPacking;

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
  
  Vcl.StdCtrls,
  cxLabel,
  cxGroupBox,
  UFrameProduct,
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
  cxSplitter,
  Vcl.Menus,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sCurrEdit,
  cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  cxButtons,
  AdvEdit,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue;

type
  TFNewBoxForPacking = class(TForm)
    GroupOsn: TcxGroupBox;
    lbl2: TcxLabel;
    edtNumberBox: TEdit;
    GroupProduct: TcxGroupBox;
    FrameProduct1: TFrameProduct;
    cxGroupBox1: TcxGroupBox;
    FrameTopPanel2: TFrameTopPanel;
    GridOrder: TcxGrid;
    ViewOrder: TcxGridDBTableView;
    GridLevelOrder: TcxGridLevel;
    dsDetail: TDataSource;
    QueryDetail: TUniQuery;
    QuerySel: TUniQuery;
    ViewOrdername: TcxGridDBColumn;
    ViewOrder__: TcxGridDBColumn;
    Column����: TcxGridDBColumn;
    cxspltr1: TcxSplitter;
    ViewOrderColumn1: TcxGridDBColumn;
    Column�����: TcxGridDBColumn;
    Column���: TcxGridDBColumn;
    dsBox: TUniDataSource;
    QueryBox: TUniQuery;
    cxLabel1: TcxLabel;
    Label1: TLabel;
    edtBox: TcxLookupComboBox;
    btnBoxAdd: TcxButton;
    edtWeight: TAdvEdit;
    procedure FormShow(Sender: TObject);
    procedure FrameProduct1lstTreeProductsDblClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure ViewOrderDblClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure edtBoxPropertiesEditValueChanged(Sender: TObject);
    procedure btnBoxAddClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    s_id_sub_packing: Integer;
    s_id_up: Integer;
    procedure ShowBox(s_id_locate: Integer = 0);
    procedure ShowDetail(s_id_locate: Integer = 0);
    procedure UpdDetail(s_id: Integer);
    { Public declarations }
  end;

var
  FNewBoxForPacking: TFNewBoxForPacking;

implementation

{$R *.dfm}

uses
  UNewBoxForPackingDetail,
  UDetailBoxPacking,
  UDataModule1,
  PGSQL,
  UOsn,
  UFrameBox,
  UNewPacking;

procedure TFNewBoxForPacking.btnBoxAddClick(Sender: TObject);
var
  s: TFrameBox;
begin
  s := TFrameBox.Create(nil);
  s.btnAddClick(Sender);
  ShowBox;
  s.Free;
end;

procedure TFNewBoxForPacking.btnDelClick(Sender: TObject);
begin
  PGSQL.StandartDelete(QueryDetail.FieldByName('id').AsString,
    '"���������"."�������_������_������"', QueryDetail, '', '', '', '');
end;

procedure TFNewBoxForPacking.btnEditClick(Sender: TObject);
begin
  with FrameProduct1 do
  begin
    Application.CreateForm(TFDetailBoxPacking, FDetailBoxPacking);
    with FDetailBoxPacking do
    begin
      lblProduct.Caption := '�����: ' + QueryDetail.FieldByName('name')
        .AsString;
      edtPrice.Text := QueryDetail.FieldByName('����').AsString;
      edtStems.Text := QueryDetail.FieldByName('���_��_�������').AsString;
      edtWeight.Text := QueryDetail.FieldByName('���').AsString;
      edtLength.Text := QueryDetail.FieldByName('�����').AsString;
      ShowModal;
      if FrameSave1.id_save = true then
      begin
        UpdDetail(QueryDetail.FieldByName('id').AsInteger);
      end;
    end;
  end;
end;

procedure TFNewBoxForPacking.edtBoxPropertiesEditValueChanged(Sender: TObject);
begin
  edtWeight.Text := QueryBox.FieldByName('���').AsString;
end;

procedure TFNewBoxForPacking.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with QuerySel do
  begin
    Close;
    SQL.Text :=
      'update "���������"."�������_������_������" set ���_����_��������=:u' +
      ', ���_��������=:v where id in (SELECT  pd.id ' +
      ' FROM  "���������"."�������_������_������" pd' +
      ' where pd."���_���������"=' + IntToStr(s_id_sub_packing) +
      ' and pd.�����_�������=' + edtNumberBox.Text + ')';
    ParamByName('u').AsInteger := edtBox.EditValue;
    ParamByName('v').AsString := edtWeight.Text;
    ExecSQL;
  end;
end;

procedure TFNewBoxForPacking.FormShow(Sender: TObject);
begin
  with FOsn do
    case FNewPacking.edt������.ItemIndex of
      0:
        begin
          Column�����.Summary.FooterFormat := ������.Properties.DisplayFormat;
          Column�����.RepositoryItem := ������;
          Column����.RepositoryItem := ������;
        end;
      1:
        begin
          Column�����.Summary.FooterFormat := ����.Properties.DisplayFormat;
          Column�����.RepositoryItem := ����;
          Column����.RepositoryItem := ����;
        end;
      2:
        begin
          Column�����.Summary.FooterFormat := �����.Properties.DisplayFormat;
          Column�����.RepositoryItem := �����;
          Column����.RepositoryItem := �����;
        end;
    end;
  FrameProduct1.ShowProduct();
  ShowDetail;
end;

procedure TFNewBoxForPacking.FrameProduct1lstTreeProductsDblClick
  (Sender: TObject);
var
  id_type: Integer;
begin
  with FrameProduct1 do
  begin
    if QueryProduct.FieldByName('���_���������').AsInteger = 6 then
    begin
      // ������� ��� �� ������ -��
      with Query1 do
      begin
        Close;
        SQL.Text := 'select * from "���������"."�������_������_������" ' +
          ' where ���_���������=:���_��������� and ���_������=:���_������' +
          ' and �����_�������=:�����_�������';
        ParamByName('�����_�������').AsString := edtNumberBox.Text;
        ParamByName('���_���������').AsInteger := s_id_sub_packing;
        ParamByName('���_������').AsInteger := QueryProduct.FieldByName('id')
          .AsInteger;
        Open;
        if Fields[0].AsString <> '' then
        begin
          if Application.MessageBox
            ('����� ��� �������� � �������. ������������� ��������� ������?',
            '������', MB_YESNO + MB_ICONQUESTION) = mrYes then
          begin
            // ����������� ������
            Application.CreateForm(TFDetailBoxPacking, FDetailBoxPacking);
            with FDetailBoxPacking do
            begin
              lblProduct.Caption := '�����: ' + QueryProduct.FieldByName
                ('name').AsString;
              edtPrice.Text := FieldByName('����').AsString;
              edtStems.Text := FieldByName('���_��_�������').AsString;
              ShowModal;
              if FrameSave1.id_save = true then
              begin
                UpdDetail(FieldByName('id').AsInteger);
                Abort;
              end;
            end;
          end
          else
            Abort;
        end;
      end;
      Application.CreateForm(TFDetailBoxPacking, FDetailBoxPacking);
      with FDetailBoxPacking do
      begin
{$REGION '���������� ���'}
        with QuerySel do
        begin
          SQL.Clear;
          SQL.Add(' SELECT sz.name,');
          SQL.Add('        tsv."���"');
          SQL.Add(' FROM "���������"."���������" p');
          SQL.Add('      INNER JOIN "���������"."����" t ON (p."���_����" = t.id)');
          SQL.Add('      INNER JOIN "���������"."����_��������" ts ON (t.id = ts."���_����")');
          SQL.Add('      INNER JOIN "���������"."�������_��������" ps ON (p.id = ps."���_������")');
          SQL.Add('      INNER JOIN "���������"."��������_��������" sz ON (');
          SQL.Add('      ps."���_��������_��������" = sz.id) AND (ts.id = sz."���_��������")');
          SQL.Add('      INNER JOIN "���������"."���_�����_���" tsv ON (t.id = tsv."���_����")');
          SQL.Add(' WHERE upper(ts.name) = ''�����'' and');
          SQL.Add('       tsv."�����" = sz.name and');
          SQL.Add('       tsv."���_��������"=' + IntToStr(s_id_up) + ' and');
          SQL.Add('       tsv."���_������"=' +
            IntToStr(FrameProduct1.GetCountry
            (FrameProduct1.QueryProduct.FieldByName('id').AsInteger)) + ' and');
          SQL.Add('       tsv."���_����"=' +
            FrameProduct1.QueryProduct.FieldByName('���_����').AsString
            + ' and');
          SQL.Add('       p.id =' + QueryProduct.FieldByName('id').AsString);
          Open;
          edtWeight.Text := FieldByName('���').AsString;
          edtLength.Text := FieldByName('name').AsString;
        end;
{$ENDREGION};
        lblProduct.Caption := '�����: ' + QueryProduct.FieldByName
          ('name').AsString;
        edtPrice.Text := QueryProduct.FieldByName('����').AsString;
        ShowModal;
        if FrameSave1.id_save = true then
        begin
          with Query1 do
          begin
            Close;
            SQL.Text := 'INSERT INTO "���������"."�������_������_������"' +
              '("���_���������",  "���_������",  "���_��_�������",' +
              '  "����",�����_�������, ����_�������������, ���, ���_�������������,����� )'
              + '  VALUES (  :���_���������,  :���_������, :���_��_�������,  :����, '
              + ' :�����_�������, :����_�������������,:���, :���_�������������,:����� );';
            ParamByName('���_���������').AsInteger := s_id_sub_packing;
            ParamByName('���_������').AsInteger :=
              QueryProduct.FieldByName('id').AsInteger;
            ParamByName('���_��_�������').Value := edtStems.Value;
            ParamByName('����').Value := edtPrice.Value;
            ParamByName('����_�������������').Value := edtPrice.Value;
            ParamByName('�����_�������').AsString := edtNumberBox.Text;
            ParamByName('���').Value := edtWeight.Text;
            ParamByName('���_�������������').Value := edtWeight.Text;
            ParamByName('�����').AsString := edtLength.Text;
            ExecSQL;
            ShowDetail;
          end;
        end;
      end;
    end;
  end;
end;

procedure TFNewBoxForPacking.ShowBox(s_id_locate: Integer = 0);
begin
  with QueryBox do
  begin
    Close;
    SQL.Text := 'select * from "���������"."���_��������" ';
    Open;
    if s_id_locate = 0 then
      edtBox.EditValue := Fields[0].AsInteger
    else
      edtBox.EditValue := s_id_locate;
  end;
end;

procedure TFNewBoxForPacking.ShowDetail(s_id_locate: Integer = 0);
begin
  with QueryDetail do
  begin
    Close;
    SQL.Text :=
      'SELECT  p.name,  pd.id, pd.���, pd.���_��_�������* pd.��� as ����_���, pd.�����, pd."���_���������",  pd."���_������",'
      + ' pd."���_��_�������",  pd."����",  t.code, pd."���_��_�������"*pd."����" as ����� '
      + ' FROM  "���������"."�������_������_������" pd' +
      '  INNER JOIN "���������"."���������" p ON (pd."���_������" = p.id)' +
      ' INNER JOIN "���������"."����" t ON (p."���_����" = t.id)' +
      ' where pd."���_���������"=' + IntToStr(s_id_sub_packing) +
      ' and pd.�����_�������=' + edtNumberBox.Text;
    Open;
    Locate('id', s_id_locate, []);
  end;
  // TODO -cMM: TFNewBoxForPacking.ShowDetail default body inserted
end;

procedure TFNewBoxForPacking.UpdDetail(s_id: Integer);
begin
  with FDetailBoxPacking do
  begin
    with QuerySel do
    begin
      Close;
      SQL.Text := 'UPDATE  "���������"."�������_������_������"  ' +
        'SET  "���_��_�������" = :���_��_�������,  "����" = :����, ���=:���' +
        '  WHERE id = :id;';
      ParamByName('id').AsInteger := s_id;
      ParamByName('���_��_�������').Value := edtStems.Text;
      ParamByName('����').Value := edtPrice.Text;
      ParamByName('���').Value := edtWeight.Text;
      ExecSQL;
      ShowDetail(QueryDetail.FieldByName('id').AsInteger);
    end;
  end;
end;

procedure TFNewBoxForPacking.ViewOrderDblClick(Sender: TObject);
begin
  btnEditClick(Sender);
end;

end.
