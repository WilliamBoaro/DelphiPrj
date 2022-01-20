unit UControllerCustomer;

interface

uses
  MVCFramework,
  MVCFramework.Commons,
  MVCFramework.Serializer.Commons,
  MVCFramework.ActiveRecord,
  MVCFramework.SQLGenerators.Sqlite,
  FireDAC.Phys.SQLite,
  FireDAC.Comp.Client,
  Web.HTTPApp,
  System.JSON;

type

  [MVCPath('/api')]
  TCustomerController = class(TMVCController)
  private
    FDConn : TFDConnection;
  public
    [MVCPath]
    [MVCHTTPMethod([httpGET])]
    procedure Index;

    [MVCPath('/reversedstrings/($Value)')]
    [MVCHTTPMethod([httpGET])]
    procedure GetReversedString(const Value: String);
  protected
    procedure OnBeforeAction(Context: TWebContext; const AActionName: string; var Handled: Boolean); override;
    procedure OnAfterAction(Context: TWebContext; const AActionName: string); override;

  public


    //Sample CRUD Actions for a "Customer" entity
    [MVCPath('/customers')]
    [MVCHTTPMethod([httpGET])]
    procedure GetCustomers;

    [MVCPath('/customers/($id)')]
    [MVCHTTPMethod([httpGET])]
    procedure GetCustomer(id: Integer);

    [MVCPath('/customers')]
    [MVCHTTPMethod([httpPOST])]
    procedure CreateCustomer;

    [MVCPath('/customers/($id)')]
    [MVCHTTPMethod([httpPUT])]
    procedure UpdateCustomer(id: Integer);

    [MVCPath('/customers/($id)')]
    [MVCHTTPMethod([httpDELETE])]
    procedure DeleteCustomer(id: Integer);

    Constructor Create; override;
    Destructor Destroy; Override;

  end;

implementation

uses
  System.SysUtils, MVCFramework.Logger, System.StrUtils, UCustomer,
  System.Generics.Collections, UDataModule;

procedure TCustomerController.Index;
begin
  //use Context property to access to the HTTP request and response 
  Render('Hello DelphiMVCFramework World');
end;

procedure TCustomerController.GetReversedString(const Value: String);
begin
  Render(System.StrUtils.ReverseString(Value.Trim));
end;

procedure TCustomerController.OnAfterAction(Context: TWebContext; const AActionName: string); 
begin
  { Executed after each action }
  inherited;
end;

procedure TCustomerController.OnBeforeAction(Context: TWebContext; const AActionName: string; var Handled: Boolean);
begin
  { Executed before each action
    if handled is true (or an exception is raised) the actual
    action will not be called }
  inherited;
end;

//Sample CRUD Actions for a "Customer" entity
procedure TCustomerController.GetCustomers;                //somente � poss�vel utilizar uma vez

begin
  Render(ObjectDict.Add('data', TMVCActiveRecord.All<Tcustomer>));
end;

procedure TCustomerController.GetCustomer(id: Integer);    //somente � poss�vel utilizar uma vez
var
  ObCustomer : tCustomer;
begin
  ObCustomer := TMVCActiveRecord.GetByPK<Tcustomer>(ID);

  if ObCustomer.id = 0 then
    Exception.RaiseOuterException(EMVCException.Create(http_status.BadRequest,'Erro'))
  else
    Render(ObCustomer);
end;

constructor TCustomerController.Create;
begin

  inherited;

  if assigned(FDConn) then
    FreeAndNil(FDConn);

  FDConn := TFDConnection.Create(nil);
  FDConn.Params.Clear;
  FDConn.Params.Database := 'C:\dev\EstudoDMVC\Files\DataBase\SalesServerDMVC.db';
  FDConn.DriverName := 'SQLite';
  FDConn.Connected := True;

  var
    DefConn: TFDConnection;

  DefConn := ActiveRecordConnectionsRegistry.GetCurrent(False);

  if DefConn <> nil then
    ActiveRecordConnectionsRegistry.RemoveDefaultConnection;

  ActiveRecordConnectionsRegistry.AddDefaultConnection(FDConn);
end;

procedure TCustomerController.CreateCustomer;             //Est� funcionando (talvez tratar o erros)
var
  ObCustomer : Tcustomer;
begin
  ObCustomer := Context.Request.BodyAs<Tcustomer>;
  ObCustomer.Insert;
  Render(ObCustomer);
end;

procedure TCustomerController.UpdateCustomer(id: Integer);
var
  ObCustomer : Tcustomer;
begin
  ObCustomer    := Context.Request.BodyAs<Tcustomer>;
  ObCustomer.id := id;
  ObCustomer.Update;

  Render(ObCustomer);
end;

procedure TCustomerController.DeleteCustomer(id: Integer);   //Funcionando
var
  ObCustomer : tCustomer;
begin
  ObCustomer := TMVCActiveRecord.GetByPK<Tcustomer>(id);
  ObCustomer.Delete;
  Render(TJSONObject.Create(TJSONPair.Create('result', 'Registro Apagado com sucesso!')))
end;



destructor TCustomerController.Destroy;
begin

  inherited;
end;

end.

