unit Ulocacoes;

interface
type
  Tlocacoes = class
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
  property id : integer read Fid write Setid;
  property codCliente    : integer read FcodCliente write SetcodCliente;
  property codFilme      : integer read FcodFilme write SetcodFilme;
  property dataDevolucao : tdate   read FdataDevolucao write setdataDevolucao;
  property dataRetirada  : tdate   read FdataRetirada  write setDataRetirada;


  end;

implementation

{ Tlocacoes }

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

end.
