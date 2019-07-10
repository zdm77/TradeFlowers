unit UNewStoreloc;
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
  
  UFrameUniName,
  cxGroupBox,
  Menus,
  Vcl.StdCtrls,
  cxButtons,
  cxMaskEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  cxTextEdit,
  cxLabel,
  UFrameSave,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue;
type
  TFNewStoreloc = class(TForm)
    Group1 : TcxGroupBox;
    FrameUniName1 : TFrameUniName;
    Group2 : TcxGroupBox;
    FrameSave1 : TFrameSave;
    lblQuantity : TcxLabel;
    edtQuantity : TcxTextEdit;
    lblEd : TcxLabel;
    edtCountry : TcxLookupComboBox;
    btnAddCountry : TcxButton;
    btnEdtCountry : TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNewStoreloc : TFNewStoreloc;
implementation
{$R *.dfm}
end.
