program telaDeLogin;

uses
  IWRtlFix,
  IWJclStackTrace,
  IWJclDebug,
  Forms,
  IWStart,
  Unit2 in 'Unit2.pas' {IWForm2: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
