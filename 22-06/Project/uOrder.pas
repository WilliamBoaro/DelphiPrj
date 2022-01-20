unit uOrder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Order;

type
  TfOrder = class(TForm)
    fdas: TPanel;
    edtOrderCustomerID: TLabeledEdit;
    edtDate: TLabeledEdit;
    edtId: TLabeledEdit;
    btnSalvar: TButton;
    btnSai: TButton;
    procedure btnSaiClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfOrder.btnSaiClick(Sender: TObject);
begin
  close;
end;

procedure TfOrder.btnSalvarClick(Sender: TObject);
var
  Order : TOrder;

begin
  Order := Torder.Create;
  Order.ID := StrToIntDef(edtId.Text,0);
  Order.Date := edtDate.Text;
  Order.IDCustomer := StrToIntDef(edtOrderCustomerID.Text,0);
  if order.Save then
    ShowMessage('Registro Realizado com sucesso')
    else
    ShowMessage('Erro ao realizar o registro');

end;

end.
