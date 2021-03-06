unit UdeletaCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Uclientes;

type
  TfrmDeletaCliente = class(TForm)
    pnlBack: TPanel;
    lblId: TLabel;
    lblNome: TLabel;
    pnlTop: TPanel;
    Label1: TLabel;
    btnSair: TSpeedButton;
    edtId: TEdit;
    edtNome: TEdit;
    btnExcluir: TButton;
    memInfoCliente: TMemo;
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    Fcliente : Tclientes;
  end;

var
  frmDeletaCliente: TfrmDeletaCliente;

implementation

{$R *.dfm}

procedure TfrmDeletaCliente.btnExcluirClick(Sender: TObject);
begin

  Fcliente.id := StrToInt(edtId.Text);

  if MessageDlg('Confirma a Exclus?o do registro?', mtInformation,
                [mbyes, mbNo, mbCancel], 0)= mryes then
  begin
    if Fcliente.delete then
       ShowMessage('Registro Deletado com Sucesso!');
  end
  else
    ShowMessage('Algo deu Errado');

end;

procedure TfrmDeletaCliente.FormCreate(Sender: TObject);
begin
  Fcliente := Tclientes.Create;
end;

procedure TfrmDeletaCliente.SpeedButton1Click(Sender: TObject);
begin
  Fcliente.procurarCliente(StrToInt(edtId.Text));
  edtNome.Text := Fcliente.name;

  memInfoCliente.Lines.Text := 'Dados do Cliente:  '  +                                         #13 +
                               'Nome: '               +   Fcliente.name                       + #13 +
                               'Data de Nascimento: ' +   DateToStr(Fcliente.dataNascimento)  + #13 +
                               'Telefone: '           +   Fcliente.telefone                   + #13 +
                               'E-mail: '             +   Fcliente.email;
end;

end.
