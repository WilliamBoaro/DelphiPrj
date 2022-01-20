program LocadoraPrj;

uses
  Vcl.Forms,
  Umain in '..\View\Umain.pas' {frmMain},
  UgeneroFilme in '..\Model\UgeneroFilme.pas',
  Uclientes in '..\Model\Uclientes.pas',
  Ulocacoes in '..\Model\Ulocacoes.pas',
  Ufilme in '..\Model\Ufilme.pas',
  Udiarias in '..\Model\Udiarias.pas',
  UconsultaFilmes in '..\View\UconsultaFilmes.pas' {frmConsultaFilme},
  UdataModel in '..\DataBase\UdataModel.pas' {dmLocadora: TDataModule},
  UconsultaCliente in '..\View\UconsultaCliente.pas' {frmConsultaCliente},
  UnovasLocacoes in '..\View\UnovasLocacoes.pas' {frmNovaLocacao},
  Ucaixa in '..\Model\Ucaixa.pas',
  Uconnection in '..\DataBase\Uconnection.pas',
  UcadastroCliente in '..\View\UcadastroCliente.pas' {frmCadastroCliente},
  UbuscaCliente in '..\View\UbuscaCliente.pas' {Form1},
  UdeletaCliente in '..\View\UdeletaCliente.pas' {frmDeletaCliente},
  UupdateCliente in '..\View\UupdateCliente.pas' {frmUpdateCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmLocadora, dmLocadora);
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmDeletaCliente, frmDeletaCliente);
  Application.CreateForm(TfrmUpdateCliente, frmUpdateCliente);
  Application.Run;
end.
