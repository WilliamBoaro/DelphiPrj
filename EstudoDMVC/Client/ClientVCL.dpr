program ClientVCL;

uses
  Vcl.Forms,
  UCustomerView in 'View\UCustomerView.pas' {frmViewCustomer},
  ControllerCustomer in 'Controller\ControllerCustomer.pas' {dmConstrollerCustomer: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmViewCustomer, frmViewCustomer);
  Application.CreateForm(TdmConstrollerCustomer, dmConstrollerCustomer);
  Application.Run;
end.
