unit tamog_packing;

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
  UFrameTopPanel,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  dxSkinsCore,
  
  Vcl.ComCtrls,
  AdvDateTimePicker,
  cxTextEdit,
  cxLabel,
  cxMaskEdit,
  cxButtonEdit,
  cxGroupBox,
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
  Vcl.StdCtrls,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sTooledit,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue, dxSkinOffice2007Blue, dxSkinsDefaultPainters;

type
  TTamog_Packing = class(TFrame)
    FrameTopPanel1: TFrameTopPanel;
    GroupOsn: TcxGroupBox;
    GridUsers: TcxGrid;
    ViewUsers: TcxGridDBTableView;
    LevelOrg: TcxGridLevel;
    QueryPacking: TUniQuery;
    dsPacking: TDataSource;
    Query1: TUniQuery;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    ViewUsers_: TcxGridDBColumn;
    ViewUsers_1: TcxGridDBColumn;
    ViewUsers_2: TcxGridDBColumn;
    ViewUsers_3: TcxGridDBColumn;
    edtOt: TDateTimePicker;
    edtDo: TDateTimePicker;
    procedure btnAddClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDelClick(Sender: TObject);
    procedure btnRestClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure edtDoCloseUp(Sender: TObject);
    procedure edtDoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtOtCloseUp(Sender: TObject);
    procedure edtOtKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ViewUsersDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure ShowPacking(s_id_locate: Integer = 0);
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  UNewAvtoForPacking;

procedure TTamog_Packing.btnAddClick(Sender: TObject);
begin
  Application.CreateForm(TFNewAvtoForPacking, FNewAvtoForPacking);
  with FNewAvtoForPacking do
  begin
    FNewAvtoForPacking.ShowModal;
    if s_id_AvtoPacking <> 0 then
      ShowPacking(s_id_AvtoPacking)
  end;
end;

procedure TTamog_Packing.btnDelClick(Sender: TObject);
begin
  if QueryPacking.Fields[0].AsString <> '' then
  begin
    if Application.MessageBox
      ('�� ������������� ������ ������� ����������, ��� ������� � ��������� � ��� �������?',
      '������', MB_YESNO + MB_ICONWARNING) = mrYes then
    begin
      with Query1 do
      begin
        Close;
        sql.Text := 'delete from  "���������"."�������_������_����" where id=' +
          QueryPacking.FieldByName('id').AsString;
        ExecSQL;
        ShowPacking();
      end;
    end;
  end;
end;

procedure TTamog_Packing.btnEditClick(Sender: TObject);
begin
  if QueryPacking.Fields[0].AsString <> '' then
  begin
    Application.CreateForm(TFNewAvtoForPacking, FNewAvtoForPacking);
    with FNewAvtoForPacking do
    begin
      s_id_AvtoPacking := QueryPacking.FieldByName('id').AsInteger;
      edtNumAvto.Text := QueryPacking.FieldByName('���_�����').AsString;
      edtOt.Date := QueryPacking.FieldByName('����_��������').AsDateTime;
      edtFIO.Text := QueryPacking.FieldByName('���_��������').AsString;
      edtPhone.Text := QueryPacking.FieldByName('�������_��������').AsString;
      FNewAvtoForPacking.ShowModal;
      ShowPacking(s_id_AvtoPacking);
    end;
  end;
end;

procedure TTamog_Packing.btnRefreshClick(Sender: TObject);
begin
  ShowPacking;
end;

procedure TTamog_Packing.btnRestClick(Sender: TObject);
begin
  ShowMessage('');
end;

procedure TTamog_Packing.edtDoCloseUp(Sender: TObject);
begin
  ShowPacking();
end;

procedure TTamog_Packing.edtDoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    ShowPacking();
end;

procedure TTamog_Packing.edtOtCloseUp(Sender: TObject);
begin
  ShowPacking;
end;

procedure TTamog_Packing.edtOtKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    ShowPacking();
end;

procedure TTamog_Packing.ShowPacking(s_id_locate: Integer = 0);
begin
  with QueryPacking do
  begin
    Close;
    sql.Text := 'select * from "���������"."�������_������_����"';
    sql.Add('   where "����_��������" BETWEEN :d1 and :d2 ');
    ParamByName('d1').AsDate := edtOt.Date;
    if edtDo.Checked = true then
      ParamByName('d2').AsDate := edtDo.Date
    else
      ParamByName('d2').AsString := '01.01.3000';
    sql.Add(' order by id DESC');
    Open;
    Locate('id', s_id_locate, []);
  end;
end;

procedure TTamog_Packing.ViewUsersDblClick(Sender: TObject);
begin
  btnEditClick(Sender);
end;

end.
