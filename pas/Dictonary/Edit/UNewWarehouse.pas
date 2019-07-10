unit UNewWarehouse;
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
  
  cxGroupBox,
  DBAccess,
  Uni,
  MemDS,
  UFrameSave,
  Vcl.StdCtrls,
  cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  UFrameUniName,
  cxStyles,
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  DB,
  cxDBData,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  UFrameTopPanel,
  cxNavigator,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue;
type
  TFNewWarehouse = class(TForm)
    FrameSave1 : TFrameSave;
    QueryOrg : TUniQuery;
    dsOrg : TUniDataSource;
    Group1 : TcxGroupBox;
    UniQuery1 : TUniQuery;
    UniDataSource1 : TUniDataSource;
    edtOrg : TcxLookupComboBox;
    lblOrg : TLabel;
    FrameUniName1 : TFrameUniName;
    Group2 : TcxGroupBox;
    FrameTopPanel1 : TFrameTopPanel;
    QueryStoreloc : TUniQuery;
    dsStoreloc : TDataSource;
    GridUsers : TcxGrid;
    ViewUsers : TcxGridDBTableView;
    LevelOrg : TcxGridLevel;
    Query1 : TUniQuery;
    ColumnName : TcxGridDBColumn;
    ColumnCount : TcxGridDBColumn;
    ColumnNameE : TcxGridDBColumn;
    procedure FormShow(Sender : TObject);
    procedure FrameSave1btnSaveClick(Sender : TObject);
    procedure FrameUniName1edtNameKeyUp(Sender : TObject; var Key : Word;
                                           Shift : TShiftState);
    procedure FrameUniName1edtUniNameKeyUp(Sender : TObject; var Key : Word;
                                              Shift : TShiftState);
    procedure FrameUniName1edtUniNamePropertiesEditValueChanged
        (Sender : TObject);
    procedure FrameUniName1edtNamePropertiesEditValueChanged(Sender : TObject);
    procedure FrameUniName1edtRegNameKeyUp(Sender : TObject; var Key : Word;
                                              Shift : TShiftState);
    procedure FrameUniName1edtRegNamePropertiesEditValueChanged
        (Sender : TObject);
    procedure btnAddClick(Sender : TObject);
    procedure btnEditClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
  private
    { Private declarations }
  public
    s_id_org : Integer;
    s_id_warehouse : Integer;
    procedure EnableSave;
    procedure InsUpdWarehouse(id_ins : boolean);
    procedure ShowOrg;
    { Public declarations }
  end;

var
  FNewWarehouse : TFNewWarehouse;
implementation
{$R *.dfm}

uses
  PGSQL;
procedure TFNewWarehouse.btnAddClick(Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewWarehouse.btnDelClick(Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewWarehouse.btnEditClick(Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewWarehouse.EnableSave;
begin
  if (FrameUniName1.edtUniName.Text <> '') and
  (FrameUniName1.edtName.Text <> '') and (FrameUniName1.edtRegName.Text <> '')
  and (edtOrg.Text <> '') then
    FrameSave1.btnSave.Enabled := True
  else
    FrameSave1.btnSave.Enabled := false;
  if QueryStoreloc.RecordCount > 0 then
  begin
    FrameTopPanel1.btnEdit.Enabled := True;
    FrameTopPanel1.btnDel.Enabled := True;
  end
  else
  begin
    FrameTopPanel1.btnEdit.Enabled := false;
    FrameTopPanel1.btnDel.Enabled := false;
  end;
end;
procedure TFNewWarehouse.FormShow(Sender : TObject);
begin
  FrameUniName1.SetLang;
  FrameUniName1.edtUniName.SetFocus;
  FrameTopPanel1.SetLang;
  EnableSave;
end;
procedure TFNewWarehouse.FrameSave1btnSaveClick(Sender : TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  if s_id_warehouse = 0 then
    InsUpdWarehouse(True)
  else
    InsUpdWarehouse(false);
  Close;
end;
procedure TFNewWarehouse.FrameUniName1edtNameKeyUp(Sender : TObject;
                                                      var Key : Word; Shift : TShiftState);
begin
  EnableSave;
end;
procedure TFNewWarehouse.FrameUniName1edtNamePropertiesEditValueChanged
  (Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewWarehouse.FrameUniName1edtRegNameKeyUp(Sender : TObject;
                                                         var Key : Word; Shift : TShiftState);
begin
  EnableSave;
end;
procedure TFNewWarehouse.FrameUniName1edtRegNamePropertiesEditValueChanged
  (Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewWarehouse.FrameUniName1edtUniNameKeyUp(Sender : TObject;
                                                         var Key : Word; Shift : TShiftState);
begin
  EnableSave;
end;
procedure TFNewWarehouse.FrameUniName1edtUniNamePropertiesEditValueChanged
  (Sender : TObject);
begin
  EnableSave;
end;
procedure TFNewWarehouse.InsUpdWarehouse(id_ins : boolean);
var
  id : Integer;
begin
  with Query1 do
  begin
    Close;
    if id_ins = True then
    begin
      id := PGSQL.NewID('"склад"."цеха_id_sec"');
      sql.Text :=
                 'INSERT INTO "склад"."цеха"(id, "код_организации", name, uni_name,' +
                 ' reg_name) VALUES (:id, :код_организации, :name, :uni_name, :reg_name)';
    end
    else
    begin
      id := s_id_warehouse;
      sql.Text :=
                 'UPDATE  "склад"."цеха" SET "код_организации" = :код_организации,' +
                 ' name = :name, uni_name = :uni_name, reg_name = :reg_name' +
                 ' WHERE  id = :id';
    end;
    ParamByName('id').AsInteger := id;
    ParamByName('код_организации').AsInteger := FNewWarehouse.edtOrg.EditValue;
    ParamByName('name').AsString := FNewWarehouse.FrameUniName1.edtName.Text;
    ParamByName('uni_name').AsString :=
                                       FNewWarehouse.FrameUniName1.edtUniName.Text;
    ParamByName('reg_name').AsString :=
                                       FNewWarehouse.FrameUniName1.edtRegName.Text;
    ExecSQL;
  end;
end;
procedure TFNewWarehouse.ShowOrg;
begin
  with QueryOrg do
  begin
    Close;
    Open;
    edtOrg.EditValue := s_id_org;
  end;
end;
end.
