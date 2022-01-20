unit UEmployee;

interface
  type
  TRetalier = class(TObject)
    Name: String;
    Location:String;
    Terms: String;
    MultipleLocations: Boolean;
    constructor Create;
    destructor Destroy; reintroduce;
  end;


implementation




{ TRetalier }

constructor TRetalier.Create;
begin
  Name := 'o nome da loja';
  Location := 'Encatado';
  Terms := 'COD";';
  MultipleLocations := True;
end;

destructor TRetalier.Destroy;
begin

end;

end.
