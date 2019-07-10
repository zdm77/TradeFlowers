unit UFramePlantSort;
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
  cxLabel,
  cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  cxGroupBox,
  cxNavigator,
  cxCheckBox,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue;
type
  TFramePlantSort = class(TFrame)
    FrameTopPanel1 : TFrameTopPanel;
    GroupSelCountry : TcxGroupBox;
    edtType : TcxLookupComboBox;
    lblDetail : TcxLabel;
    GroupSort : TcxGroupBox;
    GridUsers : TcxGrid;
    ViewUsers : TcxGridDBTableView;
    ColumnUniName : TcxGridDBColumn;
    ColumnName : TcxGridDBColumn;
    ColumnRegName : TcxGridDBColumn;
    LevelOrg : TcxGridLevel;
    QuerySort : TUniQuery;
    dsSort : TDataSource;
    QueryType : TUniQuery;
    dsType : TDataSource;
    chkDel : TcxCheckBox;
    Style1 : TcxStyleRepository;
    cxStyle1 : TcxStyle;
    cxStyle2 : TcxStyle;
    ColumnDel : TcxGridDBColumn;
    procedure btnEditClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure btnRefreshClick(Sender : TObject);
    procedure edtTypePropertiesEditValueChanged(Sender : TObject);
    procedure chkDelClick(Sender : TObject);
    procedure ViewUsersStylesGetContentStyle(Sender : TcxCustomGridTableView;
                                                ARecord : TcxCustomGridRecord; AItem : TcxCustomGridTableItem;
                                                out AStyle : TcxStyle);
    procedure btnRestClick(Sender : TObject);
  private
    { Private declarations }
  public
    s_id_plant_ps : Integer;
    procedure ShowSortPlant;
    procedure ShowTypeSort;
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  UDataModule1,
  UPasswd,
  UDialogMy;
procedure TFramePlantSort.btnDelClick(Sender : TObject);
var
  pid : string;
begin
  // проверяем нет-ли позиций у него
  with DM1.QueryUpd do
  begin
    Close;
    sql.Text := 'select id from "продукция"."продукция" where pid in(' +
  ' select id from "продукция"."продукция" where код_структуры=5 ' +
  ' and код_детализации=' + QuerySort.FieldByName('id_sort').AsString + ')';
    Open;
    if RecordCount = 0 then
    begin
      case FPasswd.edtLang.ItemIndex of
        0 : QuestionDialog('Удаление',
                            'Вы действительно хотите отвязать сорт от плантации?');
        1 : QuestionDialog('Removal',
                            'You really want to untie a grade from a plantation?');
        2 : QuestionDialog('Desaparición',
                            'Queréis desatar realmente la clase de la plantación?');
      end;
      if UDialogMy.Dlg.Execute = 100 then
      begin
        Close;
        sql.Text := 'delete from "продукция"."сорт_плантация" where id=' +
      QuerySort.FieldByName('id_sp').AsString;
        ExecSQL;
        // удаляем сорт из номенклатуры
        Close;
        sql.Text := 'delete from продукция.продукция where код_структуры=5' +
      ' and код_детализации=' + QuerySort.FieldByName('id_sort').AsString;
        ExecSQL;
        // DM1.dbUpd.Commit;
        ShowSortPlant;
      end;
    end
    else
    begin
      case FPasswd.edtLang.ItemIndex of
        0 : ErrorDialog('У сорта имеются позиции. Удаление не возможно.',
                         'У сорта имеются позиции. Удалите все позиции сорта и повторите попытку.',
                         '');
        1 : ErrorDialog
          ('In the variety available positions. Removal is not possible.',
            'In the variety available positions. Remove all items of class and try again.',
            '');
        2 : ErrorDialog
          ('En las posiciones de variedades disponibles. La eliminación no es posible.',
            'En las posiciones de variedades disponibles. Eliminar todos los elementos de la clase y vuelva a intentarlo.',
            '');
      end;
    end;
  end;
end;
procedure TFramePlantSort.btnEditClick(Sender : TObject);
begin
  Abort;
end;
procedure TFramePlantSort.btnRefreshClick(Sender : TObject);
begin
  ShowSortPlant;
end;
procedure TFramePlantSort.btnRestClick(Sender : TObject);
begin
  if QuerySort.FieldByName('скрыт').AsInteger = 1 then
  begin
    case FPasswd.edtLang.ItemIndex of
      0 : QuestionDialog('Восстановление',
                          'Вы действительно хотите восстановить позицию?');
      1 : QuestionDialog('Restitution', 'You really want to restore a position?');
      2 : QuestionDialog('Reconstitución',
                          'Queréis restablecer realmente la posición?');
    end;
    if UDialogMy.Dlg.Execute = 100 then
    begin
      with DM1.QueryUpd do
      begin
        Close;
        sql.Text := 'update "продукция"."сорт_плантация" set скрыт=0 where id='
      + QuerySort.FieldByName('id_sp').AsString;
        ExecSQL;
        Close;
        sql.Text :=
                   'update продукция.продукция set скрыт=0 where код_детализации=';
        Close;
        sql.Text := ' update "продукция"."продукция" set скрыт=0 where id in ('
      + 'select id from "продукция"."продукция" where код_структуры=5 ' +
      ' and код_детализации=' + QuerySort.FieldByName('код_сорта').AsString
      + ' and pid in (' +
      ' select id from "продукция"."продукция" where код_структуры=4' +
      ' and код_детализации=' + IntToStr(s_id_plant_ps) + '))';
        ExecSQL;
        ShowSortPlant;
      end;
    end;
  end
  else
  begin
    case FPasswd.edtLang.ItemIndex of
      0 : ErrorDialog('Позиция не скрыта. Восстановление не возможно.', '', '');
      1 : ErrorDialog
        ('The position isn''t hidden. Restoration isn''t possible.', '', '');
      2 : ErrorDialog
        ('La posición no es escondida. La reconstitución no es posible.', '',
          '');
    end;
  end;
end;
procedure TFramePlantSort.chkDelClick(Sender : TObject);
begin
  ShowSortPlant();
  FrameTopPanel1.btnRest.Enabled := chkDel.Checked;
end;
procedure TFramePlantSort.edtTypePropertiesEditValueChanged(Sender : TObject);
begin
  ShowSortPlant;
end;
procedure TFramePlantSort.ShowSortPlant;
begin
  with QuerySort do
  begin
    Close;
    sql.Text :=
               ' SELECT  sp.id id_sp,  sp."код_сорта", sp.скрыт, sp."код_плантации",' +
               '  sp."код_товара",  s.id id_sort,  s.name,  s.uni_name ,' +
               '  s.reg_name ,  s."стеблей",  s."код_типа",  s."комментарий"' +
               ' FROM  "продукция"."сорт_плантация" sp' +
               '  INNER JOIN "продукция"."сорта" s ON (sp."код_сорта" = s.id)';
    sql.Add(' where код_типа=' + IntToStr(edtType.EditValue) +
    ' and код_плантации=' + IntToStr(s_id_plant_ps));
    if chkDel.Checked = false then
      sql.Add(' and скрыт=0');
    Open;
  end;
end;
procedure TFramePlantSort.ShowTypeSort;
begin
  with QueryType do
  begin
    Close;
    sql.Text := 'SELECT t.* FROM "продукция"."типы" t order by приоритет ';
    Open;
    edtType.EditValue := Fields[0].AsInteger;
  end;
end;
procedure TFramePlantSort.ViewUsersStylesGetContentStyle
  (Sender : TcxCustomGridTableView; ARecord : TcxCustomGridRecord;
      AItem : TcxCustomGridTableItem; out AStyle : TcxStyle);
begin
  if ARecord.Values[3] = 1 then
    AStyle := cxStyle1
  else
    AStyle := cxStyle2;
end;
end.
