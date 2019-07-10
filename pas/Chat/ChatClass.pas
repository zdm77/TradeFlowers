unit ChatClass;
interface
uses Dialogs, SysUtils, Uni;
Type
  TChat = class(TObject)
  private
    Connection : TUniConnection;
    // �������������
    Query : TUniQuery;
    // ���������� ��� ������ ������
    ConnectStr : string;
    ChatDataBasePublic : string;
    // ����� ��� ������ (��� ����)
    ChatDataBasePrivate : string;
    // ����� ��� ������ (������)
    MaxPageSizeForBasePublic : Integer;
    // ����. ������� ��� (��� ����)
    MaxPageSizeForBasePrivate : Integer;
    // ����. ������� ��� (��� ����)
    procedure Update; overload;
    procedure Delete; overload;
    procedure Update(UserID : Integer); overload;
    procedure Delete(UserID : Integer); overload;
  public
    constructor Create;
    destructor Destroy; override;
    procedure SentMessagePublic(Message : string); // ��c����� ��������� (��� ����)
    procedure SentMessagePrivate(Message : string; UserID : Integer); // ��c����� ��������� (������)
    function GetMessagePublic(MaxPageSizeForUser : Integer) : string; // �������� ��������� (��� ����)
    function GetMessagePrivate(MaxPageSizeForUser : Integer; UserID : Integer) : string; // �������� ��������� (������)
    procedure Open;
    procedure Close;
  published
    property ConnectionString : string read ConnectStr write ConnectStr;
    property DataBasePublic : string read ChatDataBasePublic
      write ChatDataBasePublic;
    property DataBasePrivate : string read ChatDataBasePrivate
      write ChatDataBasePrivate;
    property PageSizeForBasePublic : Integer read MaxPageSizeForBasePublic
      write MaxPageSizeForBasePublic;
    property PageSizeForBasePrivate : Integer read MaxPageSizeForBasePrivate
      write MaxPageSizeForBasePrivate;
  end;
implementation
end.
