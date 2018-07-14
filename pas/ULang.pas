unit ULang;

interface

uses
  Uni,
  System.SysUtils,
  cxGridDBTableView;
function Translit(s: string): string;
function TranslitEn(s: string): string;
procedure TranslateGridCaption(col_uni_name: TcxGridDBColumn = nil;
  col_reg_name: TcxGridDBColumn = nil; col_name: TcxGridDBColumn = nil);

implementation

uses
  UPasswd;

function Translit(s: string): string;
const
  rus: string =
    'абвгдеёжзийклмнопрстуфхцчшщьыъэюяАБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЬЫЪЭЮЯ';
  lat: array [1 .. 66] of string = ('a', 'b', 'v', 'g', 'd', 'e', 'yo', 'zh',
    'z', 'i', 'y', 'k', 'l', 'm', 'n', 'o', 'p', 'r', 's', 't', 'u', 'f', 'kh',
    'ts', 'ch', 'sh', 'shch', '''', 'y', '''', 'e', 'yu', 'ya', 'A', 'B', 'V',
    'G', 'D', 'E', 'Yo', 'Zh', 'Z', 'I', 'Y', 'K', 'L', 'M', 'N', 'O', 'P', 'R',
    'S', 'T', 'U', 'F', 'Kh', 'Ts', 'Ch', 'Sh', 'Shch', '''', 'Y', '''', 'E',
    'Yu', 'Ya');
var
  p, i, l: integer;
begin
  Result := '';
  l := Length(s);
  for i := 1 to l do
  begin
    p := Pos(s[i], rus);
    if p < 1 then
      Result := Result + s[i]
    else
      Result := Result + lat[p];
  end;
end;

function TranslitEn(s: string): string;
const
  rus: string = 'abcdefghigklmnopqrstuvwxyz';
  lat: array [1 .. 66] of string = ('а', 'б', 'с', 'г', 'д', 'е', '', 'zh', 'z',
    'i', 'y', 'k', 'l', 'm', 'n', 'o', 'p', 'r', 's', 't', 'u', 'f', 'kh', 'ts',
    'ch', 'sh', 'shch', '''', 'y', '''', 'e', 'yu', 'ya', 'A', 'B', 'V', 'G',
    'D', 'E', 'Yo', 'Zh', 'Z', 'I', 'Y', 'K', 'L', 'M', 'N', 'O', 'P', 'R', 'S',
    'T', 'U', 'F', 'Kh', 'Ts', 'Ch', 'Sh', 'Shch', '''', 'Y', '''', 'E',
    'Yu', 'Ya');
var
  p, i, l: integer;
begin
  Result := '';
  l := Length(s);
  for i := 1 to l do
  begin
    p := Pos(s[i], rus);
    if p < 1 then
      Result := Result + s[i]
    else
      Result := Result + lat[p];
  end;
end;

procedure TranslateGridCaption(col_uni_name: TcxGridDBColumn = nil;
  col_reg_name: TcxGridDBColumn = nil; col_name: TcxGridDBColumn = nil);
begin
  { универсальное имя }
  case FPasswd.Lang of
    0:
      col_uni_name.Caption := 'Международное';
    1:
      col_uni_name.Caption := 'International';
    2:
      col_uni_name.Caption := 'Internacional';
  end;
  { русское имя }
  case FPasswd.Lang of
    0:
      col_name.Caption := 'Русское';
    1:
      col_name.Caption := 'Russian';
    2:
      col_name.Caption := 'Ruso';
  end;
  { испанское имя }
  case FPasswd.Lang of
    0:
      col_reg_name.Caption := 'Региональное';
    1:
      col_reg_name.Caption := 'International';
    2:
      col_reg_name.Caption := 'Regional';
  end;
end;

end.
