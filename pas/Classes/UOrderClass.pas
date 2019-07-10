unit UOrderClass;
interface
uses UMarkingClass;
type
  TOrderClass = class
  private
    FIDOrder : Integer;
    Marking : TMarkingClass;
    function GetNameMarking : string;
    procedure SetIDorder(const Value : Integer);
    function GetNameKargo : string;
    function GetNameTrack : string;
    function GetNamePricooling : string;
    function GetIDKargo : Integer;
    function GetIDMarking : Integer;
    function GetIDPricooling : Integer;
    function GetIDTrack : Integer;
    procedure SetNameMarking(const Value : string);
    procedure SetIDMarking(const Value : Integer);
    procedure SetIDKargo(const Value : Integer);
    procedure SetIDPricooling(const Value : Integer);
    procedure SetIDTrack(const Value : Integer);
  public
    constructor Create(idMarking : Integer);
    property IDOrder : Integer read FIDOrder write SetIDorder;
    property NameMarking : string read GetNameMarking write SetNameMarking;
    property NameKargo : string read GetNameKargo;
    property NameTrack : string read GetNameTrack;
    property NamePricooling : string read GetNamePricooling;
    property idMarking : Integer read GetIDMarking write SetIDMarking;
    property IDKargo : Integer read GetIDKargo write SetIDKargo;
    property IDTrack : Integer read GetIDTrack write SetIDTrack;
    property IDPricooling : Integer read GetIDPricooling write SetIDPricooling;
  end;
implementation
constructor TOrderClass.Create(idMarking : Integer);
begin
  idMarking := idMarking;
  Marking := TMarkingClass.Create;
  Marking.setNameById(idMarking);
  Marking.getDefaultParam;
end;
function TOrderClass.GetIDKargo : Integer;
begin
  Result := Marking.IDKargo;
end;
function TOrderClass.GetIDMarking : Integer;
begin
  // Result := Marking.id;
end;
function TOrderClass.GetIDPricooling : Integer;
begin
  Result := Marking.IDPricooling;
end;
function TOrderClass.GetIDTrack : Integer;
begin
  Result := Marking.IDTrack;
end;
function TOrderClass.GetNameKargo : string;
begin
  Result := Marking.NameKargo;
end;
function TOrderClass.GetNameMarking : string;
begin
  Result := Marking.getName;
end;
function TOrderClass.GetNameTrack : string;
begin
  Result := Marking.NameTrack;
end;
function TOrderClass.GetNamePricooling : string;
begin
  Result := Marking.NamePricooling;
end;
procedure TOrderClass.SetIDKargo(const Value : Integer);
begin
  IDKargo := value;
end;
procedure TOrderClass.SetIDMarking(const Value : Integer);
begin
  idMarking := Value;
end;
procedure TOrderClass.SetIDorder(const Value : Integer);
begin
  FIDOrder := Value;
end;
procedure TOrderClass.SetIDPricooling(const Value : Integer);
begin
  IDPricooling := value;
end;
procedure TOrderClass.SetIDTrack(const Value : Integer);
begin
  IDTrack := value;
end;
procedure TOrderClass.SetNameMarking(const Value : string);
begin
end;
end.
