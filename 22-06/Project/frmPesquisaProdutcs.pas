unit frmPesquisaProdutcs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Products;

type
  TfrmProdutos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    edtSearchProduct: TLabeledEdit;
    edtProcura: TLabeledEdit;
    DataSource1: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure edtProcuraChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    FProducts: Tproducts;
    procedure SetProducts(const Value: Tproducts);
    { Private declarations }
  public
    property Products : Tproducts read FProducts write SetProducts;
  end;

var
  frmProdutos: TfrmProdutos;

implementation


{$R *.dfm}

{ TfrmProdutos }

procedure TfrmProdutos.DBGrid1DblClick(Sender: TObject);
begin
  FProducts.ID    := DataSource1.DataSet.FieldByName('ID').AsInteger;
  FProducts.Name  := DataSource1.DataSet.FieldByName('Name').AsString;
  FProducts.Price := DataSource1.DataSet.FieldByName('Price').AsFloat;
  FProducts.Size  := DataSource1.DataSet.FieldByName('Size').AsInteger;
  FProducts.Kind  := DataSource1.DataSet.FieldByName('Kind').AsString;
  Close;
end;

procedure TfrmProdutos.edtProcuraChange(Sender: TObject);
begin
  edtProcura.SetFocus;
  if trim(edtProcura.Text) <> EmptyStr then
  begin
    DataSource1.DataSet.Filtered := false;
    DataSource1.DataSet.Filter   := 'Name like  ' + quotedStr('%' + trim(edtProcura.Text) + '%');
    DataSource1.DataSet.Filtered := True;
  end;
    DataSource1.DataSet.Filtered := False;
end;

procedure TfrmProdutos.FormCreate(Sender: TObject);
begin
  FProducts :=  Tproducts.Create;
  DataSource1.DataSet := FProducts.MemTbl;
end;

procedure TfrmProdutos.SetProducts(const Value: Tproducts);
begin
  FProducts := Value;
end;

end.
