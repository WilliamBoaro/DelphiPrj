unit UcadastroFilme;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Buttons;

type
  TfrmCadastroFilme = class(TForm)
    pnlBack: TPanel;
    pnlTop: TPanel;
    Label1: TLabel;
    bntSair: TSpeedButton;
    lblId: TLabel;
    lblNome: TLabel;
    edtId: TEdit;
    edtNome: TEdit;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    lblQuantidade: TLabel;
    Edit5: TEdit;
    btnSalvar: TButton;
    procedure bntSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroFilme: TfrmCadastroFilme;

implementation

{$R *.dfm}

procedure TfrmCadastroFilme.bntSairClick(Sender: TObject);
begin
  close;
end;

end.
