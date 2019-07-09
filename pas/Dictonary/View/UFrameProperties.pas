unit UFrameProperties;

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
  MemDS,
  DBAccess,
  Uni,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  UFrameTopPanel,

  Vcl.StdCtrls,
  cxContainer,
  Vcl.ImgList,
  cxSplitter,
  cxGroupBox,
  cxTL,
  cxLabel,
  cxTLdxBarBuiltInMenu,
  cxInplaceContainer,
  cxDBTL,
  cxTLData,
  cxNavigator,

  dxSkinDevExpressStyle,

   dxSkinsDefaultPainters, dxSkinOffice2007Blue;

type
  TFrameProperties = class(TFrame)
    FrameTopPanel1: TFrameTopPanel;
    QueryProperties: TUniQuery;
    dsProperties: TDataSource;
    GroupType: TcxGroupBox;
    cxspltr1: TcxSplitter;
    GroupProp: TcxGroupBox;
    GridProperties: TcxGrid;
    ViewProperties: TcxGridDBTableView;
    ColumnName: TcxGridDBColumn;
    LevelOrg: TcxGridLevel;
    QueryType: TUniQuery;
    dsType: TDataSource;
    il1: TImageList;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    ColumnType: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    procedure btnAddClick(Sender: TObject);
    procedure FrameTopPanel1btnRefreshClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure ViewPropertiesDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure SetLang;
    procedure ShowType;
    procedure ShowPropeties;
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  PGSQL,
  UDataModule1,
  UNewTTH,
  UPasswd;

procedure TFrameProperties.btnAddClick(Sender: TObject);
begin
  // Application.CreateForm(TFNewProperties, FNewProperties);
  // with FNewProperties do
  // begin
  // EnableSave;
  // FNewUniName.ShowModal;
  // if FNewUniName.FrameSave1.id_save = true then
  // begin
  // id := PGSQL.NewID('"продукция"."типы_свойства_id_seq"');
  // with Query1 do
  // begin
  // Close;
  // sql.Text :=
  // 'insert into "продукция"."типы_свойства" (id, код_типа, name, uni_name, reg_name)'
  // + ' values (:id, :код_типа, :name, :uni_name, :reg_name) ';
  // ParamByName('код_типа').AsInteger := QueryType.FieldByName('id')
  // .AsInteger;
  // ParamByName('id').AsInteger := id;
  // ParamByName('name').AsString := edtName.Text;
  // ParamByName('uni_name').AsString := edtUniName.Text;
  // ParamByName('reg_name').AsString := edtRegName.Text;
  // ExecSQL;
  // DM1.dbUpd.Commit;
  // ShowPropeties;
  // end;
  // end;
  // end;
  Application.CreateForm(TFNewTTH, FNewTTH);
  with FNewTTH do
  begin
    s_id_type := QueryType.FieldByName('id').AsString;
    EnableSave;
    ShowModal;
    ShowPropeties;
  end;
end;

procedure TFrameProperties.btnEditClick(Sender: TObject);
begin
  Application.CreateForm(TFNewTTH, FNewTTH);
  with FNewTTH do
  begin
    FrameUniName1.chkUseName.Checked := QueryProperties.FieldByName('use_name')
      .AsBoolean;
    FrameUniName1.chkUniq.Checked := QueryProperties.FieldByName('uniq')
      .AsBoolean;
    s_id_type := QueryType.FieldByName('id').AsString;
    s_id := QueryProperties.FieldByName('id').AsInteger;
    FrameUniName1.edtName.Text := QueryProperties.FieldByName('name').AsString;
    FrameUniName1.edtUniName.Text := QueryProperties.FieldByName
      ('uni_name').AsString;
    FrameUniName1.edtRegName.Text := QueryProperties.FieldByName
      ('reg_name').AsString;
    ShowTTHDetail;
    EnableSave;
    ShowModal;
    ShowPropeties;
  end;
end;

procedure TFrameProperties.FrameTopPanel1btnRefreshClick(Sender: TObject);
begin
  ShowType;
  ShowPropeties;
end;

procedure TFrameProperties.SetLang;
begin
  case FPasswd.Lang of
    0:
      begin
        GroupType.Caption := 'Типы';
        GroupProp.Caption := 'Свойства';
        ColumnType.Caption := 'Наименование';
        ColumnType.DataBinding.FieldName := 'name';
        ColumnName.Caption := 'Значения';
        ColumnName.DataBinding.FieldName := 'name';
      end;
    1:
      begin
        GroupType.Caption := 'Types';
        GroupProp.Caption := 'Properties';
        ColumnType.Caption := 'Name';
        ColumnType.DataBinding.FieldName := 'uni_name';
        ColumnName.Caption := 'Values';
        ColumnName.DataBinding.FieldName := 'uni_name';
      end;
    2:
      begin
        GroupType.Caption := 'Los tipos';
        GroupProp.Caption := 'Las propiedades';
        ColumnType.Caption := 'El nombre';
        ColumnType.DataBinding.FieldName := 'reg_name';
        ColumnName.Caption := 'Los significados';
        ColumnName.DataBinding.FieldName := 'reg_name';
      end;
  end;
  // { Загружаем и устанавливаем заголовок кнопки "Yes" в соответствии с языком }
  // if LoadString(hInstance, StrTblOfs + 27, @a, sizeof(a)) <> 0 then
  // ColumnName.Caption := StrPas(a);
  // if LoadString(hInstance, StrTblOfs + 28, @a, sizeof(a)) <> 0 then
  // ColumnUniName.Caption := StrPas(a);
end;

procedure TFrameProperties.ShowType;
begin
  with QueryType do
  begin
    Close;
    // sql.Text := 'select * from "продукция"."страны"';
    sql.Text := 'select * from "продукция"."типы" order by id';
    Open;
  end;
end;

procedure TFrameProperties.ShowPropeties;
begin
  QueryProperties.Close;
  QueryProperties.Open;
end;

procedure TFrameProperties.ViewPropertiesDblClick(Sender: TObject);
begin
  if FrameTopPanel1.btnEdit.Enabled = true then
    btnEditClick(Sender);
end;

end.
