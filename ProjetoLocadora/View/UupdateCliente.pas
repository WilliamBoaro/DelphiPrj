unit UupdateCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Uclientes, Vcl.Mask,
  Vcl.ComCtrls, System.Classes;

type
  TfrmUpdateCliente = class(TForm)
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
    btnAtualizar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure edtIdExit(Sender: TObject);
    procedure edtIdChange(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
  private
    Fcliente : Tclientes;
  public
    { Public declarations }
  end;

var
  frmUpdateCliente: TfrmUpdateCliente;

implementation



{$R *.dfm}

procedure TfrmUpdateCliente.btnAtualizarClick(Sender: TObject);
begin

   Fcliente.id := StrToInt(edtId.Text);
   Fcliente.name           := edtNome.Text;
   Fcliente.dataNascimento := edtDate.Date;
   Fcliente.telefone       := edtTelefone.Text;
   Fcliente.email          := edtEmail.Text;

   if Fcliente.update then
      begin
        ShowMessage('Altera??o Realizada com Sucesso!');
      end;


end;

procedure TfrmUpdateCliente.edtIdChange(Sender: TObject);
begin
    try
    Fcliente.procurarCliente(StrToInt(edtId.Text));
    edtNome.Text      := Fcliente.name;
    edtDate.Date      := Fcliente.dataNascimento;
    edtTelefone.Text  := Fcliente.telefone;
    edtEmail.Text     := Fcliente.email;
    Except
      on EConvertError do
        ShowMessage('Valor inv?lido para campo id');
    end;




end;

procedure TfrmUpdateCliente.edtIdExit(Sender: TObject);
begin
//  Fcliente.procurarCliente(StrToInt(edtId.Text));
//  edtNome.Text := Fcliente.name;

end;

procedure TfrmUpdateCliente.FormCreate(Sender: TObject);
begin
   Fcliente := Tclientes.Create;
end;

end.
