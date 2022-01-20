unit UcadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls, Uclientes;

type
  TfrmCadastroCliente = class(TForm)
    pnlBack: TPanel;
    lblId: TLabel;
    lblNome: TLabel;
    lblData: TLabel;
    lblTelefone: TLabel;
    Label2: TLabel;
    pnlTop: TPanel;
    Label1: TLabel;
    btnSair: TSpeedButton;
    edtId: TEdit;
    edtNome: TEdit;
    edtDate: TDateTimePicker;
    edtTelefone: TMaskEdit;
    edtEmail: TEdit;
    btnSalvar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    Fcliente : Tclientes;
  public

  end;



implementation

{$R *.dfm}

procedure TfrmCadastroCliente.btnSalvarClick(Sender: TObject);
begin
  Fcliente.id             := Fcliente.getId;
  Fcliente.name           := edtNome.Text;
  Fcliente.dataNascimento := edtDate.Date;
  Fcliente.telefone       := edtTelefone.Text;
  Fcliente.email          := edtEmail.Text;

  if Fcliente.salvar then
    begin
      ShowMessage('Registro Realizado com Sucesso!');
    end
    else
    begin
      ShowMessage('Algo deu errado!')
    end;

end;

procedure TfrmCadastroCliente.FormCreate(Sender: TObject);
begin
  Fcliente   := Tclientes.Create;
  edtId.Text := Fcliente.getId.ToString;
end;

end.
