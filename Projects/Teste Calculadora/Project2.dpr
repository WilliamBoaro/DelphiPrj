program Project2;

uses
  Vcl.Forms,
  calculardora in 'calculardora.pas' {Form1},
  TCalculadora in 'TCalculadora.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
