unit UEscola;

interface
type
  TPessoa = class(TObject)
  private
  FNome: String;
  FIdade: Integer;
  FCidade: String;
  FRG: String;

  public
  property Nome: string read FNome write FNome;
  property Idade: integer read FIdade write FIdade;
  property  Cidade: string read FCidade write FCidade;
  property RG: string read FRG write FRG;
end;

implementation







end.
