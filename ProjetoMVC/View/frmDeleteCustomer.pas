unit frmDeleteCustomer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TtfrmDeleteCustomer = class(TForm)
    Label1: TLabel;
    edtDelete: TEdit;
    edtSend: TButton;
    btnClear: TButton;
    edtExit: TButton;
    procedure edtSendClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  tfrmDeleteCustomer: TtfrmDeleteCustomer;

implementation

uses
  UCustomer, UControllerCustomer;

{$R *.dfm}

procedure TtfrmDeleteCustomer.edtSendClick(Sender: TObject);
var
  Customer           : Tcustomer;
  ControllerCustomer : TcontrollerCustomer;
begin
  Customer.ID        := StrToInt(edtDelete.Text);
  ControllerCustomer.Delete(Customer);


end;

end.
