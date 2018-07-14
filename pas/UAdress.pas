unit UAdress;

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
  Data.DB,
  MemDS,
  DBAccess,
  Uni,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  cxContainer,
  cxEdit,
  dxSkinsCore,

  cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit,
  cxLookupEdit,
  cxDBLookupEdit,
  cxDBLookupComboBox,
  Vcl.StdCtrls,
  UFrameSave,
  Vcl.Grids,
  Vcl.DBGrids,
  cxGroupBox,
  Menus,
  cxButtons,

  dxSkinDevExpressStyle,

   dxSkinsDefaultPainters;

type
  TFAddress = class(TForm)
    FrameSave1: TFrameSave;
    QueryCity: TUniQuery;
    dsCity: TDataSource;
    QueryStreet: TUniQuery;
    dsStreet: TDataSource;
    QueryRegion: TUniQuery;
    dsRegion: TDataSource;
    Group1: TcxGroupBox;
    edtCity: TcxLookupComboBox;
    edtStreet: TcxLookupComboBox;
    edtRegion: TcxLookupComboBox;
    edtHome: TcxTextEdit;
    edtKorp: TcxTextEdit;
    edtKv: TcxTextEdit;
    lblRegion: TLabel;
    lblCity: TLabel;
    lblStreet: TLabel;
    lblHome: TLabel;
    lblKorp: TLabel;
    lblKv: TLabel;
    lblCountry: TLabel;
    edtCountry: TcxLookupComboBox;
    QueryCountry: TUniQuery;
    dsCountry: TDataSource;
    btnAddCountry: TcxButton;
    btnAddRegion: TcxButton;
    Query1: TUniQuery;
    btnAddCity: TcxButton;
    btnAddStreet: TcxButton;
    btnEdtCountry: TcxButton;
    btnEdtCity: TcxButton;
    btnEdtStreet: TcxButton;
    btnEditRegion: TcxButton;
    edtIndex: TcxTextEdit;
    Label1: TLabel;
    procedure btnAddCityClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtCityExit(Sender: TObject);
    procedure edtCityKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt1PropertiesCloseUp(Sender: TObject);
    procedure edtCityPropertiesEditValueChanged(Sender: TObject);
    procedure edtCountryExit(Sender: TObject);
    procedure edtRegionExit(Sender: TObject);
    procedure edtRegionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtRegionPropertiesEditValueChanged(Sender: TObject);
    procedure FrameSave1btnSaveClick(Sender: TObject);
    procedure edtCountryPropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAddCountryClick(Sender: TObject);
    procedure edtCountryKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnAddRegionClick(Sender: TObject);
    procedure btnAddStreetClick(Sender: TObject);
    procedure edtCityKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtCountryKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtStreetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtStreetKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtStreetPropertiesEditValueChanged(Sender: TObject);
    procedure btnEdtCountryClick(Sender: TObject);
    procedure btnEdtCityClick(Sender: TObject);
    procedure btnEdtStreetClick(Sender: TObject);
    procedure btnEditRegionClick(Sender: TObject);
  private
    { Private declarations }
  public
  var
    IDCountry, IDCity, IDStreet, IDRegion: Integer;
    IDHome, IDKorpus, IDKvartira, IndexA: string;
    s_field_name, s_order: string;
    resultAddres: string;
    procedure EnableSave;
    procedure ShowCity(id_locate: Integer = 0);
    procedure ShowCountry(id_locate: Integer = 0);
    procedure ShowRegions(id_locate: Integer = 0);
    procedure ShowStreet(id_locate: Integer = 0);
    function Sovpad(s_table: string): Boolean;
    { Public declarations }
  end;

var
  FAddress: TFAddress;

implementation

{$R *.dfm}

uses
  UDataModule1,
  UNewUniName,
  PGSQL,
  UPasswd;

procedure TFAddress.btnAddCityClick(Sender: TObject);
var
  id: Integer;
begin
  Application.CreateForm(TFNewUniName, FNewUniName);
  with FNewUniName do
  begin
    FrameUniName1.chkUseName.Visible := false;
    s_focus := 1;
    ShowModal;
    if FrameSave1.id_save = True then
    begin
      //
      with Query1 do
      begin
        Close;
        with FrameUniName1 do
        begin
          sql.Text :=
            'select id from города where UPPER(name)=:name or UPPER(uni_name)=:uni_name '
            + ' or UPPER(reg_name)=:reg_name and код_региона=:код_региона';
          ParamByName('код_региона').AsInteger := edtRegion.EditValue;
          ParamByName('name').AsString := AnsiUpperCase(edtName.Text);
          ParamByName('uni_name').AsString := AnsiUpperCase(edtUniName.Text);
          ParamByName('reg_name').AsString := AnsiUpperCase(edtRegName.Text);
          Open;
        end;
        if Query1.Fields[0].AsString <> '' then
          id := Query1.Fields[0].AsInteger
        else
        begin
          { совпадения }
          Close;
          id := PGSQL.NewID('города_id_seq');
          Close;
          sql.Text :=
            'INSERT INTO "public"."города"(id, "код_страны", "код_региона",' +
            'name, uni_name, reg_name) VALUES (:id, :код_страны, :код_региона,'
            + ':name, :uni_name, :reg_name)';
          ParamByName('id').AsInteger := id;
          ParamByName('код_страны').AsInteger := edtCountry.EditValue;
          if edtRegion.Text <> '' then
            ParamByName('код_региона').AsInteger := edtRegion.EditValue;
          with FrameUniName1 do
          begin
            ParamByName('name').AsString :=
              AnsiUpperCase(Copy(edtName.Text, 1, 1)) + Copy(edtName.Text, 2,
              length(edtName.Text));
            ParamByName('uni_name').AsString :=
              AnsiUpperCase(Copy(edtUniName.Text, 1, 1)) +
              Copy(edtUniName.Text, 2, length(edtUniName.Text));
            ParamByName('reg_name').AsString :=
              AnsiUpperCase(Copy(edtRegName.Text, 1, 1)) +
              Copy(edtRegName.Text, 2, length(edtRegName.Text));
          end;
          ExecSQL;
        end;
        ShowCity(id);
        edtStreet.SetFocus;
      end;
    end;
  end;
end;

procedure TFAddress.FormCreate(Sender: TObject);
begin
  // with DM1.db2 do
  // begin
  // Database := ExtractFileDir(Application.ExeName) + '.\db\kladr.accdb';
  // Connected := True;
  // end;
end;

procedure TFAddress.btnAddCountryClick(Sender: TObject);
var
  id: Integer;
begin
  Application.CreateForm(TFNewUniName, FNewUniName);
  with FNewUniName do
  begin
    FrameUniName1.chkUseName.Visible := false;
    s_focus := 1;
    ShowModal;
    if FrameSave1.id_save = True then
    begin
      with Query1 do
      begin
        { совпадения }
        Close;
        with FrameUniName1 do
        begin
          sql.Text :=
            'select id from страны where UPPER(name)=:name or UPPER(uni_name)=:uni_name '
            + ' or UPPER(reg_name)=:reg_name';
          ParamByName('name').AsString := AnsiUpperCase(edtName.Text);
          ParamByName('uni_name').AsString := AnsiUpperCase(edtUniName.Text);
          ParamByName('reg_name').AsString := AnsiUpperCase(edtRegName.Text);
          Open;
        end;
        if Query1.Fields[0].AsString <> '' then
          id := Query1.Fields[0].AsInteger
        else
        begin
          Close;
          id := PGSQL.NewID('страны_id_seq');
          Close;
          sql.Text :=
            'INSERT INTO "public"."страны"(id, name, uni_name, reg_name' +
            ') VALUES (:id, :name, :uni_name, :reg_name) ';
          ParamByName('id').AsInteger := id;
          with FrameUniName1 do
          begin
            ParamByName('name').AsString :=
              AnsiUpperCase(Copy(edtName.Text, 1, 1)) + Copy(edtName.Text, 2,
              length(edtName.Text));
            ParamByName('uni_name').AsString :=
              AnsiUpperCase(Copy(edtUniName.Text, 1, 1)) +
              Copy(edtUniName.Text, 2, length(edtUniName.Text));
            ParamByName('reg_name').AsString :=
              AnsiUpperCase(Copy(edtRegName.Text, 1, 1)) +
              Copy(edtRegName.Text, 2, length(edtRegName.Text));
          end;
          ExecSQL;
        end;
        ShowCountry(id);
        edtRegion.SetFocus;
      end;
    end;
  end;
end;

procedure TFAddress.btnAddRegionClick(Sender: TObject);
var
  id: Integer;
begin
  Application.CreateForm(TFNewUniName, FNewUniName);
  with FNewUniName do
  begin
    FrameUniName1.chkUseName.Visible := false;
    s_focus := 1;
    ShowModal;
    if FrameSave1.id_save = True then
    begin
      //
      with Query1 do
      begin
        { совпадения }
        with FrameUniName1 do
        begin
          sql.Text :=
            'select id from регионы where UPPER(name)=:name or UPPER(uni_name)=:uni_name '
            + ' or UPPER(reg_name)=:reg_name and код_страны=:код_страны';
          ParamByName('код_страны').AsInteger := edtCountry.EditValue;
          ParamByName('name').AsString := AnsiUpperCase(edtName.Text);
          ParamByName('uni_name').AsString := AnsiUpperCase(edtUniName.Text);
          ParamByName('reg_name').AsString := AnsiUpperCase(edtRegName.Text);
          Open;
        end;
        if Query1.Fields[0].AsString <> '' then
          id := Query1.Fields[0].AsInteger
        else
        begin
          Close;
          id := PGSQL.NewID('регионы_id_seq');
          Close;
          sql.Text := 'INSERT INTO "public"."регионы"(id, "код_страны", name,' +
            'uni_name, reg_name) VALUES (:id, :код_страны, :name, :uni_name,' +
            ' :reg_name)';
          ParamByName('id').AsInteger := id;
          ParamByName('код_страны').AsInteger := edtCountry.EditValue;
          with FrameUniName1 do
          begin
            ParamByName('name').AsString :=
              AnsiUpperCase(Copy(edtName.Text, 1, 1)) + Copy(edtName.Text, 2,
              length(edtName.Text));
            ParamByName('uni_name').AsString :=
              AnsiUpperCase(Copy(edtUniName.Text, 1, 1)) +
              Copy(edtUniName.Text, 2, length(edtUniName.Text));
            ParamByName('reg_name').AsString :=
              AnsiUpperCase(Copy(edtRegName.Text, 1, 1)) +
              Copy(edtRegName.Text, 2, length(edtRegName.Text));
          end;
          ExecSQL;
        end;
        ShowRegions(id);
        edtCity.SetFocus;
      end;
    end;
  end;
end;

procedure TFAddress.btnAddStreetClick(Sender: TObject);
var
  id: Integer;
begin
  Application.CreateForm(TFNewUniName, FNewUniName);
  with FNewUniName do
  begin
    FrameUniName1.chkUseName.Visible := false;
    s_focus := 1;
    ShowModal;
    if FrameSave1.id_save = True then
    begin
      //
      with Query1 do
      begin
        { совпадения }
        with FrameUniName1 do
        begin
          sql.Text :=
            'select id from улицы where UPPER(name)=:name or UPPER(uni_name)=:uni_name '
            + ' or UPPER(reg_name)=:reg_name and код_города=:код_города';
          ParamByName('код_города').AsInteger := edtCity.EditValue;
          ParamByName('name').AsString := AnsiUpperCase(edtName.Text);
          ParamByName('uni_name').AsString := AnsiUpperCase(edtUniName.Text);
          ParamByName('reg_name').AsString := AnsiUpperCase(edtRegName.Text);
          Open;
        end;
        if Query1.Fields[0].AsString <> '' then
          id := Query1.Fields[0].AsInteger
        else
        begin
          Close;
          id := PGSQL.NewID('улицы_id_seq');
          Close;
          sql.Text :=
            'INSERT INTO "public"."улицы"(id, "код_страны", "код_региона", "код_города", name, uni_name,'
            + 'reg_name) VALUES (:id, :код_страны,:код_региона, :код_города, :name, :uni_name, :reg_name)';
          ParamByName('id').AsInteger := id;
          ParamByName('код_страны').AsInteger := edtCountry.EditValue;
          ParamByName('код_города').AsInteger := edtCity.EditValue;
          ParamByName('код_региона').AsInteger := edtRegion.EditValue;
          with FrameUniName1 do
          begin
            ParamByName('name').AsString :=
              AnsiUpperCase(Copy(edtName.Text, 1, 1)) + Copy(edtName.Text, 2,
              length(edtName.Text));
            ParamByName('uni_name').AsString :=
              AnsiUpperCase(Copy(edtUniName.Text, 1, 1)) +
              Copy(edtUniName.Text, 2, length(edtUniName.Text));
            ParamByName('reg_name').AsString :=
              AnsiUpperCase(Copy(edtRegName.Text, 1, 1)) +
              Copy(edtRegName.Text, 2, length(edtRegName.Text));
          end;
          ExecSQL;
          ShowStreet(id);
        end;
        edtHome.SetFocus;
      end;
    end;
  end;
end;

procedure TFAddress.btnEditRegionClick(Sender: TObject);
begin
  Application.CreateForm(TFNewUniName, FNewUniName);
  with FNewUniName do
  begin
    with FrameUniName1 do
    begin
      chkUseName.Visible := false;
      edtName.Text := QueryRegion.FieldByName('name').AsString;
      edtUniName.Text := QueryRegion.FieldByName('uni_name').AsString;
      edtRegName.Text := QueryRegion.FieldByName('reg_name').AsString;
    end;
    ShowModal;
    if FrameSave1.id_save = True then
    begin
      with Query1 do
      begin
        Close;
        sql.Text :=
          'UPDATE  "public"."регионы" SET name = :name, uni_name = :uni_name,' +
          'reg_name = :reg_name WHERE  id =' + IntToStr(edtRegion.EditValue);
        with FrameUniName1 do
        begin
          ParamByName('name').AsString := AnsiUpperCase(Copy(edtName.Text, 1, 1)
            ) + Copy(edtName.Text, 2, length(edtName.Text));
          ParamByName('uni_name').AsString :=
            AnsiUpperCase(Copy(edtUniName.Text, 1, 1)) +
            Copy(edtUniName.Text, 2, length(edtUniName.Text));
          ParamByName('reg_name').AsString :=
            AnsiUpperCase(Copy(edtRegName.Text, 1, 1)) +
            Copy(edtRegName.Text, 2, length(edtRegName.Text));
        end;
        ExecSQL;
        QueryRegion.Refresh;
      end;
    end;
  end;
end;

procedure TFAddress.btnEdtCityClick(Sender: TObject);
begin
  Application.CreateForm(TFNewUniName, FNewUniName);
  with FNewUniName do
  begin
    with FrameUniName1 do
    begin
      chkUseName.Visible := false;
      edtName.Text := QueryCity.FieldByName('name').AsString;
      edtUniName.Text := QueryCity.FieldByName('uni_name').AsString;
      edtRegName.Text := QueryCity.FieldByName('reg_name').AsString;
    end;
    ShowModal;
    if FrameSave1.id_save = True then
    begin
      with Query1 do
      begin
        Close;
        sql.Text := 'UPDATE "public"."города" SET "код_страны" =' +
          IntToStr(edtCountry.EditValue) + ', "код_региона" = :код_региона,' +
          ' name = :name, uni_name = :uni_name, reg_name = :reg_name WHERE id ='
          + QueryCity.FieldByName('id').AsString;
        with FrameUniName1 do
        begin
          ParamByName('код_региона').AsInteger := edtRegion.EditValue;
          ParamByName('name').AsString := AnsiUpperCase(Copy(edtName.Text, 1, 1)
            ) + Copy(edtName.Text, 2, length(edtName.Text));
          ParamByName('uni_name').AsString :=
            AnsiUpperCase(Copy(edtUniName.Text, 1, 1)) +
            Copy(edtUniName.Text, 2, length(edtUniName.Text));
          ParamByName('reg_name').AsString :=
            AnsiUpperCase(Copy(edtRegName.Text, 1, 1)) +
            Copy(edtRegName.Text, 2, length(edtRegName.Text));
        end;
        ExecSQL;
        QueryCity.Refresh;
        edtStreet.SetFocus;
      end;
    end;
  end;
end;

procedure TFAddress.btnEdtCountryClick(Sender: TObject);
begin
  Application.CreateForm(TFNewUniName, FNewUniName);
  with FNewUniName do
  begin
    with FrameUniName1 do
    begin
      chkUseName.Visible := false;
      edtName.Text := QueryCountry.FieldByName('name').AsString;
      edtUniName.Text := QueryCountry.FieldByName('uni_name').AsString;
      edtRegName.Text := QueryCountry.FieldByName('reg_name').AsString;
    end;
    ShowModal;
    if FrameSave1.id_save = True then
    begin
      with Query1 do
      begin
        Close;
        sql.Text :=
          'UPDATE  "public"."страны" SET name = :name, uni_name = :uni_name,' +
          'reg_name = :reg_name WHERE  id =' + QueryCountry.FieldByName
          ('id').AsString;
        with FrameUniName1 do
        begin
          ParamByName('name').AsString := AnsiUpperCase(Copy(edtName.Text, 1, 1)
            ) + Copy(edtName.Text, 2, length(edtName.Text));
          ParamByName('uni_name').AsString :=
            AnsiUpperCase(Copy(edtUniName.Text, 1, 1)) +
            Copy(edtUniName.Text, 2, length(edtUniName.Text));
          ParamByName('reg_name').AsString :=
            AnsiUpperCase(Copy(edtRegName.Text, 1, 1)) +
            Copy(edtRegName.Text, 2, length(edtRegName.Text));
        end;
        ExecSQL;
        QueryCountry.Refresh;
        edtCity.SetFocus;
      end;
    end;
  end;
end;

procedure TFAddress.btnEdtStreetClick(Sender: TObject);
begin
  Application.CreateForm(TFNewUniName, FNewUniName);
  with FNewUniName do
  begin
    with FrameUniName1 do
    begin
      chkUseName.Visible := false;
      edtName.Text := QueryStreet.FieldByName('name').AsString;
      edtUniName.Text := QueryStreet.FieldByName('uni_name').AsString;
      edtRegName.Text := QueryStreet.FieldByName('reg_name').AsString;
    end;
    ShowModal;
    if FrameSave1.id_save = True then
    begin
      with Query1 do
      begin
        Close;
        sql.Text := 'UPDATE "public"."улицы"  SET "код_страны" =' +
          IntToStr(edtCountry.EditValue) + ',  "код_города" = ' +
          IntToStr(edtCity.EditValue) + ',  код_региона=' +
          IntToStr(edtRegion.EditValue) +
          ', name = :name, uni_name = :uni_name, reg_name = :reg_name' +
          ' WHERE id =' + QueryStreet.FieldByName('id').AsString;
        with FrameUniName1 do
        begin
          ParamByName('name').AsString := AnsiUpperCase(Copy(edtName.Text, 1, 1)
            ) + Copy(edtName.Text, 2, length(edtName.Text));
          ParamByName('uni_name').AsString :=
            AnsiUpperCase(Copy(edtUniName.Text, 1, 1)) +
            Copy(edtUniName.Text, 2, length(edtUniName.Text));
          ParamByName('reg_name').AsString :=
            AnsiUpperCase(Copy(edtRegName.Text, 1, 1)) +
            Copy(edtRegName.Text, 2, length(edtRegName.Text));
        end;
        ExecSQL;
        QueryStreet.Refresh;
        edtHome.SetFocus;
      end;
    end;
  end;
end;

procedure TFAddress.edt1PropertiesCloseUp(Sender: TObject);
begin
  // street.Active := false;
  // kladr_gorod.Active := false;
  // // проверяем, если был выбран не город (населенный пункт),
  // // то формируем запрос на выбор населенного пункта
  // if copy(raion_source.DataSet.FieldByName('CODE').Value, 3, 3) <> '000' then
  // begin
  // // формируем запрос с параметрами на выбор населенного пункта
  // kladr_gorod.SQL.Clear;
  // kladr_gorod.Params.AddParameter.Name := 'a';
  // kladr_gorod.Params.ParamByName('a').DataType := ftWideString;
  // kladr_gorod.Params.AddParameter.Name := 'b';
  // kladr_gorod.Params.ParamByName('b').DataType := ftWideString;
  // kladr_gorod.SQL.Add('SELECT *');
  // kladr_gorod.SQL.Add('FROM KLADR');
  // kladr_gorod.SQL.Add
  // ('WHERE ((KLADR.CODE Like :a And Not ((KLADR.CODE) Like :b)));');
  // // в параметре 'а' выбираем по коду района все населенные пункты
  // kladr_gorod.Params.ParamByName('a').Value :=
  // copy(raion_source.DataSet.FieldByName('CODE').Value, 1, 5) + '________';
  // // параметр 'b' нужен для исключения из списка самого района
  // kladr_gorod.Params.ParamByName('b').Value :=
  // copy(raion_source.DataSet.FieldByName('CODE').Value, 1, 5) + '000000__';
  // // активируем запрос
  // kladr_gorod.Active := true;
  // end;
  // // формируем запрос с параметрами на выбор названия улицы
  // street.Active := false;
  // street.SQL.Clear;
  // street.Params.AddParameter.Name := 'a';
  // street.Params.ParamByName('a').DataType := ftWideString;
  // street.SQL.Add('SELECT *');
  // street.SQL.Add('FROM STREET');
  // street.SQL.Add('WHERE (((STREET.CODE) Like :a));');
  // // в параметре 'а' выбираем по коду населенного пункта все улицы в нем
  // street.Params.ParamByName('a').Value :=
  // copy(raion_source.DataSet.FieldByName('CODE').Value, 1, 11) + '______';
  // // активируем запрос
  // street.Active := true;
end;

procedure TFAddress.edtCityExit(Sender: TObject);
begin
  // ShowStreet;
end;

procedure TFAddress.edtCityKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  // if Key = VK_RETURN then
  // begin
  // edtStreet.SetFocus;
  // ShowStreet;
  // end;
  if edtCountry.Text <> '' then
    if Key = VK_INSERT then
      btnAddCityClick(Sender);
end;

procedure TFAddress.edtCityKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if edtCity.Text = '' then
    edtStreet.EditValue := 0;
  EnableSave;
end;

procedure TFAddress.edtCityPropertiesEditValueChanged(Sender: TObject);
begin
  QueryCity.Locate('id', edtCity.EditValue, []);
  ShowStreet();
  EnableSave;
end;

procedure TFAddress.edtCountryExit(Sender: TObject);
begin
  // ShowRegions;
  // ShowCity();
end;

procedure TFAddress.edtCountryKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_INSERT then
    btnAddCountryClick(Sender);
end;

procedure TFAddress.edtCountryKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if edtCountry.Text = '' then
  begin
    edtStreet.EditValue := 0;
    edtCity.EditValue := 0;
  end;
  EnableSave;
end;

procedure TFAddress.edtCountryPropertiesEditValueChanged(Sender: TObject);
begin
  QueryCountry.Locate('id', edtCountry.EditValue, []);
  ShowRegions();
  // ShowCity();
  // ShowStreet();
  EnableSave;
end;

procedure TFAddress.edtRegionExit(Sender: TObject);
begin
  // ShowCity;
end;

procedure TFAddress.edtRegionKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_INSERT then
    btnAddRegionClick(Sender);
  // if Key = VK_RETURN then
  // begin
  // edtCity.SetFocus;
  // ShowCity;
  // end;
end;

procedure TFAddress.edtRegionPropertiesEditValueChanged(Sender: TObject);
begin
  QueryRegion.Locate('id', edtRegion.EditValue, []);
  ShowCity();
  EnableSave;
end;

procedure TFAddress.edtStreetKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if edtCity.Text <> '' then
    if Key = VK_INSERT then
      btnAddStreetClick(Sender);
end;

procedure TFAddress.edtStreetKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  EnableSave;
end;

procedure TFAddress.edtStreetPropertiesEditValueChanged(Sender: TObject);
begin
  QueryStreet.Locate('id', edtStreet.EditValue, []);
  EnableSave;
end;

procedure TFAddress.EnableSave;
begin
  if edtCountry.Text <> '' then
  begin
    btnAddCity.Enabled := True;
    btnEdtCountry.Enabled := True;
  end
  else
  begin
    btnEdtCountry.Enabled := false;
    btnAddCity.Enabled := false;
    btnAddStreet.Enabled := false;
  end;
  if edtCity.Text <> '' then
  begin
    btnEdtCity.Enabled := True;
    btnAddStreet.Enabled := True;
  end
  else
  begin
    btnEdtCity.Enabled := false;
    btnAddStreet.Enabled := false;
  end;
  if edtStreet.Text <> '' then
  begin
    btnEdtStreet.Enabled := True;
  end
  else
  begin
    btnEdtStreet.Enabled := false;
  end;
  if (edtCountry.Text <> '') and (edtCity.Text <> '') and (edtRegion.Text <> '')
    and (edtStreet.Text <> '') then
    FrameSave1.btnSave.Enabled := True
  else
    FrameSave1.btnSave.Enabled := false;
end;

procedure TFAddress.FormShow(Sender: TObject);
begin
  if QueryRegion.Active = True then
    edtCity.SetFocus;
  if QueryCity.Active = True then
    edtStreet.SetFocus;
  case FPasswd.Lang of
    0:
      s_field_name := 'name';
    1:
      s_field_name := 'uni_name';
    2:
      s_field_name := 'reg_name';
  end;
  s_order := ' order by ' + s_field_name;
  edtCountry.Properties.ListFieldNames := s_field_name;
  edtCity.Properties.ListFieldNames := s_field_name;
  edtStreet.Properties.ListFieldNames := s_field_name;
  EnableSave;
  edtIndex.SetFocus;
end;

procedure TFAddress.FrameSave1btnSaveClick(Sender: TObject);
begin
  // IDCountry := edtCountry.EditValue;
  // IDCity := edtCity.EditValue;
  // IDRegion := edtRegion.EditValue;
  // IDStreet := edtStreet.EditValue;
  // IndexFact := edtIndex.Text;
  FrameSave1.btnSaveClick(Sender);
  Close;
end;

procedure TFAddress.ShowCity(id_locate: Integer = 0);
begin
  if edtCountry.Text <> '' then
  begin
    with QueryCity do
    begin
      Close;
      sql.Text := 'select * from города where код_страны=' +
        IntToStr(edtCountry.EditValue) + ' and код_региона=' +
        IntToStr(edtRegion.EditValue) + ' order by name';
      Open;
      if id_locate <> 0 then
        edtCity.EditValue := id_locate
      else
        edtCity.EditValue := Fields[0].AsInteger;
    end;
  end;
  // if QueryCity.Active = false then
  // begin
  // with QueryCity do
  // begin
  // Close;
  // SQL.Text := 'select * from geo_cities where socr NOT IN (:socr)';
  // ParamByName('socr').AsString := 'р-н';
  // if edtRegion.Text <> '' then
  // SQL.Add(' and region_id=' + QueryRegion.FieldByName('rid').AsString);
  // Open;
  // if id_locate <> 0 then
  // edtCountry.EditValue := id_locate;
  // end;
  // end;
end;

procedure TFAddress.ShowCountry(id_locate: Integer = 0);
begin
  with QueryCountry do
  begin
    Close;
    sql.Text := 'select * from страны  order by name';
    Open;
    if id_locate <> 0 then
      edtCountry.EditValue := id_locate
    else
      edtCountry.EditValue := Fields[0].AsInteger;
  end;
  EnableSave;
  // if QueryCountry.Active = false then
  // begin
  // with QueryCountry do
  // begin
  // Close;
  // SQL.Text := 'select * from country ';
  // Open;
  // if id_locate <> 0 then
  // edtCountry.EditValue := id_locate;
  // end;
  // end;
end;

procedure TFAddress.ShowRegions(id_locate: Integer = 0);
begin
  with QueryRegion do
  begin
    Close;
    sql.Text := 'select * from регионы where код_страны=' +
      IntToStr(edtCountry.EditValue) + ' order by name';
    Open;
    if id_locate <> 0 then
      edtRegion.EditValue := id_locate
    else
      edtRegion.EditValue := Fields[0].AsInteger;
  end;
  // if QueryRegion.Active = false then
  // begin
  // with QueryRegion do
  // begin
  // Close;
  // sql.Text := 'select * from geo_regions where country_id=' +
  // QueryCountry.Fields[0].AsString + '  order by name';
  // Open;
  // if id_locate <> 0 then
  // edtRegion.EditValue := id_locate;
  // end;
  // end;
end;

procedure TFAddress.ShowStreet(id_locate: Integer = 0);
begin
  // if QueryStreet.Active = false then
  // begin
  if edtCity.Text <> '' then
  begin
    with QueryStreet do
    begin
      Close;
      sql.Text := 'select * from улицы where код_страны=' +
        IntToStr(edtCountry.EditValue) + ' and код_города=' +
        IntToStr(edtCity.EditValue) + ' and код_региона=' +
        IntToStr(edtRegion.EditValue) + ' order by name';
      Open;
      if id_locate <> 0 then
        edtStreet.EditValue := id_locate
        // else
        // edtStreet.EditValue := Fields[0].AsInteger;
    end;
  end
  else
    QueryStreet.Close;
  // end;
end;

function TFAddress.Sovpad(s_table: string): Boolean;
begin
  with FNewUniName.FrameUniName1 do
  begin
  end;
end;

end.
