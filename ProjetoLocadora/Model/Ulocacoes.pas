unit Ulocacoes;

interface

uses
  Uconnection;
type
  Tlocacoes = class(Tconnection)
  private
    FcodCliente    : integer;
    Fid            : integer;
    FdataDevolucao : tdate;
    FdataRetirada  : tdate;
    FcodFilme      : integer;
    procedure SetcodCliente(const Value: integer);
    procedure SetcodFilme(const Value: integer);
    procedure Setid(const Value: integer);
    procedure SetdataDevolucao(const Value: tdate);
    procedure setDataRetirada(const Value: tdate);
  public

    Constructor Create;
    Destructor Destroy; Override;

    property id : integer read Fid write Setid;
    property codCliente    : integer read FcodCliente write SetcodCliente;
    property codFilme      : integer read FcodFilme write SetcodFilme;
    property dataDevolucao : tdate   read FdataDevolucao write setdataDevolucao;
    property dataRetirada  : tdate   read FdataRetirada  write setDataRetirada;

    function save   : boolean;
    function delete : boolean;
    function update : boolean;
  end;

implementation

uses
  System.Classes, System.SysUtils;

{ Tlocacoes }

constructor Tlocacoes.Create;
begin
  inherited
end;

function Tlocacoes.delete: boolean;
var
  sql : string;
begin
  sql := 'delte from Locacoes where = ' + intToStr(Fid);
  qryCommand(sql);
end;

destructor Tlocacoes.Destroy;
begin

  inherited;
end;

function Tlocacoes.save: boolean;
var
  sql : string;
begin
  sql := ' insert into Locacoes ' +
         ' (id, codCliente, codFilme, dataRetirada, dataDevolucao) ' +
         ' Values ( ' + fid.ToString              + ','  +
                        fcodCliente.ToString      + ','  +
                        fcodFilme.ToString        + ','  +
                        DateToStr(fdataRetirada)  + ','  +
                        dateToStr(fdataDevolucao) + ')';
  qryCommand(sql);

end;

procedure Tlocacoes.SetcodCliente(const Value: integer);
begin
  FcodCliente    := Value;
end;

procedure Tlocacoes.SetcodFilme(const Value: integer);
begin
  FcodFilme      := Value;
end;

procedure Tlocacoes.SetdataDevolucao(const Value: tdate);
begin
  FdataDevolucao := Value;
end;

procedure Tlocacoes.setDataRetirada(const Value: tdate);
begin
  FdataRetirada  := Value;
end;

procedure Tlocacoes.Setid(const Value: integer);
begin
  Fid            := Value;
end;

function Tlocacoes.update: boolean;
var
  sql : string;
begin
  sql := 'update Locacoes  '    +
         ' set id  =       '    + fid.ToString              + ',' +
         '     codCliente   '   + fcodCliente.ToString      + ',' +
         '     codFilme     '   + fcodFilme.ToString        + ',' +
         '     dataRetirada '   + DateToStr(fdataRetirada)  + ',' +
         '     dataDevolucao'   + DateToStr(fdataDevolucao) +
         ' where id = ' + fid.ToString;
  qryCommand(sql);

end;

end.
