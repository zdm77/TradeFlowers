unit UFrameLength;
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
  
  cxNavigator,
  
  dxSkinDevExpressStyle,
  
  dxSkinsDefaultPainters, dxSkinOffice2007Blue, dxDateRanges;
type
  TFrameLength = class(TFrame)
    FrameTopPanel1 : TFrameTopPanel;
    QueryLength : TUniQuery;
    dsLength : TDataSource;
    GridUsers : TcxGrid;
    ViewUsers : TcxGridDBTableView;
    ColumnName : TcxGridDBColumn;
    LevelOrg : TcxGridLevel;
    procedure btnAddClick(Sender : TObject);
    procedure btnEditClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure btnRefreshClick(Sender : TObject);
    procedure ViewUsersDblClick(Sender : TObject);
  private
    { Private declarations }
  public
    procedure ShowLength(id_locate : Integer = 0);
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  UDataModule1,
  ULength,
  UPasswd,
  UDialogMy;
procedure TFrameLength.btnAddClick(Sender : TObject);
begin
  Application.CreateForm(TFLength, FLength);
  with FLength do
  begin
    s_id_length := 0;
    ShowSort;
    ShowModal;
    if s_id_length <> 0 then
      ShowLength(s_id_length);
  end;
end;
procedure TFrameLength.btnDelClick(Sender : TObject);
begin
  if QueryLength.Fields[0].AsString <> '' then
  begin
    case FPasswd.edtLang.ItemIndex of
      0 : QuestionDialog('Удаление', 'Вы действительно хотите удалить длину?');
      1 : QuestionDialog('Removal', 'You really want to remove a grade? ');
      2 : QuestionDialog('Desaparición', '¿Queréis quitar realmente la clase?');
    end;
    if UDialogMy.Dlg.Execute = 100 then
    begin
      DM1.dbUpd.StartTransaction;
      with DM1.QueryUpd do
      begin
        { продукция }
        Close;
        sql.Text := 'delete from продукция.длины where id=' +
      QueryLength.FieldByName('id').AsString; ;
        try
          ExecSQL;
          DM1.dbUpd.Commit;
          ShowLength();
        except
          case FPasswd.edtLang.ItemIndex of
            0 : ErrorDialog('Удаление невозможно.', '',
                             'Есть операции, в которых участвовала длина.');
            1 : ErrorDialog('Removal is impossible', '',
                             'There are operations in which the grade participated. ');
            2 : ErrorDialog('La desaparición es imposible', '',
                             'Hay unas operaciones, en que participaba la clase.');
          end;
          DM1.dbUpd.Rollback;
        end;
      end;
    end;
  end;
end;
procedure TFrameLength.btnEditClick(Sender : TObject);
begin
  Application.CreateForm(TFLength, FLength);
  with FLength do
  begin
    s_id_length := QueryLength.FieldByName('id').AsInteger;
    edtValue.Text := QueryLength.FieldByName('name').AsString;
    ShowSort;
    ShowModal;
    if s_id_length <> 0 then
      ShowLength(s_id_length);
  end;
end;
procedure TFrameLength.btnRefreshClick(Sender : TObject);
begin
  ShowLength(QueryLength.FieldByName('id').AsInteger);
end;
procedure TFrameLength.ShowLength(id_locate : Integer = 0);
begin
  with QueryLength do
  begin
    Close;
    Open;
    Locate('id', id_locate, []);
  end;
end;
procedure TFrameLength.ViewUsersDblClick(Sender : TObject);
begin
  btnEditClick(Sender);
end;
end.
