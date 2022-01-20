unit UnovasLocacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons;

type
  TfrmNovaLocacao = class(TForm)
    pnlBack: TPanel;
    pnlTop: TPanel;
    Panel1: TPanel;
    btnNovo: TSpeedButton;
    Splitter1: TSplitter;
    btnLocalizar: TSpeedButton;
    Splitter2: TSplitter;
    btnSair: TSpeedButton;
    edtId: TLabeledEdit;
    edtIdCliente: TLabeledEdit;
    btnidCliente: TSpeedButton;
    edtCodFilme: TLabeledEdit;
    btnCodFilme: TSpeedButton;
    edtCliente: TEdit;
    edtFilme: TEdit;
    pnlDate: TPanel;
    data: TLabel;
    btnEnviar: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNovaLocacao: TfrmNovaLocacao;

implementation

{$R *.dfm}

end.
