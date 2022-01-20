unit DataModuleHome;

interface

uses
  System.SysUtils, System.Classes,
  MVCFramework.RESTClient, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TTdmControler = class(TDataModule)
    FDMemTable1: TFDMemTable;
  private
    { Private declarations }
  public
    function doGetRestCLient: TRESTClient;
    function doGetALL : String;
  end;

var
  TdmControler: TTdmControler;


implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModule1 }

function TTdmControler.doGetALL: String;
var
  LRESTClient : TRESTClient;
 LRESTResponse : IRESTResponse;
begin
    LRESTClient :=  TRESTClient.Create('localhost',8080);
  try
    LRESTResponse := LRESTClient.doGET('/api/customers', []);

    Result := LRESTResponse.BodyAsString;

  finally
    LRESTClient.Free;

  end;
end;

function TTdmControler.doGetRestCLient: TRESTClient;
begin
  result :=  TRESTClient.Create('localhost',8080);
end;

end.
