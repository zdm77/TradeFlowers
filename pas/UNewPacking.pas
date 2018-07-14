unit UNewPacking;

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
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sTooledit,
  cxTextEdit,
  cxLabel,
  cxMaskEdit,
  cxButtonEdit,
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
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  Vcl.ComCtrls,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue;

type
  TFNewPacking = class(TForm)
    FrameTopPanel1: TFrameTopPanel;
    GroupOsn: TcxGroupBox;
    edtPostav: TcxButtonEdit;
    lblMarking: TcxLabel;
    edtNum: TcxTextEdit;
    lblNumber: TcxLabel;
    cxLabel1: TcxLabel;
    lbl1: TcxLabel;
    edtClient: TcxButtonEdit;
    GridAvtoPacking: TcxGrid;
    GridAvtoPackingDBTableView1: TcxGridDBTableView;
    GridAvtoPackingLevel1: TcxGridLevel;
    dsPacking: TDataSource;
    QueryPacking: TUniQuery;
    Query1: TUniQuery;
    GridAvtoPackingDBTableView1DBColumn: TcxGridDBColumn;
    GridAvtoPackingDBTableView1DBColumn1: TcxGridDBColumn;
    edtВалюта: TComboBox;
    cxLabel2: TcxLabel;
    edtOt: TDateTimePicker;
    procedure btnAddClick(Sender: TObject);
    procedure edtClientPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure edtPostavPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure GridAvtoPackingDBTableView1DblClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure FrameTopPanel1btnSelClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
  private
    { Private declarations }
  public
    s_id_avto_packing_add: Integer;
    s_id_packing: Integer;
    s_id_client: Integer;
    s_id_postav: Integer;
    Валюта: string;
    procedure ShowPacking;
    { Public declarations }
  end;

var
  FNewPacking: TFNewPacking;

implementation

{$R *.dfm}

uses
  PGSQL,
  UNewSubPacking,
  USelectClient,
  UPackingCorrection;

procedure TFNewPacking.btnAddClick(Sender: TObject);
begin
  if (edtOt.Checked = true) And (edtClient.Text <> '') and
    (edtPostav.Text <> '') and (edtNum.Text <> '') then
  begin
    if s_id_packing = 0 then
    begin
      if Application.MessageBox('Пакинг еще не сохранен. Сохранить?', 'Вопрос',
        MB_YESNO + MB_ICONQUESTION) = mrYes then
      begin
        with Query1 do
        begin
          s_id_packing := PGSQL.NewID('"документы"."таможня_пакинг_id_seq1"');
          Close;
          sql.Text := 'INSERT INTO  "документы"."таможня_пакинг"' +
            '(id,  "код_таможня_авто",  "код_клиента",' +
            '  "код_поставщика",  "номер_пакинга",  "дата_пакинга", валюта' +
            ') VALUES (  :id,  :код_таможня_авто,  :код_клиента,' +
            '  :код_поставщика,  :номер_пакинга,  :дата_пакинга, :валюта);';
          ParamByName('id').AsInteger := s_id_packing;
          ParamByName('код_таможня_авто').AsInteger := s_id_avto_packing_add;
          ParamByName('код_клиента').AsInteger := s_id_client;
          ParamByName('код_поставщика').AsInteger := s_id_postav;
          ParamByName('дата_пакинга').AsDate := edtOt.Date;
          ParamByName('номер_пакинга').AsString := edtNum.Text;
          ParamByName('валюта').AsString := edtВалюта.Text;
          Валюта := edtВалюта.Text;
          ExecSQL;
        end;
      end
      else
        Abort;
    end;
    Application.CreateForm(TFNewSubPacking, FNewSubPacking);
    with FNewSubPacking do
    begin
      s_id_sub_packing_ADD := 0;
      s_id_packing_ADD := s_id_packing;
      ShowUp();
      ShowModal;
      ShowPacking;
    end;
  end
  else
    Application.MessageBox
      ('Не заполнены основные сведения. Продолжение не возможно.', 'Ошибка',
      MB_OK + MB_ICONERROR);
end;

procedure TFNewPacking.btnDelClick(Sender: TObject);
begin
  if QueryPacking.Fields[0].AsString <> '' then
  begin
    if Application.MessageBox
      ('Вы действительно хотите удалить подпакинг и все связанные с ним позиции?',
      'Вопрос', MB_YESNO + MB_ICONWARNING) = mrYes then
    begin
      with Query1 do
      begin
        Close;
        sql.Text := 'delete from  "документы"."таможня_подпакинг" where id=' +
          QueryPacking.FieldByName('id').AsString;
        ExecSQL;
        ShowPacking();
      end;
    end;
  end;
end;

procedure TFNewPacking.btnEditClick(Sender: TObject);
begin
  Application.CreateForm(TFNewSubPacking, FNewSubPacking);
  with FNewSubPacking do
  begin
    ShowUp(QueryPacking.FieldByName('код_упаковки').AsInteger);
    edtTara.Text := QueryPacking.FieldByName('тара').AsString;
    edtCount.Value := QueryPacking.FieldByName('кол-во').AsInteger;
    edtVes.Text := QueryPacking.FieldByName('вес_палета').AsString;
    s_id_packing_ADD := s_id_packing;
    s_id_sub_packing_ADD := QueryPacking.FieldByName('id').AsInteger;
    ShowModal;
    ShowPacking;
  end;
end;

procedure TFNewPacking.btnFilterClick(Sender: TObject);
begin
  Application.CreateForm(TFPackingCorrection, FPackingCorrection);
  with FPackingCorrection do
  begin
    s_id_tpd := s_id_packing;
    ShowModal;
  end;
end;

procedure TFNewPacking.btnRefreshClick(Sender: TObject);
begin
  ShowPacking;
end;

procedure TFNewPacking.edtClientPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.CreateForm(TFSelectClient, FSelectClient);
  with FSelectClient.FrameClient1 do
  begin
    s_id_type := '1';
    ShowOrg;
    ShowClients();
  end;
  with FSelectClient do
  begin
    s_id_select_client := 0;
    ShowModal;
    if s_id_select_client <> 0 then
    begin
      edtClient.Text := FrameClient1.QueryClient.FieldByName('name').AsString;
      s_id_client := s_id_select_client;
    end;
  end;
end;

procedure TFNewPacking.edtPostavPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.CreateForm(TFSelectClient, FSelectClient);
  with FSelectClient.FrameClient1 do
  begin
    s_id_type := '2';
    ShowOrg;
    ShowClients();
  end;
  with FSelectClient do
  begin
    s_id_select_client := 0;
    ShowModal;
    if s_id_select_client <> 0 then
    begin
      edtPostav.Text := FrameClient1.QueryClient.FieldByName('name').AsString;
      s_id_postav := s_id_select_client;
    end;
  end;
end;

procedure TFNewPacking.FormShow(Sender: TObject);
begin
  ShowPacking;
end;

procedure TFNewPacking.FrameTopPanel1btnSelClick(Sender: TObject);
begin
  with Query1 do
  begin
    Close;
    sql.Text := 'UPDATE  "документы"."таможня_пакинг" SET' +
      '  "код_клиента" = :код_клиента,' +
      '  "код_поставщика" = :код_поставщика,' +
      '  "номер_пакинга" = :номер_пакинга, "дата_пакинга" = :дата_пакинга' +
      ' ,валюта=:валюта WHERE  id = :id;';
    ParamByName('id').AsInteger := s_id_packing;
    ParamByName('код_клиента').AsInteger := s_id_client;
    ParamByName('код_поставщика').AsInteger := s_id_postav;
    ParamByName('номер_пакинга').AsString := edtNum.Text;
    ParamByName('дата_пакинга').AsDate := edtOt.Date;
    ParamByName('валюта').AsString := edtВалюта.Text;
    Валюта := edtВалюта.Text;
    ExecSQL;
    ShowPacking;
  end;
end;

procedure TFNewPacking.GridAvtoPackingDBTableView1DblClick(Sender: TObject);
begin
  btnEditClick(Sender);
end;

procedure TFNewPacking.ShowPacking;
begin
{$REGION 'MyRegion'}
  with QueryPacking do
  begin
    sql.Clear;
    sql.Add('       select pd.*,');
    sql.Add('        u.name упаковка,');
    sql.Add('        p.валюта');
    sql.Add(' from "документы"."таможня_подпакинг" pd');
    sql.Add('      inner join "документы"."таможня_пакинг" p on (p.id = pd.код_пакинга)');
    sql.Add('      inner join "продукция"."виды_упаковки" u on (u.id = pd."код_упаковки")');
    sql.Add(' where код_пакинга = :код_пакинга');
    sql.Add(' order by id');
    ParamByName('код_пакинга').AsInteger := s_id_packing;
    Open;
    Валюта := FieldByName('валюта').AsString;
  end;
{$ENDREGION};
end;

end.
