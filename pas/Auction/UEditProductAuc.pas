unit UEditProductAuc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore,   cxTextEdit,
  cxDBEdit, Vcl.StdCtrls, cxMaskEdit, cxSpinEdit, cxDropDownEdit, cxCalc,
  cxGroupBox, UFrameSave

  ;

type
  TFEditProductAuc = class(TForm)
    QueryAucPrEdit: TUniQuery;
    dsAucPrEdit: TDataSource;
    QueryAucPrEditid: TIntegerField;
    QueryAucPrEditКодПоставщика: TIntegerField;
    QueryAucPrEditПоставщик: TWideStringField;
    QueryAucPrEditНаименование: TWideStringField;
    QueryAucPrEditГруппаПродукта: TIntegerField;
    QueryAucPrEditЧАСЫ: TWideStringField;
    QueryAucPrEditКОД_ГРУППЫ: TWideStringField;
    QueryAucPrEditКОЛВО_В_ТАРЕ: TIntegerField;
    QueryAucPrEditКОД_ТАРЫ: TWideStringField;
    QueryAucPrEditS1: TIntegerField;
    QueryAucPrEditS2: TIntegerField;
    QueryAucPrEditS3: TIntegerField;
    QueryAucPrEditS4: TIntegerField;
    QueryAucPrEditКодПродукта: TIntegerField;
    QueryAucPrEditКодСтраны: TWideStringField;
    QueryAucPrEditКачествоТовара: TWideStringField;
    QueryAucPrEditТипСрезка: TWideStringField;
    QueryAucPrEditimg: TWideStringField;
    QueryAucPrEditцена: TFloatField;
    QueryAucPrEditкод_плантации: TIntegerField;
    QueryAucPrEditаукцион: TWideStringField;
    QueryAucPrEditдата_добавления: TDateField;
    QueryAucPrEditкод_аукциона: TIntegerField;
    FrameSave1: TFrameSave;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label2: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    Label3: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    Label4: TLabel;
    cxDBSpinEdit2: TcxDBSpinEdit;
    Label5: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    Label6: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    Label7: TLabel;
    cxDBSpinEdit3: TcxDBSpinEdit;
    Label8: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    Label9: TLabel;
    cxDBSpinEdit4: TcxDBSpinEdit;
    Label10: TLabel;
    cxDBSpinEdit5: TcxDBSpinEdit;
    Label11: TLabel;
    cxDBSpinEdit6: TcxDBSpinEdit;
    Label12: TLabel;
    cxDBSpinEdit7: TcxDBSpinEdit;
    Label13: TLabel;
    cxDBSpinEdit8: TcxDBSpinEdit;
    Label14: TLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    Label15: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    Label16: TLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FEditProductAuc: TFEditProductAuc;

implementation

{$R *.dfm}

uses UFrameProductAuc, UAuction;

end.
