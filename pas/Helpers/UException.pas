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
    Application.MessageBox('������� ��������� ������. �������� �� ��������.', '������', MB_OK + MB_ICONERROR)
  else
    Application.MessageBox(pchar(AExcept.Message), '������', MB_OK + MB_ICONERROR)
end;
end.
