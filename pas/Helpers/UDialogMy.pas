unit UDialogMy;
interface
uses
  TaskDialog;
var
  Dlg : TAdvTaskDialog;
  /// <param name="Instruct">
  /// текст ошибки
  /// </param>
  /// <param name="ExpText">
  /// Текст подробностей в выпадающем меню
  /// </param>
  procedure ErrorDialog(Instruct, ExpText, s_content : string;
                           s_ExpCaption : string = '');
  procedure QuestionDialog(Instruct : string; s_content : string = '');
  procedure ErrorQuestionDialog(Instruct : string; Txt : string = '');
implementation
uses
  UPasswd;
procedure ErrorDialog(Instruct, ExpText, s_content : string;
                         s_ExpCaption : string = '');
begin
  Dlg := TAdvTaskDialog.Create(nil);
  with Dlg do
  begin
    ExpandControlText := s_ExpCaption;
    case FPasswd.edtLang.ItemIndex of
        { русский }
      0 :
      begin
        Title := 'Ошибка';
        CustomButtons.Add('Закрыть');
      end;
      1 :
      begin
        Title := 'Error';
        CustomButtons.Add('Close');
      end;
      2 :
      begin
        Title := 'Falta';
        CustomButtons.Add('Cerrar');
      end;
    end;
    Icon := tiError;
    // CommonButtons := [cbClose];
    Instruction := Instruct;
    ExpandedText := ExpText;
    content := s_content;
    Execute;
  end;
end;
procedure QuestionDialog(Instruct : string; s_content : string = '');
begin
  Dlg := TAdvTaskDialog.Create(nil);
  with Dlg do
  begin
    case FPasswd.edtLang.ItemIndex of
        { русский }
      0 :
      begin
        Title := 'Вопрос';
        CustomButtons.Add('Да');
        CustomButtons.Add('Нет');
      end;
      1 :
      begin
        Title := 'Question';
        CustomButtons.Add('Yes');
        CustomButtons.Add('No');
      end;
      2 :
      begin
        Title := 'Pregunta ';
        CustomButtons.Add('Sí');
        CustomButtons.Add('No');
      end;
    end;
    Icon := tiQuestion;
    // CommonButtons := [cbYes, cbNo];
    Instruction := Instruct;
    content := s_content;
    // Execute;
  end;
end;
procedure ErrorQuestionDialog(Instruct : string; Txt : string = '');
begin
  Dlg := TAdvTaskDialog.Create(nil);
  with Dlg do
  begin
    Title := 'Ошибка';
    Icon := tiError;
    CommonButtons := [cbYes, cbNo];
    Instruction := Instruct;
    content := Txt;
  end;
end;
end.
