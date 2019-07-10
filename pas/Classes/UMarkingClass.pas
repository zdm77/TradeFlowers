unit UMarkingClass;
interface
uses Uni, SysUtils;
Type
  TMarkingClass = class(TObject)
  private
  var
    Query : TUniQuery;
    // ���� ������ ����� ������ ������
    // CustomerNumber: Integer;
  public
    procedure setNameById(id : integer);
    function getName() : string;
    procedure getDefaultParam();
    constructor Create();
  private
    IDMarking : integer;
    MarkName : String;
    FIDKargo : integer;
    FIDPricooling : integer;
    FIDTrack : integer;
    FNameTrack : string;
    FNameKargo : string;
    FNamePricooling : string;
    procedure setName(name : string);
    procedure SetIDKargo(const Value : integer);
    procedure SetIDPricooling(const Value : integer);
    procedure SetIDTrack(const Value : integer);
    procedure SetNameKargo(const Value : string);
    procedure SetNamePricooling(const Value : string);
    procedure SetNameTrack(const Value : string);
    // TList ������ �� ���������� � ���� ����
    // ����� ��� ������ ����������� ������ ������� ������
  public
    property IDKargo : integer read FIDKargo write SetIDKargo;
    property IDTrack : integer read FIDTrack write SetIDTrack;
    property IDPricooling : integer read FIDPricooling write SetIDPricooling;
    property NameKargo : string read FNameKargo write SetNameKargo;
    property NameTrack : string read FNameTrack write SetNameTrack;
    property NamePricooling : string read FNamePricooling write SetNamePricooling;
  end;
implementation
uses
  UDataModule1;
constructor TMarkingClass.Create();
begin
  Query := TUniQuery.Create(nil);
end;
procedure TMarkingClass.setNameById(id : integer);
begin
  with Query do
  begin
    //dm1.db1.Pooling:=true;
    Connection := DM1.db1;
    sql.Text := 'select * from ����������.���������� where id=' + IntToStr(id);
    open;
    setName(fieldbyname('uni_name').asstring);
    IDMarking := id;
  end;
end;
procedure TMarkingClass.SetNameKargo(const Value : string);
begin
  FNameKargo := Value;
end;
procedure TMarkingClass.SetNamePricooling(const Value : string);
begin
  FNamePricooling := Value;
end;
procedure TMarkingClass.SetNameTrack(const Value : string);
begin
  FNameTrack := Value;
end;
procedure TMarkingClass.setName(name : string);
begin
  MarkName := name;
end;
function TMarkingClass.getName() : string;
begin
  Result := MarkName;
end;
procedure TMarkingClass.SetIDKargo(const Value : integer);
begin
  FIDKargo := Value;
end;
procedure TMarkingClass.SetIDPricooling(const Value : integer);
begin
  FIDPricooling := Value;
end;
procedure TMarkingClass.SetIDTrack(const Value : integer);
begin
  FIDTrack := Value;
end;
procedure TMarkingClass.getDefaultParam();
begin
  Query := TUniQuery.Create(nil);
  with Query do
  begin
    Connection := DM1.db1;
    sql.Text := 'SELECT m.id, m."���_�����", m."���_�����", m."���_����������",' +
  ' m.name, m.uni_name, m.reg_name, p.name AS p_name, t.uni_name AS t_uni_name,' +
  ' t.reg_name AS t_reg_name, t.name AS t_name, m."���_�������",k.name k_name,' +
  ' k.reg_name k_reg_name,  k.uni_name k_uni_name' +
  ' FROM "����������"."����������" m INNER JOIN "�����"."��������" k ON (m."���_�����" = k.id)'
  + ' LEFT OUTER JOIN "���������"."��������" p ON (m."���_����������" = p.id)' +
  ' LEFT OUTER JOIN "�����"."�����" t ON (m."���_�����" = t.id) ' + ' where m.id=' +
  IntToStr(IDMarking);
    open;
    IDKargo := fieldbyname('���_�����').AsInteger;
    IDTrack := fieldbyname('���_�����').AsInteger;
    IDPricooling := fieldbyname('���_����������').AsInteger;
    NameKargo := fieldbyname('k_name').asstring;
    NameTrack := fieldbyname('t_name').asstring;
    NamePricooling := fieldbyname('p_name').asstring;
  end;
end;
end.
