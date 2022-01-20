unit uDAOProducts;

interface

uses
  FireDAC.Comp.Client, Uproducts, datamodel;
type
  TDAOProduct = class
  private
    FQry : TFDQuery;
  public
    Constructor Create;
    Destructor Destroy; override;

    Function Save   (AProduct : Tproducts): Boolean;
    Function Delete (AProduct : Tproducts): Boolean;
    Function Update (AProduct : Tproducts): Boolean;

  end;

implementation

uses
  System.SysUtils;

{ TDAOProduct }

constructor TDAOProduct.Create;
begin
  FQry.Create(nil);
  FQry.Connection := dataModel.dmSales.FDConnectionSales;
  inherited;
end;

function TDAOProduct.Delete(AProduct: Tproducts): Boolean;
var
  SQL : string;
begin
  Fqry.Close;
  Fqry.SQL.Clear;
  Sql := ' DELETE FROM Products WHERE id = ' + AProduct.id.ToString;
  FQry.SQl.Add(Sql);
  FQry.ExecSQL;

  Result := FQry.RowsAffected < 0;

end;

destructor TDAOProduct.Destroy;
begin
  FreeAndNil(FQry);
  inherited;
end;

function TDAOProduct.Save(AProduct: Tproducts): Boolean;
var
  SQL : string;

begin
  Fqry.Close;
  Fqry.SQL.Clear;
  Sql := ' INSERT INTO Products         '      +
         '(ID, Name, Kind, Size, Price) '      +
         'VALUES( ' + AProduct.id.ToString     +    ','      +
                      QuotedStr(AProduct.name) +    ','      +
                      QuotedStr(AProduct.kind) +    ','      +
                      AProduct.size.ToString   +    ','      +
                      Aproduct.price.ToString  +    ')';
  FQry.SQL.Add(SQL);
  FQry.ExecSQL;
  Result := FQry.RowsAffected > 0;
end;

function TDAOProduct.Update(AProduct: Tproducts): Boolean;
Var
SQL : string;
begin
  FQry.Close;
  FQry.SQL.Clear;
  SQL := ' UPDATE Products ' +
         ' SET ID    =   '   + AProduct.id.ToString     +  ','  +
         '     NAME  = '     + QuotedStr(AProduct.name) +  ','  +
         '     KIND  = '     + QuotedStr(AProduct.kind) +  ','  +
         '     SIZE  = '     + AProduct.size.ToString   +  ','  +
         '     Price = '     + AProduct.price.ToString  +
         ' WHERE  ID = '     + AProduct.id.ToString;

  FQry.SQL.Add(SQL);
  FQry.ExecSQL;
  Result := FQry.RowsAffected < 0;    // Não sei se essa verificação está correta

end;

end.
