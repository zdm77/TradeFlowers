unit UFuncPeoduct;
interface
uses
  Uni;
var
  id_cou : string;
  procedure DetectCountry;
  function StandartInsert(gen, TableName : string) : Integer;
implementation
uses
  UDataModule1;
procedure DetectCountry;
var
  Query1 : TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  DM1.dbUpd.StartTransaction;
  with Query1 do
  begin
    Close;
    SQL.Text := '';
    Open;
  end;
end;
function StandartInsert(gen, TableName : string) : Integer;
var
  Query1 : TUniQuery;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  DM1.dbUpd.StartTransaction;
  with Query1 do
  begin
    Close;
    SQL.Text := 'insert ';
    try
      ExecSQL;
      DM1.dbUpd.Commit;
    except
      DM1.dbUpd.Rollback;
    end;
  end;
end;
end.
