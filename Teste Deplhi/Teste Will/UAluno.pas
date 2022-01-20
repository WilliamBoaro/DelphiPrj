unit UAluno;

interface

uses UEscola;
  Type
    TAluno = class(TPessoa)
  private
    FTurma: String;
    FNota: Double;
  public
    property Turma: string read FTurma write FTurma;
    property Nota: double read FNota write FNota;


  end;

implementation



end.
