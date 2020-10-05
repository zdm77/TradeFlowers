unit UModelView;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Uni, UFrameTopPanel, cxDBTL, cxGridDBTableView,  Data.Db, cxGridTableView, cxGridCustomTableView, DBAccess, System.Generics.Collections;
type
  TFindControl = class(TcxGridTableController);
  TcxGridFindPanelAccess = class(TcxGridFindPanel);
  TModelView = class(TFrame)
  private
    FDataSource : TUniDataSource;
    FFormEdit : TFormClass;
    FFrameTopPanel : TFrameTopPanel;
    FQuery : TUniQuery;
    FSelectId : Integer;
    FSelectName : string;
    // опять моя заморочка но из вью еще легко вычленить datasource и query
    FView : TcxGridDBTableView;
    // опять моя заморочка но из вью еще легко вычленить datasource и query
    FViewTree : TcxDBTreeList;
    procedure CloseChild(Sender : TObject; var Action : TCloseAction);
    function FrameInitFromForm(AForm : TForm; AFormStyle : TFormStyle = fsNormal) : TModelView;
    function init(AModel : TModelView; AFormStyle : TFormStyle = fsNormal; ANotIn : string = ''; ATopPanel : TFrameTopPanel = nil) : TModelView;
    function ShowMDIChild(const AFormClass : TFormClass) : TForm;
    property View : TcxGridDBTableView read FView write FView;
    property ViewTree : TcxDBTreeList read FViewTree write FViewTree; { Private declarations }
  protected
    procedure AddRecord(AFormClass : TFormClass);
    procedure DeleteRecord(Sender : TObject); virtual;
    procedure EditRecord(Sender : TObject);
    procedure initFilter; virtual; abstract;
    procedure InsertOrUpdate(AInsert : boolean; AFormClass : TFormClass);
    property FormEdit : TFormClass read FFormEdit write FFormEdit;
    property FrameTopPanel : TFrameTopPanel read FFrameTopPanel write FFrameTopPanel;
  public
    function createForm(AFormClass : TFormClass; AIsChild : boolean) : TModelView;
    property DataSource : TUniDataSource read FDataSource write FDataSource;
    property Query : TUniQuery read FQuery write FQuery;
    property SelectId : Integer read FSelectId write FSelectId;
    property SelectName : string read FSelectName write FSelectName; { Public declarations }
  end;
implementation
uses
  UException, UModelEdt;
{$R *.dfm}

procedure TModelView.AddRecord(AFormClass : TFormClass);
begin
  InsertOrUpdate(true, AFormClass);
end;
procedure TModelView.CloseChild(Sender : TObject; var Action : TCloseAction);
begin
  Action := caFree;
  self := nil;
end;
function TModelView.createForm(AFormClass : TFormClass; AIsChild : boolean) : TModelView; var
  f : TForm;
begin
  with f do
  begin
    if AIsChild = true then
    begin
      f := ShowMDIChild(AFormClass);
      WindowState := wsMaximized;
      f.OnClose := CloseChild;
      FrameInitFromForm(f, fsMDIChild);
      FormStyle := fsMDIChild;
      Show;
    end else begin
      f := AFormClass.Create(Application);
      FormStyle := fsNormal;
      WindowState := wsNormal;
      Position := poDesktopCenter;
      FrameInitFromForm(f, fsNormal);
      ShowModal;
    end;
  end;
  Result := self;
end;
procedure TModelView.DeleteRecord(Sender : TObject);
begin
  if Application.MessageBox(pchar('Вы действительно хотите удалить запись?'), 'Вопрос', MB_YESNO + MB_ICONQUESTION) = mrYes then
  begin
    try
      self.Query.Delete;
      self.Query.Refresh; except
      on E : exception do
        getExceptMessage(E);
    end;
  end;
end;
procedure TModelView.EditRecord(Sender : TObject);
begin
  InsertOrUpdate(false, FormEdit);
end;
function TModelView.FrameInitFromForm(AForm : TForm; AFormStyle : TFormStyle = fsNormal) : TModelView; var
  f : TModelView;
  i : Integer;
  t : TFrameTopPanel;
begin
  with AForm do
  begin
    for i := 0 to ControlCount - 1 do
    begin
      if (Components[i] is TModelView) then
      begin
        f := (Components[i] as TModelView);
        t := (f.FindComponent('FrameTopPanel1') as TFrameTopPanel);
        f.init(self, AFormStyle, '', t);
      end;
    end;
    Result := f;
  end;
end;
function TModelView.init(AModel : TModelView; AFormStyle : TFormStyle = fsNormal; ANotIn : string = ''; ATopPanel : TFrameTopPanel = nil) : TModelView; var
  i : Integer;
begin
  // ShowSplash;
  try
    Name := Copy(ClassName, 7, MaxInt);
    for i := 0 to ComponentCount - 1 do
      if (Components[i] is TcxGridDBTableView) then
      begin
        View := (Components[i] as TcxGridDBTableView);
        break;
      end; // если не нашли, пробуем найти дерево
    for i := 0 to ComponentCount - 1 do
      if (Components[i] is TcxDBTreeList) then
      begin
        ViewTree := (Components[i] as TcxDBTreeList);
        break;
      end;
    if View <> nil then
    begin
      Query := (View.DataController.DataSource.DataSet as TUniQuery);
      DataSource := (View.DataController.DataSource as TUniDataSource);
    end else begin
      ViewTree.DataController.DataSource := DataSource;
    end;
    if ANotIn <> '' then
      Query.AddWhere(ANotIn);
    Query.Open;
    try
      if View <> nil then
        TcxGridFindPanelAccess(TFindControl(View.Controller).FindPanel).Edit.SetFocus
    except
    end; except //    CloseSplash;
  end;
  ATopPanel.btnDel.OnClick := DeleteRecord;
  ATopPanel.btnRefresh.OnClick := DeleteRecord;
  if View <> nil then
    View.OnDblClick := EditRecord else ViewTree.OnDblClick := EditRecord; //CloseSplash;
  initFilter;
  Result := self;
end;
procedure TModelView.InsertOrUpdate(AInsert : boolean; AFormClass : TFormClass); var
  f : TForm;
  ds : TUniDataSource;
begin
  f := FormEdit.Create(Application);
  with (f as TModelEdt) do
  begin
    (f as TModelEdt).QuerySender := self.Query;
    IsNew := AInsert;
    FormStyle := fsMDIChild;
    ds := (f.FindComponent('dsEdt') as TUniDataSource);
    AssignQuery(self.Query, ds);
    Show();
    (f as TModelEdt).init;
  end;
end;
function TModelView.ShowMDIChild(const AFormClass : TFormClass) : TForm; var
  i : Integer;
begin
  Result := nil;
  for i := 0 to Application.MainForm.MDIChildCount - 1 do
    if Application.MainForm.MDIChildren[i].ClassType = AFormClass then
    begin
      Result := Application.MainForm.MDIChildren[i];
      Result.Show;
      break;
    end;
  Result := AFormClass.Create(Application);
end;
end.
