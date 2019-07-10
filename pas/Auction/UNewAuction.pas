unit UNewAuction;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Datasnap.DBClient,
  MemDS, DBAccess, Uni, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, UFrameTopPanel,
  ComObj, Vcl.Grids, AdvObj, BaseGrid, AdvGrid;
type
  TfNewAuction = class(TForm)
    FrameTopPanel1 : TFrameTopPanel;
    Query1 : TUniQuery;
    QueryAuc : TUniQuery;
    dsAuc : TDataSource;
    dlgOpen1 : TOpenDialog;
    GridOrder : TStringGrid;
    procedure btnAddClick(Sender : TObject);
    procedure FormCloseQuery(Sender : TObject; var CanClose : Boolean);
    procedure FormShow(Sender : TObject);
    procedure FrameTopPanel1btnSelClick(Sender : TObject);
  private
    { Private declarations }
  public
    Excel : Variant;
    s_date : TDate;
    id_exe : Boolean;
    IDCountry : Integer;
    IDPlant : Integer;
    IDProduct : Integer;
    s_id_postav : Integer;
    function DetectSupplier(s_name : string) : Integer;
    function DetectProduct(s_name, s_code : string; s_i : Integer) : Integer;
    procedure EnableBtn;
    { Public declarations }
  end;

var
  fNewAuction : TfNewAuction;
implementation
{$R *.dfm}

uses UNewPlantCountry, UTypeSort, PGSQL, USelectTypeAuc, UAuctionDetail;
procedure TfNewAuction.btnAddClick(Sender : TObject);
var
  Rows, Cols, i, j : Integer;
  WorkSheet : OLEVariant;
  FData : OLEVariant;
begin
  if dlgOpen1.Execute then
  begin
    Excel := CreateOleObject('Excel.Application');
    Excel.Application.WorkBooks.Add(dlgOpen1.FileName);
    Excel.Visible := False;
    Excel.DisplayAlerts := False;
    WorkSheet := Excel.ActiveWorkbook.ActiveSheet;
    // ���������� ���������� ����� � �������� �������
    Rows := WorkSheet.UsedRange.Rows.Count;
    Cols := WorkSheet.UsedRange.Columns.Count;
    // ��������� ������ ����� ���������
    FData := WorkSheet.UsedRange.Value;
    GridOrder.RowCount := Rows;
    GridOrder.ColCount := Cols;
    // ������� ������ � �������
    for i := 0 to Rows - 1 do
      for j := 0 to Cols - 1 do
        GridOrder.Cells[j, i] := FData[i + 1, j + 1];
    // ��������� ����
    if GridOrder.Cells[22, 1] <> fAuctionDetail.edtDateZakup.Text then
    begin
      if Application.MessageBox
        ('���� ������� �� ���������! �������� ������ ����?.', '������',
          MB_YESNO + MB_ICONERROR) = mrNo then
      begin
        FrameTopPanel1.btnSel.Enabled := False;
        fNewAuction.Close;
      end
      else
        btnAddClick(Sender);
    end
    else
      FrameTopPanel1.btnSel.Enabled := True; ;
  end;
end;
function TfNewAuction.DetectSupplier(s_name : string) : Integer;
begin
  IDPlant := 0;
  with Query1 do
  begin
    // SQL.Text :=
    // 'select id  from "���������"."������������" sv where upper(sv."����
    // Close;�������")= :n';
    // ParamByName('')
    IDCountry := 0;
    Result := 0;
    Close;
    sql.Text :=
               'select id, ���_������   from "���������"."���������" sv where upper(sv.uni_name)=:n';
    ParamByName('n').AsString := Trim(AnsiUpperCase(s_name));
    Open;
    if Fields[0].AsString = '' then
    begin
      if Application.MessageBox(PChar('��������� - "' + Trim(s_name) +
      '" �� ������. ��������?'), '������', MB_YESNO + MB_ICONWARNING) = mrYes
      then
      begin
        Application.CreateForm(TfNewPlantCountry, fNewPlantCountry);
        with fNewPlantCountry do
        begin
          Caption := '��������� -' + s_name;
          ShowCountry;
          ShowModal;
          if IDSelect = True then
          begin
            IDPlant := PGSQL.NewID('���������.���������_id_seq');
            Query1.Close;
            Query1.sql.Text :=
                              'insert into "���������"."���������" (id, name, brand, ���_������, uni_name, reg_name)'
                              + ' values (:id, :name, :brand, :���_������, :uni_name, :reg_name)';
            Query1.ParamByName('id').AsInteger := IDPlant;
            Query1.ParamByName('name').AsString := AnsiUpperCase(s_name);
            Query1.ParamByName('brand').AsString := AnsiUpperCase(s_name);
            Query1.ParamByName('uni_name').AsString := AnsiUpperCase(s_name);
            Query1.ParamByName('reg_name').AsString := AnsiUpperCase(s_name);
            Query1.ParamByName('���_������').AsInteger := edtDetail.EditValue;
            IDCountry := edtDetail.EditValue;
            Query1.ExecSQL;
            Result := IDPlant;
            // ShowMessage(IntToStr(edtDetail.EditValue));
          end
          else
            Result := 0;
        end;
      end
      else
        Result := 0;
    end
    else
    begin
      //
      IDCountry := Fields[1].AsInteger;
      IDPlant := Fields[0].AsInteger;
      Result := Fields[0].AsInteger;
    end;
  end;
end;
function TfNewAuction.DetectProduct(s_name, s_code : string;
                                       s_i : Integer) : Integer;
var
  IDA : Integer;
  s, IdSuplyer, CountryCode, TypeCode, TypeSrez : string;
  q : Integer;
  CodAny : String;
begin
  // ShowMessage( s);
  // with Query1 do
  // begin
  // Result := 0;
  // Close;
  // sql.Text :=
  // 'select id  from "���������"."������������" sv where upper(sv."�����������")= :n';
  // ParamByName('n').AsString := trim(AnsiUpperCase(s_name));
  // Open;
  // if Fields[0].AsString = '' then
  // begin
  // if Application.MessageBox(PChar('������� - "' + trim(s_name) +
  // '" �� ������. ��������?'), '������', MB_YESNO + MB_ICONWARNING) = mrYes
  // then
  // begin
  // Application.CreateForm(TfTypeSort, fTypeSort);
  // with fTypeSort do
  // begin
  // s_id_country := IDCountry;
  // Caption := '������� -' + s_name;
  // s_nameA := s_name;
  // ShowType;
  // ShowModal;
  // if IDSelect = true then
  // begin
  // IDA := PGSQL.NewID('���������.������������_id_seq');
  // Query1.Close;
  // Query1.sql.Text :=
  // 'insert into "���������"."������������" (id, �������, ��������, �����������, �����������)'
  // + ' values (:id, :�������, :��������, :�����������, :�����������)';
  // Query1.ParamByName('id').AsInteger := IDA;
  // Query1.ParamByName('�������').AsInteger := edtType.EditValue;
  // Query1.ParamByName('��������').AsInteger := edtSort.EditValue;
  // Query1.ParamByName('�����������').AsString := s_name;
  // Query1.ParamByName('�����������').AsString := s_code;
  // Query1.ExecSQL;
  // Result := IDA;
  // end
  // else
  // Result := 0;
  // end;
  // end
  // else
  // Result := 0;
  // end
  // else
  // begin
  // Result := Fields[0].AsInteger;
  // end;
  // end;
  with GridOrder do
  begin
    with Query1 do
    begin
      Result := 0;
      Close;
      // q := Pos('-', GridOrder.Cells[26, s_i]);
      // s := Copy(GridOrder.Cells[26, s_i], 0, q - 1);
      // ShowMessage(s);
      IdSuplyer := Trim(Copy(GridOrder.Cells[26, s_i], 0,
                              (Pos('-', GridOrder.Cells[26, s_i])) - 1));
      // ������ ����������
      // ShowMessage(IntToStr(IDCountry));
      sql.Text := 'select code from "���������"."������" where id=' +
    IntToStr(IDCountry);
      Open;
      CountryCode := Fields[0].AsString;
      sql.Clear;
      s := 'select id  from "�������"."������������" sv where sv."�����������"= :n '
    + ' and sv."�������������"= ' + IdSuplyer;
      if Trim(GridOrder.Cells[8, s_i]) <> '' then
        s := s + ' and upper(����)= ' +
      QuotedStr(Trim(AnsiUpperCase(GridOrder.Cells[8, s_i])))
      else
        s := s + ' and ���� is null';
      //
      if Trim(GridOrder.Cells[9, s_i]) <> '' then
        s := s + ' and upper(���_����)= ' +
      QuotedStr(Trim(AnsiUpperCase(GridOrder.Cells[9, s_i])))
      else
        s := s + ' and ���_���� is null';
      //
      if GridOrder.Cells[10, s_i] <> '' then
        s := s + ' and "S1"= ' +
      QuotedStr(Trim(AnsiUpperCase(GridOrder.Cells[10, s_i])))
      else
        s := s + ' and "S1" is null';
      // //
      if GridOrder.Cells[11, s_i] <> '' then
        s := s + ' and "S2"= ' +
      QuotedStr(Trim(AnsiUpperCase(GridOrder.Cells[11, s_i])))
      else
        s := s + ' and "S2" is null';
      // //
      if GridOrder.Cells[12, s_i] <> '' then
        s := s + ' and "S3"= ' +
      QuotedStr(Trim(AnsiUpperCase(GridOrder.Cells[12, s_i])))
      else
        s := s + ' and "S3" is null';
      // //
      if GridOrder.Cells[13, s_i] <> '' then
        s := s + ' and "S4"= ' +
      QuotedStr(Trim(AnsiUpperCase(GridOrder.Cells[13, s_i])))
      else
        s := s + ' and "S4" is null';
      // //
      s := s + ' and ���������= ' + QuotedStr(Trim(AnsiUpperCase(CountryCode)));
      // //
      if GridOrder.Cells[14, s_i] <> '' then
        s := s + ' and ��������������= ' +
      QuotedStr(Trim(AnsiUpperCase(GridOrder.Cells[14, s_i])))
      else
        s := s + ' and �������������� is null';
      s := s + ' and ���_��������=' +
    IntToStr(fAuctionDetail.edtAucType.EditValue);
      sql.Text := s;
      ParamByName('n').AsString := Trim(GridOrder.Cells[3, s_i]);
      Open;
      if Fields[0].AsString = '' then
      begin
        // ��������� ����
        // ������ �������
        Close;
        sql.Text :=
                   'select ��������������, ���������  from "�������"."������������" sv where sv."�����������"= '
                   + Trim(GridOrder.Cells[3, s_i]);
        Open;
        CodAny := Fields[0].AsString;
        if CodAny = '' then
        begin
          // �������� ���
          Application.CreateForm(TFSelectTypeAuc, FSelectTypeAuc);
          with FSelectTypeAuc do
          begin
            FrameTypeAuc1.ShowTypeAuc(CodAny);
            Label1.Caption := '�����: ' + AnsiUpperCase(Cells[4, s_i]);
            ShowModal;
            if idSel = False then
            begin
              Application.MessageBox('�������� �������������.', '������',
                                      MB_OK + MB_ICONERROR);
              abort;
            end
            else
            begin
              TypeCode := FrameTypeAuc1.QueryTypeAuc.FieldByName
              ('code').AsString;
              case FrameTypeAuc1.edtTypeSrez.ItemIndex of
                0 : TypeSrez := 'STW';
                1 : TypeSrez := '��������';
              end;
            end;
          end;
        end
        else
        begin
          TypeCode := CodAny;
          TypeSrez := Fields[1].AsString;
        end;
        IDA := PGSQL.NewID('"�������"."������������_id_seq"');
        // ��������� � ������� ������������
        Close;
        sql.Clear;
        sql.Add(' INSERT INTO');
        sql.Add(' "�������"."������������"');
        sql.Add(' (');
        sql.Add(' id,');
        sql.Add(' "�������������",');
        sql.Add(' "���������",');
        sql.Add(' "������������",');
        sql.Add(' "��������������",');
        sql.Add(' "����",');
        sql.Add(' "���_������",');
        sql.Add(' "�����_�_����",');
        sql.Add(' "���_����",');
        sql.Add(' "S1",');
        sql.Add(' "S2",');
        sql.Add(' "S3",');
        sql.Add(' "S4",');
        sql.Add(' "�����������",');
        sql.Add(' "���������",');
        sql.Add(' "��������������",');
        sql.Add(' "���������",');
        sql.Add(' "���_���������", ');
        // sql.Add(' "���_������", ');
        // sql.Add(' "���������", ');
        sql.Add(' "���_��������" ');
        sql.Add(' )');
        sql.Add(' VALUES (');
        sql.Add(' :id,');
        sql.Add(' :�������������,');
        sql.Add(' :���������,');
        sql.Add(' :������������,');
        sql.Add(' :��������������,');
        sql.Add(' :����,');
        sql.Add(' :���_������,');
        sql.Add(' :�����_�_����,');
        sql.Add(' :���_����,');
        sql.Add(' :S1,');
        sql.Add(' :S2,');
        sql.Add(' :S3,');
        sql.Add(' :S4,');
        sql.Add(' :�����������,');
        sql.Add(' :���������,');
        sql.Add(' :��������������,');
        sql.Add(' :���������,');
        sql.Add(' :���_���������,');
        // sql.Add(' :���_������, ');
        // sql.Add(' :���������, ');
        sql.Add(' :���_�������� ');
        sql.Add(' );');
        Result := IDA;
        ParamByName('���_���������').AsInteger := IDPlant;
        ParamByName('id').AsInteger := IDA;
        ParamByName('�������������').AsString := IdSuplyer;
        if Cells[5, s_i] <> '' then
          ParamByName('���������').AsString := Cells[5, s_i]
        else
          ParamByName('���������').Value := Null;
        if Cells[4, s_i] <> '' then
          ParamByName('������������').AsString := AnsiUpperCase(Cells[4, s_i])
        else
          ParamByName('������������').Value := Null;
        ParamByName('��������������').AsString := TypeCode;
        if Cells[8, s_i] <> '' then
          ParamByName('����').AsString := Cells[8, s_i]
        else
          ParamByName('����').Value := Null;
        // if Cells[5, s_i] <> '' then
        // ParamByName('���_������').AsString := Cells[5, s_i]
        // else
        // ParamByName('���_������').Value := Null;
        if Cells[6, s_i] <> '' then
          ParamByName('�����_�_����').AsString := Cells[6, s_i]
        else
          ParamByName('�����_�_����').Value := Null;
        if Cells[9, s_i] <> '' then
          ParamByName('���_����').AsString := Cells[9, s_i]
        else
          ParamByName('���_����').Value := Null;
        if Cells[10, s_i] <> '' then
          ParamByName('S1').AsString := Cells[10, s_i]
        else
          ParamByName('S1').Value := Null;
        if Cells[11, s_i] <> '' then
          ParamByName('S2').AsString := Cells[11, s_i]
        else
          ParamByName('S2').Value := Null;
        if Cells[12, s_i] <> '' then
          ParamByName('S3').AsString := Cells[12, s_i]
        else
          ParamByName('S3').Value := Null;
        if Cells[13, s_i] <> '' then
          ParamByName('S4').AsString := Cells[13, s_i]
        else
          ParamByName('S4').Value := Null;
        if Cells[3, s_i] <> '' then
          ParamByName('�����������').AsString := Cells[3, s_i]
        else
          ParamByName('�����������').Value := Null;
        ParamByName('���������').AsString := CountryCode;
        if Cells[14, s_i] <> '' then
          ParamByName('��������������').AsString := Cells[14, s_i]
        else
          ParamByName('��������������').Value := Null;
        ParamByName('���_��������').AsInteger :=
                                                fAuctionDetail.edtAucType.EditValue;
        ParamByName('���������').AsString := TypeSrez;
        try
          ExecSQL;
          Result := IDA;
        except
          ShowMessage(Cells[0, s_i] + ',' + QuotedStr(Cells[1, s_i]) + ',' +
          QuotedStr(Cells[2, s_i]) + ',' + QuotedStr(Cells[3, s_i]) + ',' +
          QuotedStr(Cells[4, s_i]) + ',' + QuotedStr(Cells[5, s_i]) + ',' +
          QuotedStr(Cells[6, s_i]) + ',' + QuotedStr(Cells[7, s_i]) + ',' +
          QuotedStr(Cells[8, s_i]) + ',' + QuotedStr(Cells[9, s_i]) + ',' +
          QuotedStr(Cells[10, s_i]) + ',' + QuotedStr(Cells[11, s_i]) + ',' +
          QuotedStr(Cells[12, s_i]) + ',' + QuotedStr(Cells[13, s_i]) + ',' +
          QuotedStr(Cells[14, s_i]) + ',' + QuotedStr(Cells[15, s_i]));
          Application.MessageBox('������ �������', '���������',
                                  MB_OK + MB_ICONERROR);
            // FSplash.Hide;
        end;
      end
      else
      begin
        Result := Fields[0].AsInteger;
      end;
    end;
  end;
end;
procedure TfNewAuction.EnableBtn;
begin
end;
procedure TfNewAuction.FormCloseQuery(Sender : TObject; var CanClose : Boolean);
begin
  try
    Excel.Quit;
  except
  end;
  CanClose := True;
  Excel := Unassigned;
end;
procedure TfNewAuction.FormShow(Sender : TObject);
begin
  btnAddClick(Sender);
end;
procedure TfNewAuction.FrameTopPanel1btnSelClick(Sender : TObject);
var
  i, id_plant, id_a : Integer;
begin
  with GridOrder do
    for i := 1 to RowCount - 1 do
    begin
      // ��������� ����������
      id_plant := DetectSupplier(Cells[5, i]);
      if id_plant <> 0 then
      begin
        // ��������� ������������� ������
        id_a := DetectProduct(Cells[4, i], Cells[3, i], i);
        if id_a <> 0 then
        begin
          id_exe := True;
          with Query1 do
          begin
            sql.Clear;
            sql.Add(' INSERT INTO');
            sql.Add(' "�������"."�������"');
            sql.Add(' (');
            sql.Add(' "id_auc_detail",');
            sql.Add(' "������������",');
            sql.Add(' "�������������",');
            sql.Add(' seat,');
            sql.Add(' "����������",');
            sql.Add(' "����������",');
            sql.Add(' "�����������",');
            sql.Add(' "����������",');
            sql.Add(' "������������",');
            sql.Add(' "����������",');
            sql.Add(' "�������",');
            sql.Add(' "�����",');
            sql.Add(' s2,');
            sql.Add(' s3,');
            sql.Add(' s4,');
            sql.Add(' q,');
            sql.Add(' com1,');
            sql.Add(' com2,');
            sql.Add(' pos1,');
            sql.Add(' pos2,');
            sql.Add(' pos3,');
            sql.Add(' "QL",');
            sql.Add(' "MPS",');
            sql.Add(' "������������",');
            sql.Add(' "���������������",');
            sql.Add(' "���������",');
            sql.Add(' "����������������",');
            sql.Add(' "���������������",');
            sql.Add(' "���_����������",');
            sql.Add(' "�����������"');
            sql.Add(' )');
            sql.Add(' VALUES (');
            // sql.Add(' :����������,');
            sql.Add(' :id_auc_detail,');
            sql.Add(' :������������,');
            sql.Add(' :�������������,');
            sql.Add(' :seat,');
            sql.Add(' :����������,');
            sql.Add(' :����������,');
            sql.Add(' :�����������,');
            sql.Add(' :����������,');
            sql.Add(' :������������,');
            sql.Add(' :����������,');
            sql.Add(' :�������,');
            sql.Add(' :�����,');
            sql.Add(' :s2,');
            sql.Add(' :s3,');
            sql.Add(' :s4,');
            sql.Add(' :q,');
            sql.Add(' :com1,');
            sql.Add(' :com2,');
            sql.Add(' :pos1,');
            sql.Add(' :pos2,');
            sql.Add(' :pos3,');
            sql.Add(' :QL,');
            sql.Add(' :MPS,');
            sql.Add(' :������������,');
            sql.Add(' :���������������,');
            sql.Add(' :���������,');
            sql.Add(' :����������������,');
            sql.Add(' :���������������,');
            sql.Add(' :���_����������,');
            sql.Add(' :�����������');
            sql.Add(' );');
            // ParamByName('����������').AsDate := s_date;
            ParamByName('id_auc_detail').AsInteger := fAuctionDetail.IDAucZakup;
            ParamByName('������������').AsString := Cells[22, i];
            ParamByName('�������������').AsString := Cells[23, i];
            ParamByName('seat').AsString := Cells[0, i];
            ParamByName('����������').AsString := Cells[1, i];
            ParamByName('����������').AsString := Cells[2, i];
            ParamByName('�����������').AsString := Cells[3, i];
            ParamByName('����������').AsString := Cells[6, i];
            ParamByName('������������').AsString := Cells[7, i];
            ParamByName('����������').AsString := Cells[8, i];
            ParamByName('�������').AsString := Cells[9, i];
            ParamByName('�����').AsString := Cells[10, i];
            if Cells[11, i] <> '' then
              ParamByName('s2').AsString := Cells[11, i];
            if Cells[12, i] <> '' then
              ParamByName('s3').AsString := Cells[12, i];
            if Cells[13, i] <> '' then
              ParamByName('s4').AsString := Cells[13, i];
            if Cells[14, i] <> '' then
              ParamByName('q').AsString := Cells[14, i];
            if Cells[15, i] <> '' then
              ParamByName('com1').AsString := Cells[15, i];
            if Cells[16, i] <> '' then
              ParamByName('com2').AsString := Cells[16, i];
            if Cells[17, i] <> '' then
              ParamByName('pos1').AsString := Cells[17, i];
            if Cells[18, i] <> '' then
              ParamByName('pos2').AsString := Cells[18, i];
            if Cells[19, i] <> '' then
              ParamByName('pos3').AsString := Cells[19, i];
            if Cells[20, i] <> '' then
              ParamByName('QL').AsString := Cells[20, i];
            if Cells[21, i] <> '' then
              ParamByName('MPS').AsString := Cells[21, i];
            ParamByName('������������').AsString := Cells[24, i];
            ParamByName('���������������').AsString := Cells[25, i];
            ParamByName('���������').AsString := Cells[26, i];
            ParamByName('����������������').AsInteger := id_plant;
            ParamByName('���������������').AsInteger := id_a;
            ParamByName('���_����������').AsInteger := s_id_postav;
            if Cells[27, i] <> '' then
              ParamByName('�����������').AsString := Cells[27, i];
            ExecSQL;
            // Abort;
          end;
        end
        else
          id_exe := False;
      end
      else
        id_exe := False;
      // if id_exe = False then
      // begin
      // with Query1 do
      // begin
      // Close;
      // sql.Text := 'delete from  "�������"."�������" where ����������=:d';
      // ParamByName('d').AsDate := s_date;
      // ExecSQL;
      // end;
      // Application.MessageBox('�������� �������� �������������',
      // '������ ���������', MB_OK + MB_ICONERROR);
      // abort;
      // end;
      fNewAuction.Close;
    end;
end;
end.
