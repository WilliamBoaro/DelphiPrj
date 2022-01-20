unit Ufilme;

interface

uses
  FireDAC.Comp.Client, uDataModel, Uconnection;
type
  Tfilme = class(Tconnection)
  private
    FQry       : TFDQuery;
    Ftitulo    : string;
    Fqtd       : integer;
    Fid        : integer;
    FcodDiaria : integer;
    FcodGenero : integer;
    procedure SetcodDiaria(const Value: integer);
    procedure SetcodGenero(const Value: integer);
    procedure Setid(const Value: integer);
    procedure Setqtd(const Value: integer);
    procedure Settitulo(const Value: string);
  public
    constructor Create;
    destructor Destroy; override;

    property id        : integer read Fid write Setid;
    property titulo    : string read Ftitulo write Settitulo;
    property codGenero : integer read FcodGenero write SetcodGenero;
    property qtd       : integer read Fqtd write Setqtd;
    property codDiaria : integer read FcodDiaria write SetcodDiaria;

    function save      : boolean;
    function delete    : boolean;
    function update    : boolean;

  end;

implementation

uses
  Data.DB, System.Classes, System.SysUtils;

{ Tfilme }

constructor Tfilme.Create;
begin
  inherited;
  FQry       := TFDQuery.Create(nil);
  FQry.Connection := dmLocadora.FDCLocadora;

end;

function Tfilme.delete: boolean;
var
  sql : string;
begin
  sql := 'delte from Filme where =' + intToStr(fid);
  queryExe(sql);

end;

destructor Tfilme.Destroy;
begin
  FQry.Free;
  inherited;
end;

function Tfilme.save: boolean;
var
  sql : string;
begin
  sql := 'insert into Filme'                       +
         '(id, titulo, codGenero, qtd,codDiaria)'  +
         'Values (' + fid.ToString                 +  ',' +
                      QuotedStr(ftitulo)           +  ',' +
                      codGenero.ToString           +  ',' +
                      qtd.ToString                 +  ',' +
                      codDiaria.ToString           +   ')';
  queryExe(sql);
end;

procedure Tfilme.SetcodDiaria(const Value: integer);
begin
  FcodDiaria := Value;
end;

procedure Tfilme.SetcodGenero(const Value: integer);
begin
  FcodGenero := Value;
end;

procedure Tfilme.Setid(const Value: integer);
begin
  Fid        := Value;
end;

procedure Tfilme.Setqtd(const Value: integer);
begin
  Fqtd       := Value;
end;

procedure Tfilme.Settitulo(const Value: string);
begin
  Ftitulo    := Value;
end;

function Tfilme.update: boolean;
var
  sql : string;
begin
  sql := ' update Fime' +
         'set id     =    ' + fid.ToString          + ',' +
         '    titulo =    ' + QuotedStr(ftitulo)    + ',' +
         '    codGenero = ' + codGenero.ToString    + ',' +
         '    qtd =       ' + qtd.ToString          + ',' +
         '    codDiaria = ' + codDiaria.ToString    +
         ' where id =     ' + fid.ToString;
  queryExe(sql);
end;

end.
