unit Customer;

interface

uses
  FireDAC.Comp.Client, DataModel, Products, Data.DB;

type
  Tcustomer = class

  private
    FQry: TFDQuery;
    FName: string;
    FEmail: string;
    FID: integer;
    FCity: string;
    FAddress: string;
    FMemTbl: TFDMemTable;
    procedure SetAddress(const Value: string);
    procedure SetCity(const Value: string);
    procedure SetEmail(const Value: string);
    procedure SetID(const Value: integer);
    procedure SetName(const Value: string);
    procedure allRecords;

    function CheckRecordExist(const AID: Integer): Boolean;
    procedure SetMemTbl(const Value: TFDMemTable);
  public
    constructor Create;
    destructor  Destroy; override;

    property ID: integer read FID write SetID;
    property Name: string read FName write SetName;
    property Address: string read FAddress write SetAddress;
    property City:  string read FCity write SetCity;
    property Email: string read FEmail write SetEmail;
    property MemTbl : TFDMemTable read FMemTbl write SetMemTbl;

    function Save: Boolean;
    function Delete: Boolean;
    procedure FetchRecordByID;

  end;

implementation

uses
  System.SysUtils;

{ Tcustomer }

procedure Tcustomer.allRecords;
var
  SQL : string;
begin
  FQry.Close;
  FQry.SQL.Clear;
  SQL := 'SELECT * FROM Customers';
  FQry.SQL.Add(SQL);
  FQry.Open;

  FMemTbl.Active := False;
  FMemTbl.FieldDefs.Clear;
  FMemTbl.FieldDefs.Add('ID',ftString , 10);
  FMemTbl.FieldDefs.Add('Name', ftString, 200);
  FMemTbl.FieldDefs.Add('Address', ftString, 200);
  FMemTbl.FieldDefs.Add('City', ftString, 200);
  FMemTbl.FieldDefs.Add('Email', ftString, 200);

  FMemTbl.Active := True;

  FQry.First;
  while not FQry.Eof do
  begin
    FMemTbl.Insert;
    FMemTbl.FieldByName('ID').AsString      := FQry.FieldByName('ID').AsString;
    FMemTbl.FieldByName('Name').AsString    := FQry.FieldByName('Name').AsString;
    FMemTbl.FieldByName('Address').AsString := FQry.FieldByName('Address').AsString;
    FMemTbl.FieldByName('City').AsString    := FQry.FieldByName('City').AsString;
    FMemTbl.FieldByName('Email').AsString   := fQry.FieldByName('Email').AsString;
    FMemTbl.Post;
    FQry.Next;


end;
end;

function Tcustomer.CheckRecordExist(const AID: Integer): Boolean;
begin
  FQry.Close;
  FQry.SQL.Clear;
  FQry.SQL.Add('Select ID From Customers where ID = ' + AID.ToString);
  FQry.Open;
  Result := FQry.FieldByName('ID').AsInteger > 0;
end;

constructor Tcustomer.Create;
begin
  inherited;
  FQry := TFDQuery.Create(nil);
  FQry.Connection := dmDados.FDConnection1;
  MemTbl := TFDMemTable.Create(nil);
  AllRecords;
end;

function Tcustomer.Delete: Boolean;
begin
  FQry.Close;
  FQry.SQL.Clear;
  FQry.SQL.Add('DELETE FROM Customers WHERE ID = ' + FID.ToString);
  FQry.ExecSQL;
  Result := FQry.RowsAffected > 0;
end;

destructor Tcustomer.Destroy;
begin
  FreeAndNil(FQry);
  inherited;
end;

procedure Tcustomer.FetchRecordByID;
begin
  FQry.Close;
  FQry.SQL.Clear;
  FQry.SQL.Add('Select * From Customers where ID = ' + FID.ToString);
  FQry.Open;

  if FQry.RecordCount > 0 then
  begin
    FName    := FQry.FieldByName('Name').AsString;
    FAddress := FQry.FieldByName('Address').AsString;
    FCity    := FQry.FieldByName('City').AsString;
    FEmail   := FQry.FieldByName('Email').AsString;
  end;
end;

function Tcustomer.Save: Boolean;
var
  SQL : String;
begin
  if CheckRecordExist(FID) then
  begin
    FQry.Close;
    FQry.SQL.Clear;

    SQL := ' UPDATE Customers ' +
           '    SET ID      = ' + FID.ToString        + ',' +
           '        Name    = ' + QuotedStr(FName)    + ',' +
           '        Address = ' + QuotedStr(FAddress) + ',' +
           '        City    = ' + QuotedStr(FCity)    + ',' +
           '        Email   = ' + QuotedStr(FEmail)   +
           '  WHERE ID = ' + FID.ToString;
    FQry.SQL.Add(SQL);
  end
  else
  begin
    FQry.Close;
    FQry.SQL.Clear;

    SQL := 'Insert into Customers' +
           ' (ID, Name, Address, City, Email)' +
           ' Values ( ' + FID.ToString        + ',' +
                          QuotedStr(FName)    + ',' +
                          QuotedStr(FAddress) + ',' +
                          QuotedStr(FCity)    + ',' +
                          QuotedStr(FEmail)   + ')';
    FQry.SQL.Add(SQL);
  end;

  FQry.ExecSQL;

  Result := FQry.RowsAffected > 0;
end;

procedure Tcustomer.SetAddress(const Value: string);
begin
  FAddress := Value;
end;

procedure Tcustomer.SetCity(const Value: string);
begin
  FCity := Value;
end;

procedure Tcustomer.SetEmail(const Value: string);
begin
  FEmail := Value;
end;

procedure Tcustomer.SetID(const Value: integer);
begin
  FID := Value;
end;

procedure Tcustomer.SetMemTbl(const Value: TFDMemTable);
begin
  FMemTbl := Value;
end;

procedure Tcustomer.SetName(const Value: string);
begin
  FName := Value;
end;

end.
