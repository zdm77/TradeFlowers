unit UFrameAccess;
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
  
  dxSkinscxPCPainter,
  
  cxStyles,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxNavigator,
  Data.DB,
  cxDBData,
  Vcl.ImgList,
  MemDS,
  DBAccess,
  Uni,
  cxDBNavigator,
  cxSplitter,
  cxGridLevel,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxClasses,
  cxGridCustomView,
  cxGrid,
  cxCheckBox,
  cxDBEdit,
  cxPC,
  cxGroupBox,
  dxBarBuiltInMenu,
  
  dxSkinDevExpressStyle,
  
  dxSkinXmas2008Blue, dxSkinOffice2007Blue, dxSkinsDefaultPainters, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, System.ImageList, cxImageList;
type
  TFrameAccess = class(TFrame)
    cxGroupBox2 : TcxGroupBox;
    PageAccess : TcxPageControl;
    TabDict : TcxTabSheet;
    GroupAccesDict : TcxGroupBox;
    chkDictAll : TcxDBCheckBox;
    TabWork : TcxTabSheet;
    cxGroupBox3 : TcxGroupBox;
    chkWorkOsn : TcxDBCheckBox;
    TabReports : TcxTabSheet;
    cxGroupBox4 : TcxGroupBox;
    chkModuleReport : TcxDBCheckBox;
    cxGroupBox1 : TcxGroupBox;
    GridRoles : TcxGrid;
    ViewOrg : TcxGridDBTableView;
    ViewOrgDBColumn : TcxGridDBColumn;
    LevelOrg : TcxGridLevel;
    Spliter1 : TcxSplitter;
    Group4 : TcxGroupBox;
    cxDBNavigator1 : TcxDBNavigator;
    QueryAccess : TUniQuery;
    dsAccess : TDataSource;
    QueryRole : TUniQuery;
    dsRole : TDataSource;
    cxmglst1 : TcxImageList;
    Query1 : TUniQuery;
    PageDictAccess : TcxPageControl;
    tabOsn : TcxTabSheet;
    tabСтуктура : TcxTabSheet;
    tabЗакупка : TcxTabSheet;
    tabОрганизация : TcxTabSheet;
    tabАдминистрирование : TcxTabSheet;
    cxGroupBox6 : TcxGroupBox;
    cxDBCheckBox1 : TcxDBCheckBox;
    cxDBCheckBox2 : TcxDBCheckBox;
    cxDBCheckBox3 : TcxDBCheckBox;
    cxDBCheckBox4 : TcxDBCheckBox;
    cxDBCheckBox5 : TcxDBCheckBox;
    cxGroupBox7 : TcxGroupBox;
    cxDBCheckBox6 : TcxDBCheckBox;
    cxDBCheckBox7 : TcxDBCheckBox;
    cxDBCheckBox8 : TcxDBCheckBox;
    cxDBCheckBox9 : TcxDBCheckBox;
    cxGroupBox8 : TcxGroupBox;
    cxDBCheckBox10 : TcxDBCheckBox;
    cxDBCheckBox11 : TcxDBCheckBox;
    cxDBCheckBox12 : TcxDBCheckBox;
    cxDBCheckBox16 : TcxDBCheckBox;
    cxDBCheckBox14 : TcxDBCheckBox;
    cxDBCheckBox21 : TcxDBCheckBox;
    cxDBCheckBox22 : TcxDBCheckBox;
    cxDBCheckBox23 : TcxDBCheckBox;
    cxGroupBox5 : TcxGroupBox;
    cxDBCheckBox24 : TcxDBCheckBox;
    cxDBCheckBox25 : TcxDBCheckBox;
    cxDBCheckBox26 : TcxDBCheckBox;
    cxDBCheckBox27 : TcxDBCheckBox;
    cxGroupBox9 : TcxGroupBox;
    cxDBCheckBox28 : TcxDBCheckBox;
    cxDBCheckBox29 : TcxDBCheckBox;
    cxDBCheckBox30 : TcxDBCheckBox;
    cxDBCheckBox31 : TcxDBCheckBox;
    cxGroupBox10 : TcxGroupBox;
    cxDBCheckBox32 : TcxDBCheckBox;
    cxDBCheckBox33 : TcxDBCheckBox;
    cxDBCheckBox34 : TcxDBCheckBox;
    cxDBCheckBox35 : TcxDBCheckBox;
    cxGroupBox11 : TcxGroupBox;
    cxDBCheckBox36 : TcxDBCheckBox;
    cxDBCheckBox37 : TcxDBCheckBox;
    cxDBCheckBox38 : TcxDBCheckBox;
    cxDBCheckBox39 : TcxDBCheckBox;
    cxGroupBox12 : TcxGroupBox;
    cxDBCheckBox40 : TcxDBCheckBox;
    cxDBCheckBox41 : TcxDBCheckBox;
    cxDBCheckBox42 : TcxDBCheckBox;
    cxDBCheckBox43 : TcxDBCheckBox;
    cxGroupBox13 : TcxGroupBox;
    cxDBCheckBox44 : TcxDBCheckBox;
    cxDBCheckBox45 : TcxDBCheckBox;
    cxDBCheckBox46 : TcxDBCheckBox;
    cxDBCheckBox47 : TcxDBCheckBox;
    cxGroupBox14 : TcxGroupBox;
    cxDBCheckBox48 : TcxDBCheckBox;
    cxDBCheckBox49 : TcxDBCheckBox;
    cxDBCheckBox50 : TcxDBCheckBox;
    cxDBCheckBox51 : TcxDBCheckBox;
    cxGroupBox15 : TcxGroupBox;
    cxDBCheckBox52 : TcxDBCheckBox;
    cxDBCheckBox53 : TcxDBCheckBox;
    cxDBCheckBox54 : TcxDBCheckBox;
    cxDBCheckBox55 : TcxDBCheckBox;
    cxGroupBox16 : TcxGroupBox;
    cxDBCheckBox56 : TcxDBCheckBox;
    cxDBCheckBox57 : TcxDBCheckBox;
    cxDBCheckBox58 : TcxDBCheckBox;
    cxDBCheckBox59 : TcxDBCheckBox;
    cxGroupBox17 : TcxGroupBox;
    cxDBCheckBox60 : TcxDBCheckBox;
    cxDBCheckBox61 : TcxDBCheckBox;
    cxDBCheckBox62 : TcxDBCheckBox;
    cxDBCheckBox63 : TcxDBCheckBox;
    cxGroupBox18 : TcxGroupBox;
    cxDBCheckBox64 : TcxDBCheckBox;
    cxDBCheckBox65 : TcxDBCheckBox;
    cxDBCheckBox66 : TcxDBCheckBox;
    cxDBCheckBox67 : TcxDBCheckBox;
    cxGroupBox19 : TcxGroupBox;
    cxDBCheckBox68 : TcxDBCheckBox;
    cxDBCheckBox69 : TcxDBCheckBox;
    cxDBCheckBox70 : TcxDBCheckBox;
    cxDBCheckBox71 : TcxDBCheckBox;
    cxGroupBox20 : TcxGroupBox;
    cxDBCheckBox72 : TcxDBCheckBox;
    cxDBCheckBox73 : TcxDBCheckBox;
    cxDBCheckBox74 : TcxDBCheckBox;
    cxDBCheckBox75 : TcxDBCheckBox;
    cxGroupBox21 : TcxGroupBox;
    cxDBCheckBox76 : TcxDBCheckBox;
    cxDBCheckBox77 : TcxDBCheckBox;
    cxDBCheckBox78 : TcxDBCheckBox;
    cxDBCheckBox79 : TcxDBCheckBox;
    cxGroupBox22 : TcxGroupBox;
    cxDBCheckBox80 : TcxDBCheckBox;
    cxDBCheckBox81 : TcxDBCheckBox;
    cxDBCheckBox82 : TcxDBCheckBox;
    cxDBCheckBox83 : TcxDBCheckBox;
    cxGroupBox23 : TcxGroupBox;
    cxDBCheckBox84 : TcxDBCheckBox;
    cxDBCheckBox85 : TcxDBCheckBox;
    cxDBCheckBox86 : TcxDBCheckBox;
    cxDBCheckBox87 : TcxDBCheckBox;
    cxGroupBox24 : TcxGroupBox;
    cxDBCheckBox88 : TcxDBCheckBox;
    cxDBCheckBox89 : TcxDBCheckBox;
    cxDBCheckBox90 : TcxDBCheckBox;
    cxDBCheckBox91 : TcxDBCheckBox;
    cxGroupBox25 : TcxGroupBox;
    cxDBCheckBox92 : TcxDBCheckBox;
    cxDBCheckBox93 : TcxDBCheckBox;
    cxDBCheckBox94 : TcxDBCheckBox;
    cxDBCheckBox95 : TcxDBCheckBox;
    cxGroupBox26 : TcxGroupBox;
    cxDBCheckBox96 : TcxDBCheckBox;
    cxDBCheckBox97 : TcxDBCheckBox;
    cxDBCheckBox98 : TcxDBCheckBox;
    cxDBCheckBox99 : TcxDBCheckBox;
    tabБухгалтерия : TcxTabSheet;
    cxGroupBox27 : TcxGroupBox;
    cxDBCheckBox100 : TcxDBCheckBox;
    cxPageControl1 : TcxPageControl;
    cxTabSheet1 : TcxTabSheet;
    cxGroupBox28 : TcxGroupBox;
    cxDBCheckBox101 : TcxDBCheckBox;
    cxDBCheckBox102 : TcxDBCheckBox;
    cxDBCheckBox103 : TcxDBCheckBox;
    cxDBCheckBox104 : TcxDBCheckBox;
    cxGroupBox29 : TcxGroupBox;
    cxDBCheckBox106 : TcxDBCheckBox;
    cxDBCheckBox108 : TcxDBCheckBox;
    cxGroupBox30 : TcxGroupBox;
    cxDBCheckBox110 : TcxDBCheckBox;
    cxDBCheckBox112 : TcxDBCheckBox;
    cxGroupBox31 : TcxGroupBox;
    cxDBCheckBox105 : TcxDBCheckBox;
    cxPageControl2 : TcxPageControl;
    cxTabSheet2 : TcxTabSheet;
    cxGroupBox32 : TcxGroupBox;
    cxDBCheckBox13 : TcxDBCheckBox;
    cxDBCheckBox15 : TcxDBCheckBox;
    cxDBCheckBox17 : TcxDBCheckBox;
    cxDBCheckBox18 : TcxDBCheckBox;
    cxGroupBox35 : TcxGroupBox;
    cxDBCheckBox111 : TcxDBCheckBox;
    cxGroupBox34 : TcxGroupBox;
    cxDBCheckBox107 : TcxDBCheckBox;
    cxDBCheckBox109 : TcxDBCheckBox;
    tabТаможня : TcxTabSheet;
    cxGroupBox33 : TcxGroupBox;
    cxDBCheckBox19 : TcxDBCheckBox;
    cxGroupBox36 : TcxGroupBox;
    cxDBCheckBox20 : TcxDBCheckBox;
    cxDBCheckBox113 : TcxDBCheckBox;
    cxDBCheckBox114 : TcxDBCheckBox;
    cxDBCheckBox115 : TcxDBCheckBox;
    cxGroupBox37 : TcxGroupBox;
    cxDBCheckBox116 : TcxDBCheckBox;
    cxDBCheckBox117 : TcxDBCheckBox;
    cxDBCheckBox118 : TcxDBCheckBox;
    cxDBCheckBox119 : TcxDBCheckBox;
    cxDBCheckBox120 : TcxDBCheckBox;
    cxDBCheckBox121 : TcxDBCheckBox;
    cxDBCheckBox122 : TcxDBCheckBox;
    cxDBCheckBox123 : TcxDBCheckBox;
  private
    { Private declarations }
  public
    procedure ShowAccess;
    { Public declarations }
  end;
implementation
{$R *.dfm}

uses
  UDataModule1;
procedure TFrameAccess.ShowAccess;
begin
  QueryRole.Open; // TODO -cMM: TFrameAccess.ShowAccess default body inserted
  QueryAccess.Open;
end;
end.
