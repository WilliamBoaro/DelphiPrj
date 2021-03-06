unit uDAOCustomer;

interface

uses UCustomer, FireDAC.Comp.Client;

type
  TDAOCustomer = class
  private
    FQry : TFDQuery;

  public
    Constructor create;
    Destructor Destroy; override;
    function Save(const ACustomer: Tcustomer): Boolean;
    procedure Delete(const ACustomer: Tcustomer);
  end;

implementation

uses
  System.SysUtils, dataModel;

{ TDAOCustomer }

constructor TDAOCustomer.create;
begin
  inherited;
   FQry := TFDQuery.Create(nil);
  FQry.Connection := dataModel.dmSales.FDConnectionSales;
end;

procedure TDAOCustomer.Delete(const ACustomer: Tcustomer);
begin
  FQry.Close;
  FQry.SQL.Clear;
  FQry.SQL.Add('DELETE FROM Customers WHERE ID = ' + ACustomer.ID.ToString);
  FQry.ExecSQL;
end;

destructor TDAOCustomer.Destroy;
begin
  FreeAndNil(FQRY);
  inherited;
end;

function TDAOCustomer.Save(const ACustomer: Tcustomer): Boolean;
var
  SQL : String;
begin
  Fqry.Close;
  fqry.SQL.Clear;
  SQL :=  'INSERT INTO Customers            '         +
          '(ID, Name, Address, City, Email)'          +
          'VALUES ( ' + ACustomer.ID.ToString         + ','  +
                        QuotedStr(ACustomer.name)     + ','  +
                        QuotedStr(ACustomer.Address)  + ','  +
                        QuotedStr(acustomer.City)     + ','  +
                        QuotedStr(Acustomer.Email)    + ')';
  Fqry.SQL.Add(SQL);
  Fqry.ExecSQL;
  Result := FQry.RowsAffected > 0;
end;

end.
