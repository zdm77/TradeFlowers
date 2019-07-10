unit UFrameTopPanel;
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
  dxSkinsCore,
  
  dxSkinsdxBarPainter,
  cxCheckBox,
  cxTextEdit,
  cxRadioGroup,
  dxBar,
  cxBarEditItem,
  cxClasses,
  Vcl.StdCtrls,
  cxLabel,
  
  dxSkinDevExpressStyle, dxSkinsDefaultPainters, dxSkinOffice2007Blue;
type
  TFrameTopPanel = class(TFrame)
    barProduct : TdxBarManager;
    dxbrBardxbrmngr1Bar1 : TdxBar;
    btnAdd : TdxBarLargeButton;
    btnAddGroup : TdxBarLargeButton;
    btnEdit : TdxBarLargeButton;
    btnDel : TdxBarLargeButton;
    btnRest : TdxBarLargeButton;
    btnRefresh : TdxBarLargeButton;
    btnSel : TdxBarLargeButton;
    btnFilter : TdxBarLargeButton;
    btnPrint : TdxBarLargeButton;
    pmПедидо : TdxBarPopupMenu;
    btnPrintLogistic : TdxBarButton;
    btnRazdel : TdxBarLargeButton;
    btnЗаказ : TdxBarButton;
    pmЗаказ : TdxBarPopupMenu;
    btnЗакупка : TdxBarButton;
    pmФактура : TdxBarPopupMenu;
    btnReportClients : TdxBarButton;
    pmClients : TdxBarPopupMenu;
    btnCardClient : TdxBarButton;
    btnExport : TdxBarLargeButton;
    btnSave : TdxBarLargeButton;
    btnAWB : TdxBarLargeButton;
    btnArch : TcxBarEditItem;
    btnLoadPrice : TdxBarLargeButton;
    cxBarEditItem1 : TcxBarEditItem;
    procedure btnSelClick(Sender : TObject);
    procedure FrameEnter(Sender : TObject);
    procedure btnPrintClick(Sender : TObject);
  private
    { Private declarations }
  public
    id_select : Boolean;
    procedure SetLang;
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  UPasswd;
procedure TFrameTopPanel.btnPrintClick(Sender : TObject);
begin
  btnPrint.DropDown(true);
end;
procedure TFrameTopPanel.btnSelClick(Sender : TObject);
begin
  id_select := true;
end;
procedure TFrameTopPanel.FrameEnter(Sender : TObject);
begin
  SetLang;
end;
procedure TFrameTopPanel.SetLang;
var
  a : array [0..255] of Char;
  StrTblOfs : Integer;
begin
  case FPasswd.Lang of
    0 : StrTblOfs := 0;
    1 : StrTblOfs := 1000;
    2 : StrTblOfs := 2000;
  end;
  { Загружаем и устанавливаем заголовок кнопки "Yes" в соответствии с языком }
  if LoadString(hInstance, StrTblOfs + 21, @a, sizeof(a)) <> 0 then
    btnAddGroup.Caption := StrPas(a);
  if LoadString(hInstance, StrTblOfs + 22, @a, sizeof(a)) <> 0 then
    btnAdd.Caption := StrPas(a);
  if LoadString(hInstance, StrTblOfs + 23, @a, sizeof(a)) <> 0 then
    btnEdit.Caption := StrPas(a);
  if LoadString(hInstance, StrTblOfs + 24, @a, sizeof(a)) <> 0 then
    btnDel.Caption := StrPas(a);
  if LoadString(hInstance, StrTblOfs + 25, @a, sizeof(a)) <> 0 then
    btnRest.Caption := StrPas(a);
  if LoadString(hInstance, StrTblOfs + 26, @a, sizeof(a)) <> 0 then
    btnRefresh.Caption := StrPas(a);
  if LoadString(hInstance, StrTblOfs + 32, @a, sizeof(a)) <> 0 then
    btnSel.Caption := StrPas(a);
  case FPasswd.Lang of
    1 :
    begin
      // // Caption := 'Directories';
      // ItemТовары.Caption := 'Nomenclature';
      // ItemКлиент.Caption := 'Clients';
      // ItemСтраны.Caption := 'Country';
      // ItemТипы.Caption := 'Types';
      // ItemСвойства.Caption := 'Properties';
      // ItemПлантации.Caption := 'Plantation';
      // ItemСорта.Caption := 'Grades';
      // ItemОрганизация.Caption := 'Organization';
      // ItemПользователи.Caption := 'Users';
      // ItemРоль.Caption := 'The role';
      // GroupОснова.Caption := 'Main';
      // GroupСтруктура.Caption := 'Structure';
      // GroupОрг.Caption := 'Organization';
      // GroupАдмин.Caption := 'Administration';
      // ItemКарго.Caption := 'Cargo';
      // ItemАвиалинии.Caption := 'Airlines';
    end;
    2 :
    begin
      btnExport.Caption := 'En Excel';
      btnRazdel.Caption := 'Dividir';
      btnSave.Caption := 'Conservar';
    end;
  end;
  // case FPasswd.Lang of
  // 0:
  // begin
  // btnAdd.Caption:='Добавить';
  // btnAdd.Caption:='Редактировать';
  // btnDel.Caption:='Добавить';
  // btnRest.Caption:='Восстановить';
  // end;
  // end;
  // end;
end;
end.
