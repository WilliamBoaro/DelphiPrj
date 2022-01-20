unit frmCustomer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  MVCFramework.RESTClient;

type
  TfrmControle = class(TForm)
    btnGet: TButton;
    MemoJSOn: TMemo;
    procedure btnGetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmControle: TfrmControle;

implementation

{$R *.dfm}

procedure TfrmControle.btnGetClick(Sender: TObject);
var
  LRESTClient : TRESTClient;
  LRESTResponse : IRESTResponse;

begin
   LRESTClient := TRESTClient.Create('localhost', 8080);


   try
    LRESTClient.doGET('/api/customers', []);
    MemoJSOn.text :=  LRESTResponse.BodyAsString;


   finally
     LRESTClient.Free;
   end;

end;

end.
