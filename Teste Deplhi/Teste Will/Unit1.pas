unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnTeste: TButton;
    Memo1: TMemo;
    procedure btnTesteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UEscola, UAluno;

procedure TForm1.btnTesteClick(Sender: TObject);
 var
  Pessoa: TPessoa;
  Aluno: TAluno;
begin
  try
    Pessoa:= TPessoa.Create;
    Pessoa.Nome:= 'William';
    Pessoa.Idade:= 10;
    Pessoa.Cidade:='Encantado';
    Pessoa.RG:= '11321343254';



    Memo1.Lines.Add('Nome:'
    + Pessoa.Nome
    + '  '
    +'Idade: '
    +Pessoa.Idade.ToString
    +  '  '
    +'Cidade: '
    +Pessoa.Cidade
    + '  '
    +'RG: '
    +Pessoa.RG);
  finally
    Pessoa.Free;
  end;
end;

end.
