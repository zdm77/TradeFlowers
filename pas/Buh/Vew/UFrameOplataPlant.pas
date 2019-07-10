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
        // SQL.Add(' "бух"."бух_оплата_плантации"');
        // SQL.Add(' (id,');
        // SQL.Add(' "номер_пп",');
        // SQL.Add(' "код_плантации",');
        // SQL.Add(' "дата_пп",');
        // SQL.Add(' "сумма_пп"');
        // SQL.Add(' )');
        // SQL.Add(' VALUES (:id,');
        // SQL.Add(' :номер_пп,');
        // SQL.Add(' :код_плантации,');
        // SQL.Add(' :дата_пп,');
        // SQL.Add(' :сумма_пп');
        // SQL.Add(' );');
        // id := PGSQL.NewID('"бух"."бух_оплата_плантации_id_seq"');
        // ParamByName('id').AsInteger := id;
        // ParamByName('номер_пп').AsString := edtNumPP.Text;
        // ParamByName('код_плантации').AsInteger := id_plant;
        // ParamByName('дата_пп').AsDate := edtDateOpl.Date;
        // ParamByName('сумма_пп').AsString := edtSumOpl.Text;
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
                        '"бух"."бух_оплата_плантации"', QueryOplataPlant, '', '', '', '');
end;
procedure TFrameOplataPlant.btnEditClick(Sender : TObject);
begin
  if QueryOplataPlant.RecordCount > 0 then
  begin
    Application.CreateForm(TFNewOplatPlant, FNewOplatPlant);
    with FNewOplatPlant do
    begin
      edtNumPP.Text := QueryOplataPlant.FieldByName('номер_пп').AsString;
      id_plant := QueryOplataPlant.FieldByName('код_плантации').AsInteger;
      edtDateOpl.Date := QueryOplataPlant.FieldByName('дата_пп').AsDateTime;
      edtSumOpl.Text := QueryOplataPlant.FieldByName('сумма_пп').AsString;
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
      // SQL.Add(' "бух"."бух_оплата_плантации"');
      // SQL.Add(' SET');
      // SQL.Add(' "номер_пп" = :номер_пп,');
      // SQL.Add(' "код_плантации" = :код_плантации,');
      // SQL.Add(' "дата_пп" = :дата_пп,');
      // SQL.Add(' "сумма_пп" = :сумма_пп');
      // SQL.Add(' ');
      // SQL.Add(' WHERE');
      // SQL.Add(' id = :id');
      // ParamByName('id').AsInteger := QueryOplataPlant.FieldByName('id')
      // .AsInteger;
      // ParamByName('номер_пп').AsString := edtNumPP.Text;
      // ParamByName('код_плантации').AsInteger := id_plant;
      // ParamByName('дата_пп').AsDate := edtDateOpl.Date;
      // ParamByName('сумма_пп').AsString := edtSumOpl.Text;
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
    SQL.Add(' opl."номер_пп",');
    SQL.Add(' opl."код_плантации",');
    SQL.Add(' opl."дата_пп",');
    SQL.Add(' opl."сумма_пп"');
    SQL.Add(' FROM "бух"."бух_оплата_плантации" opl');
    SQL.Add(' INNER JOIN "продукция"."плантации" pl ON (opl."код_плантации" = pl.id)');
    if FrameTopPanel1.btnArch.EditValue = True then
      SQL.Add(' where opl."архив_опл"=1')
    else
      SQL.Add(' where opl."архив_опл"=0');
    SQL.Add(' order by дата_пп DESC');
    Open;
    Locate('id', s_id_locate, []);
  end;
end;
procedure TFrameOplataPlant.ViewStatWorkDblClick(Sender : TObject);
begin
  btnEditClick(Sender);
end;
end.
