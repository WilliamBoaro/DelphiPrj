unit Ucaixa;

interface

uses
  FireDAC.Comp.Client, udatamodel, Uconnection;

type
  tpLcto  = (tpDebito, tpCredito);
  Tcaixa = class(Tconnection)
  private
    fqry            : tfdQuery;
    Fvalor          : double;
    Fid             : integer;
    FidCliente      : integer;
    Fdata           : tdate;
    FtipoLancamento : tpLcto;
    procedure Setdata(const Value: tdate);
    procedure Setid(const Value: integer);
    procedure SetidCliente(const Value: integer);
    procedure Setvalor(const Value: double);
    procedure SettipoLancamento(const Value: tpLcto);
    public
    constructor Create; 
    destructor Destroy; override;
    property id : integer read Fid write Setid;
    property idCliente : integer read FidCliente write SetidCliente;
    property data : tdate read Fdata write Setdata;
    property valor : double read Fvalor write Setvalor;
    property tipoLancamento : tpLcto read FtipoLancamento write SettipoLancamento;

    function salvar : boolean;


  end;

implementation

uses
  System.Classes, System.SysUtils;

{ Tcaixa }

constructor Tcaixa.Create;
begin
  inherited;
  fqry := tfdQuery.Create(nil);
  fqry.Connection := dmLocadora.FDCLocadora;
  
end;

destructor Tcaixa.Destroy;
begin
  fqry.Free;
  inherited;
end;

function Tcaixa.salvar: boolean;
var
  sql : string;
begin
  sql := 'insert into ContaCorrente' + 
         ' (id, idCliente, data, valor, tipoLancamento)'      +
         'Values ( ' + intToStr(fid)                   + ','  +
                       intToStr(idCliente)             + ','  + 
                       quotedStr(DateToStr(data))      + ','  +
                       FloatToStr(valor)               + ','  + 
                       intToStr(ord(FtipoLancamento))  + ')';
  queryExe(sql);
end;

procedure Tcaixa.Setdata(const Value: tdate);
begin
  Fdata := Value;
end;

procedure Tcaixa.Setid(const Value: integer);
begin
  Fid := Value;
end;

procedure Tcaixa.SetidCliente(const Value: integer);
begin
  FidCliente := Value;
end;

procedure Tcaixa.SettipoLancamento(const Value: tpLcto);
begin
  FtipoLancamento := Value;
end;

procedure Tcaixa.Setvalor(const Value: double);
begin
  Fvalor := Value;
end;

end.
