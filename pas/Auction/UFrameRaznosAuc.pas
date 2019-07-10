unit UFrameRaznosAuc;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  cxSplitter, cxGroupBox,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, MemDS, DBAccess, Uni, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, UFrameTopPanel, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  Vcl.Mask, sMaskEdit, sCustomComboEdit, sToolEdit;
type
  TFrameRaznosAuc = class(TFrame)
    cxGroupBox1 : TcxGroupBox;
    cxGroupBox2 : TcxGroupBox;
    cxSplitter1 : TcxSplitter;
    cxGroupBox3 : TcxGroupBox;
    cxGroupBox4 : TcxGroupBox;
    cxSplitter2 : TcxSplitter;
    cxGroupBox5 : TcxGroupBox;
    FrameTopPanel1 : TFrameTopPanel;
    GridStatWork : TcxGrid;
    ViewReceipt : TcxGridDBTableView;
    ViewReceiptDBColumn : TcxGridDBColumn;
    LevelStatWork : TcxGridLevel;
    QueryMark : TUniQuery;
    dsMark : TDataSource;
    Query1 : TUniQuery;
    Label1 : TLabel;
    btnSel : TcxButton;
    FrameTopPanel2 : TFrameTopPanel;
    FrameTopPanel3 : TFrameTopPanel;
    Label2 : TLabel;
    edtDateFly : TsDateEdit;
    QueryAucR : TUniQuery;
    dsAucR : TDataSource;
    cxGrid1 : TcxGrid;
    cxGridDBTableView1 : TcxGridDBTableView;
    ViewReceiptDBColumn1 : TcxGridDBColumn;
    ViewReceiptDBColumn2 : TcxGridDBColumn;
    ViewReceiptseat : TcxGridDBColumn;
    ViewReceiptDBColumn3 : TcxGridDBColumn;
    ViewReceiptDBColumn4 : TcxGridDBColumn;
    ViewReceiptDBColumn5 : TcxGridDBColumn;
    ViewReceiptDBColumn6 : TcxGridDBColumn;
    ViewReceiptDBColumn7 : TcxGridDBColumn;
    ViewReceiptDBColumn8 : TcxGridDBColumn;
    ViewReceiptDBColumn9 : TcxGridDBColumn;
    ViewReceiptDBColumn10 : TcxGridDBColumn;
    ViewReceipts2 : TcxGridDBColumn;
    ViewReceipts3 : TcxGridDBColumn;
    ViewReceipts4 : TcxGridDBColumn;
    ViewReceiptq : TcxGridDBColumn;
    ViewReceiptcom1 : TcxGridDBColumn;
    ViewReceiptcom2 : TcxGridDBColumn;
    ViewReceiptpos1 : TcxGridDBColumn;
    ViewReceiptpos2 : TcxGridDBColumn;
    ViewReceiptpos3 : TcxGridDBColumn;
    ViewReceiptQL : TcxGridDBColumn;
    ViewReceiptMPS : TcxGridDBColumn;
    ViewReceiptDBColumn11 : TcxGridDBColumn;
    ViewReceiptDBColumn12 : TcxGridDBColumn;
    ViewReceiptDBColumn13 : TcxGridDBColumn;
    ViewReceiptDBColumn14 : TcxGridDBColumn;
    ViewReceiptDBColumn15 : TcxGridDBColumn;
    ViewReceiptDBColumn16 : TcxGridDBColumn;
    ViewReceiptDBColumn17 : TcxGridDBColumn;
    ViewReceiptuni_name : TcxGridDBColumn;
    cxGridLevel1 : TcxGridLevel;
    cxGrid2 : TcxGrid;
    cxGridDBTableView2 : TcxGridDBTableView;
    cxGridDBColumn1 : TcxGridDBColumn;
    cxGridDBColumn2 : TcxGridDBColumn;
    cxGridDBColumn3 : TcxGridDBColumn;
    cxGridDBColumn4 : TcxGridDBColumn;
    cxGridDBColumn5 : TcxGridDBColumn;
    cxGridDBColumn6 : TcxGridDBColumn;
    cxGridDBColumn7 : TcxGridDBColumn;
    cxGridDBColumn8 : TcxGridDBColumn;
    cxGridDBColumn9 : TcxGridDBColumn;
    cxGridDBColumn10 : TcxGridDBColumn;
    cxGridDBColumn11 : TcxGridDBColumn;
    cxGridDBColumn12 : TcxGridDBColumn;
    cxGridDBColumn13 : TcxGridDBColumn;
    cxGridDBColumn14 : TcxGridDBColumn;
    cxGridDBColumn15 : TcxGridDBColumn;
    cxGridDBColumn16 : TcxGridDBColumn;
    cxGridDBColumn17 : TcxGridDBColumn;
    cxGridDBColumn18 : TcxGridDBColumn;
    cxGridDBColumn19 : TcxGridDBColumn;
    cxGridDBColumn20 : TcxGridDBColumn;
    cxGridDBColumn21 : TcxGridDBColumn;
    cxGridDBColumn22 : TcxGridDBColumn;
    cxGridDBColumn23 : TcxGridDBColumn;
    cxGridDBColumn24 : TcxGridDBColumn;
    cxGridDBColumn25 : TcxGridDBColumn;
    cxGridDBColumn26 : TcxGridDBColumn;
    cxGridDBColumn27 : TcxGridDBColumn;
    cxGridDBColumn28 : TcxGridDBColumn;
    cxGridDBColumn29 : TcxGridDBColumn;
    cxGridDBColumn30 : TcxGridDBColumn;
    cxGridLevel2 : TcxGridLevel;
    QueryRD : TUniQuery;
    dsRD : TDataSource;
    Query2 : TUniQuery;
    procedure FrameTopPanel2btnAddClick(Sender : TObject);
    procedure FrameTopPanel2btnDelClick(Sender : TObject);
    procedure FrameTopPanel2btnEditClick(Sender : TObject);
    procedure FrameTopPanel1btnAddClick(Sender : TObject);
    procedure FrameTopPanel1btnDelClick(Sender : TObject);
    procedure FrameTopPanel1btnRestClick(Sender : TObject);
    procedure FrameTopPanel2btnRefreshClick(Sender : TObject);
    procedure FrameTopPanel2btnRestClick(Sender : TObject);
    procedure FrameTopPanel3btnAddClick(Sender : TObject);
    procedure FrameTopPanel3btnDelClick(Sender : TObject);
    procedure FrameTopPanel3btnEditClick(Sender : TObject);
    procedure FrameTopPanel3btnRefreshClick(Sender : TObject);
    procedure btnSelClick(Sender : TObject);
  private
    { Private declarations }
  public
    procedure InsAllFree;
    procedure InsertMarking(idM : Integer = 0);
    procedure ShowAucR;
    procedure ShowMarking(id_locate : Integer = 0);
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses UMultiSelect, UPasswd, USelect;
procedure TFrameRaznosAuc.btnSelClick(Sender : TObject);
var
  idFree : Integer;
begin
  with Query1 do
  begin
    Close;
    sql.Text :=
               'select id from  "аукцион"."аукцион" where ДатаРазноски=:d limit 1';
    ParamByName('d').AsDate := edtDateFly.Date;
    Open;
    if Fields[0].AsString = '' then
    begin
      //   edtDateR.Enabled := False;
      btnSel.Enabled := False;
      FrameTopPanel2.btnEdit.Enabled := True;
      FrameTopPanel1.btnAdd.Enabled := True;
      Close;
      sql.Text := 'select id from "маркировки"."маркировки" where свобода=true';
      Open;
      idFree := Fields[0].AsInteger;
      InsertMarking(idFree);
      Close;
      sql.Text :=
                 'update "аукцион"."аукцион"  set ДатаРазноски=:d where ДатаВылета=:dv';
      ParamByName('d').AsDateTime := edtDateFly.Date;
      ParamByName('dv').AsDateTime := edtDateFly.Date;
      ExecSQL;
    end
    else
      Application.MessageBox
        ('Разнос с такой датой уже существует. Выберите другую дату.', 'Ошибка',
          MB_OK + MB_ICONERROR);
  end;
end;
procedure TFrameRaznosAuc.FrameTopPanel1btnAddClick(Sender : TObject);
begin
  Application.CreateForm(TFSelect, FSelect);
  with FSelect do
  begin
    Caption := 'Выберите маркировку';
    lstTree.Visible := True;
    GridSelect.Visible := False;
    ShowSelect('"маркировки"."маркировки"', '', False, True);
    ShowModal;
    if FrameTopPanel1.id_select = True then
    begin
      InsertMarking(QuerySelect.Fields[0].AsInteger);
    end;
  end;
end;
procedure TFrameRaznosAuc.FrameTopPanel1btnDelClick(Sender : TObject);
begin
  if QueryMark.FieldByName('свобода').AsBoolean = False then
  begin
    if Application.MessageBox('Вы действительно хотите удалить запись?',
                               'Вопрос', MB_YESNO + MB_ICONWARNING) = mrYes then
    begin
      with Query1 do
      begin
        Close;
        sql.Text := 'delete from "аукцион"."РазноскаМаркировки" where id=' +
      QueryMark.FieldByName('id').AsString;
        ExecSQL;
        ShowMarking();
      end;
    end;
  end
  else
    Application.MessageBox('Данную маркировку удалять запрещено.', 'Ошибка',
                            MB_OK + MB_ICONERROR);
end;
procedure TFrameRaznosAuc.FrameTopPanel1btnRestClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameRaznosAuc.FrameTopPanel2btnAddClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameRaznosAuc.FrameTopPanel2btnDelClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameRaznosAuc.FrameTopPanel2btnEditClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameRaznosAuc.FrameTopPanel2btnRefreshClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameRaznosAuc.FrameTopPanel2btnRestClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameRaznosAuc.FrameTopPanel3btnAddClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameRaznosAuc.FrameTopPanel3btnDelClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameRaznosAuc.FrameTopPanel3btnEditClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameRaznosAuc.FrameTopPanel3btnRefreshClick(Sender : TObject);
begin
  ShowMessage('');
end;
procedure TFrameRaznosAuc.InsAllFree;
begin
  with Query2 do
  begin
    Close;
    sql.Clear;
    sql.Add(' INSERT INTO');
    sql.Add(' "аукцион"."аукцион"');
    sql.Add(' (');
    sql.Add(' "ДатаВылета",');
    sql.Add(' "ДатаАукциона",');
    sql.Add(' "ВремяАукциона",');
    sql.Add(' seat,');
    sql.Add(' "Покупатель",');
    sql.Add(' "КолВоБаков",');
    sql.Add(' "КодПродукта",');
    sql.Add(' "КолВоВБаке",');
    sql.Add(' "ЦенаАукциона",');
    sql.Add(' "НомерЧасов",');
    sql.Add(' "ТипТары",');
    sql.Add(' "Длина",');
    sql.Add(' s2,');
    sql.Add(' s3,');
    sql.Add(' s4,');
    sql.Add(' q,');
    sql.Add(' com1,');
    sql.Add(' com2,');
    sql.Add(' pos1,');
    sql.Add(' pos2,');
    sql.Add(' pos3,');
    sql.Add(' "QL",');
    sql.Add(' "MPS",');
    sql.Add(' "ЦенаНаВыходе",');
    sql.Add(' "НомерТранзакции",');
    sql.Add(' "НомерЛота",');
    sql.Add(' "КодПроизводителя",');
    sql.Add(' "КодСоответствия",');
    sql.Add(' "Код_Поставщика"');
    sql.Add(' )');
    sql.Add(' VALUES (');
    sql.Add(' :ДатаВылета,');
    sql.Add(' :ДатаАукциона,');
    sql.Add(' :ВремяАукциона,');
    sql.Add(' :seat,');
    sql.Add(' :Покупатель,');
    sql.Add(' :КолВоБаков,');
    sql.Add(' :КодПродукта,');
    sql.Add(' :КолВоВБаке,');
    sql.Add(' :ЦенаАукциона,');
    sql.Add(' :НомерЧасов,');
    sql.Add(' :ТипТары,');
    sql.Add(' :Длина,');
    sql.Add(' :s2,');
    sql.Add(' :s3,');
    sql.Add(' :s4,');
    sql.Add(' :q,');
    sql.Add(' :com1,');
    sql.Add(' :com2,');
    sql.Add(' :pos1,');
    sql.Add(' :pos2,');
    sql.Add(' :pos3,');
    sql.Add(' :QL,');
    sql.Add(' :MPS,');
    sql.Add(' :ЦенаНаВыходе,');
    sql.Add(' :НомерТранзакции,');
    sql.Add(' :НомерЛота,');
    sql.Add(' :КодПроизводителя,');
    sql.Add(' :КодСоответствия,');
    sql.Add(' :Код_Поставщика');
    sql.Add(' );');
  end;
  with Query1 do
  begin
    Close;
    sql.Text := 'select * from "аукцион"."аукцион" where where ДатаВылета=:d';
    ParamByName('d').AsDate := edtDateFly.Date;
    Open;
    while not eof do
    begin
    end;
  end;
end;
procedure TFrameRaznosAuc.InsertMarking(idM : Integer = 0);
begin
  with Query1 do
  begin
    Close;
    sql.Clear;
    sql.Add(' INSERT INTO');
    sql.Add(' "аукцион"."РазноскаМаркировки"');
    sql.Add(' (');
    sql.Add(' "ДатаВыхода",');
    sql.Add(' "КодМаркировки"');
    sql.Add(' )');
    sql.Add(' VALUES (');
    sql.Add(' :ДатаВыхода,');
    sql.Add(' :КодМаркировки');
    sql.Add(' );');
    ParamByName('ДатаВыхода').Value := edtDateFly.Date;
    ParamByName('КодМаркировки').Value := idM;
    ExecSQL;
    ShowMarking();
  end;
end;
procedure TFrameRaznosAuc.ShowAucR;
begin
  with QueryAucR do
  begin
    Close;
    sql.Clear;
    sql.Add(' SELECT');
    sql.Add(' a.id,');
    sql.Add(' a."ДатаВылета",');
    sql.Add(' a."ДатаАукциона",');
    sql.Add(' a."ВремяАукциона",');
    sql.Add(' a.seat,');
    sql.Add(' a."Покупатель",');
    sql.Add(' a."КолВоБаков",');
    sql.Add(' a."КодПродукта",');
    sql.Add(' a."КолВоВБаке",');
    sql.Add(' a."ЦенаАукциона",');
    sql.Add(' a."НомерЧасов",');
    sql.Add(' a."ТипТары",');
    sql.Add(' a."Длина",');
    sql.Add(' a.s2,');
    sql.Add(' a.s3,');
    sql.Add(' a.s4,');
    sql.Add(' a.q,');
    sql.Add(' a.com1,');
    sql.Add(' a.com2,');
    sql.Add(' a.pos1,');
    sql.Add(' a.pos2,');
    sql.Add(' a.pos3,');
    sql.Add(' a."QL",');
    sql.Add(' a."MPS",');
    sql.Add(' a."ЦенаНаВыходе",');
    sql.Add(' a."НомерТранзакции",');
    sql.Add(' a."НомерЛота",');
    sql.Add(' a."КодПроизводителя",');
    sql.Add(' a."КодСоответствия",');
    sql.Add(' s."НаимАукцион",');
    sql.Add(' s."КодАукциона",');
    sql.Add(' pl.uni_name');
    sql.Add(' FROM');
    sql.Add(' "аукцион"."аукцион" a');
    sql.Add(' INNER JOIN "продукция"."Соответствие" s ON (a."КодСоответствия" = s.id)');
    sql.Add(' INNER JOIN "продукция"."плантации" pl ON (a."КодПроизводителя" = pl.id)');
    sql.Add(' where ДатаВылета=:d');
    ParamByName('d').AsDate := edtDateFly.Date;
    Open;
  end;
end;
procedure TFrameRaznosAuc.ShowMarking(id_locate : Integer = 0);
begin
  with QueryMark do
  begin
    Close;
    sql.Clear;
    sql.Add(' SELECT rm.id,');
    sql.Add(' rm."ДатаВыхода",');
    sql.Add(' rm."КодМаркировки",');
    sql.Add(' m.name,');
    sql.Add(' m.uni_name,');
    sql.Add(' m.reg_name,');
    sql.Add(' m.свобода');
    sql.Add(' FROM "аукцион"."РазноскаМаркировки" rm');
    sql.Add(' INNER JOIN "маркировки"."маркировки" m ON (rm."КодМаркировки" = m.id)');
    sql.Add(' where rm."ДатаВыхода" =:d');
    sql.Add(' order by свобода, uni_name');
    ParamByName('d').AsDateTime := edtDateFly.Date;
    Open;
  end;
end;
end.
