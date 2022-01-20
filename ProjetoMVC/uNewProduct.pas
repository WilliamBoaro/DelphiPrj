unit uNewProduct;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TTfrmNewProduct = class(TForm)
    pnlTop: TPanel;
    pnlCenter: TPanel;
    Label1: TLabel;
    edtid: TEdit;
    Label2: TLabel;
    edtName: TEdit;
    Label3: TLabel;
    edtSize: TEdit;
    Kind: TLabel;
    edtKind: TEdit;
    Label4: TLabel;
    edtPrice: TEdit;
    btnSave: TButton;
    btnClear: TButton;
    bntSair: TButton;
    Label5: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TfrmNewProduct: TTfrmNewProduct;

implementation

{$R *.dfm}

end.
