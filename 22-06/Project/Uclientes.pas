unit Uclientes;

interface
type
  Tclientes = class
  private
    Fname           : string;
    Femail          : string;
    FdataNascimento : tdate;
    Fid             : integer;
    Ftelefone       : string;
    procedure SetdataNascimento(const Value: tdate);
    procedure Setemail(const Value: string);
    procedure Setid(const Value: integer);
    procedure Setname(const Value: string);
    procedure Settelefone(const Value: string);
  public
    property id             : integer read Fid write Setid;
    property name           : string read Fname write Setname;
    property dataNascimento : tdate read FdataNascimento write SetdataNascimento;
    property telefone       : string read Ftelefone write Settelefone;
    property email          : string read Femail write Setemail;
  end;

implementation

{ Tclientes }

procedure Tclientes.SetdataNascimento(const Value: tdate);
begin
  FdataNascimento := Value;
end;

procedure Tclientes.Setemail(const Value: string);
begin
  Femail          := Value;
end;

procedure Tclientes.Setid(const Value: integer);
begin
  Fid             := Value;
end;

procedure Tclientes.Setname(const Value: string);
begin
  Fname           := Value;
end;

procedure Tclientes.Settelefone(const Value: string);
begin
  Ftelefone       := Value;
end;

end.
