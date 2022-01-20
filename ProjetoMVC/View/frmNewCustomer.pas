unit frmNewCustomer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TtfmNewCustomer = class(TForm)
    pnlBack: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lblCity: TLabel;
    edtid: TEdit;
    edtName: TEdit;
    edtAddress: TEdit;
    edtCity: TEdit;
    pnlTop: TPanel;
    Label4: TLabel;
    edtEmail: TEdit;
    btnSave: TButton;
    btnClear: TButton;
    bntSair: TButton;
    Ne: TLabel;
    procedure btnSaveClick(Sender: TObject);
    procedure bntSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  UCustomer, UControllerCustomer;

{$R *.dfm}

procedure TtfmNewCustomer.btnSaveClick(Sender: TObject);
var
  Customer           : Tcustomer;
  ControllerCustomer : TcontrollerCustomer;
begin
  try
    Customer           := Tcustomer.Create;
    ControllerCustomer := TcontrollerCustomer.Create;
    Customer.ID        := StrToInt(edtid.Text);
    Customer.name      := edtname.text;
    Customer.Address   := edtAddress.text;
    Customer.City      := edtCity.Text;
    Customer.Email     := edtEmail.text;
    ControllerCustomer.Save(Customer);
  finally
    Customer.free;
    ControllerCustomer.free;
  end;


end;

procedure TtfmNewCustomer.bntSairClick(Sender: TObject);
begin
  Close;
end;

end.
