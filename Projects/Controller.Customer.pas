 unit Controller.Customer;

interface

uses
  MVCFramework,
  MVCFramework.Commons,
  MVCFramework.Serializer.Commons,
  FireDAC.Comp.Client,
  FireDAC.Phys.Sqlite,
  MVCFrameWork.SQLGenerators.Sqlite,
  MVCFrameWork.ActiveRecord,
  System.Generics.Collections,
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

    constructor Create; Override;


  end;

implementation

uses
  System.SysUtils, MVCFramework.Logger, System.StrUtils, Model.Customer;

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
procedure TCustomerController.GetCustomers;
var
  lCustomer : TObjectList<TCustomer>;
begin
  lCustomer := TMVCActiveRecord.SelectRQL<TCustomer>('', 0);

  Render<TCustomer>(lCustomer);


end;

procedure TCustomerController.GetCustomer(id: Integer);
var
  lCustomer :TCustomer;
begin
  lCustomer := TMVCActiveRecord.GetByPK<TCustomer>(id);


  Render (lCustomer);
end;

constructor TCustomerController.Create;
begin
  inherited;
  FDConn := TFDConnection.Create(nil);
  FDConn.Params.Clear;
  FDConn.Params.Database := 'C:\dev\view\delphimvcframework\samples\data\activerecorddb.db';
  FDConn.DriverName := 'SQlite';
  FDConn.Connected := True;

  ActiveRecordConnectionsRegistry.AddDefaultConnection(FDConn);


end;

procedure TCustomerController.CreateCustomer;
var
  lCustomer : TCustomer;

begin
  lCustomer := Context.Request.BodyAs<TCustomer>;
  lCustomer.Insert;

  Render(lCustomer);
end;

procedure TCustomerController.UpdateCustomer(id: Integer);
var
  lCustomer : TCustomer;


begin
  Lcustomer := Context.Request.BodyAs<TCustomer>;
  LCustomer.ID := id;
  LCustomer.Update;

  Render(Lcustomer);
end;

procedure TCustomerController.DeleteCustomer(id: Integer);
var
  LCustomer : TCustomer;

begin
  LCustomer := TMVCActiveRecord.GetByPK<TCustomer>(id);
  LCustomer.Delete;

  Render(TJSONObject.Create(TJSONPair.Create('result', 'registro apagado')))
end;



end.
