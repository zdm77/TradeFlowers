unit UFrameAWBPedido;

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
  DBGridEhGrouping,
  ToolCtrlsEh,
  DBGridEhToolCtrls,
  DynVarsEh,
  Data.DB,
  MemDS,
  DBAccess,
  Uni,
  DBAxisGridsEh,
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
  cxNavigator,
  cxDBData,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGridLevel,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  cxLabel,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue, dxSkinOffice2007Blue, dxSkinsDefaultPainters;

type
  TFrameAWBPedido = class(TFrame)
    FrameTopPanel1: TFrameTopPanel;
    QueryAWBPedido: TUniQuery;
    dsAWBPedido: TDataSource;
    ViewAWBPedido: TcxGridDBTableView;
    LevelAWBPedido: TcxGridLevel;
    GridAWBPedido: TcxGrid;
    ColumnViewAWBPedido_1: TcxGridDBColumn;
    ColumnViewAWBPedidok_name: TcxGridDBColumn;
    ColumnViewAWBPedidoa_name: TcxGridDBColumn;
    ColumnOrg: TcxGridDBColumn;
    ColumnMark: TcxGridDBColumn;
    ColumnTrack: TcxGridDBColumn;
    ColumnType: TcxGridDBColumn;
    ColumnПорядок: TcxGridDBColumn;
    ColumnFito: TcxGridDBColumn;
    ColumnPricul: TcxGridDBColumn;
    Query1: TUniQuery;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure ViewAWBPedidoDblClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
  private
    { Private declarations }
  public
    s_date: TDateTime;
    IDAWB: Integer;
    CountAWB: Integer;
    procedure DetectCountAWB;
    procedure ShowAWBPedido;
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  UNewPeduidoAWB,
  UPasswd;

procedure TFrameAWBPedido.btnAddClick(Sender: TObject);
var
  s_d: string;
begin
  Application.CreateForm(TFNewPeduidoAWB, FNewPeduidoAWB);
  with FNewPeduidoAWB do
  begin
    s_date_pedido_awb := s_date;
    ShowAirLines();
    ShowKARGO();
    ShowORG(FPasswd.ID_ORG);
    // ShowMessage( FormatFloat('0000',150));
    s_d := DateToStr(s_date_pedido_awb);
    edtNum.Text := '0' + copy(s_d, 0, 2) + '-' + copy(s_d, 4, 2) +
      copy(s_d, 9, 2) + '-' + FormatFloat('0000', CountAWB + 1);
    ShowModal;
    ShowAWBPedido();
    DetectCountAWB;
    if FrameSave1.id_save = true then
    begin
      with Query1 do
      begin
      end;
    end;
  end;
end;

procedure TFrameAWBPedido.btnDelClick(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите удалить запись?',
    'Вопрос.', MB_YESNO + MB_ICONQUESTION) = mrYes then
  begin
    with Query1 do
    begin
      Close;
      SQL.Text := 'DELETE FROM  "бух"."awb" WHERE  id = ' +
        QueryAWBPedido.FieldByName('id').AsString;
      ExecSQL;
      ShowAWBPedido;
    end;
  end;
  DetectCountAWB;
end;

procedure TFrameAWBPedido.btnEditClick(Sender: TObject);
begin
  Application.CreateForm(TFNewPeduidoAWB, FNewPeduidoAWB);
  with FNewPeduidoAWB do
  begin
    s_date_pedido_awb := s_date;
    IDAWB := QueryAWBPedido.FieldByName('id').AsInteger;
    ShowAirLines(QueryAWBPedido.FieldByName('код_авиалинии').AsInteger);
    ShowKARGO(QueryAWBPedido.FieldByName('код_карго').AsInteger);
    ShowORG(QueryAWBPedido.FieldByName('код_организации').AsInteger);
    edtNum.Text := QueryAWBPedido.FieldByName('мнемо_номер').AsString;
    ShowSubAEBPedido(IDAWB);
    DetectMaxПорядок;
    ShowModal;
    ShowAWBPedido;
    if FrameSave1.id_save = true then
    begin
      with Query1 do
      begin
      end;
    end;
  end;
end;

procedure TFrameAWBPedido.DetectCountAWB;
begin
  with Query1 do
  begin
    Close;
    SQL.Text := 'select count(a.id) from "бух".awb a ' +
      'where a."дата_вылета"=:d and  a."мнемо"=true';
    ParamByName('d').AsDateTime := s_date;
    Open;
    if RecordCount > 0 then
      CountAWB := Fields[0].AsInteger
    else
      CountAWB := 0;
  end;
end;

procedure TFrameAWBPedido.ShowAWBPedido;
begin
  with QueryAWBPedido do
  begin
    Close;
    ParamByName('d').AsDateTime := s_date;
    Open;
  end;
end;

procedure TFrameAWBPedido.ViewAWBPedidoDblClick(Sender: TObject);
begin
  btnEditClick(Sender);
end;

end.
