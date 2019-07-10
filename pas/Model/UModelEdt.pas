unit UModelEdt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Uni;

type
  TModelEdt = class(TForm)
  private
    { Private declarations }
    FQuerySender : TUniQuery;
    FIsNew : boolean;
    FIsSave : boolean;
    FQueryEdit : TUniQuery;
    procedure CloseChild(Sender : TObject; var Action : TCloseAction);

  public
    { Public declarations }
    procedure AssignQuery(AQuerySource : TUniQuery; ADataSourceDest : TUniDataSource);

    property QuerySender : TUniQuery read FQuerySender write FQuerySender;
    property IsNew : boolean read FIsNew write FIsNew;
    property IsSave : boolean read FIsSave write FIsSave;
    property QueryEdit : TUniQuery read FQueryEdit write FQueryEdit;
    procedure init; virtual; abstract;
  end;

var
  ModelEdt : TModelEdt;

implementation

uses
  Data.DB;

{$R *.dfm}

{ TModelEdt }

procedure TModelEdt.CloseChild(Sender : TObject; var Action : TCloseAction);
begin
  if IsSave = true then
  begin
    if IsNew = false then
      QuerySender.RefreshRecord() else QuerySender.Refresh();
  end else QuerySender.Cancel();
  Action := caFree;
  Self := nil;

end;


procedure TModelEdt.AssignQuery(AQuerySource : TUniQuery; ADataSourceDest : TUniDataSource);
var
  i : integer;
  fld : TField;
begin
  Self.OnClose := CloseChild;
  self.QueryEdit := TUniQuery.Create(nil);
  self.QueryEdit.Connection := AQuerySource.Connection;
  self.QueryEdit.SQL.Text := AQuerySource.SQL.Text;
  if self.isNew = false then
    self.QueryEdit.AddWhere('id=' + AQuerySource.FieldByName('id').AsString)
  else
    self.QueryEdit.AddWhere('id=-1');
  for i := 0 to AQuerySource.Fields.Count - 1 do
  begin
    case AQuerySource.Fields[i].DataType of
      ftString : fld := TStringField.Create(self);
      ftInteger : fld := TIntegerField.Create(self);
      ftBoolean : fld := TBooleanField.Create(self);
      ftDate : fld := TDateField.Create(self);
      ftDateTime : fld := TDateTimeField.Create(self);
      ftSmallint : fld := TSmallintField.Create(self);
      ftCurrency : fld := TCurrencyField.Create(self);
      ftMemo : fld := TMemoField.Create(self);
    end;
    fld.Size := AQuerySource.Fields[i].Size;
    if AQuerySource.Fields[i].FieldKind = fkLookup then
    begin
      fld.FieldKind := fkLookup;
      fld.LookupResultField := AQuerySource.Fields[i].LookupResultField;
      fld.KeyFields := AQuerySource.Fields[i].KeyFields;
      fld.Lookup := true;
      fld.LookupKeyFields := AQuerySource.Fields[i].LookupKeyFields;
      fld.LookupDataSet := AQuerySource.Fields[i].LookupDataSet;
    end;
    fld.FieldName := AQuerySource.Fields[i].FieldName;
    fld.DisplayLabel := AQuerySource.Fields[i].DisplayLabel;
    fld.name := AQuerySource.Fields[i].name + 'Edt';
    fld.DataSet := self.QueryEdit;
  end;
  self.QueryEdit.FieldDefs.UpDate;
  ADataSourceDest.DataSet := self.QueryEdit;
  self.QueryEdit.UpdatingTable := self.QuerySender.UpdatingTable;
  self.QueryEdit.Open;
  if self.isNew = true then
    self.QueryEdit.Insert
  else
    self.QueryEdit.Edit;
end;

end.
