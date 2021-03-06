unit Orders;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids,PesqusaCustomer, Order,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, datamodel ;

type
  TfrmOrders = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    btnNovo: TButton;
    btnSair: TButton;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    btnLocalizar: TButton;
    edtCustomer: TEdit;
    LADAD: TLabel;
    Label2: TLabel;
    Customer: TLabel;
    edtId: TEdit;
    edtCustomerID: TEdit;
    edtDate: TMaskEdit;
    spbtnBuscaCustomer: TSpeedButton;
    edtProduct: TEdit;
    edtproductID: TLabeledEdit;
    edtQtde: TLabeledEdit;
    edtPrice: TLabeledEdit;
    edtDelete: TButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    spdButtonBuscaProduct: TSpeedButton;
    edtInsert: TButton;
    Button2: TButton;
    DataSource1: TDataSource;
    qryOrderDetails: TFDQuery;
    qryOrders: TFDQuery;
    qryOrdersID: TIntegerField;
    qryOrdersDate: TWideStringField;
    qryOrdersIDCustomer: TIntegerField;
    qryOrdersName: TWideStringField;
    qryOrderDetailsIDProduct: TIntegerField;
    qryOrderDetailsQtd: TIntegerField;
    qryOrderDetailsPrice: TFloatField;
    qryOrderDetailsName: TWideStringField;
    procedure spbtnBuscaCustomerClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure edtInsertClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure spdButtonBuscaProductClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    FOrder: Torder;
    FOrderDetail: TorderDetail;
    procedure getOrderDetails;
    procedure getOrder;
  public
    { Public declarations }
  end;

var
  frmOrders: TfrmOrders;

implementation

uses
  frmPesquisaProdutcs, UorderDetails, Uorder;

{$R *.dfm}

procedure TfrmOrders.btnNovoClick(Sender: TObject);
begin
  edtId.Clear;
  edtCustomerID.Clear;
  edtCustomer.Clear;
  edtDate.Clear;
  edtProduct.Clear;
  edtproductID.Clear;
  edtPrice.Clear;
  edtProduct.Clear;
  edtQtde.Clear;
end;

procedure TfrmOrders.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmOrders.btnLocalizarClick(Sender: TObject);
begin
  FOrder.ID := StrToIntDef(InputBox('Localizar Pedidos', 'Informe o ID do pedido a ser localizado', ''), 0);
  getOrderDetails;
  getOrder;
end;

procedure TfrmOrders.Button2Click(Sender: TObject);
begin
  FOrderDetail.id        := FOrderDetail.GetID;
  FOrderDetail.IDProduct := StrToInt(edtproductID.Text);
  FOrderDetail.Qtd       := StrToInt(edtQtde.Text);
  FOrderDetail.Price     := StrToFloat(edtPrice.Text);
  FOrderDetail.IDOrder   := FOrder.ID;

  if FOrderDetail.Save then
    getOrderDetails;
end;

procedure TfrmOrders.edtInsertClick(Sender: TObject);
begin
  FOrder.ID   := StrToInt(edtId.Text);
  FOrder.Date := edtDate.Text;
  FOrder.IDCustomer := StrToInt(edtCustomerID.Text);

  if FOrder.Save then
    ShowMessage('Registro Realizdo com sucesso!')
  else
    ShowMessage('Erro ao Realizar o Registro');
end;

procedure TfrmOrders.FormCreate(Sender: TObject);
begin
  FOrder       := Torder.Create;
  FOrderDetail := TorderDetail.Create;
end;

procedure TfrmOrders.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FOrder);
end;

procedure TfrmOrders.getOrderDetails;
begin
  qryOrderDetails.Close;
  qryOrderDetails.ParamByName('ORDERID').AsInteger := FOrder.ID;
  qryOrderDetails.Open;

  if qryOrderDetails.RecordCount > 0 then
  begin
    edtProduct.Text := qryOrderDetailsName.AsString;
  end;
end;

procedure TfrmOrders.getOrder;
begin
  qryOrders.Close;
  qryOrders.ParamByName('ID').AsInteger := FOrder.ID;
  qryOrders.Open;

  if qryOrders.RecordCount > 0 then
  begin
    edtId.Text         := qryOrdersID.AsString;
    edtCustomerID.Text := qryOrdersIDCustomer.AsString;
    edtCustomer.Text   := qryOrdersName.AsString;
    edtDate.Text       := qryOrdersDate.AsString;
  end;
end;

procedure TfrmOrders.spdButtonBuscaProductClick(Sender: TObject);
var
  PesquisaProdutos : TfrmProdutos;
begin
  PesquisaProdutos := TfrmProdutos.Create(self);
  try
    PesquisaProdutos.ShowModal;
    edtproductID.Text := PesquisaProdutos.Products.ID.ToString;
    edtProduct.Text := PesquisaProdutos.Products.Name;
    edtPrice.Text := FormatFloat('###,0.00', PesquisaProdutos.Products.Price);
  finally
    PesquisaProdutos.Free;
  end;
end;

procedure TfrmOrders.spbtnBuscaCustomerClick(Sender: TObject);
var
 PesquisaCustomer :TtfrmPesquisaProdutos;
begin
  PesquisaCustomer := TtfrmPesquisaProdutos.Create(self);
  try
    PesquisaCustomer.ShowModal;
    edtCustomerID.Text       := PesquisaCustomer.Customer.ID.ToString;
    edtCustomer.Text         := PesquisaCustomer.Customer.Name;
  finally
    PesquisaCustomer.Free;
  end;
end;

end.
