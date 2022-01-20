unit UgeneroFilme;



interface

uses
 udatamodel, FireDAC.Comp.Client, Uconnection, System.SysUtils;

type
  TgeneroFilme = class
  private
    Fgenero : string;
    Fid     : integer;
    fcon    : Tconnection;
    procedure Setgenero(const Value: string);
    procedure Setid(const Value: integer);
    procedure setcon(const Value: tconnection);
  public
    Constructor Create;
    Destructor Destroy; override;
    property id     : integer read Fid write Setid;
    property genero : string read Fgenero write Setgenero;
    property con    : tconnection read Fcon write Setcon;

    function save   : boolean;
    function delete : boolean;
    function update : boolean;
    function checkIfExists : boolean;

    procedure saveTest;

end;


implementation

uses
  Vcl.Dialogs;

{ TgeneroFilme }

function TgeneroFilme.checkIfExists: boolean;
var
  sql: string;
begin
  fcon.qryClear;
  sql := 'Selet * from generoFilme where =' + fid.ToString;
  fcon.qry.SQL.Add(sql);
  fcon.qry.Open;
  Result := fcon.qry.FieldByName('id').asInteger > 0;

end;

constructor TgeneroFilme.Create;
begin
  fcon    := Tconnection.create;
  inherited;
end;

function TgeneroFilme.delete: boolean;
var
  sql : string;
begin
   fcon.qryClear;
   sql := 'delte form generoFilme where = ' + Fid.ToString;
   Fcon.qry.SQL.Add(sql);
   fcon.qry.ExecSQl;
   Result := fcon.qry.RowsAffected > 0;
end;

destructor TgeneroFilme.Destroy;
begin
  inherited;
end;

function TgeneroFilme.save: boolean;
var
  sql : string;
begin
  fcon.qry.close;
  fcon.qry.sql.clear;

  sql := 'Insert into generoFilme' + '(id, genero)' +
         'values ( ' + fid.toString  +    ',' +
                      QuotedStr(genero) + ')' ;
  fcon.qry.SQL.Add(sql);
  fcon.qry.ExecSQL;

  Result := fcon.qry.RowsAffected >0;

end;

procedure TgeneroFilme.saveTest;
var
  sql : string;
begin
  fcon.queryExe(sql);
end;

procedure TgeneroFilme.setcon(const Value: tconnection);
begin
  Fcon := Value;
end;

procedure TgeneroFilme.Setgenero(const Value: string);
begin
  Fgenero := Value;
end;

procedure TgeneroFilme.Setid(const Value: integer);
begin
  Fid     := Value;
end;

function TgeneroFilme.update: boolean;
var
  sql : string;
begin
  if checkIfExists then
    begin
      fcon.qryClear;
      sql := ' update generoFilme ' +
             ' set id =     ' + fid.ToString        + ',' +
             ' set genero = ' + QuotedStr(fgenero)  + ',' +
             ' where id :=  ' + fid.ToString;
      fcon.qry.SQL.Add(sql);

    end
  else
    begin
      showMessage('este registro não existe');
    end;
end;

end.
