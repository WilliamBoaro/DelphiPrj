program prjReport;

uses
  Vcl.Forms,
  uformprincipal in 'view\uformprincipal.pas' {frmPrincipal},
  uRamais in 'model\uRamais.pas',
  uRamaisController in 'controller\uRamaisController.pas',
  uFormReport in 'view\uFormReport.pas' {formReport},
  uFormDados in 'view\uFormDados.pas' {formDados},
  UdmReport in 'Data\UdmReport.pas' {dmReport: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TformReport, formReport);
  Application.CreateForm(TformDados, formDados);
  Application.CreateForm(TdmReport, dmReport);
  Application.Run;
end.
