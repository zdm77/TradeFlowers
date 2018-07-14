unit UDataModule1;

interface

uses
  System.SysUtils,
  System.Classes,
  Data.DB,
  DBAccess,
  Uni,
  UniProvider,
  PostgreSQLUniProvider,
  MemDS,
  ODBCUniProvider,
  DBFUniProvider,
  AccessUniProvider,
  SQLiteUniProvider,
  DASQLMonitor,
  UniSQLMonitor,
  DADump,
  UniDump, dxmdaset, Bde.DBTables;

type
  TDM1 = class(TDataModule)
    db1: TUniConnection;
    Provider1: TPostgreSQLUniProvider;
    QueryGlobalUser: TUniQuery;
    dbUpd: TUniConnection;
    QueryUpd: TUniQuery;
    db2: TUniConnection;
    acsnprvdr1: TAccessUniProvider;
    QueryAcc: TUniQuery;
    QueryProductG: TUniQuery;
    dbLocal: TUniConnection;
    SQLiteUniProvider1: TSQLiteUniProvider;
    Query1: TUniQuery;
    QueryProductLocal: TUniQuery;
    Monotor1: TUniSQLMonitor;
    dxMemData1: TdxMemData;
    MFieldID: TIntegerField;
    MFieldName: TStringField;
    dxMemData1код_типа: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM1: TDM1;

implementation

{ %CLASSGROUP 'System.Classes.TPersistent' }
{$R *.dfm}

end.
