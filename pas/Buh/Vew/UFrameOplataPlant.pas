unit UFrameOplataPlant;
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
  cxNavigator,
  Data.DB,
  cxDBData,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  UFrameTopPanel,
  MemDS,
  DBAccess,
  Uni,
  cxCurrencyEdit,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue, dxSkinOffice2007Blue, dxSkinsDefaultPainters;
type
  TFrameOplataPlant = class(TFrame)
    QueryOplataPlant : TUniQuery;
    dsOplataPlant : TDataSource;
    QueryOplataPlant1 : TUniQuery;
    FrameTopPanel1 : TFrameTopPanel;
    GridUsers : TcxGrid;
    ViewStatWork : TcxGridDBTableView;
    LevelStatWork : TcxGridLevel;
    ViewStatWorkname : TcxGridDBColumn;
    ViewStatWork_ : TcxGridDBColumn;
    ViewStatWork_2 : TcxGridDBColumn;
    ViewStatWork_3 : TcxGridDBColumn;
    procedure btnAddClick(Sender : TObject);
    procedure btnEditClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure btnRefreshClick(Sender : TObject);
    procedure ViewStatWorkDblClick(Sender : TObject);
    procedure FrameTopPanel1btnArchPropertiesEditValueChanged(Sender : TObject);
  private
    { Private declarations }
  public
    procedure ShowOpl(s_id_locate : Integer = 0);
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  UNewOplatPlant,
  PGSQL;
procedure TFrameOplataPlant.btnAddClick(Sender : TObject);
begin
  Application.CreateForm(TFNewOplatPlant, FNewOplatPlant);
  with FNewOplatPlant do
  begin
    edtPlantPropertiesButtonClick(Sender, 0);
    s_ins_upd := True;
    ShowModal;
    if FNewOplatPlant.FrameSave1.id_save = True then
    begin
      with QueryOplataPlant1 do
      begin
        // SQL.Clear;
        // SQL.Add(' INSERT INTO');
        // SQL.Add(' "���"."���_������_���������"');
        // SQL.Add(' (id,');
        // SQL.Add(' "�����_��",');
        // SQL.Add(' "���_���������",');
        // SQL.Add(' "����_��",');
        // SQL.Add(' "�����_��"');
        // SQL.Add(' )');
        // SQL.Add(' VALUES (:id,');
        // SQL.Add(' :�����_��,');
        // SQL.Add(' :���_���������,');
        // SQL.Add(' :����_��,');
        // SQL.Add(' :�����_��');
        // SQL.Add(' );');
        // id := PGSQL.NewID('"���"."���_������_���������_id_seq"');
        // ParamByName('id').AsInteger := id;
        // ParamByName('�����_��').AsString := edtNumPP.Text;
        // ParamByName('���_���������').AsInteger := id_plant;
        // ParamByName('����_��').AsDate := edtDateOpl.Date;
        // ParamByName('�����_��').AsString := edtSumOpl.Text;
        // ExecSQL;
        // ShowOpl(id);
      end;
{$ENDREGION};
    end;
  end;
end;
procedure TFrameOplataPlant.btnDelClick(Sender : TObject);
begin
  PGSQL.StandartDelete(QueryOplataPlant.FieldByName('id').AsString,
                        '"���"."���_������_���������"', QueryOplataPlant, '', '', '', '');
end;
procedure TFrameOplataPlant.btnEditClick(Sender : TObject);
begin
  if QueryOplataPlant.RecordCount > 0 then
  begin
    Application.CreateForm(TFNewOplatPlant, FNewOplatPlant);
    with FNewOplatPlant do
    begin
      edtNumPP.Text := QueryOplataPlant.FieldByName('�����_��').AsString;
      id_plant := QueryOplataPlant.FieldByName('���_���������').AsInteger;
      edtDateOpl.Date := QueryOplataPlant.FieldByName('����_��').AsDateTime;
      edtSumOpl.Text := QueryOplataPlant.FieldByName('�����_��').AsString;
      edtPlant.Text := QueryOplataPlant.FieldByName('name').AsString;
      s_ins_upd := False;
      s_id_oplata := QueryOplataPlant.FieldByName('id').AsInteger;
      ShowModal;
      // if FNewOplatPlant.FrameSave1.id_save = true then
      // begin
      // with QueryOplataPlant1 do
      // begin
      // SQL.Clear;
      // SQL.Add(' UPDATE');
      // SQL.Add(' "���"."���_������_���������"');
      // SQL.Add(' SET');
      // SQL.Add(' "�����_��" = :�����_��,');
      // SQL.Add(' "���_���������" = :���_���������,');
      // SQL.Add(' "����_��" = :����_��,');
      // SQL.Add(' "�����_��" = :�����_��');
      // SQL.Add(' ');
      // SQL.Add(' WHERE');
      // SQL.Add(' id = :id');
      // ParamByName('id').AsInteger := QueryOplataPlant.FieldByName('id')
      // .AsInteger;
      // ParamByName('�����_��').AsString := edtNumPP.Text;
      // ParamByName('���_���������').AsInteger := id_plant;
      // ParamByName('����_��').AsDate := edtDateOpl.Date;
      // ParamByName('�����_��').AsString := edtSumOpl.Text;
      // ExecSQL;
      // ShowOpl(QueryOplataPlant.FieldByName('id').AsInteger);
      // end;
{$ENDREGION};
      // end;
    end;
  end;
end;
procedure TFrameOplataPlant.btnRefreshClick(Sender : TObject);
begin
  ShowOpl(QueryOplataPlant.FieldByName('id').AsInteger);
end;
procedure TFrameOplataPlant.FrameTopPanel1btnArchPropertiesEditValueChanged
  (Sender : TObject);
begin
  ShowOpl();
end;
procedure TFrameOplataPlant.ShowOpl(s_id_locate : Integer = 0);
begin
  with QueryOplataPlant do
  begin
    SQL.Clear;
    SQL.Add(' SELECT pl.name,');
    SQL.Add(' pl.brand,');
    SQL.Add(' pl.uni_name,');
    SQL.Add(' pl.reg_name,');
    SQL.Add(' opl.id,');
    SQL.Add(' opl."�����_��",');
    SQL.Add(' opl."���_���������",');
    SQL.Add(' opl."����_��",');
    SQL.Add(' opl."�����_��"');
    SQL.Add(' FROM "���"."���_������_���������" opl');
    SQL.Add(' INNER JOIN "���������"."���������" pl ON (opl."���_���������" = pl.id)');
    if FrameTopPanel1.btnArch.EditValue = True then
      SQL.Add(' where opl."�����_���"=1')
    else
      SQL.Add(' where opl."�����_���"=0');
    SQL.Add(' order by ����_�� DESC');
    Open;
    Locate('id', s_id_locate, []);
  end;
end;
procedure TFrameOplataPlant.ViewStatWorkDblClick(Sender : TObject);
begin
  btnEditClick(Sender);
end;
end.
