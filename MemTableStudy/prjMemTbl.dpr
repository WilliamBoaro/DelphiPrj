program prjMemTbl;

uses
  Vcl.Forms,
  UmemTable in 'UmemTable.pas' {frmMain};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
