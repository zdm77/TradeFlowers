unit UNewPricooling;

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

  cxLabel,
  cxTextEdit,
  Vcl.StdCtrls,
  AdvEdit,
  cxGroupBox,
  dxSkinscxPCPainter,

  cxStyles,
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
  UFrameTopPanel,
  cxPC,
  Menus,
  cxButtons,
  cxMemo,
  cxCheckBox,
  cxMaskEdit,
  cxSpinEdit,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sCurrEdit,
  cxNavigator,
  dxBarBuiltInMenu,

  dxSkinDevExpressStyle,

   dxSkinsDefaultPainters, dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TFNewPricooling = class(TForm)
    FrameSave1: TFrameSave;
    Page1: TcxPageControl;
    TabOsn: TcxTabSheet;
    lblDoc: TLabel;
    lblSum: TLabel;
    lblName: TcxLabel;
    edtName: TcxTextEdit;
    TabPriceMark: TcxTabSheet;
    FrameTopPanelPriceMark: TFrameTopPanel;
    GridAcc: TcxGrid;
    GridAccount: TcxGridDBTableView;
    GridLevelGrid1Level1: TcxGridLevel;
    QueryPriceMark: TUniQuery;
    dsPriceMark: TDataSource;
    Query1: TUniQuery;
    mmoAdrReg: TcxMemo;
    lblAdrReg: TcxLabel;
    btnAdres: TcxButton;
    btn1: TcxButton;
    mmoAdrFact: TcxMemo;
    lblAdrFact: TcxLabel;
    mmoRemark: TcxMemo;
    lblRemark: TcxLabel;
    TabAlarm: TcxTabSheet;
    lblMaxDayDolg: TcxLabel;
    edtMaxSrokDolg: TcxSpinEdit;
    edtDayAlarm: TcxSpinEdit;
    lblAlarmDay: TcxLabel;
    lblMaxDolg: TcxLabel;
    lblSumAlarm: TcxLabel;
    chkUse: TcxCheckBox;
    edtSum: TsCalcEdit;
    edtDoc: TsCalcEdit;
    edtMaxDolg: TsCalcEdit;
    edtSumAlarm: TsCalcEdit;
    GridAccountDBColumn: TcxGridDBColumn;
    GridAccountDBColumn1: TcxGridDBColumn;
    Query2: TUniQuery;
    ColumnMarking: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure FrameSave1btnSaveClick(Sender: TObject);
    procedure btnAdresClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure edtNameKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtNamePropertiesEditValueChanged(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure GridAccountDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    s_id_Pricooling: Integer;
    procedure EnableSave;
    procedure InsUpdPricooling(id_ins: boolean);
    procedure ShowTarifMarking(id_locate: Integer = 0);
    { Public declarations }
  end;

var
  FNewPricooling: TFNewPricooling;

implementation

{$R *.dfm}

uses
  PGSQL,
  UNewTarifPricooling,
  UPasswd;

procedure TFNewPricooling.btn1Click(Sender: TObject);
begin
  SelectAddress(mmoAdrFact, 0, 0, 0, 0, '', '', '', '');
end;

procedure TFNewPricooling.btnAddClick(Sender: TObject);
begin
  if s_id_Pricooling = 0 then
    InsUpdPricooling(true);
  PGSQL.AddMarking('"прикулинг"."наценки"', 'код_прикулинга', s_id_Pricooling);
  ShowTarifMarking;
end;

procedure TFNewPricooling.btnAdresClick(Sender: TObject);
begin
  SelectAddress(mmoAdrReg, 0, 0, 0, 0, '', '', '', '');
end;

procedure TFNewPricooling.btnEditClick(Sender: TObject);
begin
  Application.CreateForm(TFNewTarifPricooling, FNewTarifPricooling);
  with FNewTarifPricooling do
  begin
    edtSum.Value := QueryPriceMark.FieldByName('тариф').Value;
    edtDoc.Value := QueryPriceMark.FieldByName('оформление').Value;
    case FPasswd.Lang of
      0:
        lblMarking.Caption := 'Маркировка: ' + QueryPriceMark.FieldByName
          ('name').AsString;
      1:
        lblMarking.Caption := 'Marking: ' + QueryPriceMark.FieldByName
          ('uni_name').AsString;
      2:
        lblMarking.Caption := 'Marca: ' + QueryPriceMark.FieldByName
          ('reg_name').AsString;
    end;
    s_id_tarif := QueryPriceMark.FieldByName('id').AsInteger;
    ShowModal;
    if FrameSave1.id_save = true then
      QueryPriceMark.Refresh;
  end;
end;

procedure TFNewPricooling.btnRefreshClick(Sender: TObject);
begin
  QueryPriceMark.Refresh;
end;

procedure TFNewPricooling.edtNameKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFNewPricooling.edtNamePropertiesEditValueChanged(Sender: TObject);
begin
  EnableSave;
end;

procedure TFNewPricooling.EnableSave;
begin
  if (edtName.Text <> '') then
  begin
    FrameSave1.btnSave.Enabled := true;
    FrameTopPanelPriceMark.btnAdd.Enabled := true;
    FrameTopPanelPriceMark.btnAdd.Enabled := true;
    FrameTopPanelPriceMark.btnAdd.Enabled := true;
  end
  else
  begin
    FrameSave1.btnSave.Enabled := false;
    FrameTopPanelPriceMark.btnAdd.Enabled := false;
    FrameTopPanelPriceMark.btnAdd.Enabled := false;
    FrameTopPanelPriceMark.btnAdd.Enabled := false;
  end;
  if QueryPriceMark.RecordCount <> 0 then
  begin
    FrameTopPanelPriceMark.btnEdit.Enabled := true;
    FrameTopPanelPriceMark.btnDel.Enabled := true;
    FrameTopPanelPriceMark.btnRefresh.Enabled := true;
  end
  else
  begin
    FrameTopPanelPriceMark.btnEdit.Enabled := false;
    FrameTopPanelPriceMark.btnDel.Enabled := false;
    FrameTopPanelPriceMark.btnRefresh.Enabled := false;
  end;
end;

procedure TFNewPricooling.FormShow(Sender: TObject);
begin
  Page1.ActivePageIndex := 0;
  edtName.SetFocus;
  EnableSave;
end;

procedure TFNewPricooling.FrameSave1btnSaveClick(Sender: TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  if s_id_Pricooling = 0 then
    InsUpdPricooling(true)
  else
    InsUpdPricooling(false);
  Close;
end;

procedure TFNewPricooling.GridAccountDblClick(Sender: TObject);
begin
  btnEditClick(Sender);
end;

procedure TFNewPricooling.InsUpdPricooling(id_ins: boolean);
begin
  with Query1 do
  begin
    Close;
    if id_ins = true then
    begin
      s_id_Pricooling := PGSQL.NewID('"прикулинг"."агенства_id_seq"');
      sql.Text :=
        'INSERT INTO "прикулинг"."агенства"(id, name, "адрес_факт", "примечание",'
        + ' "макс_срок_долг",  "оповещать_дней",  "макс_сумма_долга",  "оповещать_сумма",'
        + '  "долг",  "юр_имя",  "стоимость",  "оформление",  "адрес_рег") ' +
        'VALUES (  :id,  :name,  :адрес_факт,  :примечание,  :макс_срок_долг,' +
        '  :оповещать_дней,  :макс_сумма_долга,  :оповещать_сумма,  :долг,  :юр_имя,'
        + '  :стоимость,  :оформление,  :адрес_рег)';
    end
    else
    begin
      sql.Text :=
        'UPDATE "прикулинг"."агенства" SET name = :name, "адрес_факт" = :адрес_факт,'
        + ' "примечание" = :примечание, "макс_срок_долг" = :макс_срок_долг, "оповещать_дней" = :оповещать_дней,'
        + ' "макс_сумма_долга" = :макс_сумма_долга, "оповещать_сумма" = :оповещать_сумма,'
        + ' "долг" = :долг, "юр_имя" = :юр_имя, "стоимость" = :стоимость,' +
        ' "оформление" = :оформление, "адрес_рег" = :адрес_рег WHERE id = :id';
    end;
    ParamByName('id').Value := s_id_Pricooling;
    ParamByName('name').Value := edtName.Text;
    // ParamByName('юр_имя').Value := edtUrName.Text;
    ParamByName('адрес_факт').Value := mmoAdrFact.Text;
    ParamByName('адрес_рег').Value := mmoAdrReg.Text;
    ParamByName('примечание').Value := mmoRemark.Text;
    ParamByName('макс_срок_долг').Value := edtMaxSrokDolg.Value;
    ParamByName('оповещать_дней').Value := edtDayAlarm.Value;
    ParamByName('макс_сумма_долга').AsString := edtMaxDolg.Text;
    ParamByName('оповещать_сумма').AsString := edtSumAlarm.Text;
    ParamByName('стоимость').AsString := edtSum.Text;
    ParamByName('оформление').AsString := edtDoc.Text;
    try
      ExecSQL;
      if id_ins = true then
        PGSQL.AddMarking('"прикулинг"."наценки"', 'код_прикулинга',
          s_id_Pricooling);
      EnableSave;
    except
      if id_ins = true then
        s_id_Pricooling := 0;
    end;
  end;
end;

procedure TFNewPricooling.ShowTarifMarking(id_locate: Integer = 0);
begin
  with QueryPriceMark do
  begin
    Close;
    ParamByName('id').AsInteger := s_id_Pricooling;
    Open;
    Locate('id', id_locate, []);
  end;
end;

end.
