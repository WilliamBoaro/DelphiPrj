unit Uproducts;

interface
type
  Tproducts = class
  private
    Fname: string;
    Fprice: double;
    Fid: integer;
    Fkind: string;
    Fsize: double;
    procedure Setid(const Value: integer);
    procedure Setkind(const Value: string);
    procedure Setname(const Value: string);
    procedure Setprice(const Value: double);
    procedure Setsize(const Value: double);
    constructor Create;
    destructor  Destroy; override;
  public
    property id    : integer read Fid write Setid;
    property name  : string read Fname write Setname;
    property size  : double read Fsize write Setsize;
    property kind  : string read Fkind write Setkind;
    property price : double read Fprice write Setprice;

  end;

implementation

{ Tproducts }

constructor Tproducts.Create;
begin
  inherited
end;

destructor Tproducts.Destroy;
begin

  inherited;
end;

procedure Tproducts.Setid(const Value: integer);
begin
  Fid := Value;
end;

procedure Tproducts.Setkind(const Value: string);
begin
  Fkind := Value;
end;

procedure Tproducts.Setname(const Value: string);
begin
  Fname := Value;
end;

procedure Tproducts.Setprice(const Value: double);
begin
  Fprice := Value;
end;

procedure Tproducts.Setsize(const Value: double);
begin
  Fsize := Value;
end;

end.
