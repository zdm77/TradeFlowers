unit USelect;

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
  cxStyles,
  dxSkinsCore,

  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxEdit,
  DB,
  cxDBData,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  MemDS,
  DBAccess,
  Uni,
  UFrameTopPanel,
  cxCheckBox,
  cxContainer,
  cxListBox,
  cxTL,
  cxLabel,
  cxTLdxBarBuiltInMenu,
  cxInplaceContainer,
  cxDBTL,
  cxTLData,
  Vcl.ImgList,
  cxMaskEdit,
  Vcl.Menus,
  DBGridEhGrouping,
  GridsEh,
  DBGridEh,
  cxTextEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  cxGroupBox,
  cxNavigator,

  dxSkinDevExpressStyle,

  cxButtonEdit, dxSkinsDefaultPainters, dxSkinOffice2007Blue;

type
  TFSelect = class(TForm)
    FrameTopPanel1: TFrameTopPanel;
    QuerySelect: TUniQuery;
    dsSelect: TDataSource;
    GridSelect: TcxGrid;
    ViewSelect: TcxGridDBTableView;
    ColumnUniName: TcxGridDBColumn;
    LevelOrg: TcxGridLevel;
    ColumnSel: TcxGridDBColumn;
    il1: TImageList;
    lstTree: TcxDBTreeList;
    ColumnName: TcxDBTreeListColumn;
    ColumnColor: TcxDBTreeListColumn;
    ColumnColorGrid: TcxGridDBColumn;
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FrameTopPanel1btnSelClick(Sender: TObject);
    procedure lstTreeDblClick(Sender: TObject);
    procedure ViewGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure ViewSelectCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure ViewSelectDblClick(Sender: TObject);
    procedure ViewSelectKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    id_caption: SmallInt;
    s_order: string;
    s_color: TColor;
    use_color: Boolean;
    procedure SetLang;
    procedure ShowSelect(s_table_name: string; id_not: string = '';
      use_id_sel: Boolean = true; expand: Boolean = false;
      sel_group: Boolean = false; id_locate: Integer = 0;
      field_locate: string = '');
    { Public declarations }
  end;

var
  FSelect: TFSelect;

implementation

{$R *.dfm}

uses
  UDataModule1,
  UPasswd;

procedure TFSelect.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure TFSelect.FormShow(Sender: TObject);
begin
  FrameTopPanel1.SetLang;
  if id_caption <> 1 then
    SetLang;
  ViewSelect.OptionsSelection.CellSelect := ColumnSel.Visible;
end;

procedure TFSelect.FrameTopPanel1btnSelClick(Sender: TObject);
var
  id_exe: Boolean;
begin
  id_exe := false;
  if lstTree.Visible = true then
  begin
    if QuerySelect.FieldByName('id_group').AsInteger = 0 then
      id_exe := true
    else
      id_exe := false;
  end
  else
    id_exe := true;
  if id_exe = true then
  begin
    FrameTopPanel1.btnSelClick(Sender);
    try

      QuerySelect.Post;
    except
    end;
    Close;
  end
  else
    Application.MessageBox('Выбор группы запрещен.', 'Ошибка', MB_OK);
end;

procedure TFSelect.lstTreeDblClick(Sender: TObject);
begin
  if QuerySelect.FieldByName('id_group').AsInteger = 0 then
    FrameTopPanel1btnSelClick(Sender);
end;

procedure TFSelect.SetLang;
begin
  case FPasswd.Lang of
    0:
      begin
        if Caption = '' then
          Caption := 'Выбор';
        ColumnSel.Caption := 'Выбрать';
        ColumnUniName.Caption := 'Наименование';
        ColumnUniName.DataBinding.FieldName := 'name';
      end;
    1:
      begin
        if Caption = '' then
          Caption := 'Choice';
        ColumnSel.Caption := 'Select';
        ColumnUniName.Caption := 'Name';
        ColumnUniName.DataBinding.FieldName := 'uni_name';
      end;
    2:
      begin
        if Caption = '' then
          Caption := 'La elección';
        ColumnSel.Caption := 'Escoger';
        ColumnUniName.Caption := 'El nombre';
        ColumnUniName.DataBinding.FieldName := 'reg_name';
      end;
  end;
end;

procedure TFSelect.ShowSelect(s_table_name: string; id_not: string = '';
  use_id_sel: Boolean = true; expand: Boolean = false;
  sel_group: Boolean = false; id_locate: Integer = 0;
  field_locate: string = '');
var
  Query1, Query2: TUniQuery;
var
  i: Integer;
begin
  if use_id_sel = true then
  begin
    Query1 := TUniQuery.Create(nil);
    Query1.Connection := DM1.db1;
    Query2 := TUniQuery.Create(nil);
    Query2.Connection := DM1.db1;
    Query1.Close;
    Query1.SQL.Text := 'CREATE TEMP TABLE tmp (id_sel SMALLINT DEFAULT 0,name  '
      + ' varchar(255), uni_name varchar(255),reg_name varchar(255), id integer) ';
    Query1.ExecSQL;
    Query1.SQL.Text :=
      'insert into tmp (id_sel, name, uni_name, reg_name, id) values (0, :name, :uni_name, :reg_name, :id)';
    with Query2 do
    begin
      Close;
      SQL.Text := 'select * from ' + s_table_name;
      if id_not <> '' then
        SQL.Add(id_not);

      Open;
      // if Query1.ParamByName('uni_name').AsString = '' then
      // ColumnUniName.Visible := false;
      while not eof do
      begin
        Query1.ParamByName('name').AsString := FieldByName('name').AsString;
        Query1.ParamByName('uni_name').AsString :=
          FieldByName('uni_name').AsString;
        Query1.ParamByName('reg_name').AsString :=
          FieldByName('reg_name').AsString;
        Query1.ParamByName('id').AsInteger := FieldByName('id').AsInteger;
        Query1.ExecSQL;
        Next;
      end;
    end;
    // Query1.Close;
    // Query1.SQL.Text := 'select * from tmp';
    // Query1.Open;
    QuerySelect.Close;
    QuerySelect.SQL.Text := 'select * from tmp';
    QuerySelect.Open;
  end
  else
  begin
    with QuerySelect do
    begin
      ColumnSel.Visible := false;
      ViewSelect.OptionsSelection.CellSelect := false;
      Close;
      SQL.Text := 'select * from ' + s_table_name;
      if id_not <> '' then
        SQL.Add(id_not);
      if s_order <> '' then
        SQL.Add(s_order)
      else
      begin
        SQL.Add(' order by ');
        case FPasswd.Lang of
          0:
            SQL.Add(' name');
          1:
            SQL.Add(' uni_name');
          2:
            SQL.Add(' reg_name');
        end;
      end;
      Open;
      Locate(field_locate, id_locate, []);
    end;
  end;
  if (lstTree.Visible = true) and (expand = true) then
    lstTree.FullExpand;
end;

procedure TFSelect.ViewGrid1DBTableView1CellClick
  (Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
var
  AColumn: TcxGridColumn;
begin
  AColumn := TcxGridColumn(ACellViewInfo.Item);
  if (AColumn <> nil) and (AColumn.Index = 0) then
    if VarIsNull(ACellViewInfo.GridRecord.Values[AColumn.Index]) then
      ACellViewInfo.GridRecord.Values[AColumn.Index] := true
    else
      ACellViewInfo.GridRecord.Values[AColumn.Index] :=
        not ACellViewInfo.GridRecord.Values[AColumn.Index];
end;

procedure TFSelect.ViewSelectCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if use_color = true then
  begin
    if AViewInfo.GridRecord.Values[2] > 0 then
    begin
      ACanvas.Brush.color := $00B9FFB9;
      ACanvas.Font.color := clBlack;
    end;
  end;
end;

procedure TFSelect.ViewSelectDblClick(Sender: TObject);
begin
  FrameTopPanel1btnSelClick(Sender);
end;

procedure TFSelect.ViewSelectKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    FrameTopPanel1btnSelClick(Sender);
end;

end.
