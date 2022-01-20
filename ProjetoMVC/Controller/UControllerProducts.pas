unit UControllerProducts;

interface

uses
  Uproducts, uDAOProducts;
type
  TControllerProduct = class
  private
    FDaoProducts: TDAOProduct;
  public
    constructor Create;
    destructor  Destroy; override;

    procedure Save   (const AProduct : TProducts);
    procedure Delete (const AProduct : TProducts);
    Procedure Update (const AProduct : TProducts);

    end;

implementation

uses
  System.SysUtils;



{ TControllerProduct }

constructor TControllerProduct.Create;
begin
  FDaoProducts := TDAOProduct.Create;
  inherited;
end;

procedure TControllerProduct.Delete(const AProduct: TProducts);
begin
  FDaoProducts.Delete(AProduct);
  end;

destructor TControllerProduct.Destroy;
begin
  freeAndNil(FDaoProducts);
  inherited;
end;

procedure TControllerProduct.Save(const AProduct: TProducts);
begin
  FDaoProducts.Save(AProduct);

  end;

procedure TControllerProduct.Update(const AProduct: TProducts);
begin
  FDaoProducts.Update(AProduct);
end;

end.
