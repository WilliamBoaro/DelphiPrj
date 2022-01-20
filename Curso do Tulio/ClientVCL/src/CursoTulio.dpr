program CursoTulio;

uses
  Vcl.Forms,
  main in 'view\main.pas' {Form1},
  Colors in 'view\styles\Colors.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
