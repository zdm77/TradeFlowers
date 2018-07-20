unit ProductClass;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

Type
  TProductClass = class (TList)
  private
    // Поля данных этого нового класса

    FList: TList;
    // CustomerNumber: Integer;
  public
    // Свойства для чтения значений этих данных
    // property Name: String read ProductName;
    // property Number: Integer read CustomerNumber;
    // Коструктрор
    // Name : String;
      ProductName: String;
    constructor Create();
    function getProducts(): TList;
  private
    // TList объект мы использует в этом коде
    // Метод для показа содержимого нашего объекта списка
  end;

implementation

uses
  UDataModule1;

// constructor TProductClass.Create(const CustomerName: String);
// var
// i: integer;
// begin
// // Сохранение переданных параметров
// self.ProductName := ProductName;
// end;
constructor TProductClass.Create;
begin
  inherited; { Вна?але надо вызвать конструктор класса-родителя }
  FList := TList.Create; { создаем структуры нашего класса }
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
    sql.Text := 'select * from продукция.продукция';
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
