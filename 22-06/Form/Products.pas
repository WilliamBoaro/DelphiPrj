unit Products;

interface

uses
  FireDAC.Comp.Client, DataModel, Data.DB;


type
  Tproducts = class
  private
    FQry : TFDQuery;
    FName: String;
    FPrice: double;
    FID: integer;
    FKind: String;
    FSize: double;
    FMemTbl: TFDMemTable;
    procedure SetID(const Value: integer);
    procedure SetKind(const Value: String);
    procedure SetName(const Value: String);
    procedure SetPrice(const Value: double);
    procedure SetSize(const Value: double);
    function CheckRecordExist(const AID: Integer): Boolean;
    procedure SetMemTbl(const Value: TFDMemTable);
  public
    constructor Create;
    destructor Destroy; override;

    property ID : integer read FID write SetID;
    property Name : String read FName write SetName;
    property Size : double read FSize write SetSize;
    property Kind : String read FKind write SetKind;
    property Price : double read FPrice write SetPrice;
    property MemTbl : TFDMemTable read FMemTbl write SetMemTbl;

    function Save : boolean;
    function Delete : boolean;
    procedure preencheTabela;
    procedure FetchRecordByID;
  end;

implementation

uses
  System.SysUtils;

{ Tproducts }

function Tproducts.CheckRecordExist(const AID: Integer): Boolean;
begin
  FQry.Close;
  FQry.SQL.Clear;
  FQry.SQL.Add('Select ID From Customers where ID = ' + AID.ToString);
  FQry.Open;
  Result := FQry.FieldByName('ID').AsInteger > 0;
end;

constructor Tproducts.Create;
begin
  inherited;
  FQry := TFDQuery.Create(nil);
  FQry.Connection := dmDados.FDConnection1;
  MemTbl := TFDMemTable.Create(nil);
  preencheTabela;
end;

function Tproducts.Delete: boolean;
begin
  FQry.Close;
  FQry.SQL.Clear;
  FQry.SQL.Add('DELETE FROM Products WHERE ID = ' + FID.ToString);
  FQry.ExecSQL;
  Result := FQry.RowsAffected > 0;
end;

destructor Tproducts.Destroy;
begin
   FreeAndNil(FQry);
   inherited;
end;

procedure Tproducts.FetchRecordByID;
begin
  FQry.Close;
  FQry.SQL.Clear;
  FQry.SQL.Add('Select * From Products where ID = ' + FID.ToString);
  FQry.Open;

  if FQry.RecordCount > 0 then
  begin
    FName  := FQry.FieldByName('Name').AsString;
    FKind  := FQry.FieldByName('Kind').AsString;
    FPrice := StrToFloatDef(FQry.FieldByName('Price').AsString,0);
    FSize := StrToFloatDef(FQry.FieldByName('Size').AsString,0);

  end;

end;

procedure Tproducts.preencheTabela;
var
  SQL : string;
begin
  FQry.Close;
  FQry.SQL.Clear;
  SQL := 'SELECT * FROM Products';
  FQry.SQL.Add(SQL);
  FQry.Open;

  FMemTbl.Active := False;
  FMemTbl.FieldDefs.Clear;
  FMemTbl.FieldDefs.Add('ID'   , ftString, 10);
  FMemTbl.FieldDefs.Add('Name' , ftString, 200);
  FMemTbl.FieldDefs.Add('Kind' , ftString, 200);
  FMemTbl.FieldDefs.Add('Price', ftString, 200);
  FMemTbl.FieldDefs.Add('Size' , ftString, 200);

  FMemTbl.Active := True;

  FQry.First;
  while not FQry.Eof do
  begin
    FMemTbl.Insert;
    FMemTbl.FieldByName('ID').AsString    := FQry.FieldByName('ID').AsString;
    FMemTbl.FieldByName('Name').AsString  := FQry.FieldByName('Name').AsString;
    FMemTbl.FieldByName('Kind').AsString  := FQry.FieldByName('Kind').AsString;
    FMemTbl.FieldByName('Price').AsString := FQry.FieldByName('Price').AsString;
    FMemTbl.FieldByName('Size').AsString  := FQry.FieldByName('Size').AsString;
    FMemTbl.Post;

    FQry.Next;
  end;
end;

function Tproducts.Save: boolean;
var
  SQL : String;

begin
  if CheckRecordExist(FID) then

  begin
    FQry.Close;
    FQry.SQL.Clear;
         SQL := ' UPDATE products '  +
                ' SET ID        =  ' + FID.ToString      +  ',' +
                ' Name          =  ' + QuotedStr(FName)  +  ',' +
                ' Kind          =  ' + QuotedStr(FKind)  +  ',' +
                ' Price         =  ' + FPrice.ToString   +  ',' +
                ' Size          =  ' + FSize.ToString    +
                ' WHERE ID = ' +  FID.ToString;
  end
  else
  begin

  FQry.Close;
  FQry.SQL.Clear;

  SQL :=       'INSERT INTO products'            +
               '(ID, Name, Kind, Price, Size)'   +
               'VALUES (' + FID.ToString         + ',' +
                                QuotedStr(FName) + ',' +
                                QuotedStr(FKind) + ',' +
                                FPrice.ToString  + ',' +
                                FSize.ToString   + ')' ;


  FQry.SQL.Add(SQL);
  end;
  FQry.ExecSQL;
  Result := FQry.RowsAffected > 0;

end;

procedure Tproducts.SetID(const Value: integer);
begin
  FID := Value;
end;

procedure Tproducts.SetKind(const Value: String);
begin
  FKind := Value;
end;

procedure Tproducts.SetMemTbl(const Value: TFDMemTable);
begin
  FMemTbl := Value;
end;

procedure Tproducts.SetName(const Value: String);
begin
  FName := Value;
end;

procedure Tproducts.SetPrice(const Value: double);
begin
  FPrice := Value;
end;

procedure Tproducts.SetSize(const Value: double);
begin
  FSize := Value;
end;

end.
