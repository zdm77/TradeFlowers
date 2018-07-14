unit UNewPriceMarking;

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
  
  Data.DB,
  MemDS,
  DBAccess,
  Uni,
  Vcl.StdCtrls,
  Vcl.Mask,
  sMaskEdit,
  sCustomComboEdit,
  sCurrEdit,
  cxGroupBox,
  UFrameSave,    
     
  dxSkinDevExpressStyle,   
     
     
    
    
    
     
      
    
     dxSkinXmas2008Blue;

type
  TFNewPriceMarking = class(TForm)
    FrameSave1: TFrameSave;
    Group1: TcxGroupBox;
    lblSum: TLabel;
    lblMarking: TLabel;
    edtSum: TsCalcEdit;
    Query1: TUniQuery;
    procedure edtSumKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FrameSave1btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    s_id: Integer;
    s_table_name: string;
    { Public declarations }
  end;

var
  FNewPriceMarking: TFNewPriceMarking;

implementation

{$R *.dfm}

procedure TFNewPriceMarking.edtSumKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    FrameSave1btnSaveClick(Sender);
end;

procedure TFNewPriceMarking.FrameSave1btnSaveClick(Sender: TObject);
begin
  FrameSave1.btnSaveClick(Sender);
  with Query1 do
  begin
    Close;
    sql.Text := 'UPDATE ' + s_table_name +
      ' SET "тариф" = :тариф WHERE id = :id';
    ParamByName('id').AsInteger := s_id;
    ParamByName('тариф').Value := edtSum.Value;
    ExecSQL;
  end;
  Close;
end;

end.
