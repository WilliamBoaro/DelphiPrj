unit Order;

interface

uses
  FireDAC.Comp.Client, DataModel;

type
  Torder = class
  private
    FQry : TFDQuery;
    FDate: string;
    FID: integer;
    FIDCustomer: integer;
    procedure SetDate(const Value: string);
    procedure SetID(const Value: integer);
    procedure SetIDCustomer(const Value: integer);
    function CheckRecordExist(const AID: Integer): Boolean;
  public
    constructor Create;
    destructor Destroy; override;
    property ID : integer read FID write SetID;
    property Date : string read FDate write SetDate;
    property IDCustomer : integer read FIDCustomer write SetIDCustomer;
    function Save : Boolean;

  end;

  TorderDetail = class
  private
    FQry : TFDQuery;
    FQtd: integer;
    FPrice: double;
    FID: integer;
    FIDProduct: integer;
    FIDOrder: integer;
    procedure SetID(const Value: integer);
    procedure SetIDOrder(const Value: integer);
    procedure SetIDProduct(const Value: integer);
    procedure SetPrice(const Value: double);
    procedure SetQtd(const Value: integer);

    function CheckRecordExist(const AID: Integer): Boolean;

  public
    constructor Create;
    destructor Destroy; override;
    property ID : integer read FID write SetID;
    property IDOrder : integer read FIDOrder write SetIDOrder;
    property IDProduct : integer read FIDProduct write SetIDProduct;
    property Qtd : integer read FQtd write SetQtd;
    property Price: double read FPrice write SetPrice;


    function Save : Boolean;
    Function GetID: Integer;


  end;

implementation

uses
  System.SysUtils;

{ Torder }


{ Torder }

function Torder.CheckRecordExist(const AID: Integer): Boolean;
begin
  FQry.Close;
  FQry.SQL.Clear;
  FQry.SQL.Add('Select ID From Order where ID = ' + AID.ToString);
  FQry.Open;
  Result := FQry.FieldByName('ID').AsInteger > 0;
end;

constructor Torder.Create;
begin
   FQry := TFDQuery.Create(nil);
   FQry.Connection := dmDados.FDConnection1;
   inherited;

end;


destructor Torder.Destroy;
begin
  FreeAndNil(FQry);

  inherited;
end;

function Torder.Save: Boolean;
var
  SQL : string;
begin
  FQry.Close;
  FQry.SQL.Clear;
  SQL :=       ' INSERT INTO Orders   '  +
               '(ID, Date, IDCustomer)'  +
               'VALUES ( ' + FID.ToString         + ',' +
                             QuotedStr(FDate)     + ',' +
                             FIDCustomer.ToString + ')';


  FQry.SQL.Add(SQL);

  FQry.ExecSQL;
  Result := FQry.RowsAffected > 0;
end;


{ TorderDetail }

procedure Torder.SetDate(const Value: string);
begin
  FDate := Value;
end;

procedure Torder.SetID(const Value: integer);
begin
  FID := Value;
end;

procedure Torder.SetIDCustomer(const Value: integer);
begin
  FIDCustomer := Value;
end;

{ TorderDetail }

function TorderDetail.CheckRecordExist(const AID: Integer): Boolean;
begin
  FQry.Close;
  FQry.SQL.Clear;
  FQry.SQL.Add('Select ID From Customers where ID = ' + AID.ToString);
  FQry.Open;
  Result := FQry.FieldByName('ID').AsInteger > 0;
end;

constructor TorderDetail.Create;
begin
  FQry := TFDQuery.Create(nil);
  FQry.Connection := dmDados.FDConnection1;
  inherited;
end;

destructor TorderDetail.Destroy;
begin
  FreeAndNil(FQry);
  inherited;
end;


Function TorderDetail.GetID: Integer;
var
  SQL : string;
begin
  FQry.Close;
  FQry.SQL.Clear;
  FQry.SQL.Add('select Max(ID) + 1 as ID from ordersdetails');
  FQry.Open;

  Result := FQry.FieldByName('ID').AsInteger;
end;

function TorderDetail.Save: Boolean;
var
  SQL : string;
begin
  Result := False;
  FQry.Close;
  FQry.SQL.Clear;
  SQL := 'INSERT INTO OrdersDetails' +
                '(ID,IDProduct, Qtd, price, iDOrder)'     +
                'VALUES ( ' + FID.ToString        +  ','  +
                              FIDProduct.ToString +  ','  +
                              FQtd.ToString       +  ','  +
                              FPrice.ToString     +  ','  +
                              FIDorder.ToString   +  ')'  ;

  FQry.SQL.Add(SQL);

  FQry.ExecSQL;
  Result := FQry.RowsAffected > 0;
end;

procedure TorderDetail.SetID(const Value: integer);
begin
  FID := Value;
end;

procedure TorderDetail.SetIDOrder(const Value: integer);
begin
  FIDOrder := Value;
end;

procedure TorderDetail.SetIDProduct(const Value: integer);
begin
  FIDProduct := Value;
end;

procedure TorderDetail.SetPrice(const Value: double);
begin
  FPrice := Value;
end;

procedure TorderDetail.SetQtd(const Value: integer);
begin
  FQtd := Value;
end;

end.
