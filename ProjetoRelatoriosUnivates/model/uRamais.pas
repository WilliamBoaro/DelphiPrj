unit uRamais;

interface
type
  ramais = class
  private
    FDataHora: string;
    Fmenu: string;
    FopDigitada: integer;
    FNumerorRemetente: string;
    procedure SetDataHora(const Value: string);
    procedure Setmenu(const Value: string);
    procedure SetNumerorRemetente(const Value: string);
    procedure SetopDigitada(const Value: integer);
  public
    property menu             : string read Fmenu write Setmenu;
    property opDigitada       : integer read FopDigitada write SetopDigitada;
    property DataHora         : string read FDataHora write SetDataHora;
    property NumerorRemetente : string read FNumerorRemetente write SetNumerorRemetente;
  end;

implementation

{ ramais }

procedure ramais.SetDataHora(const Value: string);
begin
  FDataHora := Value;
end;

procedure ramais.Setmenu(const Value: string);
begin
  Fmenu := Value;
end;

procedure ramais.SetNumerorRemetente(const Value: string);
begin
  FNumerorRemetente := Value;
end;

procedure ramais.SetopDigitada(const Value: integer);
begin
  FopDigitada := Value;
end;

end.
