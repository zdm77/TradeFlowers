unit UFramePriceDetail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
   dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, MemDS, DBAccess, Uni,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, UFrameTopPanel, cxContainer,
  Vcl.ComCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Vcl.StdCtrls, cxGroupBox,
   cxLabel, dxCore, cxDateUtils, cxCalendar, Vcl.Mask,
  sMaskEdit, sCustomComboEdit, sToolEdit;

type
  TFramePriceDetail = class(TFrame)
    FrameTopPanel1: TFrameTopPanel;
    GridPedidoALL: TcxGrid;
    ViewPedidoALL: TcxGridDBTableView;
    ColumnSort: TcxGridDBColumn;
    ColumnDlina: TcxGridDBColumn;
    LevelOrg: TcxGridLevel;
    QueryPriceDetail: TUniQuery;
    dsPriceDetail: TDataSource;
    ColumnPrice: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    edtCountry: TcxLookupComboBox;
    edtType: TcxLookupComboBox;
    edtPlant: TcxLookupComboBox;
    QueryCountry: TUniQuery;
    QueryType: TUniQuery;
    QueryPlant: TUniQuery;
    dsPlant: TDataSource;
    dsType: TDataSource;
    dsCountry: TDataSource;
    Query1: TUniQuery;
    Query2: TUniQuery;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    edtDate: TcxDateEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    procedure btnLoadPriceClick(Sender: TObject);
    procedure edtPlantMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure edtCountryPropertiesCloseUp(Sender: TObject);
    procedure edtPlantKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtTypePropertiesCloseUp(Sender: TObject);
    procedure edtPlantPropertiesCloseUp(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
  private
    { Private declarations }
  public
    IDPrice, IDPlant, IDType: Integer;
    DatePrice: TDateTime;
    procedure ShowCountry(id_locate: Integer = 0);
    procedure ShowPlant(id_locate: Integer = 0);
    procedure ShowPriceDetail(id_locate: Integer = 0);
    procedure ShowType(id_locate: Integer = 0);
    procedure UpdatePrice;
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses PGSQL, UPasswd, UFImport, UDataModule1;

procedure TFramePriceDetail.btnDelClick(Sender: TObject);
begin
  if Application.MessageBox('�� ������������� ������ ������� ������?', '������',
    MB_YESNO + MB_ICONWARNING) = mrYes then
  begin
    with Query1 do
    begin
      Close;
      SQL.Text := 'delete from ���������.�����_������ where id=' +
        QueryPriceDetail.FieldByName('id').AsString;
      ExecSQL;
      ShowPriceDetail();
    end;
  end;
end;

procedure TFramePriceDetail.btnLoadPriceClick(Sender: TObject);
var
  i: Integer;
  IDSort: Integer;
begin
  if (edtCountry.Text <> '') and (edtType.Text <> '') and (edtPlant.Text <> '')
  then
  begin
    if IDPrice = 0 then
    begin
      with Query1 do
      begin
        IDPrice := PGSQL.NewID('"���������"."�����_id_seq"');
        Close;
        SQL.Text :=
          'INSERT INTO "���������"."�����" (id, "���_������������", "����_������",  '
          + ' "���_���������", "���_����") VALUES (:id, :���_������������, :����_������, '
          + ' :���_���������, :���_����);';
        ParamByName('id').AsInteger := IDPrice;
        ParamByName('���_������������').AsInteger := FPasswd.ID_USER;
        ParamByName('����_������').AsDateTime := edtDate.Date;
        ParamByName('���_���������').AsInteger := edtPlant.EditValue;
        ParamByName('���_����').AsInteger := edtType.EditValue;
        ExecSQL;
      end;
    end;
    Application.CreateForm(TFImport, FImport);
    with FImport do
    begin
      id_save := False;
      n_IDType := edtType.EditValue;
      n_IDCountry := edtCountry.EditValue;
      ShowModal;
      if id_save = true then
      begin
        try
          with Query1 do
          begin
            Close;
            // sql.Text :=
            // 'INSERT INTO "���������"."�����_������"("���_������", "���_�����", '
            // + '  "����", "�����", "���_������������") ' +
            // ' VALUES (:���_������, :���_�����, :����, :�����,' +
            // ' :���_������������);';
            SQL.Text :=
              'INSERT INTO "���������"."�����_������"("���_������", "���_�����", '
              + '  "����", "�����", "���_������������") ' + ' VALUES ';
            // ����������
            for i := 1 to GridOrder.RowCount - 1 do
            begin
              SQL.Add('(' + IntToStr(IDPrice) + ', ' + Trim(GridOrder.Cells[3,
                i]) + ',' + StringReplace(Trim(GridOrder.Cells[2, i]), ',', '.',
                []) + ', ' + Trim(GridOrder.Cells[1, i]) + ',' + ' ' +
                IntToStr(FPasswd.ID_USER) + '),');
              // 'INSERT INTO "���������"."�����_������"("���_������", "���_�����", '
              // + '  "����", "�����", "���_������������") ' +
              // ' VALUES (:���_������, :���_�����, :����, :�����,' +
              // ' :���_������������);';
              //
              //
              // ParamByName('���_������').AsInteger := IDPrice;
              // // ParamByName('���_���������').AsInteger := edtPlant.EditValue;
              // ParamByName('���_�����').AsString := Trim(GridOrder.Cells[3, i]);
              // ParamByName('�����').AsString := Trim(GridOrder.Cells[1, i]);
              // ParamByName('����').AsString := Trim(GridOrder.Cells[2, i]);
              // ParamByName('���_������������').AsInteger := FPasswd.ID_USER;
            end;
            SQL.Text := Copy(SQL.Text, 1, length(Trim(SQL.Text)) - 1);
            ExecSQL;
          end;
          ShowPriceDetail();
        except
        end;
      end;
    end;
  end
  else
  begin
    Application.MessageBox('�� ���������� �������� ����', '������',
      MB_OK + MB_ICONERROR);
  end;
end;

procedure TFramePriceDetail.btnRefreshClick(Sender: TObject);
begin
  ShowPriceDetail(QueryPriceDetail.FieldByName('id').AsInteger);
end;

procedure TFramePriceDetail.edtCountryPropertiesCloseUp(Sender: TObject);
begin
  UpdatePrice;
end;

procedure TFramePriceDetail.edtPlantKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    UpdatePrice;
end;

procedure TFramePriceDetail.edtPlantMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  edtPlant.SelectAll;
end;

procedure TFramePriceDetail.edtPlantPropertiesCloseUp(Sender: TObject);
begin
  // UpdatePrice;
end;

procedure TFramePriceDetail.edtTypePropertiesCloseUp(Sender: TObject);
begin
  // UpdatePrice;
end;

procedure TFramePriceDetail.ShowCountry(id_locate: Integer = 0);
begin
  with QueryCountry do
  begin
    Close;
    SQL.Text := 'select * from "���������"."������" order by ���������';
    Open;
    if id_locate = 0 then
      edtCountry.EditValue := Fields[0].AsInteger
    else
      edtCountry.EditValue := id_locate;
  end;
end;

procedure TFramePriceDetail.ShowPlant(id_locate: Integer = 0);
begin
  with QueryPlant do
  begin
    Close;
    SQL.Text := 'select * from "���������"."���������"  order by uni_name';
    Open;
    if id_locate = 0 then
      edtPlant.EditValue := Fields[0].AsInteger
    else
      edtPlant.EditValue := id_locate;
  end;
end;

procedure TFramePriceDetail.ShowPriceDetail(id_locate: Integer = 0);
begin
  with QueryPriceDetail do
  begin
    SQL.Clear;
    SQL.Add(' SELECT');
    SQL.Add(' pd.id,');
    SQL.Add(' pd."���_������",');
    SQL.Add(' pd."���_�����",');
    SQL.Add(' pd."����",');
    SQL.Add(' pd."�����",');
    SQL.Add(' pd."���_������������",');
    SQL.Add(' s.uni_name ����');
    SQL.Add(' FROM');
    SQL.Add(' "���������"."�����_������" pd');
    SQL.Add(' INNER JOIN "���������"."�����" s ON (pd."���_�����" = s.id)');
    SQL.Add(' where ���_������=:���_������');
    ParamByName('���_������').Value := IDPrice;
    Open;
  end;
end;

procedure TFramePriceDetail.ShowType(id_locate: Integer = 0);
begin
  with QueryType do
  begin
    Close;
    SQL.Text := 'select * from "���������"."����" order by ���������';
    Open;
    if id_locate = 0 then
      edtType.EditValue := Fields[0].AsInteger
    else
      edtType.EditValue := id_locate;
  end;
end;

procedure TFramePriceDetail.UpdatePrice;
begin
  if IDPrice <> 0 then
  begin
    // ShowMessage(DateToStr(DatePrice));
    // ShowMessage(DateToStr(edtDate.Date));
    // ShowMessage(IntToStr(IDPlant));
    // ShowMessage(IntToStr(IDType));
    if (DateToStr(DatePrice) <> DateToStr(edtDate.Date)) or
      (IDPlant <> edtPlant.EditValue) or (IDType <> edtType.EditValue) then
    begin
      if Application.MessageBox
        ('�� ������������� ������ �������� �������� �������� �����-�����?',
        '������', MB_YESNO + MB_ICONWARNING) = mrYes then
      begin
        if edtPlant.Text <> '' then
        begin
          with Query1 do
          begin
            Close;
            SQL.Clear;
            SQL.Add(' UPDATE "���������"."�����"');
            SQL.Add(' SET "���_������������" = :���_������������,');
            SQL.Add(' "����_������" = :����_������,');
            SQL.Add(' "���_���������" = :���_���������,');
            SQL.Add(' "���_����" = :���_����');
            SQL.Add(' WHERE id = :id;');
            ParamByName('���_������������').AsInteger := FPasswd.ID_USER;
            ParamByName('����_������').AsDateTime := edtDate.Date;
            ParamByName('���_���������').AsInteger := edtPlant.EditValue;
            ParamByName('���_����').AsInteger := edtType.EditValue;
            ParamByName('id').AsInteger := IDPrice;
            ExecSQL;
          end;
        end;
      end;
    end;
  end;
end;

end.
