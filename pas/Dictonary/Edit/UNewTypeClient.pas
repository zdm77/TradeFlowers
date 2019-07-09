unit UNewTypeClient;

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
  
  Data.DB,
  DBAccess,
  Uni,
  MemDS,
  cxLabel,
  cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
      cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxCheckBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxGroupBox, cxButtonEdit;

type
  TFNewTypeClient = class(TForm)
    FrameSave1: TFrameSave;
    GridStatWork: TcxGrid;
    ViewStatWork: TcxGridDBTableView;
    LevelStatWork: TcxGridLevel;
    dsAll: TUniDataSource;
    QueryAll: TUniQuery;
    ViewStatWorkDBColumn: TcxGridDBColumn;
    ViewStatWorkDBColumn1: TcxGridDBColumn;
    ViewStatWorkDBColumn2: TcxGridDBColumn;
    ViewStatWorkDBColumn3: TcxGridDBColumn;
    cxGroupBox1: TcxGroupBox;
    edtMarking: TcxButtonEdit;
    lblMarking: TcxLabel;
    procedure FrameSave1btnSaveClick(Sender: TObject);
    procedure edtTypePropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtMarkingPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
  private

    { Private declarations }
  public
   s_id_Marking: Integer;
    { Public declarations }
  end;

var
  FNewTypeClient: TFNewTypeClient;

implementation

{$R *.dfm}

uses USelect;

procedure TFNewTypeClient.edtMarkingPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  Application.CreateForm(TFSelect, FSelect);
  with FSelect do
  begin
    Caption := '�������� ����������';
    lstTree.Visible := True;
    GridSelect.Visible := false;
    ShowSelect('"����������"."����������"', ' ', false, True);
    ShowModal;

    if FrameTopPanel1.id_select = True then
    begin
      edtMarking.Text:=QuerySelect.FieldByName('name').AsString;
      s_id_Marking:=QuerySelect.FieldByName('id').AsInteger;
    end;
  end;
end;

procedure TFNewTypeClient.edtTypePropertiesEditValueChanged(Sender: TObject);
begin
  // ShowVid();
  // ShowCur();
  // ShowTypeProduct();
  // ShowCountry();
end;

procedure TFNewTypeClient.FormShow(Sender: TObject);
begin
  with QueryAll do
  begin
    Close;
    SQL.Clear;
    SQL.Add(' SELECT');
    SQL.Add(' s.name "������",');
    SQL.Add(' v.name "���",');
    SQL.Add(' st."���_����_��������",');
    SQL.Add(' st."���_������",');
    SQL.Add(' st."���_������",');
    SQL.Add(' st."���_����",');
    SQL.Add(' st.id,');
    SQL.Add(' tt.name "��� ������",');
    SQL.Add(' vl.name "������"');
    SQL.Add(' FROM');
    SQL.Add(' "�����������"."������_���" st');
    SQL.Add(' INNER JOIN "���������"."������" s ON (st."���_������" = s.id)');
    SQL.Add(' INNER JOIN "�����������"."����" v ON (st."���_����" = v.id)');
    SQL.Add(' INNER JOIN "�����������"."����_�������" tt ON (st."���_����_��������" = tt.id)');
    SQL.Add(' INNER JOIN public."������" vl ON (st."���_������" = vl.id)');
    Open;
  end;
end;

procedure TFNewTypeClient.FrameSave1btnSaveClick(Sender: TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  Close;
end;

end.
