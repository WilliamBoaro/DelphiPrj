program SalesProject;

uses
  Vcl.Forms,
  uMain in '..\Form\uMain.pas' {fMain},
  uCustomer in 'uCustomer.pas' {fCustomer},
  uProducts in 'uProducts.pas' {fProducts},
  Customer in '..\Customer.pas',
  Products in '..\Form\Products.pas',
  Order in '..\Form\Order.pas',
  DataModel in '..\DataBase\DataModel.pas' {dmDados: TDataModule},
  Orders in '..\Form\Orders.pas' {frmOrders},
  PesqusaCustomer in '..\Form\PesqusaCustomer.pas' {tfrmPesquisaProdutos},
  frmPesquisaProdutcs in 'frmPesquisaProdutcs.pas' {frmProdutos},
  Ulocacoes in 'Ulocacoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmDados, dmDados);
  Application.CreateForm(TfMain, fMain);
  Application.CreateForm(TfrmOrders, frmOrders);
  Application.CreateForm(TtfrmPesquisaProdutos, tfrmPesquisaProdutos);
  Application.CreateForm(TfrmProdutos, frmProdutos);
  Application.Run;
end.
