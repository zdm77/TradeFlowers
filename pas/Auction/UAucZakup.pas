unit UAucZakup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, 
   dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxContainer, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, Vcl.Mask, sMaskEdit, sCustomComboEdit, sToolEdit,
  cxGroupBox, MemDS, DBAccess, Uni, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  UFrameTopPanel;

type
  TFAucZakup = class(TForm)
    FrameTopPanel1: TFrameTopPanel;
    GridStatWork: TcxGrid;
    ViewReceipt: TcxGridDBTableView;
    LevelStatWork: TcxGridLevel;
    Query1: TUniQuery;
    QueryAucZakup: TUniQuery;
    dsAucZakup: TDataSource;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    edtDateFly: TsDateEdit;
    btnSel: TcxButton;
    ViewReceiptColumn1: TcxGridDBColumn;
    ViewReceiptColumn2: TcxGridDBColumn;
    ViewReceiptColumn3: TcxGridDBColumn;
    procedure btnAddClick(Sender: TObject);
    procedure edtDateFlyCloseUp(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure ViewReceiptDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    IDAucBody: Integer;
    sDateFly: TDate;
    procedure DetectDate;
    procedure ShowAucZakup;
    { Public declarations }
  end;

var
  FAucZakup: TFAucZakup;

implementation

{$R *.dfm}

uses PGSQL, UAuctionDetail;

procedure TFAucZakup.btnAddClick(Sender: TObject);
begin
  DetectDate;
  Application.CreateForm(TfAuctionDetail, fAuctionDetail);
  with fAuctionDetail do
  begin
    ShowPostav();
    ShowAucType();
    sIDAucBody := IDAucBody;
    edtDateZakup.Date := Now;
    IDAucZakup := 0;
    ShowModal;
    ShowAucZakup;
  end;
end;

procedure TFAucZakup.btnDelClick(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите удалить запись?', 'Вопрос',
    MB_YESNO + MB_ICONWARNING) = mrYes then
  begin
    with Query1 do
    begin
      Close;
      sql.Text := 'delete from  "аукцион"."аукцион_закупка" where id=' +
        QueryAucZakup.FieldByName('id').AsString;
      ExecSQL;
      ShowAucZakup;
    end;
  end;
end;

procedure TFAucZakup.btnEditClick(Sender: TObject);
begin
  DetectDate;
  Application.CreateForm(TfAuctionDetail, fAuctionDetail);
  with fAuctionDetail do
  begin
    ShowPostav(QueryAucZakup.FieldByName('КодПоставщика').AsInteger);
    ShowAucType(QueryAucZakup.FieldByName('КодАукциона').AsInteger);
    sIDAucBody := IDAucBody;
    edtDateZakup.Date := QueryAucZakup.FieldByName('ДатаЗакупки').AsDateTime;
    IDAucZakup := QueryAucZakup.FieldByName('id').AsInteger;
    ShowAucD;
    edtDateZakup.Enabled := False;
    edtPostav.Enabled := False;
    edtAucType.Enabled := False;
    FrameTopPanel1.btnAdd.Enabled:=False;
    ShowModal;
    ShowAucZakup;
  end;
end;

procedure TFAucZakup.DetectDate;
begin
  with Query1 do
  begin
    if sDateFly <> edtDateFly.Date then
    begin
      Close;
      sql.Text :=
        'select id from  "аукцион"."аукцион_тело" where ДатаВыхода=:d limit 1';
      ParamByName('d').AsDate := edtDateFly.Date;
      Open;
      if Fields[0].AsString = '' then
      begin
        if IDAucBody = 0 then
        begin
          IDAucBody := PGSQL.NewID('"аукцион"."аукцион_тело_id_seq"');
          Close;
          sql.Clear;
          sql.Add(' INSERT INTO');
          sql.Add(' "аукцион"."аукцион_тело"');
          sql.Add(' (');
          sql.Add(' id, "ДатаВыхода"');
          sql.Add(' )');
          sql.Add(' VALUES (');
          sql.Add(' :id,');
          sql.Add(' :ДатаВыхода');
          sql.Add(' );');
        end
        else
        begin
          Close;
          sql.Clear;
          sql.Add(' update ');
          sql.Add(' "аукцион"."аукцион_тело"');
          sql.Add(' set ');
          sql.Add(' "ДатаВыхода"=:ДатаВыхода');
          sql.Add(' where id=:id');
        end;
        ParamByName('id').Value := IDAucBody;
        ParamByName('ДатаВыхода').Value := edtDateFly.Date;
        ExecSQL;
        sDateFly := edtDateFly.Date;
      end
      else
      begin
        Application.MessageBox
          ('Аукцион с такой датой вылета уже существует. Выберите другую дату.',
          'Ошибка', MB_OK + MB_ICONERROR);
        edtDateFly.Date := sDateFly;
        Abort;
      end;
    end;
  end;
end;

procedure TFAucZakup.edtDateFlyCloseUp(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите изменить дату выхода?',
    'Вопрос', MB_YESNO + MB_ICONWARNING) = mrYes then
    DetectDate;
end;

procedure TFAucZakup.ShowAucZakup;
begin

  with QueryAucZakup do
  begin
    Close;
    sql.Clear;
    sql.Add(' SELECT a.id, a."ДатаЗакупки", a.КодАукциона, ak.name as аукцион,');
    sql.Add(' a."КодПоставщика",');
    sql.Add(' k.name');
    sql.Add(' FROM "аукцион"."аукцион_закупка" a');
    sql.Add(' INNER JOIN "контрагенты"."клиенты" k ON (a."КодПоставщика" = k.id)');
    sql.Add(' INNER JOIN "аукцион"."аукционы" ak ON (ak.id = a.КодАукциона)');
    sql.Add(' where a."КодТела" = ' + IntToStr(IDAucBody));
    sql.Add(' order by a."ДатаЗакупки" DESC');
    Open;
  end;
end;

procedure TFAucZakup.ViewReceiptDblClick(Sender: TObject);
begin
  btnEditClick(Sender);
end;

end.
