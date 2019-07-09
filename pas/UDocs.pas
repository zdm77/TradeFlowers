unit UDocs;

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
  dxSkinsCore,
  
  dxSkinsdxNavBarPainter,
  dxNavBar,
  dxSkinscxPCPainter,

  cxPC,
  dxNavBarCollns,
  cxClasses,
  dxNavBarBase,
  UFrameOrder,
  cxSplitter,
  cxGridCustomTableView,
  UFramePedido,
  UFrameFactura,
  tamog_packing,
  Data.DB,
  MemDS,
  DBAccess,
  Uni,
  UFramePedidoALL,
  dxBarBuiltInMenu, Vcl.Grids, Vcl.DBGrids,  
      
   dxSkinDevExpressStyle, 
     
     
    
    
    
    
      
     
     
    UFramePrice, UFrameReceipt, dxSkinOffice2007Blue, dxSkinsDefaultPainters,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinTheBezier,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

type
  TFDocs = class(TForm)
    dxnvbr1: TdxNavBar;
    GroupOsn: TdxNavBarGroup;
    Item������: TdxNavBarItem;
    PageDocs: TcxPageControl;
    TabOrder: TcxTabSheet;
    FrameOrder1: TFrameOrder;
    cxspltr1: TcxSplitter;
    Item������: TdxNavBarItem;
    Tab������: TcxTabSheet;
    Item�������: TdxNavBarItem;
    Tab�������: TcxTabSheet;
    FrameFactura1: TFrameFactura;
    GroupTamog: TdxNavBarGroup;
    ItemPacking: TdxNavBarItem;
    tabPacking: TcxTabSheet;
    Tamog_Packing1: TTamog_Packing;
    Query1: TUniQuery;
    FramePedidoALL1: TFramePedidoAll;
    ItemPrice: TdxNavBarItem;
    tabPrice: TcxTabSheet;
    FramePrice1: TFramePrice;
    Item�����������: TdxNavBarItem;
    Group�����������: TdxNavBarGroup;
    Tab�����������: TcxTabSheet;
    FrameReceipt1: TFrameReceipt;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Item������Click(Sender: TObject);
    procedure Item������Click(Sender: TObject);
    procedure FrameAllOrders1ViewOrderDblClick(Sender: TObject);
    procedure FrameFactura1edtDateDoChange(Sender: TObject);
    procedure FramePedidoALL1ViewPedidoALLDblClick(Sender: TObject);
    procedure ItemPackingClick(Sender: TObject);
    procedure ItemPriceClick(Sender: TObject);
    procedure Item�������Click(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure FramePrice1ViewPedidoALLDblClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure Item�����������Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Access;
    { Public declarations }
  end;

var
  FDocs: TFDocs;

implementation

{$R *.dfm}

uses
  UPasswd;

procedure TFDocs.Access;
begin
  if (FPasswd.ID_ROLE <> 1) then
  begin
    with Query1 do
    begin
      { ������ }
      Close;
      sql.Text := 'select * from "������������"."������"  where ���_����=' +
        IntToStr(FPasswd.ID_ROLE);
      Open;
      GroupOsn.Visible := FieldByName('�������_�_����������_������').AsBoolean;
      // ����������� AWB
      Item������.Visible := FieldByName('�������_�_����������_������_�����')
        .AsBoolean;
      Item������.Visible := FieldByName('�������_�_����������_������_�����')
        .AsBoolean;
      ItemPacking.Visible := FieldByName('�������_�_����������_�������_����')
        .AsBoolean;
      // ������
      FrameOrder1.FrameTopPanel1.btnAdd.Enabled :=
        FieldByName('�������_�_����������_������_�����').AsBoolean;
      FrameOrder1.FrameTopPanel1.btnEdit.Enabled :=
        FieldByName('�������_�_����������_������_�����').AsBoolean;
      FrameOrder1.FrameTopPanel1.btnDel.Enabled :=
        FieldByName('�������_�_����������_������_�����').AsBoolean;
      // ������
      FramePedidoALL1.FrameTopPanel1.btnAdd.Enabled :=
        FieldByName('�������_�_����������_������_�����').AsBoolean;
      FramePedidoALL1.FrameTopPanel1.btnEdit.Enabled :=
        FieldByName('�������_�_����������_������_�����').AsBoolean;
      FramePedidoALL1.FrameTopPanel1.btnDel.Enabled :=
        FieldByName('�������_�_����������_������_�����').AsBoolean;
      // ������� -������
      Tamog_Packing1.FrameTopPanel1.btnAdd.Enabled :=
        FieldByName('�������_�_����������_�������_����').AsBoolean;
      Tamog_Packing1.FrameTopPanel1.btnEdit.Enabled :=
        FieldByName('�������_�_����������_�������_����').AsBoolean;
      Tamog_Packing1.FrameTopPanel1.btnDel.Enabled :=
        FieldByName('�������_�_����������_�������_����').AsBoolean;
    end;
  end;
end;

procedure TFDocs.FormCreate(Sender: TObject);
begin
  case FPasswd.Lang of
    0:
      begin
        // Caption := 'Directories';
        Item������.Caption := '������';
        GroupOsn.Caption := '������';
      end;
    1:
      begin
        // Caption := 'Directories';
        Item������.Caption := 'Orders';
        GroupOsn.Caption := 'Orders';
      end;
    2:
      begin
        // Caption := 'Directories';
        Item������.Caption := 'Encargos';
        GroupOsn.Caption := 'Encargos';
      end;
  end;
end;

procedure TFDocs.btnEditClick(Sender: TObject);
begin
  FramePrice1.FrameTopPanel1btnEditClick(Sender);
end;

procedure TFDocs.btnRefreshClick(Sender: TObject);
begin
  FramePrice1.FrameTopPanel1btnRefreshClick(Sender);
end;

procedure TFDocs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FDocs := nil;
end;

procedure TFDocs.FormShow(Sender: TObject);
begin
  PageDocs.ActivePageIndex := 0;
  PageDocs.HideTabs := True;
  Access;
end;

procedure TFDocs.FrameAllOrders1ViewOrderDblClick(Sender: TObject);
begin
  if FramePedidoALL1.FrameTopPanel1.btnEdit.Enabled = True then
    FramePedidoALL1.btnEditClick(Sender);
end;

procedure TFDocs.FrameFactura1edtDateDoChange(Sender: TObject);
begin
  FrameFactura1.edtOtChange(Sender);
end;

procedure TFDocs.FramePedidoALL1ViewPedidoALLDblClick(Sender: TObject);
begin
  FramePedidoALL1.btnEditClick(Sender);
end;

procedure TFDocs.FramePrice1ViewPedidoALLDblClick(Sender: TObject);
begin
  FramePrice1.FrameTopPanel1btnEditClick(Sender);
end;

procedure TFDocs.ItemPackingClick(Sender: TObject);
begin
  { ������ }
  PageDocs.Visible := True;
  PageDocs.ActivePageIndex := 3;
  with Tamog_Packing1 do
  begin
    FrameTopPanel1.SetLang;
    // SetLang;
    if QueryPacking.Active = false then
    begin
      edtOt.Date := Now - 15;
      ShowPacking();
    end;
  end;
end;

procedure TFDocs.ItemPriceClick(Sender: TObject);
begin
  { ������ }
  if FramePrice1.QueryPrice.Active = false then
  begin
    // edtDateDo.Date := Now;
    // edtDateDo.Checked := false;
    // edtOt.Date := Now;
    FramePrice1.ShowPrice();
  end;
  PageDocs.Visible := True;
  PageDocs.ActivePageIndex := 4;
  with FramePrice1 do
  begin
    FrameTopPanel1.SetLang;
    // SetLang;
    // SetLang;
  end;
end;

procedure TFDocs.Item������Click(Sender: TObject);
begin
  { ������ }
  PageDocs.Visible := True;
  PageDocs.ActivePageIndex := 0;
  with FrameOrder1 do
  begin
    FrameTopPanel1.SetLang;
    // SetLang;
    if QueryOrder.Active = false then
    begin
//      edtOt.Date := Now;
//      edtDo.Date := Now;
//      edtDo.Checked := false;
      ShowOrders();
    end;
  end;
end;

procedure TFDocs.Item������Click(Sender: TObject);
begin
  { ������ }
  PageDocs.Visible := True;
  PageDocs.ActivePageIndex := 1;
  with FramePedidoALL1 do
  begin
    FrameTopPanel1.SetLang;
    // SetLang;
    if QueryPedidoALL.Active = false then
    begin
      // Query1.Close;
      // Query1.sql.Text :=
      // 'select max(doc."����_������") from "���������"."������" doc';
      // Query1.Open;
      // if Query1.Fields[0].AsString <> '' then
      // edtOt.Date := Query1.Fields[0].AsDateTime
      // else
      // edtOt.Date := Now;
      ShowPedidoALL();
    end;
  end;
end;

procedure TFDocs.Item�����������Click(Sender: TObject);
begin
  PageDocs.Visible := True;
  PageDocs.ActivePageIndex := 5;
  with FrameReceipt1 do
  begin
    FrameTopPanel1.SetLang;
    // SetLang;
    if QueryReceipt.Active = false then
    begin
      ShowReceipt();
    end;
  end;
end;

procedure TFDocs.Item�������Click(Sender: TObject);
begin
  { ������ }
  PageDocs.Visible := True;
  PageDocs.ActivePageIndex := 2;
  with FrameFactura1 do
  begin
    FrameTopPanel1.SetLang;
    SetLang;
    // SetLang;
    if QueryFactura.Active = false then
    begin
      edtDateDo.Date := Now;
      edtDateDo.Checked := false;
      edtOt.Date := Now;
      ShowFactura();
    end;
  end;
end;

end.
