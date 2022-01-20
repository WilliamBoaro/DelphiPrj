program ProjectMVC;

uses
  Vcl.Forms,
  Umain in 'View\Umain.pas' {frmMain},
  UCustomer in 'Model\UCustomer.pas',
  dataModel in 'Model\DataBase\dataModel.pas' {dmSales: TDataModule},
  uNewCustomer in 'View\uNewCustomer.pas' {frmNewCustomer},
  UControllerCustomer in 'Controller\UControllerCustomer.pas',
  uDAOCustomer in 'Controller\uDAOCustomer.pas',
  frmDeleteCustomer in 'View\frmDeleteCustomer.pas' {tfrmDeleteCustomer},
  frmSearch in 'frmSearch.pas' {Form1},
  uNewProduct in 'View\uNewProduct.pas' {frmNewProduct},
  UControllerProducts in 'Controller\UControllerProducts.pas',
  Uproducts in 'Model\Uproducts.pas',
  uDAOProducts in 'Controller\uDAOProducts.pas';

{$R *.res}

begin
  //ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmSales, dmSales);
  Application.CreateForm(TtfrmDeleteCustomer, tfrmDeleteCustomer);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
