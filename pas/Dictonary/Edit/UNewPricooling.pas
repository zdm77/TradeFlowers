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
  PGSQL.AddMarking('"���������"."�������"', '���_����������', s_id_Pricooling);
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
    edtSum.Value := QueryPriceMark.FieldByName('�����').Value;
    edtDoc.Value := QueryPriceMark.FieldByName('����������').Value;
    case FPasswd.Lang of
      0:
        lblMarking.Caption := '����������: ' + QueryPriceMark.FieldByName
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
      s_id_Pricooling := PGSQL.NewID('"���������"."��������_id_seq"');
      sql.Text :=
        'INSERT INTO "���������"."��������"(id, name, "�����_����", "����������",'
        + ' "����_����_����",  "���������_����",  "����_�����_�����",  "���������_�����",'
        + '  "����",  "��_���",  "���������",  "����������",  "�����_���") ' +
        'VALUES (  :id,  :name,  :�����_����,  :����������,  :����_����_����,' +
        '  :���������_����,  :����_�����_�����,  :���������_�����,  :����,  :��_���,'
        + '  :���������,  :����������,  :�����_���)';
    end
    else
    begin
      sql.Text :=
        'UPDATE "���������"."��������" SET name = :name, "�����_����" = :�����_����,'
        + ' "����������" = :����������, "����_����_����" = :����_����_����, "���������_����" = :���������_����,'
        + ' "����_�����_�����" = :����_�����_�����, "���������_�����" = :���������_�����,'
        + ' "����" = :����, "��_���" = :��_���, "���������" = :���������,' +
        ' "����������" = :����������, "�����_���" = :�����_��� WHERE id = :id';
    end;
    ParamByName('id').Value := s_id_Pricooling;
    ParamByName('name').Value := edtName.Text;
    // ParamByName('��_���').Value := edtUrName.Text;
    ParamByName('�����_����').Value := mmoAdrFact.Text;
    ParamByName('�����_���').Value := mmoAdrReg.Text;
    ParamByName('����������').Value := mmoRemark.Text;
    ParamByName('����_����_����').Value := edtMaxSrokDolg.Value;
    ParamByName('���������_����').Value := edtDayAlarm.Value;
    ParamByName('����_�����_�����').AsString := edtMaxDolg.Text;
    ParamByName('���������_�����').AsString := edtSumAlarm.Text;
    ParamByName('���������').AsString := edtSum.Text;
    ParamByName('����������').AsString := edtDoc.Text;
    try
      ExecSQL;
      if id_ins = true then
        PGSQL.AddMarking('"���������"."�������"', '���_����������',
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
