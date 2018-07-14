unit ChatClass;

interface

uses Dialogs, SysUtils, Uni;

Type
  TChat = class(TObject)
  private
    Connection: TUniConnection; // Подсоединение
    Query: TUniQuery; // Переменная для набора данных
    ConnectStr: string;
    ChatDataBasePublic: string; // Имена баз данных (Для всех)
    ChatDataBasePrivate: string; // Имена баз данных (Приват)
    MaxPageSizeForBasePublic: Integer; // Макс. записей для (Для всех)
    MaxPageSizeForBasePrivate: Integer; // Макс. записей для (Для всех)
    procedure Update; overload;
    procedure Delete; overload;
    procedure Update(UserID: Integer); overload;
    procedure Delete(UserID: Integer); overload;
  public
    constructor Create;
    destructor Destroy; override;
    procedure SentMessagePublic(Message: string);
    // Поcылаем сообщение (Для всех)
    procedure SentMessagePrivate(Message: string; UserID: Integer);
    // Поcылаем сообщение (Приват)
    function GetMessagePublic(MaxPageSizeForUser: Integer): string;
    // Получаем сообщение (Для всех)
    function GetMessagePrivate(MaxPageSizeForUser: Integer; UserID: Integer)
      : string; // Получаем сообщение (Приват)
    procedure Open;
    procedure Close;
  published
    property ConnectionString: string read ConnectStr write ConnectStr;
    property DataBasePublic: string read ChatDataBasePublic
      write ChatDataBasePublic;
    property DataBasePrivate: string read ChatDataBasePrivate
      write ChatDataBasePrivate;
    property PageSizeForBasePublic: Integer read MaxPageSizeForBasePublic
      write MaxPageSizeForBasePublic;
    property PageSizeForBasePrivate: Integer read MaxPageSizeForBasePrivate
      write MaxPageSizeForBasePrivate;
  end;

implementation

end.
