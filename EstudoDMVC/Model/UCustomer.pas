unit UCustomer;

interface

uses
MVCFramework.ActiveRecord;


type
  [MVCTable('Customers')]
  TCustomer = class(TMVCActiveRecord)
  private
    [MVCTableField('Name')]
    Fname: string;
    [MVCTableField('Email')]
    Femail: string;
    [MVCTableField('ID', [foPrimaryKey])]
    Fid: integer;
    [MVCTableField ('City')]
    Fcity: string;
    [MVCTableField ('Address')]
    Faddress: string;
    procedure Setaddress(const Value: string);
    procedure Setcity(const Value: string);
    procedure Setemail(const Value: string);
    procedure Setid(const Value: integer);
    procedure Setname(const Value: string);
  public
    property id : integer read Fid write Setid;
    property name : string read Fname write Setname;
    property address : string read Faddress write Setaddress;
    property city    : string read Fcity write Setcity;
    property email   : string read Femail write Setemail;
  end;

implementation

{ TCustomer }

procedure TCustomer.Setaddress(const Value: string);
begin
  Faddress := Value;
end;

procedure TCustomer.Setcity(const Value: string);
begin
  Fcity := Value;
end;

procedure TCustomer.Setemail(const Value: string);
begin
  Femail := Value;
end;

procedure TCustomer.Setid(const Value: integer);
begin
  Fid := Value;
end;

procedure TCustomer.Setname(const Value: string);
begin
  Fname := Value;
end;

end.
