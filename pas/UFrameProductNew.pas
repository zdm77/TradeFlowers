unit UFrameProductNew;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
      
    
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
     
     
     
   cxCustomData, cxStyles, cxTL, cxLabel, cxMaskEdit,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxDBTL, cxTLData, cxClasses,
  Vcl.ImgList, Data.DB, MemDS, DBAccess, Uni, UFrameSearch, UFrameTopPanel,
  cxCheckBox, dxSkinscxPCPainter, cxFilter, cxData, cxDataStorage, cxNavigator,
  cxDBData, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxGridCustomView, cxGrid, Vcl.StdCtrls, Vcl.ExtCtrls,
  dxSkinOffice2007Blue, dxSkinsDefaultPainters, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  System.ImageList;

type
  TFrameProductNew = class(TFrame)
    chkDel: TcxCheckBox;
    FrameTopPanel1: TFrameTopPanel;
    FrameSearch1: TFrameSearch;
    QueryProduct: TUniQuery;
    dsProduct: TDataSource;
    il1: TImageList;
    Style1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    Query1: TUniQuery;
    dsTree: TDataSource;
    QueryTree: TUniQuery;
    GridProduct: TcxGrid;
    ViewProduct: TcxGridDBTableView;
    ColumnPlant: TcxGridDBColumn;
    ColumnSort: TcxGridDBColumn;
    ColumnPrice: TcxGridDBColumn;
    ColumnDlina: TcxGridDBColumn;
    ColumnDate: TcxGridDBColumn;
    GridProductLevel1: TcxGridLevel;
    Query2: TUniQuery;
    ColumnCountry: TcxGridDBColumn;
    ColumnType: TcxGridDBColumn;
    chkGroup: TcxCheckBox;
    chkLast: TcxCheckBox;
    procedure chkDetailClick(Sender: TObject);
    procedure lstTreeProductsClick(Sender: TObject);
    procedure chkGroupClick(Sender: TObject);
    procedure btnLoadPriceClick(Sender: TObject);
    procedure chkLastClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ShowProduct;
    procedure ShowTree;
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses UFImport, UDataModule1, PGSQL, UPasswd;

procedure TFrameProductNew.btnLoadPriceClick(Sender: TObject);
var
  IDType, IDPlant, IDSort, IDZakup: Integer;
  i: Integer;
  s: string;
begin
  if FImport = nil then
    Application.CreateForm(TFImport, FImport);
  with FImport do
  begin
    id_save := False;
    // IDType := 0;
    // IDPlant := 0;
    // IDSort := 0;
    ShowModal;
    if id_save = True then
    begin
      with Query1 do
      begin
        // // ���������� ���
        // if GridOrder.Cells[1, 1] <> '' then
        // begin
        // Close;
        // sql.Text := 'select id from ���������.���� where uni_name=:uni_name';
        // ParamByName('uni_name').AsString := Trim(GridOrder.Cells[1, 1]);
        // Open;
        // if Fields[0].AsString <> '' then
        // begin
        // IDType := Fields[0].AsInteger;
        // // ���������� ���������/����������
        // if GridOrder.Cells[1, 2] <> '' then
        // begin
        // Close;
        // sql.Text :=
        // 'select id from ���������.��������� where UPPER(uni_name)=:uni_name';
        // ParamByName('uni_name').AsString :=
        // Trim(AnsiUpperCase(GridOrder.Cells[1, 2]));
        // Open;
        // if Fields[0].AsString <> '' then
        // begin
        // IDPlant := Fields[0].AsInteger;
        // end
        // // ��������� �� �������
        // else
        // begin
        // s := '��������� -' + GridOrder.Cells[1, 2] +
        // ' �� ������� � ���������. ��������?.';
        // if Application.MessageBox(pchar(s), '��������������',
        // MB_YESNO + MB_ICONERROR) = mrYes then
        // begin
        // IDPlant := PGSQL.NewID('���������.���������_id_seq');
        // Close;
        // sql.Text :=
        // 'insert into ���������.��������� (id, name, brand, uni_name, reg_name, '
        // + ' ���_������, ����������, �����, �������1,�������2,email,���_������_����, '
        // + ' ���_������, ����) values ' +
        // ' (:id, :name, :brand, :uni_name, :reg_name, :���_������, :����������, '
        // + ' :�����, :�������1, :�������2, :email, :���_������_����, :���_������, :����)';
        // ParamByName('id').AsInteger := IDPlant;
        // ParamByName('name').AsString := Trim(GridOrder.Cells[1, 2]);
        // ParamByName('uni_name').AsString :=
        // Trim(GridOrder.Cells[1, 2]);
        // ParamByName('reg_name').AsString :=
        // Trim(GridOrder.Cells[1, 2]);
        // ParamByName('brand').AsString := Trim(GridOrder.Cells[1, 2]);
        // ParamByName('���_������').AsInteger := 1;
        // ExecSQL;
        // end
        // else
        // Abort;
        // end;
        // end
        // else
        // begin
        // Application.MessageBox
        // ('���� "���������/���������" ������. ����������� �� ��������',
        // '������', MB_OK + MB_ICONERROR);
        // Abort;
        // end;
        // end
        // else
        // begin
        // s := '��� -' + GridOrder.Cells[1, 0] +
        // ' �� ������ � ���������. ����������� �� ��������.';
        // Application.MessageBox(pchar(s), '������', MB_OK + MB_ICONERROR);
        // Abort;
        // end;
        // end
        // else
        // begin
        // Application.MessageBox('���� "���" ������. ����������� �� ��������',
        // '������', MB_OK + MB_ICONERROR);
        // Abort;
        // end;
        // if IDPlant <> 0 then
        // begin
        // // ���������
        // for i := 4 to GridOrder.RowCount - 1 do
        // begin
        // Close;
        // sql.Text :=
        // 'select id from ���������.����� where UPPER(uni_name)=:uni_name';
        // ParamByName('uni_name').AsString :=
        // Trim(AnsiUpperCase(GridOrder.Cells[0, i]));
        // Open;
        // if Fields[0].AsString <> '' then
        // begin
        // IDSort := Fields[0].AsInteger;
        // end
        // else
        // begin
        // s := '���� - (' + GridOrder.Cells[0, i] +
        // ') �� ������� � ���������. ��������?.';
        // if Application.MessageBox(pchar(s), '��������������',
        // MB_YESNO + MB_ICONERROR) = mrYes then
        // begin
        // IDSort := PGSQL.NewID('���������.�����_id_seq');
        // Close;
        // sql.Text :=
        // 'insert into ���������.����� (id, name, uni_name, reg_name, �������, '
        // + ' ���_����, �����������) values ' +
        // ' (:id, :name, :uni_name, :reg_name, :�������, :���_����,:�����������)';
        // ParamByName('id').AsInteger := IDSort;
        // ParamByName('name').AsString := Trim(GridOrder.Cells[0, i]);
        // ParamByName('uni_name').AsString := Trim(GridOrder.Cells[0, i]);
        // ParamByName('reg_name').AsString := Trim(GridOrder.Cells[0, i]);
        // // ParamByName('�������').AsString := edtQuantity.Text;
        // // s_id_type := edtType.EditValue;
        // ParamByName('���_����').AsInteger := IDType;
        // // ParamByName('�����������').AsString := mmoDescr.Text;
        // ExecSQL;
        // end
        // else
        // Abort;
        // end;
        // end;
        // end;
        // ��������� �����
        // ShowMessage(IntToStr(GridOrder.RowCount));
        for i := 1 to GridOrder.RowCount - 1 do
        begin
          Close;
          sql.Text :=
            'select id from ���������.����� where UPPER(uni_name)=:uni_name';
          ParamByName('uni_name').AsString :=
            Trim(AnsiUpperCase(GridOrder.Cells[0, i]));
          Open;
          if Fields[0].AsString <> '' then
          begin
            IDSort := Fields[0].AsInteger;
          end
          else
          begin
            s := '���� - (' + GridOrder.Cells[0, i] +
              ') �� ������� � ���������. ��������?.';
            if Application.MessageBox(pchar(s), '��������������',
              MB_YESNO + MB_ICONERROR) = mrYes then
            begin
              IDSort := PGSQL.NewID('���������.�����_id_seq');
              Close;
              sql.Text :=
                'insert into ���������.����� (id, name, uni_name, reg_name, �������, '
                + ' ���_����, �����������) values ' +
                ' (:id, :name, :uni_name, :reg_name, :�������, :���_����,:�����������)';
              ParamByName('id').AsInteger := IDSort;
              ParamByName('name').AsString := Trim(GridOrder.Cells[0, i]);
              ParamByName('uni_name').AsString := Trim(GridOrder.Cells[0, i]);
              ParamByName('reg_name').AsString := Trim(GridOrder.Cells[0, i]);
              // ParamByName('�������').AsString := edtQuantity.Text;
              // s_id_type := edtType.EditValue;
              ParamByName('���_����').AsInteger := n_IDType;
              // ParamByName('�����������').AsString := mmoDescr.Text;
              ExecSQL;
            end
            else
              Abort;
          end;
        end;
        // ���� ��� �� ��������� �������
        // ����
        IDZakup := PGSQL.NewID('"���������"."�������_id_seq"');
        Close;
        sql.Text :=
          'INSERT INTO "���������"."�������"(id, "���_������������", "����_�������",  '
          + ' "�����") VALUES (:id, :���_������������, :����_�������, :�����);';
        ParamByName('id').AsInteger := IDZakup;
        ParamByName('���_������������').AsInteger := FPasswd.ID_USER;
        // ParamByName('����_�������').AsDateTime := edtDate.DateTime;
        ParamByName('�����').AsInteger := 1;
        ExecSQL;
        Close;
        sql.Text :=
          'INSERT INTO "���������"."�������_������"("���_�������", "���_���������", '
          + ' "���_�����", "����", "�����", "���_������������") ' +
          ' VALUES (:���_�������, :���_���������, :���_�����, :����, :�����,' +
          ' :���_������������);';
        Query2.Close;
        Query2.sql.Text :=
          'select id from ���������.����� where UPPER(uni_name)=:uni_name';
        // ����������
        for i := 1 to GridOrder.RowCount - 1 do
        begin
          Close;
          Query2.Close;
          Query2.ParamByName('uni_name').AsString :=
            Trim(AnsiUpperCase(GridOrder.Cells[0, i]));
          Query2.Open;
          IDSort := Query2.Fields[0].AsInteger;
          ParamByName('���_�������').AsInteger := IDZakup;
          // ParamByName('���_���������').AsInteger := edtPlant.EditValue;
          ParamByName('���_�����').AsInteger := IDSort;
          ParamByName('�����').AsString := Trim(GridOrder.Cells[1, i]);
          ParamByName('����').AsString := Trim(GridOrder.Cells[2, i]);
          ParamByName('���_������������').AsInteger := FPasswd.ID_USER;
          ExecSQL;
        end;
        Application.MessageBox('������ ��������', '���������', MB_OK);
      end;
    end;
  end;
end;

procedure TFrameProductNew.chkGroupClick(Sender: TObject);
begin
  ShowProduct;
end;

procedure TFrameProductNew.chkLastClick(Sender: TObject);
begin
  ShowProduct;
end;

procedure TFrameProductNew.chkDetailClick(Sender: TObject);
begin
  ShowProduct;
end;

procedure TFrameProductNew.lstTreeProductsClick(Sender: TObject);
begin
  ShowProduct;
end;

procedure TFrameProductNew.ShowProduct;
begin
  with QueryProduct do
  begin
    // if chkDetail.Checked = False then
    // begin
    // // // GridProduct.Visible := false;
    // // // lstTreeProducts.Visible := True;
    // // Close;
    // // sql.Text :=
    // // 'select * from "���������"."���������1" order by id, pid, uni_name';
    // // Open;
    // end
    // else
    // begin
    // GridProduct.Visible := True;
    // lstTreeProducts.Visible := false;
    // Close;
    // sql.Clear;
    // sql.Add(' SELECT');
    // sql.Add(' zd.id, ');
    // sql.Add(' zd."���_�������",');
    // sql.Add(' zd."���_���������",');
    // sql.Add(' zd."���_�����",');
    // sql.Add(' zd."����",');
    // sql.Add(' zd.fb,');
    // sql.Add(' zd."�����",');
    // sql.Add(' zd."�������",');
    // sql.Add(' zd."���_������������",');
    // sql.Add(' zd.no_compras,');
    // sql.Add(' zd."���_������_�����",');
    // sql.Add(' zd."���_������",');
    // sql.Add(' p.name,');
    // sql.Add(' p.uni_name,');
    // sql.Add(' pl.name,');
    // sql.Add('  z."����_�������"');
    // sql.Add(' FROM');
    // sql.Add(' "���������"."�������_������" zd');
    // sql.Add(' INNER JOIN "���������"."���������1" p ON (zd."���_�����" = p.id)');
    // sql.Add(' INNER JOIN "���������"."���������" pl ON (zd."���_���������" = pl.id)');
    // sql.Add(' INNER JOIN "���������"."�������" z ON (zd."���_�������" = z.id)');
    // sql.Add(' where 1=1');
    // if chkLast.Checked = True then
    // begin
    // sql.Add(' and (zd.id, zd.���_�����, zd."���_���������", �����) in (');
    // sql.Add(' select max(id),');
    // sql.Add(' ���_�����,');
    // sql.Add(' ���_���������, �����');
    // sql.Add(' from "���������"."�������_������"');
    // sql.Add(' group by ���_�����,���_���������, �����');
    // sql.Add(' )');
    sql.Clear;
    sql.Add(' SELECT');
    sql.Add(' p."����_������",');
    sql.Add(' p."���_���������",');
    sql.Add(' pd."����",');
    sql.Add(' pd."�����",');
    sql.Add(' pd."���_�����",');
    sql.Add(' pl.uni_name ���������,');
    sql.Add(' st.uni_name ������,');
    sql.Add(' t.uni_name ���,');
    sql.Add(' s.uni_name ����,');
    sql.Add(' pd."���_������",');
    sql.Add(' pl."���_������",');
    sql.Add(' s."���_����",');
    sql.Add(' pd.id');
    sql.Add(' FROM');
    sql.Add(' "���������"."�����" p');
    sql.Add(' INNER JOIN "���������"."�����_������" pd ON (p.id = pd."���_������")');
    sql.Add(' INNER JOIN "���������"."���������" pl ON (p."���_���������" = pl.id)');
    sql.Add(' INNER JOIN "���������"."������" st ON (pl."���_������" = st.id)');
    sql.Add(' INNER JOIN "���������"."����" t ON (p."���_����" = t.id)');
    sql.Add(' INNER JOIN "���������"."�����" s ON (pd."���_�����" = s.id)');
    sql.Add(' where 1=1');
    if chkLast.Checked = True then
    begin
      sql.Add(' and (p."����_������",  pd.���_�����, �����, p."���_���������") in (');
      sql.Add(' select max(����_������),');
      sql.Add(' ���_�����,');
      sql.Add(' �����,');
      sql.Add(' p1."���_���������"');
      sql.Add(' from "���������"."�����_������" pd1');
      sql.Add(' inner join "���������"."�����" p1 on (p1.id=pd1."���_������")');
      sql.Add(' group by ���_�����, �����, ���_���������');
      sql.Add(' )');
    end;
    sql.Add(' order by ���,  ������,   ����, ���������,  ����� ');
    // end;
    Open;
    if chkGroup.Checked then
    begin
      ViewProduct.OptionsView.GroupByBox := True;
      ColumnType.Caption := '���';
      ColumnCountry.Caption := '������';
      ColumnSort.Caption := '����';
    end
    else
    begin
      ViewProduct.OptionsView.GroupByBox := False;
      ColumnType.Caption := '';
      ColumnCountry.Caption := '';
      ColumnSort.Caption := '';
    end;
  end;
end;

procedure TFrameProductNew.ShowTree;
begin
  // with QueryTree do
  // begin
  // Close;
  // sql.Text :=
  // 'select * from "���������"."���������1" order by id, pid, uni_name';
  // Open;
  // end;
end;

end.
