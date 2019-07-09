unit ProductClass;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

Type
  TProductClass = class (TList)
  private
    // ���� ������ ����� ������ ������

    FList: TList;
    // CustomerNumber: Integer;
  public
    // �������� ��� ������ �������� ���� ������
    // property Name: String read ProductName;
    // property Number: Integer read CustomerNumber;
    // �����������
    // Name : String;
      ProductName: String;
    constructor Create();
    function getProducts(): TList;
  private
    // TList ������ �� ���������� � ���� ����
    // ����� ��� ������ ����������� ������ ������� ������
  end;

implementation

uses
  UDataModule1;

// constructor TProductClass.Create(const CustomerName: String);
// var
// i: integer;
// begin
// // ���������� ���������� ����������
// self.ProductName := ProductName;
// end;
constructor TProductClass.Create;
begin
  inherited; { ���?��� ���� ������� ����������� ������-�������� }
  FList := TList.Create; { ������� ��������� ������ ������ }
  // self.ProductName := ProductName;
end;

function TProductClass.getProducts(): TList;
var
  product: TProductClass;
  i: integer;
begin
  product := TProductClass.Create;
  with DM1.Query1 do
  begin
    CLose;
    sql.Text := 'select * from ���������.���������';
    Open;
    while not eof do
    begin
      product.ProductName := FieldByName('name').AsString;
      FList.Add(product);
      Next;
    end;
    Result := FList;
  end;
end;

end.
