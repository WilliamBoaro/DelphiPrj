unit UControllerCustomer;

interface

uses
  UCustomer, FireDAC.Comp.Client,dataModel, System.SysUtils, uDAOCustomer;
type
  TcontrollerCustomer = class
  private
  public
    constructor Create;
    destructor  Destroy; override;

    procedure Save(const obCustomer: TCustomer);
    procedure Delete (const obCustomer: TCustomer);
  end;

implementation

uses
  Vcl.Dialogs;


{ ControllerCustomer }

constructor tControllerCustomer.Create;
begin
  inherited;

end;

procedure TcontrollerCustomer.Delete(const obCustomer: TCustomer);
var
  DAOCustomer: TDAOCustomer;
begin
  DAOCustomer := TDAOCustomer.Create;
  try
    DAOCustomer.Delete(obCustomer);
  finally
    DAOCustomer.Free;
  end;
end;

destructor TControllerCustomer.Destroy;
begin
  inherited;
end;

procedure tControllerCustomer.Save(const obCustomer: TCustomer);
var
  DAOCustomer: TDAOCustomer;
begin
  DAOCustomer := TDAOCustomer.Create;
  try
    if DAOCustomer.Save(obCustomer) then
    begin
      showMessage('Regisitro Realizado com sucesso!');
    end;
  finally
    DAOCustomer.Free;
  end;
end;

end.
