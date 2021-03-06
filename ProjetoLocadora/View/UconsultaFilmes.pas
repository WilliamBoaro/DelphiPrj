unit UconsultaFilmes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, udatamodel, ufilme;

type
  TfrmConsultaFilme = class(TForm)
    pnlBack: TPanel;
    pnlMenu: TPanel;
    pnlImagem: TPanel;
    edtCodFilme: TEdit;
    edtNome: TEdit;
    btnMostrarTodos: TButton;
    btnVoltar: TSpeedButton;
    lblFilme: TLabel;
    lblNome: TLabel;
    dbGridFilmes: TDBGrid;
    dataSourceFilmes: TDataSource;
    procedure btnMostrarTodosClick(Sender: TObject);

  private
    Ffilme : Tfilme;
  public

  end;

var
  frmConsultaFilme: TfrmConsultaFilme;

implementation

{$R *.dfm}


procedure TfrmConsultaFilme.btnMostrarTodosClick(Sender: TObject);
begin
  dmLocadora.qryFilme.active := true;
end;

end.
