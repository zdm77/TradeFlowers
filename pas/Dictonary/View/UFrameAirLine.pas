unit UFrameAirLine;

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

  dxSkinDevExpressStyle,

   dxSkinsDefaultPainters, dxSkinOffice2007Blue;

type
  TFrameAirLine = class(TFrame)
    FrameTopPanel1: TFrameTopPanel;
    QueryAirLine: TUniQuery;
    dsAirLine: TDataSource;
    GridAirLine: TcxGrid;
    ViewUsers: TcxGridDBTableView;
    ColumnUniName: TcxGridDBColumn;
    ColumnName: TcxGridDBColumn;
    ColumnRegName: TcxGridDBColumn;
    LevelOrg: TcxGridLevel;
    procedure btnEditClick(Sender: TObject);
    procedure FrameTopPanel1btnSelClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure ViewUsersDblClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure SetLang;
    procedure ShowAirLine(id_locate: Integer = 0);
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  UNewAirLine,
  ULang;

procedure TFrameAirLine.btnAddClick(Sender: TObject);
begin
  Application.CreateForm(TFNewAirLine, FNewAirLine);
  with FNewAirLine do
  begin
    FrameUniName1.chkUseName.Visible := false;
    FrameUniName1.SetLang;
    FrameTopPanel1.SetLang;
    SetLang;
    FrameSave1.SetLang;
    ShowModal;
    if FrameSave1.id_save = true then
      ShowAirLine(s_id_AirLine);
  end;
end;

procedure TFrameAirLine.btnDelClick(Sender: TObject);
begin
  ShowMessage('');
end;

procedure TFrameAirLine.btnEditClick(Sender: TObject);
begin
  Application.CreateForm(TFNewAirLine, FNewAirLine);
  with FNewAirLine do
  begin
    s_id_AirLine := QueryAirLine.FieldByName('id').AsInteger;
    with FrameUniName1 do
    begin
      edtName.Text := QueryAirLine.FieldByName('name').AsString;
      edtUniName.Text := QueryAirLine.FieldByName('uni_name').AsString;
      edtRegName.Text := QueryAirLine.FieldByName('reg_name').AsString;
    end;
    FrameUniName1.chkUseName.Visible := false;
    FrameUniName1.SetLang;
    FrameTopPanel1.SetLang;
    SetLang;
    FrameSave1.SetLang;
    ShowTimes;
    ShowModal;
    if FrameSave1.id_save = true then
      ShowAirLine(s_id_AirLine);
  end;
end;

procedure TFrameAirLine.btnRefreshClick(Sender: TObject);
begin
  ShowAirLine(QueryAirLine.FieldByName('id').AsInteger);
end;

procedure TFrameAirLine.FrameTopPanel1btnSelClick(Sender: TObject);
begin
  FrameTopPanel1.btnSelClick(Sender);
end;

procedure TFrameAirLine.SetLang;
begin
  ULang.TranslateGridCaption(ColumnUniName, ColumnRegName, ColumnName);
end;

procedure TFrameAirLine.ShowAirLine(id_locate: Integer = 0);
begin
  with QueryAirLine do
  begin
    Close;
    SQL.Text := 'select * from "авиалинии"."авиалинии" order by name ';
    Open;
    Locate('id', id_locate, []);
  end;
end;

procedure TFrameAirLine.ViewUsersDblClick(Sender: TObject);
begin
  if FrameTopPanel1.btnEdit.Enabled = true then
    btnEditClick(Sender);
end;

end.
