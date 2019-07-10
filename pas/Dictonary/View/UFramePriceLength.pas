unit UFramePriceLength;
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
  cxClasses,
  cxCustomData,
  cxStyles,
  cxEdit,
  dxSkinsCore,
  
  cxCustomPivotGrid,
  cxDBPivotGrid,
  Data.DB,
  MemDS,
  DBAccess,
  Uni,
  UFrameTopPanel,
  cxCalc,
  dxSkinsdxBarPainter,
  dxBar,
  frxCross,
  dxmdaset,
  cxPivotGridCustomDataSet,
  cxPivotGridDrillDownDataSet,
  frxDesgn,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue, dxSkinOffice2007Blue, dxSkinsDefaultPainters;
type
  TFramePriceLength = class(TFrame)
    QueryPriceL : TUniQuery;
    dsPriceL : TDataSource;
    GridPriceL : TcxDBPivotGrid;
    GridPriceLg_name : TcxDBPivotGridField;
    GridPriceLl_name : TcxDBPivotGridField;
    GridPriceLcxDBPivotGridField : TcxDBPivotGridField;
    barProduct : TdxBarManager;
    dxbrBardxbrmngr1Bar1 : TdxBar;
    btnAdd : TdxBarLargeButton;
    btnEdit : TdxBarLargeButton;
    btnDel : TdxBarLargeButton;
    btnRefresh : TdxBarLargeButton;
    btnPrint : TdxBarLargeButton;
    frxcrsbjct1 : TfrxCrossObject;
    pmAdd : TdxBarPopupMenu;
    btnAddGroup : TdxBarButton;
    btnAddLength : TdxBarButton;
    btnEdtGroup : TdxBarButton;
    btnEdtДлину : TdxBarButton;
    pmEdt : TdxBarPopupMenu;
    btnEdtPrice : TdxBarButton;
    Rec_ID : TcxDBPivotGridField;
    Dril1 : TcxPivotGridDrillDownDataSet;
    Query1 : TUniQuery;
    Query2 : TUniQuery;
    btnDelГруппа : TdxBarButton;
    btnDelДлину : TdxBarButton;
    pmDel : TdxBarPopupMenu;
    procedure btnAddClick(Sender : TObject);
    procedure btnEditClick(Sender : TObject);
    procedure btnAddLengthClick(Sender : TObject);
    procedure btnAddGroupClick(Sender : TObject);
    procedure btnEdtДлинуClick(Sender : TObject);
    procedure btnEdtGroupClick(Sender : TObject);
    procedure btnDelClick(Sender : TObject);
    procedure btnDelГруппаClick(Sender : TObject);
    procedure btnDelДлинуClick(Sender : TObject);
    procedure btnEdtPriceClick(Sender : TObject);
    procedure GridPriceLDblClick(Sender : TObject);
    procedure btnRefreshClick(Sender : TObject);
    procedure btnPrintClick(Sender : TObject);
  private
    id_длина, id_группа : Integer;
    name_длина, name_группа : string;
    procedure GetValue;
    { Private declarations }
  public
    /// <summary>
    /// Вставка или обновление
    /// </summary>
    /// <param name="id_type">
    /// передаваемый тип (ценовая группа -0, длина-1)
    /// </param>
    /// <param name="id_ins">
    /// вставить или обновить (true -вставка, false -обновить)
    /// </param>
    procedure InsUpd(id_type : smallint; id_ins : boolean);
    procedure ShowPriceL;
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  UNewVal,
  USplash,
  UNewPriceLength,
  UReport;
procedure TFramePriceLength.btnAddClick(Sender : TObject);
begin
  btnAdd.DropDown(true);
end;
procedure TFramePriceLength.btnAddGroupClick(Sender : TObject);
begin
  InsUpd(0, true);
end;
procedure TFramePriceLength.btnAddLengthClick(Sender : TObject);
begin
  InsUpd(1, true);
end;
procedure TFramePriceLength.btnDelClick(Sender : TObject);
begin
  btnDel.DropDown(true);
end;
procedure TFramePriceLength.btnDelГруппаClick(Sender : TObject);
var
  s : string;
begin
  GetValue;
  s := 'Вы действительно хотите удалить ценовую группу - ' + name_группа + '?';
  if Application.MessageBox(PChar(s), 'Вопрос', MB_YESNO + MB_ICONQUESTION) = mrYes
  then
  begin
    FSplash.Show;
    with Query1 do
    begin
      Close;
      SQL.Text := 'delete from  "склад"."ценовые_группы" where id=' +
    IntToStr(id_группа);
      ExecSQL;
      ShowPriceL;
      FSplash.Close;
    end;
  end;
end;
procedure TFramePriceLength.btnDelДлинуClick(Sender : TObject);
var
  s : string;
begin
  GetValue;
  s := 'Вы действительно хотите удалить длину - ' + name_длина + '?';
  if Application.MessageBox(PChar(s), 'Вопрос', MB_YESNO + MB_ICONQUESTION) = mrYes
  then
  begin
    FSplash.Show;
    with Query1 do
    begin
      Close;
      SQL.Text := 'delete from  "склад".длины where id=' + IntToStr(id_длина);
      ExecSQL;
      ShowPriceL;
      FSplash.Close;
    end;
  end;
end;
procedure TFramePriceLength.btnEditClick(Sender : TObject);
begin
  btnEdit.DropDown(true);
end;
procedure TFramePriceLength.btnEdtGroupClick(Sender : TObject);
begin
  InsUpd(0, false);
end;
procedure TFramePriceLength.btnEdtPriceClick(Sender : TObject);
begin
  Application.CreateForm(TFNewPriceLength, FNewPriceLength);
  with FNewPriceLength do
  begin
    GetValue;
    s_код_ценовой_группы := id_группа;
    ShowPriceLength;
    ShowTypeSort;
    ShowModal;
  end;
  QueryPriceL.Refresh;
end;
procedure TFramePriceLength.btnEdtДлинуClick(Sender : TObject);
begin
  InsUpd(1, false);
end;
procedure TFramePriceLength.btnPrintClick(Sender : TObject);
begin
  ОтчетПрайсЛистЗакупка();
end;
procedure TFramePriceLength.btnRefreshClick(Sender : TObject);
begin
  QueryPriceL.Refresh;
end;
procedure TFramePriceLength.GetValue;
var
  vRecId : Integer;
begin
  FSplash.Show;
  Dril1.CreateData;
  vRecId := Dril1.FieldByName('Rec_ID').AsInteger;
  with Query2 do
  begin
    Close;
    if vRecId <> 0 then
    begin
      SQL.Text :=
                 'SELECT pl."код_длины", pl."код_цены", g.name g_name, l.name l_name, ' +
                 ' pl.id, pl."цена" FROM  "склад"."длина_цена" pl' +
                 '  INNER JOIN "склад"."ценовые_группы" g ON (pl."код_цены" = g.id)' +
                 '  INNER JOIN "склад"."длины" l ON (pl."код_длины" = l.id) where pl.id='
                 + IntToStr(vRecId);
      Open;
      id_длина := FieldByName('код_длины').AsInteger;
      id_группа := FieldByName('код_цены').AsInteger;
      name_длина := FieldByName('l_name').AsString;
      name_группа := FieldByName('g_name').AsString;
    end
    else
    begin
      id_длина := QueryPriceL.FieldByName('код_длины').AsInteger;
      id_группа := QueryPriceL.FieldByName('код_цены').AsInteger;
      name_длина := QueryPriceL.FieldByName('l_name').AsString;
      name_группа := QueryPriceL.FieldByName('g_only_name').AsString;
    end;
  end;
  FSplash.Close;
end;
procedure TFramePriceLength.GridPriceLDblClick(Sender : TObject);
begin
  btnEdtPriceClick(Sender);
end;
procedure TFramePriceLength.InsUpd(id_type : smallint; id_ins : boolean);
begin
  Application.CreateForm(TFAddValue, FAddValue);
  with FAddValue do
  begin
    if id_ins = false then
    begin
      GetValue;
      case id_type of
        0 : edtVal.Text := name_группа;
        1 : edtVal.Text := name_длина;
      end;
    end;
    if id_type = 0 then
      edtVal.Visible := true
    else
      edtPrice.Visible := true;
    ShowModal;
    if id_save = true then
    begin
      with Query1 do
      begin
        FSplash.Show;
        Close;
        case id_type of
          0 :
          begin
            edtVal.Visible := true;
            if id_ins = true then
              SQL.Text :=
                         'insert into "склад"."ценовые_группы" (name) values(:name)'
            else
              SQL.Text :=
                         'update "склад"."ценовые_группы" set name=:name where id=' +
                         IntToStr(id_группа);
            ParamByName('name').AsString := edtVal.Text;
          end;
          1 :
          begin
            if id_ins = true then
              SQL.Text := 'insert into "склад"."длины" (name) values(:name)'
            else
              SQL.Text := 'update "склад"."длины" set name=:name where id=' +
            IntToStr(id_длина);
            ParamByName('name').AsString := edtPrice.Text;
          end;
        end;
        ExecSQL;
        ShowPriceL;
        FSplash.Close;
      end;
    end;
  end;
end;
procedure TFramePriceLength.ShowPriceL;
begin
  with QueryPriceL do
  begin
    Close;
    Open;
  end;
end;
end.
