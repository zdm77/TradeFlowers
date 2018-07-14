unit UFrameCountry;

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
  cxCheckBox,
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
  cxNavigator,

  dxSkinDevExpressStyle, dxSkinsDefaultPainters, dxSkinOffice2007Blue;

type
  TFrameCountry = class(TFrame)
    QueryCountry: TUniQuery;
    dsCountry: TDataSource;
    GridUsers: TcxGrid;
    ViewUsers: TcxGridDBTableView;
    LevelOrg: TcxGridLevel;
    Query1: TUniQuery;
    ColumnName: TcxGridDBColumn;
    ColumnUniName: TcxGridDBColumn;
    FrameTopPanel1: TFrameTopPanel;
    ColumnRegName: TcxGridDBColumn;
    ColumnCode: TcxGridDBColumn;
    procedure btnRefreshClick(Sender: TObject);
    procedure QueryCountryAfterFetch(DataSet: TCustomDADataSet);
    procedure QueryCountryBeforeFetch(DataSet: TCustomDADataSet;
      var Cancel: Boolean);
    procedure btnAddClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure SetLang;
    procedure ShowCountry(id_locate: Integer = 0);
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  UPasswd,
  ULang,
  USplash, UNewCountry, PGSQL;

procedure TFrameCountry.btnAddClick(Sender: TObject);
begin

  Application.CreateForm(TFNewCountry, FNewCountry);
  with FNewCountry do
  begin
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      with Query1 do
      begin
        Close;
        SQL.Clear;
        SQL.Add(' INSERT INTO');
        SQL.Add(' "продукция"."страны"');
        SQL.Add(' (');
        SQL.Add(' name,');
        SQL.Add(' uni_name,');
        SQL.Add(' reg_name,');
        SQL.Add(' code');
        SQL.Add(' )');
        SQL.Add(' VALUES (');
        SQL.Add(' :name,');
        SQL.Add(' :uni_name,');
        SQL.Add(' :reg_name,');
        SQL.Add(' :code');
        SQL.Add(' );');
        ParamByName('name').Value := FrameUniName1.edtName.Text;
        ParamByName('uni_name').Value := FrameUniName1.edtUniName.Text;
        ParamByName('reg_name').Value := FrameUniName1.edtRegName.Text;
        ParamByName('code').Value := edtCode.Text;
        ExecSQL;
        ShowCountry();
      end;
    end;
  end;
end;

procedure TFrameCountry.btnDelClick(Sender: TObject);
begin
  PGSQL.StandartDelete(QueryCountry.FieldByName('id').AsString,
    '"продукция"."страны"', QueryCountry, '', '', '', '');
end;

procedure TFrameCountry.btnEditClick(Sender: TObject);
begin
  Application.CreateForm(TFNewCountry, FNewCountry);
  with FNewCountry do
  begin
    with QueryCountry do
    begin
      FrameUniName1.edtName.Text := FieldByName('name').Value;
      FrameUniName1.edtUniName.Text := FieldByName('uni_name').Value;
      FrameUniName1.edtRegName.Text := FieldByName('reg_name').Value;
      edtCode.Text := FieldByName('code').Value;
    end;
    ShowModal;
    if FrameSave1.id_save = true then
    begin
      with Query1 do
      begin
        Close;
        SQL.Clear;
        SQL.Add(' UPDATE');
        SQL.Add(' "продукция"."страны"');
        SQL.Add(' SET');
        SQL.Add(' name = :name,');
        SQL.Add(' uni_name = :uni_name,');
        SQL.Add(' reg_name = :reg_name,');
        SQL.Add(' code = :code');
        SQL.Add(' WHERE');
        SQL.Add(' id = :id');
        ParamByName('id').Value := QueryCountry.FieldByName('id').AsInteger;
        ParamByName('name').Value := FrameUniName1.edtName.Text;
        ParamByName('uni_name').Value := FrameUniName1.edtUniName.Text;
        ParamByName('reg_name').Value := FrameUniName1.edtRegName.Text;
        ParamByName('code').Value := edtCode.Text;
        ExecSQL;
        ShowCountry(QueryCountry.FieldByName('id').AsInteger);
      end;
    end;
  end;
end;

procedure TFrameCountry.btnRefreshClick(Sender: TObject);
begin
  ShowCountry(QueryCountry.Fields[0].AsInteger);
end;

procedure TFrameCountry.QueryCountryAfterFetch(DataSet: TCustomDADataSet);
begin
  FSplash.Close;
end;

procedure TFrameCountry.QueryCountryBeforeFetch(DataSet: TCustomDADataSet;
  var Cancel: Boolean);
begin
  FSplash.Show;
  FSplash.Update;
end;

procedure TFrameCountry.SetLang;
begin
  ULang.TranslateGridCaption(ColumnUniName, ColumnRegName, ColumnName);
end;

procedure TFrameCountry.ShowCountry(id_locate: Integer = 0);
begin
  with QueryCountry do
  begin
    Close;
    SQL.Text := 'select * from продукция.страны';
    Open;
    Locate('id', id_locate, []);
  end;
end;

end.
