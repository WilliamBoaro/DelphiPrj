unit UbuscaCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    pnlBack: TPanel;
    lblId: TLabel;
    lblNome: TLabel;
    lblData: TLabel;
    lblTelefone: TLabel;
    Label2: TLabel;
    pnlTop: TPanel;
    Label1: TLabel;
    btnSair: TSpeedButton;
    edtId: TEdit;
    edtNome: TEdit;
    edtDate: TDateTimePicker;
    edtTelefone: TMaskEdit;
    edtEmail: TEdit;
    btnSalvar: TButton;
    brnBuscar: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
