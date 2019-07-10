unit UFrameUniName;
interface
uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  dxSkinsCore,
  cxTextEdit,
  cxLabel,
  cxGroupBox,
  
  cxCheckBox,
  Vcl.StdCtrls,
  dxbar,
  Menus,
  cxButtons,
  
  dxSkinDevExpressStyle,
  
  dxSkinsDefaultPainters, dxSkinOffice2007Blue;
type
  TFrameUniName = class(TFrame)
    Group1 : TcxGroupBox;
    lblName : TcxLabel;
    lblUniName : TcxLabel;
    edtUniName : TcxTextEdit;
    edtRegName : TcxTextEdit;
    lblRegName : TcxLabel;
    edtName : TcxTextEdit;
    chkUseName : TCheckBox;
    btnTranslit : TcxButton;
    chkUniq : TCheckBox;
    procedure Button1Click(Sender : TObject);
    procedure edtNameExit(Sender : TObject);
    procedure edtNameKeyUp(Sender : TObject; var Key : Word; Shift : TShiftState);
    procedure edtRegNameKeyUp(Sender : TObject; var Key : Word;
                                 Shift : TShiftState);
    procedure edtUniNameExit(Sender : TObject);
    procedure edtUniNameKeyUp(Sender : TObject; var Key : Word;
                                 Shift : TShiftState);
    procedure edtUniNamePropertiesChange(Sender : TObject);
    procedure edtNamePropertiesChange(Sender : TObject);
    procedure edtRegNamePropertiesChange(Sender : TObject);
    procedure btnTranslitClick(Sender : TObject);
    procedure edtNameKeyDown(Sender : TObject; var Key : Word;
                                Shift : TShiftState);
    procedure edtUniNameKeyDown(Sender : TObject; var Key : Word;
                                   Shift : TShiftState);
  private
    { Private declarations }
  public
    function EnableSave : Boolean;
    procedure SetLang;
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  ULang,
  UPasswd;
function Transliterate(const S : String) : String;
const
  A = ['ё', 'ж', 'х', 'ч', 'ш', 'щ', 'ю', 'я', 'Ё', 'Ж', 'Х', 'Ч', 'Ш', 'Щ',
'Ю', 'Я'];
var
  i, j, Len : integer;
begin
  // Определение длины результирующей строки.
  Len := Length(S);
  for i := 1 to Length(S) do
  begin
    // Учитываем буквы, которые преобразуются в пару букв.
    if S[i] in A then
      Inc(Len);
  end;
  // Устанавливаем длину для результирующей строки.
  SetLength(Result, Len);
  // Выполняем транслитерацию.
  j := 1;
  for i := 1 to Length(S) do
  begin
    case S[i] of
      'a' : Result[j] := 'a';
      'б' : Result[j] := 'b';
      'в' : Result[j] := 'v';
      'г' : Result[j] := 'g';
      'д' : Result[j] := 'd';
      'е' : Result[j] := 'e';
      'ё' :
      begin
        Result[j] := 'y';
        Inc(j);
        Result[j] := 'e';
      end;
      'ж' :
      begin
        Result[j] := 'z';
        Inc(j);
        Result[j] := 'h';
      end;
      'з' : Result[j] := 'z';
      'и' : Result[j] := 'i';
      'й' : Result[j] := 'y';
      'к' : Result[j] := 'k';
      'л' : Result[j] := 'l';
      'м' : Result[j] := 'm';
      'н' : Result[j] := 'n';
      'о' : Result[j] := 'o';
      'п' : Result[j] := 'p';
      'р' : Result[j] := 'r';
      'с' : Result[j] := 's';
      'т' : Result[j] := 't';
      'у' : Result[j] := 'u';
      'ф' : Result[j] := 'f';
      'х' :
      begin
        Result[j] := 'c';
        Inc(j);
        Result[j] := 'h';
      end;
      'ц' : Result[j] := 'z';
      'ч' :
      begin
        Result[j] := 'c';
        Inc(j);
        Result[j] := 'h';
      end;
      'ш' :
      begin
        Result[j] := 's';
        Inc(j);
        Result[j] := 'h';
      end;
      'щ' :
      begin
        Result[j] := 'c';
        Inc(j);
        Result[j] := 'h';
      end;
      'ъ' : Result[j] := '''';
      'ы' : Result[j] := 'y';
      'ь' : Result[j] := '''';
      'э' : Result[j] := 'e';
      'ю' :
      begin
        Result[j] := 'y';
        Inc(j);
        Result[j] := 'u';
      end;
      'я' :
      begin
        Result[j] := 'y';
        Inc(j);
        Result[j] := 'a';
      end;
      'А' : Result[j] := 'A';
      'Б' : Result[j] := 'B';
      'В' : Result[j] := 'V';
      'Г' : Result[j] := 'G';
      'Д' : Result[j] := 'D';
      'Е' : Result[j] := 'E';
      'Ё' :
      begin
        Result[j] := 'Y';
        Inc(j);
        Result[j] := 'e';
      end;
      'Ж' :
      begin
        Result[j] := 'Z';
        Inc(j);
        Result[j] := 'h';
      end;
      'З' : Result[j] := 'Z';
      'И' : Result[j] := 'I';
      'Й' : Result[j] := 'Y';
      'К' : Result[j] := 'K';
      'Л' : Result[j] := 'L';
      'М' : Result[j] := 'M';
      'Н' : Result[j] := 'N';
      'О' : Result[j] := 'O';
      'П' : Result[j] := 'P';
      'Р' : Result[j] := 'R';
      'С' : Result[j] := 'S';
      'Т' : Result[j] := 'T';
      'У' : Result[j] := 'U';
      'Ф' : Result[j] := 'F';
      'Х' :
      begin
        Result[j] := 'C';
        Inc(j);
        Result[j] := 'h';
      end;
      'Ц' : Result[j] := 'Z';
      'Ч' :
      begin
        Result[j] := 'C';
        Inc(j);
        Result[j] := 'h';
      end;
      'Ш' :
      begin
        Result[j] := 'S';
        Inc(j);
        Result[j] := 'h';
      end;
      'Щ' :
      begin
        Result[j] := 'C';
        Inc(j);
        Result[j] := 'h';
      end;
      'Ъ' : Result[j] := '''';
      'Ы' : Result[j] := 'Y';
      'Ь' : Result[j] := '''';
      'Э' : Result[j] := 'E';
      'Ю' :
      begin
        Result[j] := 'Y';
        Inc(j);
        Result[j] := 'u';
      end;
      'Я' :
      begin
        Result[j] := 'Y';
        Inc(j);
        Result[j] := 'a';
      end;
    else
      Result[j] := S[i];
    end;
    Inc(j);
  end;
end;
procedure TFrameUniName.btnTranslitClick(Sender : TObject);
begin
  if edtUniName.Text <> '' then
  begin
    edtRegName.Text := edtUniName.Text;
    edtName.Text := edtUniName.Text;
  end
  else
  begin
    if edtName.Text <> '' then
    begin
      edtUniName.Text := Transliterate(edtName.Text);
      edtRegName.Text := Transliterate(edtName.Text);
    end
    else
    begin
      edtName.Text := edtRegName.Text;
      edtUniName.Text := edtRegName.Text;
    end;
  end;
end;
procedure TFrameUniName.Button1Click(Sender : TObject);
begin
  // edtName.Text:=Translit(edtUniName.Text)
end;
procedure TFrameUniName.edtNameExit(Sender : TObject);
begin
  edtRegName.SelectAll;
end;
procedure TFrameUniName.edtNameKeyDown(Sender : TObject; var Key : Word;
                                          Shift : TShiftState);
begin
  if Key = VK_RETURN then
    edtRegName.SetFocus;
end;
procedure TFrameUniName.edtNameKeyUp(Sender : TObject; var Key : Word;
                                        Shift : TShiftState);
begin
  EnableSave;
end;
procedure TFrameUniName.edtNamePropertiesChange(Sender : TObject);
begin
  EnableSave;
end;
procedure TFrameUniName.edtRegNameKeyUp(Sender : TObject; var Key : Word;
                                           Shift : TShiftState);
begin
  EnableSave;
end;
procedure TFrameUniName.edtRegNamePropertiesChange(Sender : TObject);
begin
  EnableSave;
end;
procedure TFrameUniName.edtUniNameExit(Sender : TObject);
begin
  edtName.SelectAll;
end;
procedure TFrameUniName.edtUniNameKeyDown(Sender : TObject; var Key : Word;
                                             Shift : TShiftState);
begin
  if Key = VK_RETURN then
  begin
    btnTranslitClick(Sender);
    edtName.SetFocus;
  end;
end;
procedure TFrameUniName.edtUniNameKeyUp(Sender : TObject; var Key : Word;
                                           Shift : TShiftState);
begin
  EnableSave;
end;
procedure TFrameUniName.edtUniNamePropertiesChange(Sender : TObject);
begin
  EnableSave;
end;
function TFrameUniName.EnableSave : Boolean;
begin
  if (edtName.Text <> '') and (edtUniName.Text <> '') and (edtRegName.Text <> '')
  then
    Result := True
  else
    Result := False;
end;
procedure TFrameUniName.SetLang;
begin
  case FPasswd.edtLang.ItemIndex of
    0 :
    begin
      lblUniName.Caption := 'Международный';
      lblName.Caption := 'Русский';
      lblRegName.Caption := 'Региональный';
      btnTranslit.Caption := 'Клон';
      chkUseName.Caption := 'Использовать в названии';
      chkUniq.Caption := 'Уникальное';
    end;
    1 :
    begin
      lblUniName.Caption := 'International';
      lblName.Caption := 'Russian';
      lblRegName.Caption := 'Regional';
      btnTranslit.Caption := 'Clone';
      chkUseName.Caption := 'Use the name of the';
      chkUniq.Caption := 'Unique';
    end;
    2 :
    begin
      lblUniName.Caption := 'Internacional';
      lblName.Caption := 'Ruso';
      lblRegName.Caption := 'Regional';
      btnTranslit.Caption := 'Clon';
      chkUseName.Caption := 'Usar en el nombre';
      chkUniq.Caption := 'Único';
    end;
  end;
end;
end.
