unit UFrameSearch;

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

  cxTextEdit,
  cxLabel,
  cxGroupBox,

  dxSkinDevExpressStyle,

   dxSkinsDefaultPainters, dxSkinOffice2007Blue;

type
  TFrameSearch = class(TFrame)
    Group1: TcxGroupBox;
    LabelName: TcxLabel;
    edtName: TcxTextEdit;
  private
    { Private declarations }
  public
    procedure SetLang;
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses
  UPasswd;

procedure TFrameSearch.SetLang;
begin
  case FPasswd.Lang of
    0:
      begin
        LabelName.Caption := 'Поиск';
        edtName.Left := 42;
      end;
    1:
      begin
        LabelName.Caption := 'Search';
        edtName.Left := 42;
      end;
    2:
      begin
        LabelName.Caption := 'La búsqueda';
        edtName.Left := 74;
      end;
  end;
end;

end.
