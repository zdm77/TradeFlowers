unit UNewProductAuc;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ComObj, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Grids, UFrameTopPanel, dxBar;
type
  TfNewProductAuc = class(TForm)
    FrameTopPanel1 : TFrameTopPanel;
    GridOrder : TStringGrid;
    Query1 : TUniQuery;
    dsAuc : TDataSource;
    dlgOpen1 : TOpenDialog;
    Query2 : TUniQuery;
    procedure FormClose(Sender : TObject; var Action : TCloseAction);
    procedure FormCloseQuery(Sender : TObject; var CanClose : Boolean);
    procedure FrameTopPanel1btnAddClick(Sender : TObject);
    procedure FrameTopPanel1btnSelClick(Sender : TObject);
  private
    Excel : Variant;
    { Private declarations }
  public
    function DetectExist(s_cel : integer) : Boolean;
    function DetectStruct(s_name, s_country : string) : integer;
    function InsertPlant(s_name : string; s_id_country : integer) : integer;
    { Public declarations }
  end;

var
  fNewProductAuc : TfNewProductAuc;
implementation
{$R *.dfm}

uses USplash, UDataModule1, PGSQL, UFCountry;
function TfNewProductAuc.DetectExist(s_cel : integer) : Boolean;
var
  s : string;
begin
  with Query2 do
  begin
    Close;
    s := s + 'select id from "�������"."������������" where ';
    if Trim(GridOrder.Cells[0, s_cel]) <> '' then
      s := s + ' �������������= ' +
    QuotedStr(Trim(AnsiUpperCase(GridOrder.Cells[0, s_cel])))
    else
      s := s + ' and ������������� is null';
    //
    if Trim(GridOrder.Cells[4, s_cel]) <> '' then
      s := s + ' and upper(����)= ' +
    QuotedStr(Trim(AnsiUpperCase(GridOrder.Cells[4, s_cel])))
    else
      s := s + ' and ���� is null';
    //
    if Trim(GridOrder.Cells[7, s_cel]) <> '' then
      s := s + ' and upper(���_����)= ' +
    QuotedStr(Trim(AnsiUpperCase(GridOrder.Cells[7, s_cel])))
    else
      s := s + ' and ���_���� is null';
    //
    if GridOrder.Cells[8, s_cel] <> '' then
      s := s + ' and "S1"= ' +
    QuotedStr(Trim(AnsiUpperCase(GridOrder.Cells[8, s_cel])))
    else
      s := s + ' and "S1" is null';
    //
    if GridOrder.Cells[9, s_cel] <> '' then
      s := s + ' and "S2"= ' +
    QuotedStr(Trim(AnsiUpperCase(GridOrder.Cells[9, s_cel])))
    else
      s := s + ' and "S2" is null';
    //
    if GridOrder.Cells[10, s_cel] <> '' then
      s := s + ' and "S3"= ' +
    QuotedStr(Trim(AnsiUpperCase(GridOrder.Cells[10, s_cel])))
    else
      s := s + ' and "S3" is null';
    //
    if GridOrder.Cells[11, s_cel] <> '' then
      s := s + ' and "S4"= ' +
    QuotedStr(Trim(AnsiUpperCase(GridOrder.Cells[11, s_cel])))
    else
      s := s + ' and "S4" is null';
    //
    if GridOrder.Cells[13, s_cel] <> '' then
      s := s + ' and ���������= ' +
    QuotedStr(Trim(AnsiUpperCase(GridOrder.Cells[13, s_cel])))
    else
      s := s + ' and ��������� is null';
    //
    if GridOrder.Cells[14, s_cel] <> '' then
      s := s + ' and ��������������= ' +
    QuotedStr(Trim(AnsiUpperCase(GridOrder.Cells[14, s_cel])))
    else
      s := s + ' and �������������� is null';
    // if GridOrder.Cells[3, s_cel] <> '' then
    // s := s + ' and ��������������= ' +
    // QuotedStr(Trim(AnsiUpperCase(GridOrder.Cells[3, s_cel])))
    // else
    // s := s + ' and �������������� is null';
    sql.Text := s;
    // sql.SaveToFile('1.sql');
    Open;
    // sql.Text :=
    // 'select id from "�������"."������������" where upper(�������������)=:������������� '
    // + ' and  upper(�����������)  =:����������� ' +
    // ' and  upper(����)  =:���� ' + ' and  upper(���_����)  =:���_���� ' +
    // ' and  "S1" =:S1 ' + ' and  "S2"  =:S2 ' + ' and  "S3"  =:S3 ' +
    // ' and  "S4"  =:S4 ' + ' and  upper(���������)  =:��������� ' +
    // ' and  upper(��������������)  =:�������������� ' + ' limit 1';
    // if GridOrder.Cells[0, s_cel] <> '' then
    // ParamByName('�������������').AsString :=
    // Trim(AnsiUpperCase(GridOrder.Cells[0, s_cel]));
    // if GridOrder.Cells[12, s_cel] <> '' then
    // ParamByName('�����������').AsString :=
    // Trim(AnsiUpperCase(GridOrder.Cells[12, s_cel]));
    // if GridOrder.Cells[4, s_cel] <> '' then
    // ParamByName('����').AsString :=
    // Trim(AnsiUpperCase(GridOrder.Cells[4, s_cel]));
    // if GridOrder.Cells[7, s_cel] <> '' then
    // ParamByName('���_����').AsString :=
    // Trim(AnsiUpperCase(GridOrder.Cells[7, s_cel]));
    // if GridOrder.Cells[8, s_cel] <> '' then
    // ParamByName('S1').AsString :=
    // Trim(AnsiUpperCase(GridOrder.Cells[8, s_cel]));
    // if GridOrder.Cells[9, s_cel] <> '' then
    // ParamByName('S2').AsString :=
    // Trim(AnsiUpperCase(GridOrder.Cells[9, s_cel]));
    // if GridOrder.Cells[10, s_cel] <> '' then
    // ParamByName('S3').AsString :=
    // Trim(AnsiUpperCase(GridOrder.Cells[10, s_cel]));
    // if GridOrder.Cells[11, s_cel] <> '' then
    // ParamByName('S4').AsString :=
    // Trim(AnsiUpperCase(GridOrder.Cells[11, s_cel]));
    // if GridOrder.Cells[13, s_cel] <> '' then
    // ParamByName('���������').AsString :=
    // Trim(AnsiUpperCase(GridOrder.Cells[13, s_cel]));
    // if GridOrder.Cells[14, s_cel] <> '' then
    // ParamByName('��������������').AsString :=
    // Trim(AnsiUpperCase(GridOrder.Cells[14, s_cel]));
    // Open;
    if Fields[0].AsString <> '' then
      Result := True
    else
      Result := False;
  end;
end;
function TfNewProductAuc.DetectStruct(s_name, s_country : string) : integer;
var
  idCountry, idPlant : integer;
  s : string;
begin
  with Query2 do
  begin
    Close;
    sql.Text :=
               'select id, ���_������   from "���������"."���������" sv where upper(sv.uni_name)=:n';
    ParamByName('n').AsString := Trim(AnsiUpperCase(s_name));
    Open;
    if Fields[0].AsString = '' then
    begin
      // ���������� ������
      Close;
      sql.Text :=
                 'select id, name from "���������"."������" where upper(code)=:c';
      ParamByName('c').AsString := Trim(AnsiUpperCase(s_country));
      Open;
      if Fields[0].AsString <> '' then
      begin
        Result := InsertPlant(s_name, Fields[0].AsInteger);
      end
      else
      begin
        s := '������ - "' + s_country + '" �� �������.';
        Application.MessageBox(pchar(s), '������', MB_OK + MB_ICONWARNING);
        Result := 0;
        // Application.CreateForm(TFCountry, FCountry);
        // with FCountry do
        // begin
        // FormStyle := fsNormal;
        // Visible := False;
        // FrameCountry1.ShowCountry();
        // FrameCountry1.FrameTopPanel1.btnSel.Visible := ivAlways;
        // Width:=640;
        // ShowModal;
        //
        // if IDSelect = True then
        // begin
        // Result := InsertPlant(s_name, FrameCountry1.QueryCountry.Fields[0]
        // .AsInteger);
        // end
        // else
        // Result := 0;
        // end;
      end;
    end
    else
      Result := Fields[0].AsInteger;
  end;
end;
procedure TfNewProductAuc.FormClose(Sender : TObject; var Action : TCloseAction);
begin
  FSplash.Hide;
end;
procedure TfNewProductAuc.FormCloseQuery(Sender : TObject;
                                            var CanClose : Boolean);
begin
  try
    Excel.Quit;
  except
  end;
  CanClose := True;
  Excel := Unassigned;
end;
procedure TfNewProductAuc.FrameTopPanel1btnAddClick(Sender : TObject);
var
  Rows, Cols, i, j : integer;
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
    try
      Excel.Quit;
    except
    end;
    Excel := Unassigned;
    // GridOrder.ColWidths[1] := 255;
  end;
end;
procedure TfNewProductAuc.FrameTopPanel1btnSelClick(Sender : TObject);
var
  i : integer;
  s : string;
  n : integer;
begin
  with Query1 do
  begin
    // DM1.dbUpd.StartTransaction;
    sql.Clear;
    sql.Add(' INSERT INTO');
    sql.Add(' "�������"."������������"');
    sql.Add(' (');
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
    sql.Add(' "���_���������",');
    sql.Add(' "�������"');
    sql.Add(' )');
    sql.Add(' VALUES (');
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
    sql.Add(' :�������');
    sql.Add(' );');
    with GridOrder do
      for i := 1 to RowCount - 1 do
      begin
        FSplash.Show();
        FSplash.Update;
        // �������� ����
        if DetectExist(i) = False then
        begin
          n := DetectStruct(Cells[1, i], Cells[13, i]);
          if n <> 0 then
          begin
            ParamByName('���_���������').AsInteger :=
                                                     DetectStruct(Cells[1, i], Cells[13, i]);
            // sql.Add('(');
            // sql.Add(Cells[0, i] + ',' + QuotedStr(Cells[1, i]) + ',' +
            // QuotedStr(Cells[2, i]) + ',' + QuotedStr(Cells[3, i]) + ',' +
            // QuotedStr(Cells[4, i]) + ',' + QuotedStr(Cells[5, i]) + ',' +
            // QuotedStr(Cells[6, i]) + ',' + QuotedStr(Cells[7, i]) + ',' +
            // QuotedStr(Cells[8, i]) + ',' + QuotedStr(Cells[9, i]) + ',' +
            // QuotedStr(Cells[10, i]) + ',' + QuotedStr(Cells[11, i]) + ',' +
            // QuotedStr(Cells[12, i]) + ',' + QuotedStr(Cells[13, i]) + ',' +
            // QuotedStr(Cells[14, i]) + ',' + QuotedStr(Cells[15, i]));
            // sql.Add('),')
            if Cells[0, i] <> '' then
              ParamByName('�������������').AsString := Cells[0, i]
            else
              ParamByName('�������������').Value := Null;
            if Cells[1, i] <> '' then
              ParamByName('���������').AsString := Cells[1, i]
            else
              ParamByName('���������').Value := Null;
            if Cells[2, i] <> '' then
              ParamByName('������������').AsString := AnsiUpperCase(Cells[2, i])
            else
              ParamByName('������������').Value := Null;
            if Cells[3, i] <> '' then
              ParamByName('��������������').AsString := Cells[3, i]
            else
              ParamByName('��������������').Value := Null;
            if Cells[4, i] <> '' then
              ParamByName('����').AsString := Cells[4, i]
            else
              ParamByName('����').Value := Null;
            if Cells[5, i] <> '' then
              ParamByName('���_������').AsString := Cells[5, i]
            else
              ParamByName('���_������').Value := Null;
            if Cells[6, i] <> '' then
              ParamByName('�����_�_����').AsString := Cells[6, i]
            else
              ParamByName('�����_�_����').Value := Null;
            if Cells[7, i] <> '' then
              ParamByName('���_����').AsString := Cells[7, i]
            else
              ParamByName('���_����').Value := Null;
            if Cells[8, i] <> '' then
              ParamByName('S1').AsString := Cells[8, i]
            else
              ParamByName('S1').Value := Null;
            if Cells[9, i] <> '' then
              ParamByName('S2').AsString := Cells[9, i]
            else
              ParamByName('S2').Value := Null;
            if Cells[10, i] <> '' then
              ParamByName('S3').AsString := Cells[10, i]
            else
              ParamByName('S3').Value := Null;
            if Cells[11, i] <> '' then
              ParamByName('S4').AsString := Cells[11, i]
            else
              ParamByName('S4').Value := Null;
            if Cells[12, i] <> '' then
              ParamByName('�����������').AsString := Cells[12, i]
            else
              ParamByName('�����������').Value := Null;
            if Cells[13, i] <> '' then
              ParamByName('���������').AsString := AnsiUpperCase(Cells[13, i])
            else
              ParamByName('���������').Value := Null;
            if Cells[14, i] <> '' then
              ParamByName('��������������').AsString := Cells[14, i]
            else
              ParamByName('��������������').Value := Null;
            if Cells[15, i] <> '' then
              ParamByName('���������').AsString := Cells[15, i]
            else
              ParamByName('���������').Value := Null;
            ParamByName('�������').AsString := Trim(Cells[16, i]);
            try
              ExecSQL;
            except
              ShowMessage(Cells[0, i] + ',' + QuotedStr(Cells[1, i]) + ',' +
              QuotedStr(Cells[2, i]) + ',' + QuotedStr(Cells[3, i]) + ',' +
              QuotedStr(Cells[4, i]) + ',' + QuotedStr(Cells[5, i]) + ',' +
              QuotedStr(Cells[6, i]) + ',' + QuotedStr(Cells[7, i]) + ',' +
              QuotedStr(Cells[8, i]) + ',' + QuotedStr(Cells[9, i]) + ',' +
              QuotedStr(Cells[10, i]) + ',' + QuotedStr(Cells[11, i]) + ',' +
              QuotedStr(Cells[12, i]) + ',' + QuotedStr(Cells[13, i]) + ',' +
              QuotedStr(Cells[14, i]) + ',' + QuotedStr(Cells[15, i]));
              Application.MessageBox('������ �������', '���������',
                                      MB_OK + MB_ICONERROR);
              FSplash.Hide;
            end;
          end
          else
            Abort;
        end;
        FSplash.lblComment.Caption := '���������� �������: ' + IntToStr(i) +
      ' �� ' + IntToStr(RowCount);
      end;
    // sql.Text := Copy(sql.Text, 0, length(sql.Text) - 3);
    // ShowMessage(sql.Text);
    FSplash.Hide;
    Application.MessageBox('������ ��������', '���������',
                            MB_OK + MB_ICONINFORMATION);
    fNewProductAuc.Close;
  end;
end;
function TfNewProductAuc.InsertPlant(s_name : string;
                                        s_id_country : integer) : integer;
var
  idPlant : integer;
begin
  with Query2 do
  begin
    idPlant := PGSQL.NewID('���������.���������_id_seq');
    Close;
    sql.Text :=
               'insert into "���������"."���������" (id, name, brand, ���_������, uni_name, reg_name)'
               + ' values (:id, :name, :brand, :���_������, :uni_name, :reg_name)';
    ParamByName('id').AsInteger := idPlant;
    ParamByName('name').AsString := AnsiUpperCase(s_name);
    ParamByName('brand').AsString := AnsiUpperCase(s_name);
    ParamByName('uni_name').AsString := AnsiUpperCase(s_name);
    ParamByName('reg_name').AsString := AnsiUpperCase(s_name);
    ParamByName('���_������').AsInteger := s_id_country;
    ExecSQL;
    Result := idPlant;
  end;
end;
end.
