unit Uconnection;

interface

uses
  FireDAC.Comp.Client, UdataModel;
type
  Tconnection = class
  private
    Fqry: TFDQuery;
    Fcon: TdmLocadora;
    procedure Setcon(const Value: TdmLocadora);
    procedure Setqry(const Value: TFDQuery);
    public
    property  qry : TFDQuery read Fqry write Setqry;
    property con : TdmLocadora read Fcon write Setcon;

    Constructor create;
    Destructor  destroy ; override;

    procedure qryClear;

    function qryCommand (Asql : string) : boolean ;
    function queryExe (sql : string ) : boolean;



  end;

implementation

{ Tconnection }

constructor Tconnection.create;
begin
    qry := TFDQuery.Create(nil);
    FQry.Connection := dmLocadora.FDCLocadora;
    con := TdmLocadora(nil);
end;

destructor Tconnection.destroy;
begin
   qry.free;
   con.Free;
  inherited;
end;

procedure Tconnection.qryClear;
begin
  qry.close;
  qry.sql.clear;
end;

function Tconnection.qryCommand(Asql: string): boolean;
begin
  Fqry.Close;
  Fqry.SQL.Clear;
  fqry.SQL.Add(Asql);
  fqry.ExecSQL;
  Result := fqry.RowsAffected > 0;
end;

function Tconnection.queryExe(sql: string): boolean;
begin
  Fqry.Close;
  Fqry.SQL.Clear;
  fqry.SQL.Add(sql);
  fqry.ExecSQL;
  Result := fqry.RowsAffected > 0;
end;

procedure Tconnection.Setcon(const Value: TdmLocadora);
begin
  Fcon := Value;
end;

procedure Tconnection.Setqry(const Value: TFDQuery);
begin
  Fqry := Value;
end;

end.
