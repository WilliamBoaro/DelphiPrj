program ClientVCL;

uses
  Vcl.Forms,
  view.Customer in 'view.Customer.pas' {Form1},
  DataModuleHome in 'DataModuleHome.pas' {TdmControler: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TTdmControler, TdmControler);
  Application.Run;
end.
