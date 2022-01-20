program CatProject;

uses
  System.StartUpCopy,
  FMX.Forms,
  UnitCat in 'UnitCat.pas' {Form1},
  Unit1 in 'Unit1.pas' {Frame1: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
