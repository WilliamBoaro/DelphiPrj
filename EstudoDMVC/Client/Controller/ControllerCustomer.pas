unit ControllerCustomer;

interface

uses
  System.SysUtils, System.Classes,
  MVCFramework.RESTClient, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,MVCFramework.DataSet.Utils, MVCFramework.Serializer.Commons;

type
  TdmConstrollerCustomer = class(TDataModule)
    FDMemCustomer: TFDMemTable;
    FDMemCustomerID: TIntegerField;
    FDMemCustomerName: TStringField;
    FDMemCustomerAddress: TStringField;
    FDMemCustomerCity: TStringField;
    FDMemCustomerEmail: TStringField;
  private
    { Private declarations }
  public
    function doGetAll: String;
    function doGetRestClient: TRESTClient;

    procedure RefreshData;
  end;

var
  dmConstrollerCustomer: TdmConstrollerCustomer;

const
  HOST = 'localhost';
  PORT = 8080;
  ENDPOINT = '/api/customers';

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmConstrollerCustomer }

function TdmConstrollerCustomer.doGetAll: String;
var
  LRESTClient  : TRESTClient;
  LRESTReponse : IRESTResponse;
begin
  LRESTClient := doGetRestClient;
  try
    LRESTReponse  := LRESTClient.doGET(ENDPOINT,[]);
    Result := LRESTReponse.BodyAsString;
  finally

  end;
end;

function TdmConstrollerCustomer.doGetRestClient: TRESTClient;
begin
  Result := TRESTClient.Create(HOST, PORT);
end;

procedure TdmConstrollerCustomer.RefreshData;
begin
  FDMemCustomer.Close;
  FDMemCustomer.Open;
  FDMemCustomer.LoadFromJSONArray(doGetAll, TMVCNameCase.ncAsIs);


end;

end.
