unit UException;
interface
uses
  System.SysUtils, Winapi.Windows, Vcl.Forms;
  procedure getExceptMessage(AExcept : Exception);
implementation
procedure getExceptMessage(AExcept : Exception);
var
  p : integer;
begin
  p := Pos(' violates foreign key constraint', AExcept.Message);
  if (p > 0) then
    Application.MessageBox('Имеются связанные данные. Удаление не возможно.', 'Ошибка', MB_OK + MB_ICONERROR)
  else
    Application.MessageBox(pchar(AExcept.Message), 'Ошибка', MB_OK + MB_ICONERROR)
end;
end.
