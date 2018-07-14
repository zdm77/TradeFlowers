unit UNewAvtoForPacking;

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
  
  Vcl.StdCtrls,
  cxLabel,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sTooledit,
  cxGroupBox,
  UFrameTopPanel,
  cxStyles,
  dxSkinscxPCPainter,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxNavigator,
  Data.DB,
  cxDBData,
  MemDS,
  DBAccess,
  Uni,
  cxGridLevel,
  cxClasses,
  cxGridCustomView,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGrid,     
    
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue;

type
  TFNewAvtoForPacking = class(TForm)
    FrameTopPanel1: TFrameTopPanel;
    GroupOsn: TcxGroupBox;
    edtOt: TsDateEdit;
    cxLabel1: TcxLabel;
    lbl1: TcxLabel;
    edtFIO: TEdit;
    edtPhone: TEdit;
    cxLabel3: TcxLabel;
    edtNumAvto: TEdit;
    cxLabel2: TcxLabel;
    GridAvtoPackingDBTableView1: TcxGridDBTableView;
    GridAvtoPackingLevel1: TcxGridLevel;
    GridAvtoPacking: TcxGrid;
    QueryAvtoPacking: TUniQuery;
    dsAvtoPacking: TDataSource;
    Query1: TUniQuery;
    GridAvtoPackingDBTableView1DBColumn: TcxGridDBColumn;
    GridAvtoPackingDBTableView1DBColumn1: TcxGridDBColumn;
    GridAvtoPackingDBTableView1_2: TcxGridDBColumn;
    GridAvtoPackingDBTableView1_3: TcxGridDBColumn;
    procedure btnAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure GridAvtoPackingDBTableView1DblClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure FrameTopPanel1btnSelClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
  public
    s_id_AvtoPacking: Integer;
    procedure ShowAvtoPacking(s_id_locate: Integer = 0);
    { Public declarations }
  end;

var
  FNewAvtoForPacking: TFNewAvtoForPacking;

implementation

{$R *.dfm}

uses
  PGSQL,
  UNewPacking;

procedure TFNewAvtoForPacking.btnAddClick(Sender: TObject);
begin
  if (edtOt.Text <> '  .  .    ') And (edtFIO.Text <> '') and
    (edtNumAvto.Text <> '') then
  begin
    if s_id_AvtoPacking = 0 then
    begin
      if Application.MessageBox
        ('јвтомобиль дл€ пакинга еще не сохранен. —охранить?', '¬опрос',
        MB_YESNO + MB_ICONQUESTION) = mrYes then
      begin
        with Query1 do
        begin
          s_id_AvtoPacking :=
            PGSQL.NewID('"документы"."таможн€_пакинг_id_seq"');
          Close;
          sql.Text := 'INSERT INTO "документы"."таможн€_пакинг_авто"' +
            '(id, "гос_номер", "дата_загрузки", "фио_водител€",' +
            '  "телефон_водител€") VALUES (:id, :гос_номер,' +
            ' :дата_загрузки, :фио_водител€,  :телефон_водител€);';
          ParamByName('id').AsInteger := s_id_AvtoPacking;
          ParamByName('гос_номер').AsString := edtNumAvto.Text;
          ParamByName('дата_загрузки').AsDate := edtOt.Date;
          ParamByName('фио_водител€').AsString := edtFIO.Text;
          ParamByName('телефон_водител€').AsString := edtPhone.Text;
          ExecSQL;
        end;
      end
      else
        Abort;
    end;
    Application.CreateForm(TFNewPacking, FNewPacking);
    with FNewPacking do
    begin
      s_id_avto_packing_add := s_id_AvtoPacking;
      s_id_packing := 0;
      ShowModal;
      ShowAvtoPacking(s_id_packing);
    end;
  end
  else
    Application.MessageBox
      ('Ќе заполнены основные сведени€. ѕродолжение не возможно.', 'ќшибка',
      MB_OK + MB_ICONERROR);
end;

procedure TFNewAvtoForPacking.btnDelClick(Sender: TObject);
begin
  if QueryAvtoPacking.Fields[0].AsString <> '' then
  begin
    if Application.MessageBox
      ('¬ы действительно хотите удалить пакинг и все св€занные с ним позиции?',
      '¬опрос', MB_YESNO + MB_ICONWARNING) = mrYes then
    begin
      with Query1 do
      begin
        Close;
        sql.Text := 'delete from  "документы"."таможн€_пакинг" where id=' +
          QueryAvtoPacking.FieldByName('id').AsString;
        ExecSQL;
        ShowAvtoPacking();
      end;
    end;
  end;
end;

procedure TFNewAvtoForPacking.btnEditClick(Sender: TObject);
begin
  if QueryAvtoPacking.Fields[0].AsString <> '' then
  begin
    Application.CreateForm(TFNewPacking, FNewPacking);
    with FNewPacking do
    begin
      s_id_packing := QueryAvtoPacking.FieldByName('id').AsInteger;
      s_id_avto_packing_add := QueryAvtoPacking.FieldByName('код_таможн€_авто')
        .AsInteger;
      s_id_client := QueryAvtoPacking.FieldByName('код_клиента').AsInteger;
      s_id_postav := QueryAvtoPacking.FieldByName('код_поставщика').AsInteger;
      edtOt.Date := QueryAvtoPacking.FieldByName('дата_пакинга').AsDateTime;
      edtNum.Text := QueryAvtoPacking.FieldByName('номер_пакинга').AsString;
      edtPostav.Text := QueryAvtoPacking.FieldByName('поставщик').AsString;
      edtClient.Text := QueryAvtoPacking.FieldByName('клиент').AsString;
      ShowModal;
      ShowAvtoPacking(s_id_packing);
    end;
  end;
end;

procedure TFNewAvtoForPacking.btnRefreshClick(Sender: TObject);
begin
  ShowAvtoPacking(QueryAvtoPacking.FieldByName('id').AsInteger);
end;

procedure TFNewAvtoForPacking.FormShow(Sender: TObject);
begin
  ShowAvtoPacking();
end;

procedure TFNewAvtoForPacking.FrameTopPanel1btnSelClick(Sender: TObject);
begin
  if (edtOt.Text <> '  .  .    ') And (edtFIO.Text <> '') and
    (edtNumAvto.Text <> '') then
  begin
    with Query1 do
    begin
      if s_id_AvtoPacking = 0 then
      begin
        s_id_AvtoPacking := PGSQL.NewID('"документы"."таможн€_пакинг_id_seq"');
        Close;
        sql.Text := 'INSERT INTO "документы"."таможн€_пакинг_авто"' +
          '(id, "гос_номер", "дата_загрузки", "фио_водител€",' +
          '  "телефон_водител€") VALUES (:id, :гос_номер,' +
          ' :дата_загрузки, :фио_водител€,  :телефон_водител€);';
        ParamByName('id').AsInteger := s_id_AvtoPacking;
        ParamByName('гос_номер').AsString := edtNumAvto.Text;
        ParamByName('дата_загрузки').AsDate := edtOt.Date;
        ParamByName('фио_водител€').AsString := edtFIO.Text;
        ParamByName('телефон_водител€').AsString := edtPhone.Text;
        ExecSQL;
      end
      else
      begin
        Close;
        sql.Text := 'UPDATE  "документы"."таможн€_пакинг_авто"  ' +
          'SET  "гос_номер" = :гос_номер,' +
          '  "дата_загрузки" = :дата_загрузки,' +
          '  "фио_водител€" = :фио_водител€,' +
          '  "телефон_водител€" = :телефон_водител€' + ' WHERE  id = :id;';
        ParamByName('id').AsInteger := s_id_AvtoPacking;
        ParamByName('фио_водител€').AsString := edtFIO.Text;
        ParamByName('гос_номер').AsString := edtNumAvto.Text;
        ParamByName('телефон_водител€').AsString := edtPhone.Text;
        ParamByName('дата_загрузки').AsDate := edtOt.Date;
        ExecSQL;
        ShowAvtoPacking();
      end;
    end;
  end
  else
    Application.MessageBox
      ('Ќе заполнены основные сведени€. ѕродолжение не возможно.', 'ќшибка',
      MB_OK + MB_ICONERROR);
end;

procedure TFNewAvtoForPacking.GridAvtoPackingDBTableView1DblClick
  (Sender: TObject);
begin
  btnEditClick(Sender);
end;

procedure TFNewAvtoForPacking.ShowAvtoPacking(s_id_locate: Integer = 0);
begin
  with QueryAvtoPacking do
  begin
    Close;
    sql.Text := 'SELECT c.name клиент,  p.name поставщик,  pk.id,' +
      '  pk."код_таможн€_авто",  pk."код_клиента",  pk."код_поставщика",' +
      '  pk."номер_пакинга",  pk."дата_пакинга" FROM' +
      '  "документы"."таможн€_пакинг" pk' +
      '  INNER JOIN "контрагенты"."клиенты" c ON (pk."код_клиента" = c.id)' +
      '  INNER JOIN "контрагенты"."клиенты" p ON (pk."код_поставщика" = p.id)' +
      ' where код_таможн€_авто= ' + IntToStr(s_id_AvtoPacking);
    Open;
  end;
end;

end.
