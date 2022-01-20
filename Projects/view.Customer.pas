unit view.Customer;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, MVCFramework.RESTClient, DataModuleHome;

type
  TForm1 = class(TForm)
    btnGet: TButton;
    NiceMemo: TMemo;
    procedure btnGetClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnGetClick(Sender: TObject);

var
 LRESTClient : TRESTClient;
 LRESTResponse : IRESTResponse;
begin
  LRESTClient :=  TRESTClient.Create('localhost',8080);
  try
  LRESTResponse := LRESTClient.doGET('/api/customers', []);

    NiceMemo.Text := LRESTResponse.BodyAsString;


  finally
  LRESTClient.Free;

  end;





end;


end.
