unit UFrameProduct;

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
  UFrameTopPanel,
  Data.DB,
  MemDS,
  DBAccess,
  Uni,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxCustomData,
  cxStyles,
  cxTL,
  cxLabel,
  cxTLdxBarBuiltInMenu,
  dxSkinsCore,

  cxInplaceContainer,
  cxDBTL,
  cxTLData,
  Vcl.ImgList,
  cxMaskEdit,
  UFrameSearch,
  dxBar,
  cxContainer,
  cxEdit,
  cxCheckBox,
  cxClasses,
  cxTLExportLink,
  shellapi,

  dxSkinDevExpressStyle,

   dxSkinsDefaultPainters, dxSkinOffice2007Blue;

type
  TFrameProduct = class(TFrame)
    FrameTopPanel1: TFrameTopPanel;
    QueryProduct: TUniQuery;
    dsProduct: TDataSource;
    lstTreeProducts: TcxDBTreeList;
    ColumnName: TcxDBTreeListColumn;
    il1: TImageList;
    FrameSearch1: TFrameSearch;
    chkDel: TcxCheckBox;
    ColumnDel: TcxDBTreeListColumn;
    Style1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    ColumnPrice: TcxDBTreeListColumn;
    Query1: TUniQuery;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure FrameSearch1edtNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lstTreeProductsDblClick(Sender: TObject);
    procedure lstTreeProductsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QueryProductAfterFetch(DataSet: TCustomDADataSet);
    procedure QueryProductBeforeFetch(DataSet: TCustomDADataSet;
      var Cancel: Boolean);
    procedure chkDelClick(Sender: TObject);
    procedure lstTreeProductsStylesGetContentStyle(Sender: TcxCustomTreeList;
      AColumn: TcxTreeListColumn; ANode: TcxTreeListNode; var AStyle: TcxStyle);
    procedure btnRestClick(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
  private
    function DetectUniq(s_id_detail: string): Boolean;
    { Private declarations }
  public
    function GetCountry(s_id: Integer): Integer;
    procedure ShowProduct(id_locate: Integer = 0; not_in: string = '');
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  UPasswd,
  UNewProduct,
  UDialogMy,
  UDataModule1,
  USplash;

procedure TFrameProduct.btnAddClick(Sender: TObject);
begin
  if (QueryProduct.FieldByName('код_структуры').AsInteger = 5) or
    (QueryProduct.FieldByName('код_структуры').AsInteger = 6) then
  begin
    if QueryProduct.FieldByName('код_структуры').AsInteger = 6 then
      QueryProduct.Locate('id', QueryProduct.FieldByName('pid').AsInteger, []);
    if DetectUniq(QueryProduct.FieldByName('код_детализации').AsString) = false
    then
    begin
      Application.CreateForm(TFNewProduct, FNewProduct);
      with FNewProduct do
      begin
        s_id_detail := QueryProduct.FieldByName('код_детализации').AsString;
        s_id_parrent := QueryProduct.FieldByName('id').AsString;
        s_tree := QueryProduct.FieldByName('tree').AsString;
        ShowModal;
        if FrameSave1.id_save = true then
          ShowProduct(s_id_product);
      end
    end
    else
    begin
      case FPasswd.edtLang.ItemIndex of
        0:
          ErrorDialog('Добавление невозможно.', '',
            'Все уникальные свойства уже выбраны.');
        1:
          ErrorDialog('Adding it is impossible to.', '',
            'All of the unique properties of the already selected.');
        2:
          ErrorDialog('La adición es imposible.', '',
            'Todas las propiedades únicas son escogidas ya.');
      end;
    end;
  end
  else
  begin
    case FPasswd.edtLang.ItemIndex of
      0:
        ErrorDialog('Добавление невозможно.', '', 'Необходимо выбрать сорт.');
      1:
        ErrorDialog('Adding it is impossible to.', '',
          'You must select a variety. ');
      2:
        ErrorDialog('La adición es imposible.', '',
          'Es necesario escoger la clase.');
    end;
  end;
end;

procedure TFrameProduct.btnDelClick(Sender: TObject);
var
  pid: string;
begin
  // определяем плантацию
  with DM1.QueryUpd do
  begin
    Close;
    sql.Text := 'select код_детализации from "продукция"."продукция"  where id='
      + QueryProduct.FieldByName('pid').AsString;
    Open;
    pid := Fields[0].AsString;
  end;
  if QueryProduct.FieldByName('скрыт').AsInteger = 0 then
  begin
    // если позиция
    if QueryProduct.FieldByName('код_структуры').AsInteger = 6 then
    begin
      case FPasswd.edtLang.ItemIndex of
        0:
          QuestionDialog('Удаление',
            'Вы действительно хотите удалить позицию?');
        1:
          QuestionDialog('Removal', 'You really want to remove a position? ');
        2:
          QuestionDialog('Desaparición',
            'Queréis quitar realmente la posición?');
      end;
      if UDialogMy.Dlg.Execute = 100 then
      begin
        with DM1.QueryUpd do
        begin
          // DM1.dbUpd.StartTransaction;
          { }
          Close;
          sql.Text := 'delete from продукция.продукция where id=' +
            QueryProduct.FieldByName('id').AsString;
          try
            ExecSQL;
            // DM1.dbUpd.Commit;
            QueryProduct.Refresh;
          except
            case FPasswd.edtLang.ItemIndex of
              0:
                QuestionDialog('Полное удаление не возможно',
                  'Вы хотите скрыть позицию?');
              1:
                QuestionDialog('Removal is impossible',
                  'You want to hide a position? ');
              2:
                QuestionDialog('a desaparición es imposible',
                  'Queréis esconder la posición?');
            end;
            if UDialogMy.Dlg.Execute = 100 then
            begin
              Close;
              sql.Text := 'update продукция.продукция set скрыт=1 where id=' +
                QueryProduct.FieldByName('id').AsString;
              ExecSQL;
              QueryProduct.Refresh;
            end;
            // case FPasswd.edtLang.ItemIndex of
            // 0:
            // ErrorDialog('Удаление невозможно.', '',
            // 'Есть операции, в которых участвовал сорт.');
            // 1:
            // ErrorDialog('Removal is impossible', '',
            // 'There are operations in which the grade participated. ');
            // 2:
            // ErrorDialog('La desaparición es imposible', '',
            // 'Hay unas operaciones, en que participaba la clase.');
            // end;
            // DM1.dbUpd.Rollback;
          end;
        end;
      end;
    end;
    // сорт
    if QueryProduct.FieldByName('код_структуры').AsInteger = 5 then
    begin
      // проверяем нет-ли позиций у него
      with DM1.QueryUpd do
      begin
        Close;
        sql.Text := 'select id from "продукция"."продукция" where pid=' +
          QueryProduct.FieldByName('id').AsString;
        Open;
        // если позиции есть, предлогаем скрыть его  иначе удаляем
        if RecordCount = 0 then
        begin
          case FPasswd.edtLang.ItemIndex of
            0:
              QuestionDialog('Удаление',
                'Вы действительно хотите удалить сорт?');
            1:
              QuestionDialog('Removal',
                'Do you really want to delete the grade? ');
            2:
              QuestionDialog('Desaparición',
                'Estás seguro que quieres eliminar el grado?');
          end;
          if UDialogMy.Dlg.Execute = 100 then
          begin
            // овтязываем сорт_плантация
            Close;
            sql.Text :=
              'delete from "продукция"."сорт_плантация" where код_сорта=' +
              QueryProduct.FieldByName('код_детализации').AsString +
              ' and код_плантации=' + pid;
            ExecSQL;
            // удаляем сорт из номенклатуры
            Close;
            sql.Text := 'delete from продукция.продукция where id=' +
              QueryProduct.FieldByName('id').AsString;
            ExecSQL;
            // DM1.dbUpd.Commit;
            QueryProduct.Refresh;
          end;
        end
        else
        begin
          case FPasswd.edtLang.ItemIndex of
            0:
              QuestionDialog('Удаление',
                'У сорта имеются позиции. Удаление не возможно. Вы хотите скрыть сорт и все его позиции?');
            1:
              QuestionDialog('Removal',
                'The grade has positions. Removal isn''t possible. You want to hide a grade and all its positions? ');
            2:
              QuestionDialog('Desaparición',
                'Clase tiene unas posiciones. La desaparición no es posible. ¿Queréis esconder la clase y todas sus posiciones?');
          end;
          if UDialogMy.Dlg.Execute = 100 then
          begin
            Close;
            sql.Text := 'update продукция.продукция set скрыт=1 where id=' +
              QueryProduct.FieldByName('id').AsString + ' or pid=' +
              QueryProduct.FieldByName('id').AsString;
            ExecSQL;
            Close;
            sql.Text :=
              'update  "продукция"."сорт_плантация" set скрыт=1 where код_плантации='
              + pid + ' and код_сорта=' + QueryProduct.FieldByName
              ('код_детализации').AsString;
            ExecSQL;
            QueryProduct.Refresh;
          end;
        end;
      end;
    end;
  end
  else
  begin
    case FPasswd.edtLang.ItemIndex of
      0:
        ErrorDialog
          ('Скрытую позицию резрешено только восстанавливать. ', '', '');
      1:
        ErrorDialog('Rezresheno only to restore the hidden position.', '', '');
      2:
        ErrorDialog
          ('La posición escondida резрешено restablecer solamente.', '', '');
    end;
  end;
end;

procedure TFrameProduct.btnEditClick(Sender: TObject);
begin
  if (QueryProduct.FieldByName('код_структуры').AsInteger = 6) then
  begin
    Application.CreateForm(TFNewProduct, FNewProduct);
    with FNewProduct do
    begin
      s_id_detail := QueryProduct.FieldByName('код_детализации').AsString;
      s_id_parrent := QueryProduct.FieldByName('pid').AsString;
      s_id_product := QueryProduct.FieldByName('id').AsInteger;
      edtName.Text := QueryProduct.FieldByName('name').AsString;
      edtUniName.Text := QueryProduct.FieldByName('uni_name').AsString;
      edtRegName.Text := QueryProduct.FieldByName('reg_name').AsString;
      edtPrice.Value := QueryProduct.FieldByName('цена').Value;
      s_tree := QueryProduct.FieldByName('tree').AsString;
      ShowModal;
      if FrameSave1.id_save = true then
        QueryProduct.Refresh;
    end
  end;
  // else
  // begin
  // case FPasswd.edtLang.ItemIndex of
  // 0:
  // ErrorDialog('Редактирование невозможно.', '',
  // 'Необходимо выбрать сорт.');
  // 1:
  // ErrorDialog('Editing it is impossible to.', '',
  // 'You must select a variety. ');
  // 2:
  // ErrorDialog('Redacción es imposible.', '',
  // 'Es necesario escoger la clase.');
  // end;
  // end;
end;

procedure TFrameProduct.btnExportClick(Sender: TObject);
begin
  cxExportTLToExcel(FPasswd.GetVar('TEMP') + '\balance', lstTreeProducts, true,
    true, true, 'xls');
  ShellExecute(Handle, nil, PChar(FPasswd.GetVar('TEMP') + '\balance.xls'), nil,
    nil, SW_RESTORE);
end;

procedure TFrameProduct.btnRefreshClick(Sender: TObject);
begin
  ShowProduct(QueryProduct.Fields[0].AsInteger);
end;

procedure TFrameProduct.btnRestClick(Sender: TObject);
begin
  if QueryProduct.FieldByName('скрыт').AsInteger = 1 then
  begin
    case FPasswd.edtLang.ItemIndex of
      0:
        QuestionDialog('Восстановление',
          'Вы действительно хотите восстановить позицию?');
      1:
        QuestionDialog('Restitution', 'You really want to restore a position?');
      2:
        QuestionDialog('Reconstitución',
          'Queréis restablecer realmente la posición?');
    end;
    if UDialogMy.Dlg.Execute = 100 then
    begin
      with DM1.QueryUpd do
      begin
        Close;
        sql.Text := 'update продукция.продукция set скрыт=0 where id=' +
          QueryProduct.FieldByName('id').AsString;
        ExecSQL;
        QueryProduct.Refresh;
      end;
    end;
  end
  else
  begin
    case FPasswd.edtLang.ItemIndex of
      0:
        ErrorDialog('Позиция не скрыта. Удаление не возможно.', '', '');
      1:
        ErrorDialog
          ('The position isn''t hidden. Removal isn''t possible.', '', '');
      2:
        ErrorDialog
          ('La posición no es escondida. La desaparición no es posible.', '',
          '');
    end;
  end;
end;

procedure TFrameProduct.chkDelClick(Sender: TObject);
begin
  ShowProduct(QueryProduct.FieldByName('id').AsInteger);
  FrameTopPanel1.btnRest.Enabled := chkDel.Checked;
end;

function TFrameProduct.DetectUniq(s_id_detail: string): Boolean;
var
  Query1: TUniQuery;
  id_prop: string;
begin
  Query1 := TUniQuery.Create(nil);
  Query1.Connection := DM1.dbUpd;
  with Query1 do
  begin
    { берем хотя-бы одно уникальное свойство }
    Close;
    sql.Text := 'select * from "продукция"."типы_свойства" where код_типа IN ('
      + 'select код_типа from "продукция"."сорта" where id=' + s_id_detail +
      ' ) and uniq=true';
    Open;
    id_prop := Fields[0].AsString;
    { есть уникальные свойства, проверяем занятость значений }
    if Fields[0].AsString <> '' then
    begin
      Close;
      sql.Text := 'select * from  "продукция"."свойства_значения" where ' +
        ' код_свойства=' + id_prop + ' and id not in ' +
        ' (select код_значения_свойства from "продукция"."продукт_свойство" ' +
        ' where код_товара in (select id from "продукция"."продукция" where pid='
        + QueryProduct.FieldByName('id').AsString + '))';
      Open;
      if Fields[0].AsString <> '' then
        Result := false
      else
        Result := true;
    end
    else
      Result := false;
    // Close;
    // sql.Text := 'select * from  "продукция"."свойства_значения" where ' +
    // ' код_свойства=' + s_id_prop + ' and id not in ' +
    // ' (select код_значения_свойства from "продукция"."продукт_свойство" ' +
    // ' where код_товара in (select id from "продукция"."продукция" where pid='
    // + s_id_parrent + '))';
    // Open;
  end;
end;

procedure TFrameProduct.FrameSearch1edtNameKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    ShowProduct();
end;

function TFrameProduct.GetCountry(s_id: Integer): Integer;
var
  i: Integer;
begin
  Result := 0;
  with Query1 do
  begin
    sql.Clear;
    sql.Add(' SELECT ');
    sql.Add('   p."код_детализации"');
    sql.Add(' FROM');
    sql.Add('   "продукция"."продукция" p1');
    sql.Add('   INNER JOIN "продукция"."продукция" p ON (p1.pid = p.id)');
    sql.Add('   INNER JOIN "продукция"."продукция" p3 ON (p1.id = p3.pid)');
    sql.Add('   INNER JOIN "продукция"."продукция" p4 ON (p3.id = p4.pid)');
    sql.Add('    INNER JOIN "продукция"."продукция" p5 ON (p4.id = p5.pid)');
    sql.Add(' WHERE');
    sql.Add('   p."код_структуры" = 2 and p5.id=' + IntToStr(s_id));
    Open;
    Result := Fields[0].AsInteger;
  end;
end;

procedure TFrameProduct.lstTreeProductsDblClick(Sender: TObject);
begin
  if FrameTopPanel1.btnEdit.Enabled = true then
    btnEditClick(Sender);
end;

procedure TFrameProduct.lstTreeProductsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_INSERT then
    if FrameTopPanel1.btnAdd.Visible = ivAlways then
      btnAddClick(Sender);
  if Key = VK_DELETE then
    if FrameTopPanel1.btnDel.Visible = ivAlways then
      btnDelClick(Sender);
  if Key = VK_RETURN then
    if FrameTopPanel1.btnEdit.Visible = ivAlways then
      btnEditClick(Sender);
end;

procedure TFrameProduct.lstTreeProductsStylesGetContentStyle
  (Sender: TcxCustomTreeList; AColumn: TcxTreeListColumn;
  ANode: TcxTreeListNode; var AStyle: TcxStyle);
begin
  if ANode.Values[ColumnDel.ItemIndex] = 1 then
    AStyle := cxStyle1
  else
    AStyle := cxStyle2;
  // if ColumnDel.Value = 1 then
  // AStyle := cxStyle1
  // else
  // AStyle := cxStyle2;
end;

procedure TFrameProduct.QueryProductAfterFetch(DataSet: TCustomDADataSet);
begin
  FSplash.Close;
end;

procedure TFrameProduct.QueryProductBeforeFetch(DataSet: TCustomDADataSet;
  var Cancel: Boolean);
begin
  FSplash.Show;
  FSplash.Update;
end;

procedure TFrameProduct.ShowProduct(id_locate: Integer = 0;
  not_in: string = '');
begin
  with QueryProduct do
  begin
    Close;
    with FrameSearch1 do
    begin
      if edtName.Text = '' then
      begin
        sql.Text := 'select * from продукция.продукция where 1=1 ';
        if not_in <> '' then
          sql.Add(not_in);
        if chkDel.Checked = false then
          sql.Add(' and скрыт=0');
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
          '  код_структуры = 5 and id in (select pid from "продукция"."продукция"'
          + '  where id_group = 0 and код_структуры = 6 and  Upper(';
        case FPasswd.edtLangData.ItemIndex of
          0:
            sql.Add('name');
          1:
            sql.Add('uni_name');
          2:
            sql.Add('reg_name');
        end;
        sql.Add(') Like ''%' + AnsiUpperCase(edtName.Text) + '%''');
        sql.Add('))) union all select * from "продукция"."продукция" where id_group = 1 and'
          + ' код_структуры = 4 and id in (select pid from "продукция"."продукция"'
          + ' where id_group = 1 and код_структуры = 5 and id IN (select pid' +
          ' from "продукция"."продукция"  where id_group = 0 and ' +
          ' код_структуры = 6 and Upper(');
        case FPasswd.edtLangData.ItemIndex of
          0:
            sql.Add('name');
          1:
            sql.Add('uni_name');
          2:
            sql.Add('reg_name');
        end;
        sql.Add(') Like ''%' + AnsiUpperCase(edtName.Text) + '%''');
        sql.Add(')) union all select * from "продукция"."продукция" where id_group = 1 and'
          + ' код_структуры = 5 and  id IN (select pid from "продукция"."продукция"'
          + ' where id_group = 0 and код_структуры = 6 and Upper(');
        case FPasswd.edtLangData.ItemIndex of
          0:
            sql.Add('name');
          1:
            sql.Add('uni_name');
          2:
            sql.Add('reg_name');
        end;
        sql.Add(') Like ''%' + AnsiUpperCase(edtName.Text) + '%''');
        sql.Add(')  UNION all select * from "продукция"."продукция" where id_group = 0 and'
          + '  код_структуры = 6 and Upper(');
        case FPasswd.edtLangData.ItemIndex of
          0:
            sql.Add('name');
          1:
            sql.Add('uni_name');
          2:
            sql.Add('reg_name');
        end;
        sql.Add(') Like ''%' + AnsiUpperCase(edtName.Text) + '%'' ');
        if chkDel.Checked = false then
          sql.Add(' and скрыт=0');
        sql.Add(' order by id');
        // sql.Text := 'select id, pid, name, uni_name, reg_name, id_group from ' +
        // ' "продукция"."продукция" where id_group=1 and id in (select pid from '
        // + ' "продукция"."продукция") union all select id, pid, name, uni_name, '
        // + ' reg_name, id_group from "продукция"."продукция" where id_group=0 '
        // + ' and Upper(';
        // case FPasswd.Lang of
        // 0:
        // sql.Add('name');
        // 1:
        // sql.Add('uni_name');
        // 2:
        // sql.Add('reg_name');
        // end;
        // sql.Add(') Like ''%' + AnsiUpperCase(edtName.Text) + '%''');
        // sql.Add(' order by id');
        Open;
        lstTreeProducts.FullExpand;
      end;
    end;
    Locate('id', id_locate, []);
    //
  end;
  lstTreeProducts.SetFocus;
  DM1.db1.Connected:=false;
end;

end.
