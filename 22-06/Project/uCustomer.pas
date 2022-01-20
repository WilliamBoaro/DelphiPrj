unit uCustomer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Customer, PesqusaCustomer;

type
  TfCustomer = class(TForm)
    edtCustomerID: TLabeledEdit;
    edtCustomerNamer: TLabeledEdit;
    edtCity: TLabeledEdit;
    edtCustomerAddress: TLabeledEdit;
    CustomerBottonPanel: TPanel;
    topCustomerPanel: TPanel;
    edtEmail: TLabeledEdit;
    btnCustomerSalvar: TButton;
    btnCustomerSair: TButton;
    btnDelete: TButton;
    btnProcurar: TButton;
    procedure btnCustomerSairClick(Sender: TObject);
    procedure btnCustomerSalvarClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    //procedure edtCustomerIDExit(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation



{$R *.dfm}

procedure TfCustomer.btnCustomerSairClick(Sender: TObject);
begin
  close;
end;

procedure TfCustomer.btnCustomerSalvarClick(Sender: TObject);
Var
  Customer :tCustomer;
begin
  try
    Customer         := tCustomer.Create;
    Customer.Name    := edtCustomerNamer.Text;
    Customer.Address := edtCustomerAddress.Text;
    Customer.City    := edtCity.Text;
    Customer.Email   := edtEmail.Text;
    Customer.ID      := StrToInt(edtCustomerID.Text);

    if Customer.Save then
         ShowMessage('Registro Realizado com Sucesso!')
    else 
      begin
        ShowMessage('Ocorreu um erro');   
      end;

  finally
    customer.Free;

  end;



end;

procedure TfCustomer.btnDeleteClick(Sender: TObject);
var
  Customer : tCustomer;
begin
  try
    Customer := tCustomer.Create;
    Customer.ID := StrToInt(edtCustomerID.Text);

    if MessageDlg('Confirma a exclusão do registro?', mtInformation,
                  [mbYes, mbNo, mbCancel], 0) = mrYes then
    begin
      if Customer.Delete then
        ShowMessage('Registro deletado')
      else
        ShowMessage('Erro ao deletar o registro');
    end;

  finally
    Customer.Free;
  end;

end;

procedure TfCustomer.btnProcurarClick(Sender: TObject);
var
  PesquisaCustomer : TtfrmPesquisaProdutos;
begin
  PesquisaCustomer := TtfrmPesquisaProdutos.Create(self);
  try
    PesquisaCustomer.ShowModal;

    edtCustomerID.Text      := PesquisaCustomer.Customer.ID.ToString;
    edtCustomerNamer.Text   := PesquisaCustomer.Customer.Name;
    edtCustomerAddress.Text := PesquisaCustomer.Customer.Address;
    edtCity.Text            := PesquisaCustomer.Customer.City;
    edtEmail.Text           := PesquisaCustomer.Customer.Email;
  finally
    PesquisaCustomer.Free;
  end;
end;

(*
  procedure TfCustomer.edtCustomerIDExit(Sender: TObject);
  var
    Customer : Tcustomer;
  begin
    Customer    := Tcustomer.Create;
    Customer.ID := StrToInt(edtCustomerID.Text);
    Customer.FetchRecordByID;

    edtCustomerNamer.Text   := Customer.Name;
    edtCustomerAddress.Text := Customer.Address;
    edtCity.Text            := Customer.City;
    edtEmail.Text           := Customer.Email;


  end;

*)
end.
