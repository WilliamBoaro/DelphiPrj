unit PesqusaCustomer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, DataModel, Customer;

type
  TtfrmPesquisaProdutos = class(TForm)
    Panel1: TPanel;
    jghf: TPanel;
    DBGrid1: TDBGrid;
    edtValor: TEdit;
    DataSource1: TDataSource;
    lbl: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure edtValorChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    FCustomer: Tcustomer;
    procedure SetCustomer(const Value: Tcustomer);

  public
    property Customer: Tcustomer read FCustomer write SetCustomer;
  end;

var
  tfrmPesquisaProdutos: TtfrmPesquisaProdutos;


implementation

{$R *.dfm}

uses
  Orders;

procedure TtfrmPesquisaProdutos.DBGrid1DblClick(Sender: TObject);
begin
  FCustomer.ID      := DataSource1.DataSet.FieldByName('ID').AsInteger;
  FCustomer.Name    := DataSource1.DataSet.FieldByName('Name').AsString;
  FCustomer.Address := DataSource1.DataSet.FieldByName('Address').AsString;
  FCustomer.City    := DataSource1.DataSet.FieldByName('City').AsString;
  FCustomer.Email   := DataSource1.DataSet.FieldByName('Email').AsString;
  Close;
end;

procedure TtfrmPesquisaProdutos.edtValorChange(Sender: TObject);
begin
  edtValor.SetFocus;
  if trim(edtValor.Text) <> EmptyStr then
  begin
    DataSource1.DataSet.Filtered := false;
    DataSource1.DataSet.Filter   := 'Name like  ' + quotedStr('%' + trim(edtValor.Text) + '%');
    DataSource1.DataSet.Filtered := True;
  end;
    DataSource1.DataSet.Filtered := False;
end;

procedure TtfrmPesquisaProdutos.FormCreate(Sender: TObject);
begin
  FCustomer :=  Tcustomer.Create;
  DataSource1.DataSet := FCustomer.MemTbl;
end;

procedure TtfrmPesquisaProdutos.SetCustomer(const Value: Tcustomer);
begin
  FCustomer := Value;
end;

end.
