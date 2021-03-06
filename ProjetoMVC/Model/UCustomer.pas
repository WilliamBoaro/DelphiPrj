unit UCustomer;

interface

uses
  FireDAC.Comp.Client, dataModel;

type
  Tcustomer = class
  private
    FName: String;
    FEmail: String;
    FCity: String;
    FAddress: String;
    FID: integer;
    procedure SetAddress(const Value: String);
    procedure SetCity(const Value: String);
    procedure SetEmail(const Value: String);
    procedure SetName(const Value: String);
    procedure SetID(const Value: integer);
  public
    constructor Create;
    destructor  Destroy; override;

    property ID: integer read FID write SetID;
    property Name: String read FName write SetName;
    property Address:String read FAddress write SetAddress;
    property City:String read FCity write SetCity;
    property Email:String read FEmail write SetEmail;
  end;

implementation

uses
  System.SysUtils;



constructor Tcustomer.Create;
begin
  inherited;

end;

destructor Tcustomer.Destroy;
begin
  inherited;
end;

procedure Tcustomer.SetAddress(const Value: String);
begin
  FAddress := Value;
end;

procedure Tcustomer.SetCity(const Value: String);
begin
  FCity := Value;
end;

procedure Tcustomer.SetEmail(const Value: String);
begin
  FEmail := Value;
end;

procedure Tcustomer.SetID(const Value: integer);
begin
  FID := Value;
end;

procedure Tcustomer.SetName(const Value: String);
begin
  FName := Value;
end;

end.
