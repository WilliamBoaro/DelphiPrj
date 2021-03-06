unit Uclientes;

interface

uses
  udatamodel, Uconnection;


type
  Tclientes = class(Tconnection)
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
    Constructor Create;
    Destructor Destroy; override;
    property id             : integer read Fid write Setid;
    property name           : string read Fname write Setname;
    property dataNascimento : tdate read FdataNascimento write SetdataNascimento;
    property telefone       : string read Ftelefone write Settelefone;
    property email          : string read Femail write Setemail;

    function salvar : boolean;
    function delete : boolean;
    function update : boolean;
    function getId  : integer;
    function procurarCliente(Aid : integer) : Tclientes;

  end;

implementation

uses
  System.Classes, System.SysUtils;

{ Tclientes }

constructor Tclientes.Create;
begin

  inherited;
end;

function Tclientes.delete: boolean;
var
  sql : string;
begin
  sql := ' Delete from Clientes where id = ' + fid.ToString;
  qryCommand(sql);

  Result := qry.RowsAffected > 0;
end;

destructor Tclientes.Destroy;
begin

  inherited;
end;

function Tclientes.getId: integer;
var
  sql : string;
begin
  qry.Close;
  qry.SQL.Clear;
  sql := 'select max(id) as maxId from Clientes';
  qry.SQL.Add(sql);
  qry.Open;
  Result := qry.FieldByName('maxId').AsInteger + 1;


end;

function Tclientes.procurarCliente(Aid: integer): Tclientes;
var
  sql : string;
begin
  qry.Close;
  qry.SQL.Clear;
  sql := 'select * from Clientes where id =' + Aid.ToString;
  qry.SQL.Add(sql);
  qry.Open;

  if qry.RecordCount > 0  then
    begin
      Fname           := qry.FieldByName('nome').AsString;
      Femail          := qry.FieldByName('email').asString;
      FdataNascimento := qry.FieldByName('dataNascimento').AsDateTime;
      Ftelefone       := qry.FieldByName('telefone').AsString;
    end;


end;

function Tclientes.salvar: boolean;
var
  sql : string;
begin
  qryClear;
  sql := ' insert into Clientes '                       +
         ' (id, nome, dataNascimento, telefone, email)' +
         '  values (  ' + IntToStr(Fid)                 + ',' +
                          QuotedStr(Fname)              + ',' +
                          QuotedStr(DateToStr(fdataNascimento))    + ',' +
                          QuotedStr(ftelefone)          + ',' +
                          QuotedStr(Femail)             + ')' ;
  qry.SQL.Add(sql);
  qry.ExecSQL;

  Result := qry.RowsAffected > 0;

end;

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

function Tclientes.update: boolean;
var
  sql : string;
begin
  sql := ' update Clientes '  +
         ' set id =        '  + fid.ToString                                    +  ','  +
         ' nome   =        '  + QuotedStr(Fname)                                +  ','  +
         'dataNascimento = '  + QuotedStr(DateToStr(FdataNascimento))           +  ','  +
         'telefone =       '  + QuotedStr(Ftelefone)                            +  ','  +
         ' email  =        '  + QuotedStr(Femail)                               +
         ' where id = ' + fid.ToString;
  qryCommand(sql);

  Result := qry.RowsAffected < 0;
end;

end.
