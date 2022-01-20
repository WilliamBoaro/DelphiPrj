unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uCustomer, Vcl.Menus, uProducts,uOrder, Order,
  Vcl.ComCtrls, System.ImageList, Vcl.ImgList ;

type
  TfMain = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Cutomer1: TMenuItem;
    Products1: TMenuItem;
    Pedidos1: TMenuItem;
    elaDePedidos1: TMenuItem;
    procedure Cutomer2Click(Sender: TObject);
    procedure Cutomer1Click(Sender: TObject);
    procedure Products1Click(Sender: TObject);
    procedure O1Click(Sender: TObject);
    procedure elaDePedidos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMain: TfMain;

implementation

uses
  Orders;

{$R *.dfm}



procedure TfMain.Cutomer1Click(Sender: TObject);
var
  fCustomer: TfCustomer;
begin
  fCustomer := TfCustomer.Create(self);
  try
    fCustomer.ShowModal;
  finally
    fCustomer.Free;
  end;
end;

procedure TfMain.Cutomer2Click(Sender: TObject);
var
  fOrder : TfOrder;
begin
  fOrder := TfOrder.Create(self);
  try
     fOrder.ShowModal;
  finally
  end;
end;

procedure TfMain.elaDePedidos1Click(Sender: TObject);
var
  forder : TfrmOrders;
begin
  forder :=  TfrmOrders.Create(self);
  try
    forder.ShowModal;
  finally
    forder.Free;
  end;
end;

procedure TfMain.O1Click(Sender: TObject);
var
  fOrdersDetail : TfOrder;
begin

end;

procedure TfMain.Products1Click(Sender: TObject);
var
  fProducts : tfProducts;

begin
  fProducts := TfProducts.Create(self);
try
   fProducts.ShowModal;
finally

end;
end;

end.
