unit UFramePretenzEdit;

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
  
  cxStyles,
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxNavigator,
  Data.DB,
  cxDBData,
  cxCalc,
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
  cxSplitter,
  Vcl.StdCtrls,
  AdvEdit,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sTooledit,
  cxGroupBox,
  UFrameProduct,
  cxPCdxBarPopupMenu,
  cxPC,
  cxLabel,
  cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  Vcl.ComCtrls,
  dxBarBuiltInMenu,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue;

type
  TFramePretenzEdit = class(TFrame)
    QuerySostav: TUniQuery;
    dsSostav: TDataSource;
    Query1: TUniQuery;
    Page1: TcxPageControl;
    TabОписание: TcxTabSheet;
    TabСостав: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    FrameTopPanel1: TFrameTopPanel;
    GridUsers: TcxGrid;
    ViewUsers: TcxGridDBTableView;
    ColumnName: TcxGridDBColumn;
    ColumnСтеблей: TcxGridDBColumn;
    ViewUsershalf_box: TcxGridDBColumn;
    ColumnЦена: TcxGridDBColumn;
    ColumnСумма: TcxGridDBColumn;
    ColumnТранспорт: TcxGridDBColumn;
    ColumnИтог: TcxGridDBColumn;
    LevelOrg: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    Group4: TcxGroupBox;
    FrameProduct1: TFrameProduct;
    QuerySostavname: TWideMemoField;
    QuerySostavreg_name: TWideStringField;
    QuerySostavцена_товара: TFloatField;
    QuerySostavuni_name: TWideStringField;
    QuerySostavname_uni: TWideMemoField;
    QuerySostavname_reg: TWideMemoField;
    QuerySostavid: TIntegerField;
    QuerySostavкод_sub_awb_detail: TIntegerField;
    QuerySostavкод_товара: TIntegerField;
    QuerySostavстеблей: TIntegerField;
    QuerySostavhalf_box: TIntegerField;
    QuerySostavцена: TFloatField;
    QuerySostavстоимость_транспорта: TFloatField;
    QuerySostavsumma: TFloatField;
    QuerySostavtotal: TFloatField;
    QueryManager: TUniQuery;
    dsManager: TDataSource;
    Group2: TcxGroupBox;
    Label4: TLabel;
    GroupOsn: TcxGroupBox;
    lblДата: TLabel;
    Label3: TLabel;
    lblОдобреннаяСумма: TLabel;
    lblСуммаПретензии: TLabel;
    edtNum: TEdit;
    edtSumGoodPrit: TAdvEdit;
    edtManager: TcxLookupComboBox;
    lblМенеджер: TcxLabel;
    edtСуммаПретензии: TAdvEdit;
    GroupФото: TcxGroupBox;
    lblКоробка: TLabel;
    lblЭтикетка: TLabel;
    lblБончес: TLabel;
    edtphoto1: TAdvEdit;
    edtphoto2: TAdvEdit;
    edtphoto3: TAdvEdit;
    GroupОписание: TcxGroupBox;
    lblDRus: TLabel;
    lblDEsp: TLabel;
    lblDSum: TLabel;
    mmoПритензияРус: TMemo;
    mmoПритензияИсп: TMemo;
    mmoОдобреннаяСумма: TMemo;
    chkExePrit: TCheckBox;
    edtDatePrit: TDateTimePicker;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure edtDatePritCloseUp(Sender: TObject);
    procedure FrameProduct1lstTreeProductsDblClick(Sender: TObject);
    procedure FrameSearch1edtNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrameTopPanel1btnAddClick(Sender: TObject);
    procedure FrameTopPanel1btnDelClick(Sender: TObject);
    procedure FrameTopPanel1btnEditClick(Sender: TObject);
    procedure FrameTopPanel1btnRefreshClick(Sender: TObject);
    procedure ViewUsersDblClick(Sender: TObject);
  private
    procedure InsUpdDetail(ins_upd: Boolean; s_id: Integer = 0);
    { Private declarations }
  public
    s_id_sub_awb: Integer;
    s_id_plant, s_id_manager: Integer;
    s_marking, s_user, s_date_fly, s_num_awb, s_plant, s_numFact, s_manager,
      s_date: string;
    procedure SetLang;
    procedure ShowManager;
    procedure ShowProductsW;
    procedure ShowSostav(s_id_locate: Integer = 0);
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  UPasswd,
  UNewPretenzDetail,
  PGSQL;

procedure TFramePretenzEdit.btnAddClick(Sender: TObject);
begin
  ShowMessage('');
end;

procedure TFramePretenzEdit.btnDelClick(Sender: TObject);
begin
  PGSQL.StandartDelete(QuerySostav.FieldByName('id').AsString,
    '"бух".состав_претензии', QuerySostav, '', '', '', '');
  with Query1 do
  begin
    if QuerySostav.Fields[0].AsString <> '' then
    begin
      Close;
      sql.Text := 'select  sum("цена" * "стеблей" + "стоимость_транспорта") ' +
        ' from "бух"."состав_претензии" where код_sub_awb_detail=' +
        IntToStr(s_id_sub_awb);
      Open;
      edtСуммаПретензии.Text := Fields[0].AsString;
      edtСуммаПретензии.Enabled := false;
    end
    else
    begin
      edtСуммаПретензии.Enabled := True;
    end;
  end;
end;

procedure TFramePretenzEdit.btnEditClick(Sender: TObject);
begin
  if QuerySostav.Fields[0].AsString <> '' then
  begin
    with QuerySostav do
    begin
      Application.CreateForm(TFNewPretenzDetail, FNewPretenzDetail);
      with FNewPretenzDetail do
      begin
        edtСтеблей.Text := FieldByName('стеблей').AsString;
        edtHalfBox.Text := FieldByName('half_box').AsString;
        edtСтоимость.Text := FieldByName('цена').AsString;
        edtСтоимостьТранспорта.Text :=
          FieldByName('стоимость_транспорта').AsString;
        ShowModal;
        if FrameSave1.id_save = True then
          InsUpdDetail(false, FieldByName('id').AsInteger);
      end;
    end;
  end;
end;

procedure TFramePretenzEdit.btnRefreshClick(Sender: TObject);
begin
  ShowSostav(QuerySostav.FieldByName('id').AsInteger);
end;

procedure TFramePretenzEdit.edtDatePritCloseUp(Sender: TObject);
begin
  edtСуммаПретензии.SetFocus;
end;

procedure TFramePretenzEdit.FrameProduct1lstTreeProductsDblClick
  (Sender: TObject);
begin
  if FrameProduct1.QueryProduct.FieldByName('id_group').AsInteger = 0 then
  begin
    with Query1 do
    begin
      Close;
      sql.Text := 'select  * from "бух"."состав_претензии"  p ' +
        ' where p."код_товара"=:id_p and p."код_sub_awb_detail"=:id_a';
      ParamByName('id_p').AsInteger := FrameProduct1.QueryProduct.FieldByName
        ('id').AsInteger;
      ParamByName('id_a').AsInteger := s_id_sub_awb;
      Open;
      Application.CreateForm(TFNewPretenzDetail, FNewPretenzDetail);
      with FNewPretenzDetail do
      begin
        if Fields[0].AsString <> '' then
        begin
          edtСтеблей.Text := FieldByName('стеблей').AsString;
          edtHalfBox.Text := FieldByName('half_box').AsString;
          edtСтоимость.Text := FieldByName('цена').AsString;
          edtСтоимостьТранспорта.Text :=
            FieldByName('стоимость_транспорта').AsString;
        end
        else
          edtСтоимость.Text := FrameProduct1.QueryProduct.FieldByName
            ('цена').AsString;
        ShowModal;
        if FrameSave1.id_save = True then
        begin
          if Fields[0].AsString = '' then
            InsUpdDetail(True)
          else
            InsUpdDetail(false, FieldByName('id').AsInteger);
        end;
      end;
    end;
  end;
end;

procedure TFramePretenzEdit.FrameSearch1edtNameKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
    ShowProductsW;
end;

procedure TFramePretenzEdit.FrameTopPanel1btnAddClick(Sender: TObject);
begin
  ShowMessage('');
end;

procedure TFramePretenzEdit.FrameTopPanel1btnDelClick(Sender: TObject);
begin
  ShowMessage('');
end;

procedure TFramePretenzEdit.FrameTopPanel1btnEditClick(Sender: TObject);
begin
  ShowMessage('');
end;

procedure TFramePretenzEdit.FrameTopPanel1btnRefreshClick(Sender: TObject);
begin
  ShowSostav(QuerySostav.FieldByName('id').AsInteger);
end;

procedure TFramePretenzEdit.InsUpdDetail(ins_upd: Boolean; s_id: Integer = 0);
begin
  with Query1 do
  begin
    sql.Clear;
    if ins_upd = True then
    begin
      sql.Add(' INSERT INTO');
      sql.Add(' "бух"."состав_претензии"');
      sql.Add(' (');
      sql.Add(' "код_sub_awb_detail",');
      sql.Add(' "код_товара",');
      sql.Add(' "стеблей",');
      sql.Add(' half_box,');
      sql.Add(' "цена",');
      sql.Add(' "стоимость_транспорта"');
      sql.Add(' )');
      sql.Add(' VALUES (');
      sql.Add(' :код_sub_awb_detail,');
      sql.Add(' :код_товара,');
      sql.Add(' :стеблей,');
      sql.Add(' :half_box,');
      sql.Add(' :цена,');
      sql.Add(' :стоимость_транспорта');
      sql.Add(' );');
      ParamByName('код_товара').Value := FrameProduct1.QueryProduct.FieldByName
        ('id').AsInteger;
      ParamByName('код_sub_awb_detail').Value := s_id_sub_awb;
    end
    else
    begin
      sql.Add(' UPDATE');
      sql.Add(' "бух"."состав_претензии"');
      sql.Add(' SET');
      sql.Add(' "стеблей" = :стеблей,');
      sql.Add(' half_box = :half_box,');
      sql.Add(' "цена" = :цена,');
      sql.Add(' "стоимость_транспорта" = :стоимость_транспорта');
      sql.Add(' ');
      sql.Add(' WHERE');
      sql.Add(' id = :id');
      ParamByName('id').AsInteger := s_id;
    end;
    ParamByName('стеблей').AsString := FNewPretenzDetail.edtСтеблей.Text;
    ParamByName('half_box').AsString := FNewPretenzDetail.edtHalfBox.Text;
    ParamByName('цена').AsString := FNewPretenzDetail.edtСтоимость.Text;
    ParamByName('стоимость_транспорта').AsString :=
      FNewPretenzDetail.edtСтоимостьТранспорта.Text;
    ExecSQL;
    Close;
    sql.Text := 'select  sum("цена" * "стеблей" + "стоимость_транспорта") ' +
      ' from "бух"."состав_претензии" where код_sub_awb_detail=' +
      IntToStr(s_id_sub_awb);
    Open;
    edtСуммаПретензии.Text := Fields[0].AsString;
    ShowSostav(s_id);
  end;
end;

procedure TFramePretenzEdit.SetLang;
begin
  FrameTopPanel1.SetLang;
  case FPasswd.Lang of
    2:
      begin
        lblДата.Caption := 'Fecha:';
        lblСуммаПретензии.Caption := 'Suma de pretensión:';
        lblОдобреннаяСумма.Caption := 'La suma aprobada:';
        lblМенеджер.Caption := 'Manager:';
        TabОписание.Caption := 'Descripción';
        TabСостав.Caption := 'Contenido';
        ColumnName.Caption := 'Variedad y cm';
        ColumnСтеблей.Caption := 'Tallos';
        ColumnЦена.Caption := 'Precios';
        ColumnСумма.Caption := 'Total';
        ColumnТранспорт.Caption := 'Costo de transporte';
        ColumnИтог.Caption := 'Total';
        GroupФото.Caption := 'Fotos';
        lblКоробка.Caption := 'Сaja:';
        lblЭтикетка.Caption := 'Etiquetas:';
        lblБончес.Caption := 'Variedad';
        GroupОписание.Caption := 'Descripción';
        lblDRus.Caption := 'En ruso:';
        lblDEsp.Caption := 'En español:';
        lblDSum.Caption := 'De la suma aprobada:';
        chkExePrit.Caption := 'La realización definitiva de la pretensión';
      end;
  end;
  case FPasswd.edtLangData.ItemIndex of
    2:
      begin
        FrameProduct1.ColumnName.DataBinding.FieldName := 'reg_name';
        ColumnName.DataBinding.FieldName := 'name_reg';
      end;
  end;
end;

procedure TFramePretenzEdit.ShowManager;
begin
  with QueryManager do
  begin
    Close;
    Open;
    if s_id_manager <> 0 then
      edtManager.EditValue := s_id_manager
    else
      edtManager.EditValue := FPasswd.ID_USER
  end;
end;

procedure TFramePretenzEdit.ShowProductsW;
var
  p, s, pr: string;
begin
  with FrameProduct1 do
  begin
    with Query1 do
    begin
      Close;
      sql.Text :=
        'select id from "продукция"."продукция" where pid IN (select id ' +
        ' from "продукция"."продукция" where "код_детализации"=' +
        IntToStr(s_id_plant) + ' and "код_структуры"=4) ';
      Open;
      while not eof do
      begin
        s := s + Fields[0].AsString + ',';
        Next;
      end;
    end;
    s := Copy(s, 1, length(s) - 1);
    if s <> '' then
    begin
      with QueryProduct do
      begin
        Close;
        sql.Text :=
          'select * from "продукция"."продукция" where id in (select pid from' +
          '"продукция"."продукция" p where p."код_детализации"=' +
          IntToStr(s_id_plant) + ' and p."код_структуры"=4)' +
          'union all select * from "продукция"."продукция" p where p."код_детализации"='
          + IntToStr(s_id_plant) + ' and p."код_структуры"=4' +
          'union all select * from "продукция"."продукция" where id IN ' + ' ('
          + s + ') or pid in (' + s + ')';
        if FrameSearch1.edtName.Text <> '' then
        begin
          sql.Add(' and UPPER(');
          case FPasswd.Lang of
            0:
              sql.Add('name');
            1:
              sql.Add('uni_name');
            2:
              sql.Add('reg_name');
          end;
          sql.Add(') Like ''%' + AnsiUpperCase
            (FrameSearch1.edtName.Text) + '%''');
        end;
        Open;
        if FrameSearch1.edtName.Text <> '' then
          lstTreeProducts.FullExpand
        else
          lstTreeProducts.FocusedNode.Expand(false);
      end;
    end;
  end;
end;

procedure TFramePretenzEdit.ShowSostav(s_id_locate: Integer = 0);
begin
  with QuerySostav do
  begin
    Close;
    ParamByName('id').AsInteger := s_id_sub_awb;
    Open;
    Locate('id', s_id_locate, []);
    if Fields[0].AsString = '' then
      edtСуммаПретензии.Enabled := True
    else
      edtСуммаПретензии.Enabled := false;
  end;
end;

procedure TFramePretenzEdit.ViewUsersDblClick(Sender: TObject);
begin
  btnEditClick(Sender);
end;

end.
