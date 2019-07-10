unit UNewStanding;
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
  UFrameSave,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  dxSkinsCore,
  
  cxGroupBox,
  UFrameUniName,
  cxStyles,
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  DB,
  cxDBData,
  cxSplitter,
  UFrameTopPanel,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  UFrameProduct,
  cxTL,
  cxLabel,
  cxTLdxBarBuiltInMenu,
  MemDS,
  DBAccess,
  Uni,
  cxInplaceContainer,
  cxDBTL,
  cxTLData,
  UFrameSearch,
  Vcl.ImgList,
  
  cxPC,
  cxMaskEdit,
  cxNavigator,
  dxBarBuiltInMenu,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue, dxSkinOffice2007Blue, dxSkinsDefaultPainters,
  cxDataControllerConditionalFormattingRulesManagerDialog, dxDateRanges, System.ImageList;
type
  TFNewStanding = class(TForm)
    FrameSave1 : TFrameSave;
    il1 : TImageList;
    QueryProduct : TUniQuery;
    dsProduct : TDataSource;
    Query1 : TUniQuery;
    dsDeatil : TDataSource;
    QueryDetail : TUniQuery;
    Page1 : TcxPageControl;
    TabOsn : TcxTabSheet;
    GroupName : TcxGroupBox;
    FrameUniName1 : TFrameUniName;
    GroupProduct : TcxGroupBox;
    FrameSearch1 : TFrameSearch;
    lstTreeProducts : TcxDBTreeList;
    ColumnName : TcxDBTreeListColumn;
    GroupDetail : TcxGroupBox;
    GridOrder : TcxGrid;
    ViewOrder : TcxGridDBTableView;
    ColumnViewOrderpl_name : TcxGridDBColumn;
    ColumnViewOrders_name : TcxGridDBColumn;
    ColumnViewOrderDBColumn : TcxGridDBColumn;
    ColumnViewOrder__1 : TcxGridDBColumn;
    ColumnСтеблей : TcxGridDBColumn;
    ColumnPrice : TcxGridDBColumn;
    GridLevelOrder : TcxGridLevel;
    FrameTopPanel1 : TFrameTopPanel;
    cxspltr1 : TcxSplitter;
    dsMarking : TDataSource;
    QueryMarking : TUniQuery;
    procedure FormShow(Sender : TObject);
    procedure FrameUniName1edtNameKeyUp(Sender : TObject; var Key : Word;
                                           Shift : TShiftState);
    procedure FrameUniName1edtUniNameKeyUp(Sender : TObject; var Key : Word;
                                              Shift : TShiftState);
    procedure lstTreeProductsDblClick(Sender : TObject);
    procedure FrameUniName1edtUniNamePropertiesEditValueChanged
        (Sender : TObject);
    procedure FrameUniName1edtNamePropertiesEditValueChanged(Sender : TObject);
    procedure FrameUniName1edtRegNameKeyUp(Sender : TObject; var Key : Word;
                                              Shift : TShiftState);
    procedure FrameUniName1edtRegNamePropertiesEditValueChanged
        (Sender : TObject);
    procedure btnEditClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure FrameSave1btnSaveClick(Sender : TObject);
    procedure FrameSearch1edtNameKeyPress(Sender : TObject; var Key : Char);
    procedure ViewOrderDblClick(Sender : TObject);
  private
    id_exe : Boolean;
    { Private declarations }
  public
    s_id_standing : Integer;
    procedure AddProducts;
    procedure EnableSave;
    procedure InsUpdStanding(id_ins : Boolean);
    procedure ShowDetail(id_locate : Integer = 0);
    procedure ShowProduct;
    { Public declarations }
  end;

var
  FNewStanding : TFNewStanding;
implementation
{$R *.dfm}

uses
  UPasswd,
  PGSQL,
  UNewGroupProduct,
  USelect;
procedure TFNewStanding.AddProducts;
begin
  Application.CreateForm(TFNewGroupProduct, FNewGroupProduct);
  with FNewGroupProduct do
  begin
    s_id_stand_edit := s_id_standing;
    s_id_plant := PGSQL.GetIDDetail(QueryProduct.FieldByName('pid').AsInteger);
    s_id_sort := QueryProduct.FieldByName('код_детализации').AsInteger;
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      ShowDetail(s_id_stand_detail);
      // id_plant := PGSQL.GetIDDetail(QueryProduct.FieldByName('pid').AsInteger);
      // id_sort := QueryProduct.FieldByName('код_детализации').AsInteger;
      // InsUpdProduct(true);
    end;
  end;
end;
procedure TFNewStanding.btnDelClick(Sender : TObject);
begin
  PGSQL.StandartDelete(QueryDetail.FieldByName('id').AsString,
                        '"стендинг"."деталь"', QueryDetail, '', '', '', '');
  // QueryTrack.Refresh;
end;
procedure TFNewStanding.btnEditClick(Sender : TObject);
begin
  Application.CreateForm(TFNewGroupProduct, FNewGroupProduct);
  with FNewGroupProduct do
  begin
    FNewGroupProduct.edtLength.Text := QueryDetail.FieldByName('длина').Value;
    FNewGroupProduct.edtFB.Value := QueryDetail.FieldByName
    ('кол_во_фулбоксов').Value;
    FNewGroupProduct.edtCount.Text := QueryDetail.FieldByName('стеблей').Value;
    FNewGroupProduct.edtPrice.Text := QueryDetail.FieldByName('цена').Value;
    s_id_plant := QueryDetail.FieldByName('код_плантации').AsInteger;
    s_id_sort := QueryDetail.FieldByName('код_сорта').AsInteger;
    s_id_stand_detail := QueryDetail.FieldByName('id').Value;
    s_id_stand_edit := s_id_standing;
    ShowMarking();
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      QueryDetail.Refresh;
    end;
  end;
end;
procedure TFNewStanding.EnableSave;
begin
  if (FrameUniName1.edtUniName.Text <> '') and
  (FrameUniName1.edtName.Text <> '') and (FrameUniName1.edtRegName.Text <> '')
  then
  begin
    FrameSave1.btnSave.Enabled := true;
    id_exe := true;
  end
  else
  begin
    FrameSave1.btnSave.Enabled := false;
    id_exe := false;
  end;
end;
procedure TFNewStanding.FormShow(Sender : TObject);
begin
  FrameTopPanel1.SetLang;
  FrameSave1.SetLang;
  FrameUniName1.SetLang;
  FrameSearch1.SetLang;
  EnableSave;
  Page1.ActivePageIndex := 0;
  if s_id_standing <> 0 then
    FrameSearch1.edtName.SetFocus
  else
    FrameUniName1.edtUniName.SetFocus;
end;
procedure TFNewStanding.FrameSave1btnSaveClick(Sender : TObject);
begin
  if s_id_standing = 0 then
    InsUpdStanding(true)
  else
    InsUpdStanding(false);
  FrameSave1.btnSaveClick(Sender);
  Close;
end;
procedure TFNewStanding.FrameSearch1edtNameKeyPress(Sender : TObject;
                                                       var Key : Char);
begin
  ShowProduct;
end;
procedure TFNewStanding.FrameUniName1edtNameKeyUp(Sender : TObject;
                                                     var Key : Word; Shift : TShiftState);
begin
  EnableSave;
end;
procedure TFNewStanding.FrameUniName1edtNamePropertiesEditValueChanged
  (Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewStanding.FrameUniName1edtRegNameKeyUp(Sender : TObject;
                                                        var Key : Word; Shift : TShiftState);
begin
  EnableSave;
end;
procedure TFNewStanding.FrameUniName1edtRegNamePropertiesEditValueChanged
  (Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewStanding.FrameUniName1edtUniNameKeyUp(Sender : TObject;
                                                        var Key : Word; Shift : TShiftState);
begin
  EnableSave;
end;
procedure TFNewStanding.FrameUniName1edtUniNamePropertiesEditValueChanged
  (Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewStanding.InsUpdStanding(id_ins : Boolean);
begin
  with Query1 do
  begin
    Close;
    if id_ins = true then
    begin
      s_id_standing := PGSQL.NewID('"стендинг"."стендинг_id_seq"');
      sql.Text :=
                 'INSERT INTO "стендинг"."стендинг"(id, name, uni_name, reg_name' +
                 ') VALUES (:id, :name, :uni_name, :reg_name)';
    end
    else
      sql.Text :=
                 'UPDATE "стендинг"."стендинг" SET name = :name, uni_name = :uni_name,' +
                 ' reg_name = :reg_name WHERE id = :id';
    ParamByName('id').AsInteger := s_id_standing;
    ParamByName('name').AsString := FrameUniName1.edtName.Text;
    ParamByName('uni_name').AsString := FrameUniName1.edtUniName.Text;
    ParamByName('reg_name').AsString := FrameUniName1.edtRegName.Text;
    ExecSQL;
  end;
end;
procedure TFNewStanding.lstTreeProductsDblClick(Sender : TObject);
begin
  if QueryProduct.FieldByName('код_структуры').AsInteger = 5 then
  begin
    if (s_id_standing = 0) then
    begin
      if (id_exe = true) then
      begin
        InsUpdStanding(true);
        AddProducts;
      end
      else
        Application.MessageBox('Введите наименования стендинга.', 'Ошибка',
                                MB_OK + MB_ICONERROR);
    end
    else
      AddProducts;
  end
  else
    Application.MessageBox('Выберите сорт.', 'Ошибка', MB_OK + MB_ICONERROR);
end;
procedure TFNewStanding.ShowDetail(id_locate : Integer = 0);
begin
  with QueryDetail do
  begin
    Close;
    ParamByName('id').AsInteger := s_id_standing;
    Open;
    Locate('id', id_locate, []);
  end;
end;
procedure TFNewStanding.ShowProduct;
begin
  with QueryProduct do
  begin
    Close;
    with FrameSearch1 do
    begin
      if edtName.Text = '' then
      begin
        sql.Text := 'select * from продукция.продукция where id_group=1';
        sql.Add(' order by id');
        Open;
      end
      else
      begin
        sql.Text :=
                   'select * from "продукция"."продукция" where id_group = 1 and' +
                   ' код_структуры = 3 and  id in (select pid from "продукция"."продукция"'
                   + ' where id_group = 1 and  код_структуры = 4 and id in (select pid' +
                   ' from "продукция"."продукция" where id_group = 1 and' +
                   '  код_структуры = 5 and Upper(';
        case FPasswd.Lang of
          0 : sql.Add('name');
          1 : sql.Add('uni_name');
          2 : sql.Add('reg_name');
        end;
        sql.Add(') Like ''' + AnsiUpperCase(edtName.Text) + '%''');
        sql.Add(')) union all select * from "продукция"."продукция" where id_group = 1 and'
        + ' код_структуры = 4 and id in (select pid from "продукция"."продукция"'
        + ' where id_group = 1 and код_структуры = 5 and Upper(');
        case FPasswd.Lang of
          0 : sql.Add('name');
          1 : sql.Add('uni_name');
          2 : sql.Add('reg_name');
        end;
        sql.Add(') Like ''' + AnsiUpperCase(edtName.Text) + '%''');
        sql.Add(') union all select * from "продукция"."продукция" where id_group = 1 and'
        + ' код_структуры = 5 and   Upper(');
        case FPasswd.Lang of
          0 : sql.Add('name');
          1 : sql.Add('uni_name');
          2 : sql.Add('reg_name');
        end;
        sql.Add(') Like ''' + AnsiUpperCase(edtName.Text) + '%''');
        sql.Add(' order by id');
        Open;
        lstTreeProducts.FullExpand;
      end;
    end;
  end;
  //
end;
procedure TFNewStanding.ViewOrderDblClick(Sender : TObject);
begin
  btnEditClick(Sender);
end;
end.
