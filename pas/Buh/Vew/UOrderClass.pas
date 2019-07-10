unit UOrderClass;
interface
type
  TOrderClass = class(TObject)
  private
    FIDOrder : Integer;
  public
    procedure SetIDOrder(const Value : Integer);
    property IDOrder : Integer read FIDOrder write SetIDOrder;
  end;
implementation
procedure TOrderClass.SetIDOrder(const Value : Integer);
begin
  FIDOrder := Value;
end;
end.
