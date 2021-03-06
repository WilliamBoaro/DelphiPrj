unit Udiarias;

interface

uses
  Uconnection;
type
  Tdiarias = class(Tconnection)
  private
    Fvalor : double;
    Fid    : integer;
    procedure Setid(const Value: integer);
    procedure Setvalor(const Value: double);

  public

    Constructor Create;
    Destructor Destroy; override;

    property id    : integer read Fid write Setid;
    property valor : double read Fvalor write Setvalor;

    function save   : boolean;
    function delete : boolean;
    function update : boolean;
  end;

implementation

uses
  System.SysUtils;

{ Tdiarias }


constructor Tdiarias.Create;
begin
   inherited;
end;

function Tdiarias.delete: boolean;
var
  sql: string;
begin
  sql := 'delte from diarias where = ' + fid.ToString;
  queryExe(sql);
end;

destructor Tdiarias.Destroy;
begin

  inherited;
end;

function Tdiarias.save: boolean;
var
  sql : string;
begin
  sql := ' inserto into Diarias '  +
         '(id, valor)'             +
         'values ( ' + fid.ToString       + ',' +
                       floatTostr(fvalor) + ')';
  queryExe(sql);
end;

procedure Tdiarias.Setid(const Value: integer);
begin
  Fid    := Value;
end;

procedure Tdiarias.Setvalor(const Value: double);
begin
  Fvalor := Value;
end;

function Tdiarias.update: boolean;
var
  sql : string;
begin
  sql := 'update Diarias'
       + 'set  id =      '  + fid.ToString       +  ','  +
         'valor   =      '  + FloatToStr(fvalor) +  ',' +
         'where   =      '  + fid.ToString;
  queryExe(sql);
end;

end.
