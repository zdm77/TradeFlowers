unit UNewTarifKargo;
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
  cxContainer,
  cxEdit,
  dxSkinsCore,
  
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
  Vcl.StdCtrls,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sCurrEdit,
  UFrameSave,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  cxLabel,
  cxTextEdit,
  cxMaskEdit,
  cxButtonEdit,
  cxGroupBox,
  cxNavigator,
  
  dxSkinDevExpressStyle,
  
  dxSkinsDefaultPainters;
type
  TFNewTarifKargo = class(TForm)
    cxGroupBox1 : TcxGroupBox;
    edtAirline : TcxButtonEdit;
    cxlbl2 : TcxLabel;
    FrameSave1 : TFrameSave;
    cxGroupBox2 : TcxGroupBox;
    cxLabel1 : TcxLabel;
    edtSumTarif : TsCalcEdit;
    edtFITO : TsCalcEdit;
    cxLabel2 : TcxLabel;
    edtTermo : TsCalcEdit;
    cxLabel4 : TcxLabel;
    edtAWB : TsCalcEdit;
    edtDopSbor : TsCalcEdit;
    cxLabel5 : TcxLabel;
    cxLabel3 : TcxLabel;
    dsAirDay : TDataSource;
    QueryAirDay : TUniQuery;
    GridStatWork : TcxGrid;
    ViewStatWork : TcxGridDBTableView;
    ColumnName : TcxGridDBColumn;
    ColumnTime����� : TcxGridDBColumn;
    ColumnTime������ : TcxGridDBColumn;
    LevelStatWork : TcxGridLevel;
    Query1 : TUniQuery;
    procedure btnAirlinePropertiesButtonClick(Sender : TObject;
                                                 AButtonIndex : Integer);
    procedure FormShow(Sender : TObject);
    procedure FrameSave1btnSaveClick(Sender : TObject);
  private
    { Private declarations }
  public
    o_id_AirLine_for_tarif : Integer;
    s_id_kargo_for_tarif : Integer;
    s_id_tarif : Integer;
    procedure InsUpdTarif(id_ins : boolean);
    procedure ShowAirDays;
    { Public declarations }
  end;

var
  FNewTarifKargo : TFNewTarifKargo;
implementation
uses
  USelect,
  UPasswd,
  PGSQL;
{$R *.dfm}

procedure TFNewTarifKargo.btnAirlinePropertiesButtonClick(Sender : TObject;
                                                             AButtonIndex : Integer);
begin
  Application.CreateForm(TFSelect, FSelect);
  with FSelect do
  begin
    ShowSelect('"���������"."���������"', ' where id not in ' +
    ' (select ���_����� from "�����"."������" where ���_�����=' +
    IntToStr(s_id_kargo_for_tarif) + ')', false);
    ShowModal;
    if FrameTopPanel1.id_select = true then
    begin
      o_id_AirLine_for_tarif := QuerySelect.FieldByName('id').AsInteger;
      case FPasswd.Lang of
        0 : edtAirline.Text := QuerySelect.FieldByName('name').AsString;
        1 : edtAirline.Text := QuerySelect.FieldByName('uni_name').AsString;
        2 : edtAirline.Text := QuerySelect.FieldByName('reg_name').AsString;
      end;
      ShowAirDays;
      edtSumTarif.SetFocus;
    end;
  end;
end;
procedure TFNewTarifKargo.FormShow(Sender : TObject);
begin
  if s_id_tarif <> 0 then
    edtSumTarif.SetFocus;
end;
procedure TFNewTarifKargo.FrameSave1btnSaveClick(Sender : TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  if s_id_tarif = 0 then
    InsUpdTarif(true)
  else
    InsUpdTarif(false);
  Close;
end;
procedure TFNewTarifKargo.InsUpdTarif(id_ins : boolean);
begin
  with Query1 do
  begin
    Close;
    if id_ins = true then
    begin
      s_id_tarif := PGSQL.NewID('"�����"."������_id_seq"');
      SQL.Text :=
                 'INSERT INTO "�����"."������"(id, "���_�����", "���_���������",' +
                 ' "�����_���������",  "����",  awb,  "���_�����",  "�����������"' +
                 ') VALUES (:id,  :���_�����,  :���_���������,  :�����_���������,' +
                 ' :����,  :awb,  :���_�����,  :�����������)';
    end
    else
      SQL.Text := 'UPDATE "�����"."������" SET  "���_�����" = :���_�����,' +
    ' "���_���������" = :���_���������, "�����_���������" = :�����_���������,'
    + '  "����" = :����,  awb = :awb,  "���_�����" = :���_�����,  "�����������" = :�����������'
    + ' WHERE  id = :id';
    ParamByName('id').AsInteger := s_id_tarif;
    ParamByName('���_�����').AsInteger := s_id_kargo_for_tarif;
    ParamByName('���_���������').AsInteger := o_id_AirLine_for_tarif;
    ParamByName('�����_���������').Value := edtSumTarif.Value;
    ParamByName('����').Value := edtFITO.Value;
    ParamByName('awb').Value := edtAWB.Value;
    ParamByName('���_�����').Value := edtDopSbor.Value;
    ParamByName('�����������').Value := edtTermo.Value;
    ExecSQL;
  end;
end;
procedure TFNewTarifKargo.ShowAirDays;
begin
  with QueryAirDay do
  begin
    Close;
    SQL.Text :=
               'SELECT  a.name, g.id,  g."���_���������",  g."����",  g."�����_������",'
               + '  g."�����_�������",  g."����_uni",  g."����_reg" FROM' +
               '  "���������"."���������" a  INNER JOIN "���������"."������_������" ' +
               ' g ON (a.id = g."���_���������") where a.id=' +
               IntToStr(o_id_AirLine_for_tarif);
    Open;
  end;
end;
end.
