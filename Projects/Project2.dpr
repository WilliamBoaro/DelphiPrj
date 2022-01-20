program Project2;

uses
  Vcl.Forms,
  frmCustomer in 'frmCustomer.pas' {frmControle},
  webmoduleFrmFrameWork in 'webmoduleFrmFrameWork.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmControle, frmControle);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
