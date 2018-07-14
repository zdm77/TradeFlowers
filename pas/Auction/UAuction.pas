unit UAuction;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, 
   dxSkinsdxNavBarPainter, dxSkinscxPCPainter,
  dxBarBuiltInMenu, Data.DB, MemDS, DBAccess, Uni, cxSplitter, cxPC,
  dxNavBarCollns, cxClasses, dxNavBarBase, dxNavBar, UFrameAuction,
  UFrameRaznosAucAll, UTypeAuc, UFrameProductAuc, UFrameAucOrder,
  dxSkinOffice2007Blue, dxSkinsDefaultPainters;

type
  TFAuction = class(TForm)
    Bar1: TdxNavBar;
    GroupOsn: TdxNavBarGroup;
    ItemАукцион: TdxNavBarItem;
    PageDocs: TcxPageControl;
    TabOrder: TcxTabSheet;
    cxspltr1: TcxSplitter;
    Query1: TUniQuery;
    FrameAuction1: TFrameAuction;
    ItemRaznos: TdxNavBarItem;
    ItemПакинг: TdxNavBarItem;
    tabРазноск: TcxTabSheet;
    FrameRaznosAucAll1: TFrameRaznosAucAll;
    ItemType: TdxNavBarItem;
    Bar1Item1: TdxNavBarItem;
    Bar1Group1: TdxNavBarGroup;
    tabType: TcxTabSheet;
    FrameTypeAuc1: TFrameTypeAuc;
    ItemНоменклатура: TdxNavBarItem;
    tabНоменклатура: TcxTabSheet;
    FrameProductAuc1: TFrameProductAuc;
    groupZakaz: TdxNavBarGroup;
    itemOrderHoland: TdxNavBarItem;
    tabOrderHolland: TcxTabSheet;
    FrameAucOrder1: TFrameAucOrder;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ItemRaznosClick(Sender: TObject);
    procedure ItemTypeClick(Sender: TObject);
    procedure ItemАукционClick(Sender: TObject);
    procedure ItemНоменклатураClick(Sender: TObject);
    procedure FrameTopPanel1btnArchPropertiesEditValueChanged(Sender: TObject);
    procedure itemOrderHolandClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAuction: TFAuction;

implementation

{$R *.dfm}

procedure TFAuction.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FAuction := nil;
end;

procedure TFAuction.FormShow(Sender: TObject);
begin
  PageDocs.ActivePageIndex := 0;
  PageDocs.HideTabs := True;
end;

procedure TFAuction.FrameTopPanel1btnArchPropertiesEditValueChanged
  (Sender: TObject);
begin
  with FrameProductAuc1 do
  begin
    if FrameProductAuc1.FrameTopPanel1.btnArch.EditValue = True then
    begin
      FrameProductAuc1.cxGroupBox3.Height := 200;
      FrameProductAuc1.ShowDt;
    end
    else
      FrameProductAuc1.cxGroupBox3.Height := 0;
  end;
  // FrameProductAuc1.cxSplitter1.Visible :=
  // FrameProductAuc1.FrameTopPanel1.btnArch.EditValue;
  // FrameProductAuc1.cxGroupBox3.Visible :=
  // FrameProductAuc1.FrameTopPanel1.btnArch.EditValue;
end;

procedure TFAuction.itemOrderHolandClick(Sender: TObject);
begin
  PageDocs.Visible := True;
  PageDocs.ActivePageIndex := 4;
  with FrameAucOrder1 do
  begin
    if QueryAucOrder.Active = false then
    begin
      ShowAucOrders;
    end;
  end;
end;

procedure TFAuction.ItemRaznosClick(Sender: TObject);
begin
  PageDocs.Visible := True;
  PageDocs.ActivePageIndex := 1;
  with FrameRaznosAucAll1 do
  begin
    // FrameTopPanel1.SetLang;
    // SetLang;
    if QueryAucAll.Active = false then
    begin
      ShowAucAll;
    end;
  end;
end;

procedure TFAuction.ItemTypeClick(Sender: TObject);
begin
  PageDocs.Visible := True;
  PageDocs.ActivePageIndex := 2;
  with FrameTypeAuc1 do
  begin
    if QueryTypeAuc.Active = false then
    begin
      ShowTypeAuc('');

    end;
  end;
end;

procedure TFAuction.ItemАукционClick(Sender: TObject);
begin
  PageDocs.Visible := True;
  PageDocs.ActivePageIndex := 0;
  with FrameAuction1 do
  begin
    // FrameTopPanel1.SetLang;
    // SetLang;
    if QueryAuc.Active = false then
    begin
      ShowAuc;
    end;
  end;
  // FrameTypeAuc1.ShowProduct;
end;

procedure TFAuction.ItemНоменклатураClick(Sender: TObject);
begin
  PageDocs.Visible := True;
  PageDocs.ActivePageIndex := 3;
  with FrameProductAuc1 do
  begin
    if QueryAucD.Active = false then
    begin
      ShowProduct;
    end;
  end;
end;

end.
