unit UNewOrder;

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
  UFrameSave,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  dxSkinsCore,
  
  cxGroupBox,
  Vcl.ComCtrls,
  AdvDateTimePicker,
  cxLabel,
  cxTextEdit,
  cxMaskEdit,
  cxButtonEdit,
  cxStyles,
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  DB,
  cxDBData,
  MemDS,
  DBAccess,
  Uni,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  UFrameProduct,
  cxSplitter,
  UFrameTopPanel,
  cxTL,
  cxTLdxBarBuiltInMenu,
  cxInplaceContainer,
  cxDBTL,
  cxTLData,
  UFrameSearch,
  Vcl.ImgList,
  cxCheckBox,
  System.Win.ComObj,
  Vcl.Menus,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  Vcl.StdCtrls,
  cxNavigator,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue;

type
  TFNewOrder = class(TForm)
    FrameSave1: TFrameSave;
    GroupШапка: TcxGroupBox;
    QueryOrderDetail: TUniQuery;
    dsOrderDeatil: TDataSource;
    cxGroupBox1: TcxGroupBox;
    cxspltr1: TcxSplitter;
    GroupOsn: TcxGroupBox;
    edtKargo: TcxButtonEdit;
    lblKargo: TcxLabel;
    edtMarking: TcxButtonEdit;
    lblMarking: TcxLabel;
    edtNum: TcxTextEdit;
    lblNumber: TcxLabel;
    edtДатаВылета: TAdvDateTimePicker;
    edtДатаЗаказа: TAdvDateTimePicker;
    GroupDop: TcxGroupBox;
    edtTrack: TcxButtonEdit;
    edtPricooling: TcxButtonEdit;
    lblTrack: TcxLabel;
    lblPricooling: TcxLabel;
    FrameTopPanel1: TFrameTopPanel;
    Query2: TUniQuery;
    dsProduct: TDataSource;
    QueryProduct: TUniQuery;
    il1: TImageList;
    GroupProduct: TcxGroupBox;
    FrameSearch1: TFrameSearch;
    lstTreeProducts: TcxDBTreeList;
    ColumnName: TcxDBTreeListColumn;
    GridOrder: TcxGrid;
    ViewOrder: TcxGridDBTableView;
    ColumnViewOrderpl_name: TcxGridDBColumn;
    ColumnViewOrders_name: TcxGridDBColumn;
    ColumnViewOrderDBColumn: TcxGridDBColumn;
    ColumnViewOrder__1: TcxGridDBColumn;
    ColumnСтеблей: TcxGridDBColumn;
    ColumnPrice: TcxGridDBColumn;
    GridLevelOrder: TcxGridLevel;
    ColumnStand: TcxGridDBColumn;
    QueryReport: TUniQuery;
    pmLock: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    ColumnLock: TcxGridDBColumn;
    ColumnGood: TcxGridDBColumn;
    lblFito: TcxLabel;
    QueryFito: TUniQuery;
    dsFito: TDataSource;
    edtFito: TcxLookupComboBox;
    N3: TMenuItem;
    NLock: TMenuItem;
    ColumnLockPos: TcxGridDBColumn;
    Style1: TcxStyleRepository;
    cxstyl1: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    ColumnID: TcxDBTreeListColumn;
    TransactOrder: TUniTransaction;
    dbOrder: TUniConnection;
    Query1: TUniQuery;
    ColumnЗакуп: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure edtNumKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtДатаЗаказаChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtNumPropertiesEditValueChanged(Sender: TObject);
    procedure edtMarkingPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtKargoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtTrackPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtPricoolingPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btnDelClick(Sender: TObject);
    procedure FrameSave1btnSaveClick(Sender: TObject);
    procedure FrameSearch1edtNameKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lstTreeProductsDblClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure NLockClick(Sender: TObject);
    procedure pmLockPopup(Sender: TObject);
    procedure QueryOrderDetailAfterFetch(DataSet: TCustomDADataSet);
    procedure ViewOrderCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure ViewOrderDblClick(Sender: TObject);
    procedure edtMarkingPropertiesEditValueChanged(Sender: TObject);
    procedure edtДатаВылетаChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure lstTreeProductsCustomDrawDataCell(Sender: TcxCustomTreeList;
      ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
      var ADone: Boolean);
    procedure lstTreeProductsKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TransactOrderStart(Sender: TObject);
    procedure edtFitoPropertiesCloseUp(Sender: TObject);
  private
    { Private declarations }
  protected
    function NewID(s_gen: string): Integer;
  public
    s_id_order, s_id_marking, s_id_kargo, s_id_track, s_id_pricooling,
      s_id_fito: Integer;
    id_plant, id_sort, id_standing, стеблей: Integer;
    len, price: string;
    FB: Double;
    is_edit: Boolean;
    s_num: string;
    s_date_fly, s_date_order: TDate;
    procedure EnableAdd;
    procedure InsUpdOrder(id_ins: Boolean);
    procedure InsUpdDetail(id_ins: Boolean);
    procedure AddLockGood(id_loock: Boolean);
    procedure AddPostLockGood(s_id: Integer);
    procedure SetCaption;
    procedure SetLang;
    procedure ShowFito;
    procedure ShowOrderDetail;
    procedure ShowProduct;
    { Public declarations }
  end;

var
  FNewOrder: TFNewOrder;

implementation

{$R *.dfm}

uses
  UPasswd,
  USelect,
  PGSQL,
  UDataModule1,
  UNewOrderDetail,
  UDocs,
  UExcel,
  UMultiSelect,
  UDialogMy,
  USplash,
  UOsn;

procedure TFNewOrder.FormCreate(Sender: TObject);
begin
  FSplash.Show();
  FSplash.Update;
  // if dbOrder.Connected = false then
  // begin
  // dbOrder.Database := DM1.db1.Database;
  // dbOrder.Server := DM1.db1.Server;
  // dbOrder.Username := DM1.db1.Username;
  // dbOrder.Password := DM1.db1.Password;
  // dbOrder.Connected := True;
  // end;
end;

procedure TFNewOrder.btnDelClick(Sender: TObject);
begin
  if (TransactOrder.Active = false) then
    TransactOrder.StartTransaction;
  if QueryOrderDetail.FieldByName('код_закупки').AsString = '' then
  begin
    with Query1 do
    begin
      case FPasswd.edtLang.ItemIndex of
        0:
          QuestionDialog('Удаление', 'Вы действительно хотите удалить запись?');
        1:
          QuestionDialog('Removal', 'You really want to delete the entry? ');
        2:
          QuestionDialog('Desaparición',
            'Queréis quitar realmente la anotación?');
      end;
      if UDialogMy.Dlg.Execute = 100 then
      begin
        Close;
        sql.Text := 'delete from "документы"."заказы_деталь" where id=' +
          QueryOrderDetail.FieldByName('id').AsString;
        ExecSQL;
        QueryOrderDetail.Refresh;
      end;
      // PGSQL.StandartDelete(QueryOrderDetail.FieldByName('id').AsString,
      // '"документы"."заказы_деталь"', QueryOrderDetail, '', '', '', '');
    end;
  end
  else
    Application.MessageBox('Позиция закуплена. Удаление запрещено.', 'Ошибка',
      mb_ok + MB_ICONERROR);
end;

procedure TFNewOrder.btnEditClick(Sender: TObject);
begin
  if QueryOrderDetail.FieldByName('код_закупки').AsString = '' then
  begin
    Application.CreateForm(TFNewOrderDetail, FNewOrderDetail);
    with FNewOrderDetail do
    begin
      edtLength.Text := QueryOrderDetail.FieldByName('длина').AsString;
      edtFB.Value := QueryOrderDetail.FieldByName('кол_во_фулбоксов').Value;
      edtPrice.Text := QueryOrderDetail.FieldByName('цена').Value;
      edtCount.Text := QueryOrderDetail.FieldByName('стеблей').Value;
      ShowModal;
      if FrameSave1.id_save = True then
      begin
        with Query1 do
        begin
          if (TransactOrder.Active = false) then
            TransactOrder.StartTransaction;
          Close;
          sql.Text :=
            'UPDATE "документы"."заказы_деталь" SET  "длина" = :длина,' +
            '"кол_во_фулбоксов" = :кол_во_фулбоксов, "цена" = :цена,' +
            '"стеблей" = :стеблей WHERE id = :id';
          ParamByName('длина').AsString := edtLength.Text;
          ParamByName('кол_во_фулбоксов').Value := edtFB.Value;
          ParamByName('цена').Value := edtPrice.Text;
          ParamByName('стеблей').Value := edtCount.Text;
          ParamByName('id').AsInteger := QueryOrderDetail.FieldByName('id')
            .AsInteger;
          ExecSQL;
        end;
        ShowOrderDetail;
      end;
    end;
  end
  else
    Application.MessageBox('Позиция закуплена. Редактирование запрещено.',
      'Ошибка', mb_ok + MB_ICONERROR);
end;

procedure TFNewOrder.btnPrintClick(Sender: TObject);
var
  MsExcel: OLEVariant;
  i: Integer;
  s: string;
  r: Double;
begin
  // try
  // MsExcel := CreateOleObject('Excel.Application');
  // MsExcel.Workbooks.Add;
  // with QueryReport do
  // begin
  // Close;
  // //  ParamByName('id').AsInteger := QueryInvoice.FieldByName('id').AsInteger;
  // Open;
  // // MsExcel.ActiveSheet.PageSetup.Orientation := 2;
  // {$REGION 'Настройка листа'}
  // MsExcel.ActiveSheet.PageSetup.Zoom := 70;
  // MsExcel.ActiveSheet.PageSetup.LeftMargin := 0.8;
  // MsExcel.ActiveSheet.PageSetup.TopMargin := 1.9;
  // MsExcel.ActiveSheet.PageSetup.RightMargin := 0.8;
  // MsExcel.ActiveSheet.PageSetup.BottomMargin := 1.9;
  // MsExcel.Range['A1', 'K1000'].Font.Name := 'Arial';
  // MsExcel.Range['A1', 'K1000'].Font.Size := 9;
  // MsExcel.Range['A:A'].ColumnWidth := 24.57;
  // MsExcel.Range['B:B'].ColumnWidth := 9.29;
  // MsExcel.Range['C:C'].ColumnWidth := 6;
  // MsExcel.Range['D:D'].ColumnWidth := 9.57;
  // MsExcel.Range['E:E'].ColumnWidth := 28;
  // MsExcel.Range['F:F'].ColumnWidth := 8.86;
  // MsExcel.Range['H:H'].ColumnWidth := 7.29;
  // MsExcel.Range['I:I'].ColumnWidth := 4.86;
  // MsExcel.Range['J:J'].ColumnWidth := 9.29;
  // MsExcel.Range['K:K'].ColumnWidth := 10.43;
  // {$ENDREGION}
  // {$REGION 'Левая шапка'}
  // MsExcel.Range['E2'] := 'INVOICE     ' +
  // FieldByName('number_invoice').Asstring;
  // MsExcel.Range['E2'].Font.FontStyle := 'Bold';
  // MsExcel.Range['E2'].Font.Size := 12;
  // MsExcel.Range['A7'] := 'TO';
  // MsExcel.Range['A7'].Font.FontStyle := 'Bold';
  // MsExcel.Range['A8'] := 'CONSIGNEE';
  // MsExcel.Range['A8'].Font.FontStyle := 'Bold';
  // MsExcel.Range['A9'] := 'Label:';
  // MsExcel.Range['A9'].Font.FontStyle := 'Bold';
  // MsExcel.Range['A10'] := 'ADDRESS';
  // MsExcel.Range['A10'].Font.FontStyle := 'Bold';
  // MsExcel.Range['A12'] := 'TELEPHONE';
  // MsExcel.Range['A12'].Font.FontStyle := 'Bold';
  // MsExcel.Range['A13'] := 'FAX';
  // MsExcel.Range['A13'].Font.FontStyle := 'Bold';
  // MsExcel.Range['A14'] := 'E-MAIL';
  // MsExcel.Range['A14'].Font.FontStyle := 'Bold';
  // MsExcel.Range['F7'] := 'DATE';
  // MsExcel.Range['F7'].Font.FontStyle := 'Bold';
  // MsExcel.Range['F8'] := 'CARGO AGENCY';
  // MsExcel.Range['F8'].Font.FontStyle := 'Bold';
  // MsExcel.Range['F9'] := 'AIRLINE:';
  // MsExcel.Range['F9'].Font.FontStyle := 'Bold';
  // MsExcel.Range['F10'] := 'M.A.W.B.';
  // MsExcel.Range['F10'].Font.FontStyle := 'Bold';
  // MsExcel.Range['F11'] := 'H.A.W.B.';
  // MsExcel.Range['F11'].Font.FontStyle := 'Bold';
  // MsExcel.Range['F13'] := 'TOTAL FULL BOXES';
  // MsExcel.Range['F13'].Font.FontStyle := 'Bold';
  // MsExcel.Range['F14'] := 'TOTAL INVOICE $';
  // MsExcel.Range['F14'].Font.FontStyle := 'Bold';
  // Query1.Close;
  // Query1.sql.Text := 'SELECT name from organization where use_invoice=1';
  // Query1.Open;
  // { данные левой шапки }
  // MsExcel.Range['B7'] := Query1.Fields[0].Asstring;
  // MsExcel.Range['B8'] := FieldByName('track_name').Asstring;
  // MsExcel.Range['B9'] := FieldByName('name_marking').Asstring;
  // MsExcel.Range['B10'] := FieldByName('adress').Asstring;
  // MsExcel.Range['B12'] := FieldByName('phone').Asstring;
  // MsExcel.Range['B13'] := FieldByName('fax').Asstring;
  // MsExcel.Range['B14'] := FieldByName('email').Asstring;
  // {$ENDREGION}
  // {$REGION 'Правая шапка'}
  // { данные правой шапки }
  // MsExcel.Range['H7'] := FieldByName('date_awb').Asstring;
  // MsExcel.Range['H8'] := FieldByName('name_kargo').Asstring;
  // MsExcel.Range['H9'] := FieldByName('airline').Asstring;
  // MsExcel.Range['H10'] := FieldByName('awb').Asstring;
  // MsExcel.Range['H11'] := FieldByName('hawb').Asstring;
  // Query1.Close;
  /// /      Query1.sql.Text :=
  /// /        'SELECT sum(ip.full_box) FROM invoice_ecuador_pos_detail ip ' +
  /// /        ' INNER JOIN invoice_ecuador_detail id ON ip.id_detail = id.id INNER JOIN '
  /// /        + ' air_doc_deatil ad ON ad.id_invoice_pos = id.id  where ad.id_hawb=' +
  /// /        QueryInvoice.FieldByName('id').Asstring;
  // Query1.Open;
  // MsExcel.Range['H13'].Font.FontStyle := 'Bold';
  // MsExcel.Range['H13'] := Query1.Fields[0].Asstring;
  // {$ENDREGION}
  // {$REGION 'Шапка данных'}
  // { шапка }
  // MsExcel.Range['A18', 'K18'].Interior.color := clYellow;
  // // MsExcel.Rows['18'].RowHeight := 38.25;
  // MsExcel.Range['A18', 'K18'].Borders[ xlEdgeLeft].LineStyle := xlContinuous;
  // MsExcel.Range['A18', 'K18'].Borders[xlEdgeBottom].LineStyle :=
  // xlContinuous;
  // MsExcel.Range['A18', 'K18'].Borders[xlEdgeRight].LineStyle :=
  // xlContinuous;
  // MsExcel.Range['A18', 'K18'].Borders[xlEdgeTop].LineStyle := xlContinuous;
  // MsExcel.Range['A18', 'K18'].Borders[xlInsideHorizontal].LineStyle :=
  // xlContinuous;
  // MsExcel.Range['A18', 'K18'].Borders[xlInsideVertical].LineStyle :=
  // xlContinuous;
  // MsExcel.Range['A18', 'K18'].Borders[xlEdgeLeft].Weight := xlHairline;
  // MsExcel.Range['A18'] := 'FARM INVOICE';
  // MsExcel.Range['B18'] := 'FULL BOX';
  // MsExcel.Range['C18'] := 'BOX';
  // MsExcel.Range['D18'] := 'BOX SIZE';
  // MsExcel.Range['E18'] := 'DESCRIPCION';
  // MsExcel.Range['F18'] := 'GRADE';
  // MsExcel.Range['G18'] := 'BUNCHES';
  // MsExcel.Range['H18'] := 'TALLOS/BUNCHES';
  // MsExcel.Range['I18'] := 'TOTAL/tallos';
  // MsExcel.Range['J18'] := 'UNIT PRICE';
  // MsExcel.Range['K18'] := 'TOTAL $';
  // {$ENDREGION}
  // {$REGION 'Данные'}
  // i := 19;
  // while not Eof do
  // begin
  // { обрабляем }
  // MsExcel.Range['A' + inttostr(i), 'K' + inttostr(i)].Borders[xlEdgeLeft]
  // .LineStyle := xlContinuous;
  // MsExcel.Range['A' + inttostr(i), 'K' + inttostr(i)
  // ].Borders[xlEdgeBottom].LineStyle := xlContinuous;
  // MsExcel.Range['A' + inttostr(i), 'K' + inttostr(i)].Borders[xlEdgeRight]
  // .LineStyle := xlContinuous;
  // MsExcel.Range['A' + inttostr(i), 'K' + inttostr(i)].Borders[xlEdgeTop]
  // .LineStyle := xlContinuous;
  // MsExcel.Range['A' + inttostr(i), 'K' + inttostr(i)
  // ].Borders[xlInsideHorizontal].LineStyle := xlContinuous;
  // MsExcel.Range['A' + inttostr(i), 'K' + inttostr(i)
  // ].Borders[xlInsideVertical].LineStyle := xlContinuous;
  // MsExcel.Range['A' + inttostr(i), 'K' + inttostr(i)].Borders[xlEdgeLeft]
  // .Weight := xlHairline;
  // { данные }
  // MsExcel.Range['A' + inttostr(i)] := FieldByName('brand').Asstring;
  // MsExcel.Range['B' + inttostr(i)] := FieldByName('full_box').Asstring;
  // MsExcel.Range['C' + inttostr(i)] := FieldByName('quantity_box')
  // .Asstring;
  // MsExcel.Range['D' + inttostr(i)] := FieldByName('type_box').Asstring;
  // MsExcel.Range['E' + inttostr(i)] := FieldByName('sort').Asstring;
  // MsExcel.Range['F' + inttostr(i)] := FieldByName('length_sort')
  // .Asstring + 'cm';
  // MsExcel.Range['G' + inttostr(i)] :=
  // FieldByName('quantity_bunch').Asstring;
  // MsExcel.Range['H' + inttostr(i)] :=
  // FieldByName('quantity_stems').Asstring;
  // // ShowMessage('=ПРОИЗВЕД(g' + inttostr(i) +
  // // ':h' + inttostr(i) + ')');
  // // MsExcel.Range['I' + inttostr(i)].formula := '=ПРОИЗВЕД(g19:h19)';
  // MsExcel.Range['I' + inttostr(i)].formula :=
  // MsExcel.Range['G' + inttostr(i)].value * MsExcel.Range
  // ['H' + inttostr(i)].value;
  // // DecimalSeparator:='.';
  // // MsExcel.Range['J' + inttostr(i)].Select;
  // ;
  // MsExcel.Range['J' + inttostr(i), EmptyParam].NumberFormatLocal
  // := '$0,00';
  // MsExcel.Range['J' + inttostr(i)] := FieldByName('price').AsFloat;
  // MsExcel.Range['K' + inttostr(i)].NumberFormatLocal := '$0,00';
  // MsExcel.Range['K' + inttostr(i)].formula :=
  // MsExcel.Range['I' + inttostr(i)].value * MsExcel.Range
  // ['J' + inttostr(i)].value;
  // i := i + 1;
  // Next;
  // end;
  // {$ENDREGION}
  // {$REGION 'Подвал отчета'}
  // { обрабляем }
  // MsExcel.Range['A' + inttostr(i), 'K' + inttostr(i)].Borders[xlEdgeLeft]
  // .LineStyle := xlContinuous;
  // MsExcel.Range['A' + inttostr(i), 'K' + inttostr(i)].Borders[xlEdgeBottom]
  // .LineStyle := xlContinuous;
  // MsExcel.Range['A' + inttostr(i), 'K' + inttostr(i)].Borders[xlEdgeRight]
  // .LineStyle := xlContinuous;
  // MsExcel.Range['A' + inttostr(i), 'K' + inttostr(i)].Borders[xlEdgeTop]
  // .LineStyle := xlContinuous;
  // MsExcel.Range['A' + inttostr(i), 'K' + inttostr(i)
  // ].Borders[xlInsideHorizontal].LineStyle := xlContinuous;
  // MsExcel.Range['A' + inttostr(i), 'K' + inttostr(i)
  // ].Borders[xlInsideVertical].LineStyle := xlContinuous;
  // MsExcel.Range['A' + inttostr(i), 'K' + inttostr(i)].Borders[xlEdgeLeft]
  // .Weight := xlHairline;
  // MsExcel.Range['A' + inttostr(i), 'K' + inttostr(i)].Font.FontStyle
  // := 'Bold';
  // { суммы }
  // MsExcel.Range['B' + inttostr(i)].formula := '=sum(b19:b' +
  // inttostr(i - 1) + ')';
  // MsExcel.Range['C' + inttostr(i)].formula := '=sum(c19:c' +
  // inttostr(i - 1) + ')';
  // MsExcel.Range['G' + inttostr(i)].formula := '=sum(g19:g' +
  // inttostr(i - 1) + ')';
  // MsExcel.Range['I' + inttostr(i)].formula := '=sum(i19:i' +
  // inttostr(i - 1) + ')';
  // MsExcel.Range['K' + inttostr(i)].formula := '=sum(k19:k' +
  // inttostr(i - 1) + ')';
  // {$ENDREGION}
  // {$REGION 'Итоговые данные низ'}
  // MsExcel.Range['E' + inttostr(i + 3)] := 'TOTAL STEMS';
  // MsExcel.Range['E' + inttostr(i + 4)] := 'TOTAL BUNCHES';
  // MsExcel.Range['E' + inttostr(i + 5)] := 'TOTAL FLOWERS FOB USD';
  // MsExcel.Range['E' + inttostr(i + 6)] := 'COMISSION ' +
  // FieldByName('price_air').Asstring + '%';
  // MsExcel.Range['E' + inttostr(i + 7)] := 'TOTAL CHARGEABLE WEIGHT(Kg)';
  // MsExcel.Range['E' + inttostr(i + 8)] := 'TERMOGRAPHER';
  // MsExcel.Range['E' + inttostr(i + 9)] := 'TOTAL A.W.B.';
  // MsExcel.Range['E' + inttostr(i + 10)] := 'Precooling';
  // MsExcel.Range['E' + inttostr(i + 11)] := 'TRANSPORT';
  // MsExcel.Range['E' + inttostr(i + 12)].Font.FontStyle := 'Bold';
  // MsExcel.Range['E' + inttostr(i + 12)] := 'TOTAL USD';
  // s := MsExcel.Range['I' + inttostr(i)];
  // MsExcel.Range['J' + inttostr(i + 3)] := s;
  // s := MsExcel.Range['G' + inttostr(i)];
  // MsExcel.Range['J' + inttostr(i + 4)] := s;
  // r := MsExcel.Range['K' + inttostr(i)];
  // MsExcel.Range['K' + inttostr(i + 5)].NumberFormatLocal := '$0,00';
  // MsExcel.Range['K' + inttostr(i + 5)] := r;
  // r := StrToFloat(s) / 100 * FieldByName('price_air').AsFloat;
  // MsExcel.Range['K' + inttostr(i + 6)].NumberFormatLocal := '$0,00';
  // MsExcel.Range['K' + inttostr(i + 6)] := r;
  // MsExcel.Range['J' + inttostr(i + 7)] :=
  // FieldByName('weight_brutto').Asstring;
  // MsExcel.Range['K' + inttostr(i + 8)].NumberFormatLocal := '$0,00';
  // MsExcel.Range['K' + inttostr(i + 8)] :=
  // FieldByName('price_termo').AsFloat;
  // MsExcel.Range['K' + inttostr(i + 9)].NumberFormatLocal := '$0,00';
  // MsExcel.Range['K' + inttostr(i + 9)] := FieldByName('itog_hawb').AsFloat;
  // MsExcel.Range['K' + inttostr(i + 10)].NumberFormatLocal := '$0,00';
  // MsExcel.Range['K' + inttostr(i + 10)] :=
  // FieldByName('price_precoling').AsFloat;
  // MsExcel.Range['K' + inttostr(i + 12)].Font.FontStyle := 'Bold';
  // MsExcel.Range['K' + inttostr(i + 12)].NumberFormatLocal := '$0,00';
  // MsExcel.Range['K' + inttostr(i + 12)].formula := '=sum(k' +
  // inttostr(i + 5) + ':k' + inttostr(i + 6) + ':k' + inttostr(i + 8) + ':k'
  // + inttostr(i + 9) + ':k' + inttostr(i + 10) + ')';
  // MsExcel.Range['H14'].NumberFormatLocal := '0,00';
  // r := MsExcel.Range['K' + inttostr(i + 12)];
  // MsExcel.Range['H14'].Font.FontStyle := 'Bold';
  // MsExcel.Range['H14'] := r;
  // {$ENDREGION}
  // end;
  // MsExcel.Visible := true;
  // except
  // MsExcel.ActiveWorkbook.Close;
  // MsExcel.Application.Quit;
  // end;
end;

procedure TFNewOrder.edtFitoPropertiesCloseUp(Sender: TObject);
begin
  if (TransactOrder.Active = false) and (edtFito.EditValue <> s_id_fito) then
    TransactOrder.StartTransaction;
end;

procedure TFNewOrder.edtKargoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.CreateForm(TFSelect, FSelect);
  with FSelect do
  begin
    ShowSelect('"карго"."агенства"', '', false);
    ShowModal;
    if FrameTopPanel1.id_select = True then
    begin
      if (TransactOrder.Active) = false then
        TransactOrder.StartTransaction;
      s_id_kargo := QuerySelect.FieldByName('id').AsInteger;
      if s_id_order = 0 then
        InsUpdOrder(True)
      else
        InsUpdOrder(false);
      EnableAdd;
      case FPasswd.Lang of
        0:
          edtKargo.Text := QuerySelect.FieldByName('name').AsString;
        1:
          edtKargo.Text := QuerySelect.FieldByName('uni_name').AsString;
        2:
          edtKargo.Text := QuerySelect.FieldByName('reg_name').AsString;
      end;
    end;
  end;
end;

procedure TFNewOrder.edtMarkingPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.CreateForm(TFSelect, FSelect);
  with FSelect do
  begin
    Caption := 'Выберите маркировку';
    lstTree.Visible := True;
    GridSelect.Visible := false;
    ShowSelect('"маркировки"."маркировки"',
      ' where id not in(select код_маркировки from "документы"."заказы" where дата_вылета='
      + QuotedStr(DateToStr(edtДатаВылета.Date)) + ')', false, True);
    ShowModal;
{$REGION 'Если выбрана маркировка'}
    if FrameTopPanel1.id_select = True then
    begin
      if edtMarking.Text <> '' then
        if (TransactOrder.Active = false) then
          TransactOrder.StartTransaction;
      FSplash.Show;
      { если маркировка не пуста }
      s_id_marking := QuerySelect.FieldByName('id').AsInteger;
      with Query1 do
      begin
{$REGION ' заполняем допы от маркировки'}
        Close;
        sql.Text :=
          'SELECT m.id, m."код_карго", m."код_трака", m."код_прикулинга",' +
          ' m.name, m.uni_name, m.reg_name, p.name AS p_name, t.uni_name AS t_uni_name,'
          + ' t.reg_name AS t_reg_name, t.name AS t_name, m."код_клиента",k.name k_name,'
          + ' k.reg_name k_reg_name,  k.uni_name k_uni_name' +
          ' FROM "маркировки"."маркировки" m INNER JOIN "карго"."агенства" k ON (m."код_карго" = k.id)'
          + ' LEFT OUTER JOIN "прикулинг"."агенства" p ON (m."код_прикулинга" = p.id)'
          + ' LEFT OUTER JOIN "траки"."траки" t ON (m."код_трака" = t.id) ' +
          ' where m.id=' + IntToStr(s_id_marking);
        Open;
        if FieldByName('код_карго').AsString <> '' then
          s_id_kargo := FieldByName('код_карго').AsInteger
        else
          s_id_kargo := 0;
        if FieldByName('код_трака').AsString <> '' then
          s_id_track := FieldByName('код_трака').AsInteger
        else
          s_id_track := 0;
        if FieldByName('код_прикулинга').AsString <> '' then
          s_id_pricooling := FieldByName('код_прикулинга').AsInteger
        else
          s_id_pricooling := 0;
        EnableAdd;
        case FPasswd.Lang of
          0:
            begin
              edtMarking.Text := FieldByName('name').AsString;
              edtKargo.Text := FieldByName('k_name').AsString;
              edtTrack.Text := FieldByName('t_name').AsString;
              edtPricooling.Text := FieldByName('p_name').AsString;
            end;
          1:
            begin
              edtMarking.Text := FieldByName('uni_name').AsString;
              edtKargo.Text := FieldByName('k_uni_name').AsString;
              edtTrack.Text := FieldByName('t_uni_name').AsString;
              edtPricooling.Text := FieldByName('p_name').AsString;
            end;
          2:
            begin
              edtMarking.Text := FieldByName('reg_name').AsString;
              edtKargo.Text := FieldByName('k_reg_name').AsString;
              edtTrack.Text := FieldByName('t_reg_name').AsString;
              edtPricooling.Text := FieldByName('p_name').AsString;
            end;
        end;
        { добавляем или обновляем заказ }
        if (s_id_order = 0) then
          InsUpdOrder(True)
        else
        begin
          InsUpdOrder(false);
        end;
        FSplash.Close;
{$ENDREGION}
{$REGION 'проверяем стендинг'}
        Close;
        sql.Text := 'select * from "стендинг"."стендинг" where id in ' +
          '(select код_стендинга from "стендинг"."деталь" where id in( ' +
          ' select код_детали_стендинга from "стендинг"."маркировки" where код_маркировки='
          + IntToStr(s_id_marking) + '))';
        Open;
        if Fields[0].AsString <> '' then
        begin
          FSplash.Show;
{$REGION 'Выбираем стендинг'}
          Caption := 'Standing';
          id_caption := 1;
          lstTree.Visible := false;
          GridSelect.Visible := True;
          with QuerySelect do
          begin
            Close;
            sql.Text := Query1.sql.Text;
            Open;
          end;
          FrameTopPanel1.id_select := false;
          ShowModal;
          if FrameTopPanel1.id_select = True then
          begin
{$REGION 'если выбран, заполняем палетами'}
            { блокируем маркировку }
            id_standing := QuerySelect.FieldByName('id').AsInteger;
            { все детали }
            Close;
            sql.Text := 'select * from "стендинг"."деталь" where id in(select '
              + ' код_детали_стендинга from "стендинг"."маркировки" where код_маркировки='
              + IntToStr(s_id_marking) + ')' + ' and код_стендинга=' +
              IntToStr(id_standing) + ' order by код_плантации';
            Open;
            while not eof do
            begin
              id_plant := FieldByName('код_плантации').Value;
              id_sort := FieldByName('код_сорта').Value;
              len := FieldByName('длина').Value;
              FB := FieldByName('кол_во_фулбоксов').Value;
              id_standing := FieldByName('код_стендинга').Value;
              price := FieldByName('цена').Value;
              стеблей := FieldByName('стеблей').Value;
              InsUpdDetail(True);
              Next;
            end;
            ShowOrderDetail;
            FSplash.Close;
          end;
          { обнуляем стендинг }
          id_standing := 0;
{$ENDREGION}
        end;
{$ENDREGION}
      end;
{$ENDREGION}
    end
    else
      FSplash.Close;
{$ENDREGION}
  end;
end;

procedure TFNewOrder.edtMarkingPropertiesEditValueChanged(Sender: TObject);
begin
  ShowProduct;
end;

procedure TFNewOrder.edtNumKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if TransactOrder.Active = false then
    TransactOrder.StartTransaction;
  SetCaption;
  EnableAdd;
end;

procedure TFNewOrder.edtNumPropertiesEditValueChanged(Sender: TObject);
begin
  SetCaption;
  EnableAdd;
end;

procedure TFNewOrder.edtPricoolingPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.CreateForm(TFSelect, FSelect);
  with FSelect do
  begin
    ShowSelect('"прикулинг"."агенства"', '', false);
    ShowModal;
    if FrameTopPanel1.id_select = True then
    begin
      if TransactOrder.Active = false then
        TransactOrder.StartTransaction;
      s_id_pricooling := QuerySelect.FieldByName('id').AsInteger;
      if s_id_order = 0 then
        InsUpdOrder(True)
      else
        InsUpdOrder(false);
      EnableAdd;
      case FPasswd.Lang of
        0:
          edtPricooling.Text := QuerySelect.FieldByName('name').AsString;
        1:
          edtPricooling.Text := QuerySelect.FieldByName('uni_name').AsString;
        2:
          edtPricooling.Text := QuerySelect.FieldByName('reg_name').AsString;
      end;
    end;
  end;
end;

procedure TFNewOrder.edtTrackPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.CreateForm(TFSelect, FSelect);
  with FSelect do
  begin
    ShowSelect('"траки"."траки"', '', false);
    ShowModal;
    if FrameTopPanel1.id_select = True then
    begin
      if TransactOrder.Active = false then
        TransactOrder.StartTransaction;
      s_id_track := QuerySelect.FieldByName('id').AsInteger;
      if s_id_order = 0 then
        InsUpdOrder(True)
      else
        InsUpdOrder(false);
      EnableAdd;
      case FPasswd.Lang of
        0:
          edtTrack.Text := QuerySelect.FieldByName('name').AsString;
        1:
          edtTrack.Text := QuerySelect.FieldByName('uni_name').AsString;
        2:
          edtTrack.Text := QuerySelect.FieldByName('reg_name').AsString;
      end;
    end;
  end;
end;

procedure TFNewOrder.edtДатаЗаказаChange(Sender: TObject);
begin
  if edtДатаЗаказа.Date > edtДатаВылета.Date then
  begin
    Application.MessageBox('Дата заказа не может быть больше даты вылета.',
      'Ошибка', mb_ok + MB_ICONERROR);
    edtДатаЗаказа.Date := edtДатаВылета.Date;
  end
  else
    SetCaption;
  if (TransactOrder.Active = false) and (edtДатаЗаказа.Date <> s_date_order)
  then
    TransactOrder.StartTransaction;
end;

procedure TFNewOrder.EnableAdd;
begin
  if (s_id_marking <> 0) and (s_id_kargo <> 0) then
  begin
    FrameSearch1.edtName.Enabled := True;
    lstTreeProducts.Enabled := True;
  end
  else
  begin
    FrameSearch1.edtName.Enabled := false;
    lstTreeProducts.Enabled := false;
  end;
end;

procedure TFNewOrder.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  if Assigned(FDocs) and (s_id_order <> 0) then
  begin
    FDocs.FrameOrder1.ShowOrders(s_id_order);
    if FDocs.PageDocs.ActivePageIndex = 0 then
      FDocs.FrameOrder1.GridOrder.SetFocus;
  end;
  // FNewOrder := nil;
end;

procedure TFNewOrder.FormShow(Sender: TObject);
begin
  s_date_fly := edtДатаВылета.Date;
  s_date_order := edtДатаЗаказа.Date;
  FrameTopPanel1.SetLang;
  SetLang;
end;

procedure TFNewOrder.FrameSave1btnSaveClick(Sender: TObject);
begin
  if edtNum.Text <> '' then
  begin
    FrameSave1.btnSaveClick(Sender);
    if (s_id_marking <> 0) then
    begin
      if (s_id_order = 0) then
        InsUpdOrder(True)
      else
        InsUpdOrder(false)
    end;
    TransactOrder.Commit;
    Close;
  end
  else
  begin
    Application.MessageBox('Введите номер.', 'Ошибка', mb_ok + MB_ICONERROR);
    FNewOrder.Show;
    edtNum.SetFocus;
  end;
end;

procedure TFNewOrder.FrameSearch1edtNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    ShowProduct;
end;

procedure TFNewOrder.InsUpdOrder(id_ins: Boolean);
begin
  if TransactOrder.Active = false then
    TransactOrder.StartTransaction;
  with Query1 do
  begin
    Close;
    if id_ins = True then
    begin
      s_id_order := NewID('"документы"."заказы_id_seq"');
      sql.Text :=
        'INSERT INTO "документы"."заказы"(id, "код_маркировки", "дата_вылета", "код_карго",'
        + '"код_трака", "код_прикулинга", "дата_исполнения", "код_пользователя", "номер"'
        + ',код_фито) VALUES (:id, :код_маркировки, :дата_вылета, :код_карго, :код_трака,'
        + ':код_прикулинга, :дата_исполнения, :код_пользователя, :номер, :код_фито)';
    end
    else
      sql.Text :=
        'UPDATE "документы"."заказы" SET  "код_маркировки" = :код_маркировки,' +
        '"дата_вылета" = :дата_вылета, "код_карго" = :код_карго,  "код_трака" = :код_трака,'
        + ' "код_прикулинга" = :код_прикулинга, "дата_исполнения" = :дата_исполнения,'
        + '  "код_пользователя" = :код_пользователя, "номер" = :номер, код_фито=:код_фито WHERE id = :id';
    ParamByName('id').Value := s_id_order;
    if s_id_marking <> 0 then
      ParamByName('код_маркировки').Value := s_id_marking;
    ParamByName('дата_вылета').Value := edtДатаВылета.Date;
    if s_id_kargo <> 0 then
      ParamByName('код_карго').Value := s_id_kargo;
    if s_id_track <> 0 then
      ParamByName('код_трака').Value := s_id_track;
    if s_id_pricooling <> 0 then
      ParamByName('код_прикулинга').Value := s_id_pricooling;
    ParamByName('дата_исполнения').Value := edtДатаЗаказа.Date;
    ParamByName('код_пользователя').Value := FPasswd.ID_USER;
    ParamByName('номер').Value := edtNum.Text;
    ParamByName('код_фито').Value := edtFito.EditValue;
    ExecSQL;
  end;
end;

procedure TFNewOrder.InsUpdDetail(id_ins: Boolean);
var
  id_detail: Integer;
begin
  if TransactOrder.Active = false then
    TransactOrder.StartTransaction;
  FSplash.Update;
  with Query2 do
  begin
    Close;
    if id_ins = True then
    begin
      id_detail := NewID('"документы"."заказы_деталь_id_seq"');
      sql.Text :=
        'INSERT INTO "документы"."заказы_деталь"(id, "код_заказа", "код_плантации",'
        + '"код_сорта", "длина", "кол_во_фулбоксов", "стендинг", "код_стендинга"'
        + ',цена, стеблей) VALUES (:id, :код_заказа, :код_плантации, :код_сорта, :длина, :кол_во_фулбоксов,'
        + ' :стендинг, :код_стендинга, :цена, :стеблей)';
    end
    else
    begin
      id_detail := QueryOrderDetail.FieldByName('id').AsInteger;
      sql.Text :=
        'UPDATE "документы"."заказы_деталь" SET "код_заказа" = :код_заказа,' +
        '"код_плантации" = :код_плантации, "код_сорта" = :код_сорта,' +
        '"длина" = :длина, "кол_во_фулбоксов" = :кол_во_фулбоксов,' +
        '"стендинг" = :стендинг, "код_стендинга" = :код_стендинга' +
        ',цена=:цена, стеблей=:стеблей WHERE id = :id';
    end;
    ParamByName('id').Value := id_detail;
    ParamByName('код_заказа').Value := s_id_order;
    ParamByName('код_плантации').Value := id_plant;
    ParamByName('код_сорта').Value := id_sort;
    ParamByName('длина').Value := len;
    ParamByName('кол_во_фулбоксов').Value := FB;
    if id_standing <> 0 then
    begin
      ParamByName('стендинг').Value := True;
      ParamByName('код_стендинга').Value := id_standing;
    end
    else
    begin
      ParamByName('стендинг').Value := false;
    end;
    ParamByName('цена').Value := price;
    ParamByName('стеблей').Value := стеблей;
    FSplash.Update;
    ExecSQL;
    FSplash.Update;
    AddPostLockGood(id_detail);
  end;
end;

procedure TFNewOrder.lstTreeProductsDblClick(Sender: TObject);
begin
  if edtMarking.Text <> '' then
  begin
    if edtNum.Text <> '' then
    begin
      { если выбран сорт }
      if QueryProduct.FieldByName('код_структуры').AsInteger = 5 then
      begin
        { проверяем запрет плантации }
        with Query1 do
        begin
          if s_id_order = 0 then
            InsUpdOrder(True);
          Application.CreateForm(TFNewOrderDetail, FNewOrderDetail);
          with FNewOrderDetail do
          begin
            ShowModal;
            if FrameSave1.id_save = True then
            begin
              FSplash.Show();
              FSplash.Update;
              id_plant := PGSQL.GetIDDetail(QueryProduct.FieldByName('pid')
                .AsInteger);
              id_sort := QueryProduct.FieldByName('код_детализации').AsInteger;
              len := edtLength.Text;
              FB := edtFB.Value;
              price := edtPrice.Text;
              стеблей := StrToInt(edtCount.Text);
              FSplash.Update;
              InsUpdDetail(True);
              FSplash.Update;
              ShowOrderDetail;
            end;
          end;
        end;
      end;
    end
    else
    begin
      Application.MessageBox('Введите номер.', 'Ошибка', mb_ok + MB_ICONERROR);
      edtNum.SetFocus;
    end;
  end
  else
  begin
    Application.MessageBox('Не выбрана маркировка.', 'Ошибка',
      mb_ok + MB_ICONERROR);
    edtMarkingPropertiesButtonClick(Sender, 0);
  end;
end;

procedure TFNewOrder.N1Click(Sender: TObject);
begin
  AddLockGood(True);
end;

procedure TFNewOrder.AddLockGood(id_loock: Boolean);
var
  s, s1: string;
begin
  if (TransactOrder.Active = false) then
    TransactOrder.StartTransaction;
  Application.CreateForm(TFMultiSelect, FMultiSelect);
  with FMultiSelect do
  begin
    table_name := 'продукция.плантации';
    if id_loock = True then
    begin
      if QueryOrderDetail.FieldByName('коды_запрет_плантаций').AsString <> ''
      then
        id_not := QueryOrderDetail.FieldByName('коды_запрет_плантаций')
          .AsString;
      if QueryOrderDetail.FieldByName('коды_желаемые_плантации').AsString <> ''
      then
        id_never_not := QueryOrderDetail.FieldByName
          ('коды_желаемые_плантации').AsString;
    end
    else
    begin
      if QueryOrderDetail.FieldByName('коды_желаемые_плантации').AsString <> ''
      then
        id_not := QueryOrderDetail.FieldByName
          ('коды_желаемые_плантации').AsString;
      if QueryOrderDetail.FieldByName('коды_запрет_плантаций').AsString <> ''
      then
        id_never_not := QueryOrderDetail.FieldByName
          ('коды_запрет_плантаций').AsString;
    end;
    // s_id_not :=
    // ' and id not in (select код_плантации from "маркировки"."запрет_плантаций" where код_позиции_заказа='
    // + QueryOrderDetail.FieldByName('id').AsString + ')';
    id_clear := True;
    ShowModal;
    if FrameSave1.id_save = True then
    begin
      // if (QueryDist.Active = true) and (QueryDist.Fields[0].AsString <> '') then
      // begin
      with FNewOrder.Query1 do
      begin
        // { удаляем старые }
        // Close;
        // if id_loock = True then
        // sql.Text :=
        // 'delete from "маркировки"."запрет_плантаций" where код_позиции_заказа='
        // + QueryOrderDetail.FieldByName('id').AsString
        // else
        // sql.Text :=
        // 'delete from "маркировки"."желаемые_плантации" where код_позиции_заказа='
        // + QueryOrderDetail.FieldByName('id').AsString;
        // ExecSQL;
        // // if id_loock = true then
        // // sql.Text :=
        // // 'delete from "маркировки"."запрет_плантаций" where код_позиции_заказа='
        // // + QueryOrderDetail.FieldByName('id').AsString
        // // else
        // // sql.Text :=
        // // 'delete from "маркировки"."желаемые_плантации" where код_позиции_заказа='
        // // + QueryOrderDetail.FieldByName('id').AsString;
        // ExecSQL;
        // Close;
        // if id_loock = True then
        // sql.Text :=
        // 'INSERT INTO  "маркировки"."запрет_плантаций"("код_позиции_заказа",'
        // + '"код_плантации") VALUES (:код_позиции_заказа, :код_плантации)'
        // else
        // sql.Text :=
        // 'INSERT INTO  "маркировки"."желаемые_плантации"("код_позиции_заказа",'
        // + '"код_плантации") VALUES (:код_позиции_заказа, :код_плантации)';
        if (QueryDist.Active = True) and (QueryDist.Fields[0].AsString <> '')
        then
        begin
          QueryDist.First;
          while not QueryDist.eof do
          begin
            // ParamByName('код_позиции_заказа').Value :=
            // QueryOrderDetail.FieldByName('id').AsInteger;
            // ParamByName('код_плантации').Value := QueryDist.FieldByName('id')
            // .AsInteger;
            // ExecSQL;
            s := s + Trim(QueryDist.FieldByName('name').AsString) + ', ';
            s1 := s1 + Trim(QueryDist.FieldByName('id').AsString) + ',';
            QueryDist.Next;
          end;
          s := Copy(s, 1, Length(s) - 2);
          s1 := Copy(s1, 1, Length(s1) - 1);
          Close;
          if id_loock = True then
            sql.Text :=
              'update "документы"."заказы_деталь" set запрет_плантаций=:p,' +
              'коды_запрет_плантаций=:p1 where id=' +
              QueryOrderDetail.FieldByName('id').AsString
          else
            sql.Text :=
              'update "документы"."заказы_деталь" set желаемые_плантации=:p, ' +
              'коды_желаемые_плантации=:p1 where id=' +
              QueryOrderDetail.FieldByName('id').AsString;
          // ShowMessage(QueryOrderDetail.FieldByName('id').AsString);
          ParamByName('p').AsString := s;
          ParamByName('p1').AsString := s1;
          ExecSQL;
        end
        else
        begin
          if id_loock = True then
            sql.Text :=
              'update "документы"."заказы_деталь" set запрет_плантаций=null,' +
              'коды_запрет_плантаций=null where id=' +
              QueryOrderDetail.FieldByName('id').AsString
          else
            sql.Text :=
              'update "документы"."заказы_деталь" set желаемые_плантации=null, '
              + 'коды_желаемые_плантации=null where id=' +
              QueryOrderDetail.FieldByName('id').AsString;
          ExecSQL;
        end;
      end;
    end;
    ShowOrderDetail();
    // QueryOrderDetail.Refresh;
  end;
  // end;
end;

procedure TFNewOrder.AddPostLockGood(s_id: Integer);
begin
  FSplash.Update;
  with Query1 do
  begin
    Close;
    sql.Text := 'select * from "маркировки"."маркировки" where id=' +
      IntToStr(s_id_marking);
    Open;
    Query2.Close;
    Query2.sql.Text :=
      'update "документы"."заказы_деталь" set желаемые_плантации=:gp, ' +
      'коды_желаемые_плантации=:kgp, запрет_плантаций=:zp, коды_запрет_плантаций=:kzp'
      + ' where id=' + IntToStr(s_id);
    Query2.ParamByName('gp').AsString :=
      FieldByName('желаемые_плантации').AsString;
    Query2.ParamByName('kgp').AsString :=
      FieldByName('коды_желаемые_плантации').AsString;
    Query2.ParamByName('zp').AsString :=
      FieldByName('запрет_плантаций').AsString;
    Query2.ParamByName('kzp').AsString :=
      FieldByName('коды_запрет_плантаций').AsString;
    FSplash.Update;
    Query2.ExecSQL;
    FSplash.Update;
    // Close;
    // sql.Text :=
    // 'select код_плантации from "маркировки"."постоянный_запрет_плантаций"' +
    // ' where код_маркировки=' + IntToStr(s_id_marking);
    // Open;
    // Query2.Close;
    // Query2.sql.Text :=
    // 'INSERT INTO  "маркировки"."запрет_плантаций"("код_позиции_заказа",' +
    // '"код_плантации") VALUES (:код_позиции_заказа, :код_плантации)';
    // while not eof do
    // begin
    // Query2.Close;
    // Query2.ParamByName('код_позиции_заказа').Value := s_id;
    // Query2.ParamByName('код_плантации').Value := Fields[0].AsInteger;
    // Query2.ExecSQL;
    // FSplash.Update;
    // Next;
    // end;
    // sql.Text :=
    // 'select код_плантации from "маркировки"."постоянные_желаемые_плантации"' +
    // ' where код_маркировки=' + IntToStr(s_id_marking);
    // Open;
    // Query2.Close;
    // Query2.sql.Text :=
    // 'INSERT INTO  "маркировки"."желаемые_плантации"("код_позиции_заказа",' +
    // '"код_плантации") VALUES (:код_позиции_заказа, :код_плантации)';
    // while not eof do
    // begin
    // Query2.Close;
    // Query2.ParamByName('код_позиции_заказа').Value := s_id;
    // Query2.ParamByName('код_плантации').Value := Fields[0].AsInteger;
    // Query2.ExecSQL;
    // FSplash.Update;
    // Next;
    // end;
  end;
  FSplash.Update;
end;

procedure TFNewOrder.edtДатаВылетаChange(Sender: TObject);
begin
  if (TransactOrder.Active = false) and (edtДатаВылета.Date <> s_date_fly) then
    TransactOrder.StartTransaction;
end;

procedure TFNewOrder.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  s: string;
begin
  FNewOrder.Show;
  s := 'Сохранить изменения в заказе № ' + edtNum.Text + ' от ' +
    DateToStr(edtДатаЗаказа.Date) + ' ?';
  if TransactOrder.Active = True then
  begin
    case Application.MessageBox(PChar(s), 'Вопрос',
      MB_YESNOCANCEL + MB_ICONQUESTION) of
      6:
        begin
          if edtNum.Text <> '' then
          begin
            FrameSave1btnSaveClick(Sender)
          end
          else
          begin
            CanClose := false;
            Application.MessageBox('Введите номер.', 'Ошибка',
              mb_ok + MB_ICONERROR);
            edtNum.SetFocus;
          end;
        end;
      7:
        TransactOrder.Rollback;
      2:
        CanClose := false;
    end;
  end;
end;

procedure TFNewOrder.lstTreeProductsCustomDrawDataCell
  (Sender: TcxCustomTreeList; ACanvas: TcxCanvas;
  AViewInfo: TcxTreeListEditCellViewInfo; var ADone: Boolean);
begin
  // if AViewInfo.Node.Values[ColumnID.ItemIndex] >1  then
  // ACanvas.Brush.color := clRed;
end;

procedure TFNewOrder.lstTreeProductsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    lstTreeProductsDblClick(Sender);
end;

procedure TFNewOrder.N2Click(Sender: TObject);
begin
  AddLockGood(false);
end;

function TFNewOrder.NewID(s_gen: string): Integer;
begin
  with Query1 do
  begin
    Close;
    sql.Text := 'select nextval(' + QuotedStr(s_gen) + ')';
    Open;
    Result := Fields[0].AsInteger;
  end;
end;

procedure TFNewOrder.NLockClick(Sender: TObject);
begin
  if (TransactOrder.Active = false) then
    TransactOrder.StartTransaction;
  case FPasswd.edtLang.ItemIndex of
    0:
      if QueryOrderDetail.FieldByName('запрет_покупки').AsBoolean = false then
        QuestionDialog('Запрет покупки',
          'Вы действительно хотите запретить покупку?')
      else
        QuestionDialog('Отмена запрета покупки',
          'Вы действительно хотите отменить запретит покупки?');
    1:
      if QueryOrderDetail.FieldByName('запрет_покупки').AsBoolean = false then
        QuestionDialog('Ban buy',
          'You really want to prohibit the purchase of? ')
      else
        QuestionDialog('The prohibition of purchase',
          'You really want to cancel the ban buy?');
    2:
      if QueryOrderDetail.FieldByName('запрет_покупки').AsBoolean = false then
        QuestionDialog('Anulación de la prohibición de la compra',
          'Queréis prohibir realmente la compra?')
      else
        QuestionDialog('Anulación de la prohibición de la compra',
          'Queréis anular prohibirá realmente las compras?');
  end;
  if UDialogMy.Dlg.Execute = 100 then
  begin
    with Query1 do
    begin
      Close;
      sql.Text :=
        'update "документы"."заказы_деталь" set запрет_покупки=:d where id=' +
        QueryOrderDetail.FieldByName('id').AsString;
      ParamByName('d').AsBoolean := not QueryOrderDetail.FieldByName
        ('запрет_покупки').AsBoolean;
      ExecSQL;
      QueryOrderDetail.Refresh;
    end;
  end;
end;

procedure TFNewOrder.pmLockPopup(Sender: TObject);
begin
  if QueryOrderDetail.FieldByName('запрет_покупки').AsBoolean = false then
    NLock.Caption := 'Запрет покупки'
  else
    NLock.Caption := 'Отмена запрета покупки';
end;

procedure TFNewOrder.QueryOrderDetailAfterFetch(DataSet: TCustomDADataSet);
begin
  FSplash.Close;
  FOsn.stat1.Panels[0].Text := FloatToStr(FSplash.TWork);
end;

procedure TFNewOrder.SetCaption;
begin
  Caption := 'Заказ';
  if edtNum.Text = '' then
    Caption := Caption + ' (Новый)'
  else
    Caption := Caption + ' № ' + edtNum.Text + '.';
  Caption := Caption + ' От: ' + DateToStr(edtДатаЗаказа.Date);
end;

procedure TFNewOrder.SetLang;
begin
  case FPasswd.Lang of
    0:
      ColumnName.DataBinding.FieldName := 'name';
    1:
      ColumnName.DataBinding.FieldName := 'uni_name';
    2:
      ColumnName.DataBinding.FieldName := 'reg_name';
  end;
end;

procedure TFNewOrder.ShowFito;
begin
  with QueryFito do
  begin
    Close;
    sql.Text := 'select * from "документы"."фито"';
    Open;
    case FPasswd.Lang of
      0:
        edtFito.Properties.ListFieldNames := 'name';
      1:
        edtFito.Properties.ListFieldNames := 'uni_name';
      2:
        edtFito.Properties.ListFieldNames := 'reg_name';
    end;
    if s_id_fito <> 0 then
      edtFito.EditValue := s_id_fito
    else
      edtFito.EditValue := Fields[0].AsInteger;
  end;
end;

procedure TFNewOrder.ShowOrderDetail;
begin
  with QueryOrderDetail do
  begin
    Close;
    ParamByName('id_order').AsInteger := s_id_order;
    Open;
  end;
end;

procedure TFNewOrder.ShowProduct;
var
  zapret: string;
begin
  with QueryProduct do
  begin
    Close;
    with FrameSearch1 do
    begin
      // sql.Text :=
      // 'select * from "продукция"."продукция" where id_group=1 and id not in ('
      // + ' SELECT p.id FROM ';
      // sql.Add('"маркировки"."постоянный_запрет_плантаций"');
      // sql.Add('zp INNER JOIN "продукция"."продукция" p ON (zp."код_плантации" = p."код_детализации")'
      // + ' AND (p."код_структуры" = 4) and (zp."код_маркировки"=' +
      // IntToStr(s_id_marking) + ')' + ') and pid not in (SELECT p.id FROM ');
      // sql.Add('"маркировки"."постоянный_запрет_плантаций"');
      // sql.Add(' zp INNER JOIN "продукция"."продукция" p ON (zp."код_плантации" = p."код_детализации")'
      // + ' AND (p."код_структуры" = 4) and (zp."код_маркировки"=' +
      // IntToStr(s_id_marking) + '))');
      sql.Text := 'select коды_запрет_плантаций from маркировки.маркировки ' +
        ' where id=' + IntToStr(s_id_marking);
      Open;
      zapret := Fields[0].AsString;
      // sql.Text := 'select * from продукция where id_group = 1 ' +
      // ' and id not in ( ' + zapret + ') and pid not in ( ' + zapret + ')';
      if edtName.Text = '' then
      begin
        sql.Text :=
          'select * from продукция.продукция where id_group = 1 and  код_структуры < 4'
          + ' union all select * from продукция.продукция where код_структуры = 4 ';
        if zapret <> '' then
          sql.Add(' and код_детализации not in (' + zapret +
            ') union all select * from продукция.продукция ' +
            ' where  id_group = 1 and код_структуры = 5 and pid not in (select id from продукция.продукция where код_детализации in('
            + zapret + '))')
        else
          sql.Add(' union all select * from продукция.продукция ' +
            ' where  id_group = 1 and код_структуры = 5 ');
      end
      else
      begin
        sql.Text := 'select * from (' +
          'select * from продукция.продукция where id_group = 1 and' +
          ' код_структуры = 3 and  id in (select pid from продукция.продукция' +
          ' where id_group = 1 and  код_структуры = 4 and id in (select pid' +
          ' from продукция.продукция where id_group = 1 and' +
          '  код_структуры = 5 and Upper(';
        case FPasswd.Lang of
          0:
            sql.Add('name');
          1:
            sql.Add('uni_name');
          2:
            sql.Add('reg_name');
        end;
        sql.Add(') Like ''' + AnsiUpperCase(edtName.Text) + '%''');
        sql.Add('))) е union all select * from продукция.продукция where id_group = 1 and'
          + ' код_структуры = 4 and id in (select pid from продукция.продукция'
          + ' where id_group = 1 and код_структуры = 5 ');
        if zapret <> '' then
          sql.Add('and pid not in (select id from продукция.продукция where код_детализации in('
            + zapret + '))');
        sql.Add('and Upper(');
        case FPasswd.Lang of
          0:
            sql.Add('name');
          1:
            sql.Add('uni_name');
          2:
            sql.Add('reg_name');
        end;
        sql.Add(') Like ''' + AnsiUpperCase(edtName.Text) + '%''');
        sql.Add(') union all select * from продукция.продукция where id_group = 1 and'
          + ' код_структуры = 5 and   Upper(');
        case FPasswd.Lang of
          0:
            sql.Add('name');
          1:
            sql.Add('uni_name');
          2:
            sql.Add('reg_name');
        end;
        sql.Add(') Like ''' + AnsiUpperCase(edtName.Text) + '%''');
        if zapret <> '' then
          sql.Add(' and id not IN ( ' + zapret + ')' +
            ' and pid not in (select id from продукция.продукция where код_детализации in('
            + zapret + '))');
      end;
      sql.Add(' order by id');
      Open;
    end;
    if FrameSearch1.edtName.Text <> '' then
      lstTreeProducts.FullExpand;
  end;
  //
end;

procedure TFNewOrder.TransactOrderStart(Sender: TObject);
begin
  FrameSave1.btnSave.Enabled := True;
end;

procedure TFNewOrder.ViewOrderCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
begin
  if AViewInfo.GridRecord.Values[9] = True then
  begin
    ACanvas.Brush.color := clRed;
    ACanvas.Font.color := clWhite;
  end;
  if AViewInfo.GridRecord.Values[10] <> null then
  begin
    ACanvas.Brush.color := $00E2C059;
    // ACanvas.Font.color := clWhite;
  end;
end;

procedure TFNewOrder.ViewOrderDblClick(Sender: TObject);
begin
  btnEditClick(Sender);
end;

end.
