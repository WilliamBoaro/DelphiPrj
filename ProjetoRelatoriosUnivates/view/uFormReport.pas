unit uFormReport;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TformReport = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    edtArquivo: TEdit;
    btnSelecionar: TButton;
    btnReport: TButton;
    opAbrir: TOpenDialog;
    procedure btnSelecionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formReport: TformReport;

implementation

{$R *.dfm}

procedure TformReport.btnSelecionarClick(Sender: TObject);
var
  arq : TextFile;
begin
  if opAbrir.Execute then
    if opAbrir.FileName <> '' then
    begin
      edtArquivo.Text := opAbrir.FileName;
      AssignFile(arq,opAbrir.FileName);
    end;


end;

end.
