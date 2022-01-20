unit uNewProduct;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  UControllerProducts, Uproducts;

type
  TfrmNewProduct = class(TForm)
    pnlTop: TPanel;
    pnlCenter: TPanel;
    Label1: TLabel;
    edtid: TEdit;
    Label2: TLabel;
    edtName: TEdit;
    Label3: TLabel;
    edtSize: TEdit;
    Kind: TLabel;
    edtKind: TEdit;
    Label4: TLabel;
    edtPrice: TEdit;
    btnSave: TButton;
    btnClear: TButton;
    bntSair: TButton;
    Label5: TLabel;
    procedure bntSairClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
   FController : TControllerProduct;
   FProduct    :  Tproducts;
  public
   constructor Create;
   Destructor Destroy; override;
  end;


implementation

uses
  System.SysUtils;

{$R *.dfm}

procedure TfrmNewProduct.bntSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmNewProduct.btnSaveClick(Sender: TObject);
begin
  FProduct.id    := StrToInt(edtid.Text);
  FProduct.name  := edtName.Text;
  FProduct.kind  := edtKind.Text;
  FProduct.size  := StrToFloat(edtKind.Text);
  FProduct.price := StrToFloat(edtPrice.Text);

  FController.Save(FProduct);

end;

constructor TfrmNewProduct.Create;
begin
  FController := TControllerProduct.Create;
  FProduct   :=  Tproducts.Create;

end;

destructor TfrmNewProduct.Destroy;
begin
  FreeAndNil(FController);
  FreeAndNil(FProduct);
  inherited;
end;

end.
