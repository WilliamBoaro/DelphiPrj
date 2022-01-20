unit uProducts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Products,
  frmPesquisaProdutcs;

type
  TfProducts = class(TForm)
    s: TPanel;
    Panel1: TPanel;
    edtProductsID: TLabeledEdit;
    edtProductsName: TLabeledEdit;
    edtProductsSize: TLabeledEdit;
    edtProductsKind: TLabeledEdit;
    edtProductsPrice: TLabeledEdit;
    btnSave: TButton;
    btnExit: TButton;
    btnDelete: TButton;
    brnProcurar: TButton;
    procedure btnExitClick(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure edtProductsIDExit(Sender: TObject);
    procedure brnProcurarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}

procedure TfProducts.brnProcurarClick(Sender: TObject);
var
  PesquisaProduto : tfrmProdutos;
begin
  PesquisaProduto := tfrmProdutos.Create(self);
  try
    PesquisaProduto.ShowModal;
    edtProductsID.Text    := PesquisaProduto.Products.ID.ToString;
    edtProductsName.Text  := PesquisaProduto.Products.Name;
    edtProductsSize.Text  := PesquisaProduto.Products.Size.ToString;
    edtProductsKind.Text  := PesquisaProduto.Products.Kind;
    edtProductsPrice.Text := PesquisaProduto.Products.Price.ToString;



  finally
    PesquisaProduto.Free;
  end;
end;

procedure TfProducts.btnDeleteClick(Sender: TObject);
var
  Product : TProducts;
begin
  try
    Product := tProducts.Create;
    Product.ID := StrToInt(edtProductsID.Text);

    if MessageDlg('Confirma a exclusão do registro?', mtInformation,
                  [mbYes, mbNo, mbCancel], 0) = mrYes then
    begin
      if Product.Delete then
        ShowMessage('Registro deletado')
      else
        ShowMessage('Erro ao deletar o registro');
    end;

  finally
    Product.Free;
  end;
end;

procedure TfProducts.btnExitClick(Sender: TObject);
begin
  close;
end;

procedure TfProducts.btnSaveClick(Sender: TObject);
var
  Product : tProducts;
begin
  try
    Product      := tProducts.Create;
    Product.ID   := StrToInt(edtProductsID.Text);
    Product.Name := edtProductsName.Text;
    Product.Size := StrToFloat(edtProductsSize.Text);
    Product.Kind := edtProductsKind.text;
    Product.Price:= StrToFloatDef(edtProductsPrice.Text,0);
    if Product.Save then
      ShowMessage('Registro Realizado com Sucesso')
    else
      ShowMessage('Erro ao Realizar o Registro');

  finally
    Product.Free;
  end;


end;

procedure TfProducts.edtProductsIDExit(Sender: TObject);
var
  Product : tProducts;
begin
  Product      := tProducts.Create;
  Product.ID   := StrToInt(edtProductsID.Text);
  Product.FetchRecordByID;

  edtProductsName.Text  := Product.Name;
  edtProductsKind.Text  := Product.Kind;
  edtProductsSize.Text  := Product.Size.ToString;
  edtProductsPrice.Text := Product.Price.ToString;


end;

end.
