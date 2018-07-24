unit UMarkingClass;

interface

uses Uni, SysUtils;

Type
  TMarkingClass = class(TObject)
  private
  var
    Query: TUniQuery;
    // Поля данных этого нового класса
    // CustomerNumber: Integer;
  public
    procedure setNameById(id: integer);
    function getName(): string;
    procedure getDefaultParam();
    constructor Create();
  private
    IDMarking: integer;
    MarkName: String;

    FIDKargo: integer;
    FIDPricooling: integer;
    FIDTrack: integer;
    FNameTrack: string;
    FNameKargo: string;
    FNamePricooling: string;
    procedure setName(name: string);
    procedure SetIDKargo(const Value: integer);
    procedure SetIDPricooling(const Value: integer);
    procedure SetIDTrack(const Value: integer);

    procedure SetNameKargo(const Value: string);
    procedure SetNamePricooling(const Value: string);
    procedure SetNameTrack(const Value: string);

    // TList объект мы использует в этом коде
    // Метод для показа содержимого нашего объекта списка
  public
    property IDKargo: integer read FIDKargo write SetIDKargo;
    property IDTrack: integer read FIDTrack write SetIDTrack;
    property IDPricooling: integer read FIDPricooling write SetIDPricooling;
    property NameKargo: string read FNameKargo write SetNameKargo;
    property NameTrack: string read FNameTrack write SetNameTrack;
    property NamePricooling: string read FNamePricooling write SetNamePricooling;
  end;

implementation

uses
  UDataModule1;

constructor TMarkingClass.Create();
begin
  Query := TUniQuery.Create(nil);
end;

procedure TMarkingClass.setNameById(id: integer);
begin
  with Query do
  begin
    //dm1.db1.Pooling:=true;
    Connection := DM1.db1;
    sql.Text := 'select * from маркировки.маркировки where id=' + IntToStr(id);
    open;
    setName(fieldbyname('uni_name').asstring);
    IDMarking := id;
  end;
end;

procedure TMarkingClass.SetNameKargo(const Value: string);
begin
  FNameKargo := Value;
end;

procedure TMarkingClass.SetNamePricooling(const Value: string);
begin
  FNamePricooling := Value;
end;

procedure TMarkingClass.SetNameTrack(const Value: string);
begin
  FNameTrack := Value;
end;

procedure TMarkingClass.setName(name: string);
begin
  MarkName := name;
end;

function TMarkingClass.getName(): string;
begin
  Result := MarkName;
end;

procedure TMarkingClass.SetIDKargo(const Value: integer);
begin
  FIDKargo := Value;
end;

procedure TMarkingClass.SetIDPricooling(const Value: integer);
begin
  FIDPricooling := Value;
end;

procedure TMarkingClass.SetIDTrack(const Value: integer);
begin
  FIDTrack := Value;
end;



procedure TMarkingClass.getDefaultParam();
begin
  Query := TUniQuery.Create(nil);
  with Query do
  begin
    Connection := DM1.db1;
    sql.Text := 'SELECT m.id, m."код_карго", m."код_трака", m."код_прикулинга",' +
      ' m.name, m.uni_name, m.reg_name, p.name AS p_name, t.uni_name AS t_uni_name,' +
      ' t.reg_name AS t_reg_name, t.name AS t_name, m."код_клиента",k.name k_name,' +
      ' k.reg_name k_reg_name,  k.uni_name k_uni_name' +
      ' FROM "маркировки"."маркировки" m INNER JOIN "карго"."агенства" k ON (m."код_карго" = k.id)'
      + ' LEFT OUTER JOIN "прикулинг"."агенства" p ON (m."код_прикулинга" = p.id)' +
      ' LEFT OUTER JOIN "траки"."траки" t ON (m."код_трака" = t.id) ' + ' where m.id=' +
      IntToStr(IDMarking);
    open;
    IDKargo := fieldbyname('код_карго').AsInteger;
    IDTrack := fieldbyname('код_трака').AsInteger;
    IDPricooling := fieldbyname('код_прикулинга').AsInteger;
    NameKargo := fieldbyname('k_name').asstring;
    NameTrack := fieldbyname('t_name').asstring;
    NamePricooling := fieldbyname('p_name').asstring;
  end;
end;

end.
