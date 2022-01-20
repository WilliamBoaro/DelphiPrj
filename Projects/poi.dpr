program poi;

uses
  Vcl.Forms,
  oiee in 'oiee.pas' {Form1},
  oie in 'oie.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
