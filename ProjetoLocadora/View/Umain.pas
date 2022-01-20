unit Umain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Tabs, Vcl.Buttons, Vcl.ExtCtrls, uconsultaFilmes,
  UconsultaCliente, Vcl.Menus, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    pnlBack: TPanel;
    pnlMenu: TPanel;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    pnlMenuSide: TPanel;
    Novo1: TMenuItem;
    Novo2: TMenuItem;
    Deletar1: TMenuItem;
    Atualizar1: TMenuItem;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure btnFilmesClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnNovaLocacaoClick(Sender: TObject);
    procedure Novo2Click(Sender: TObject);
    procedure Deletar1Click(Sender: TObject);
    procedure Atualizar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    procedure getForm(Aform : TForm);
  end;

var
  frmMain : TfrmMain;

implementation

uses
  UnovasLocacoes, UcadastroCliente, UdeletaCliente, UupdateCliente;

{$R *.dfm}

procedure TfrmMain.Atualizar1Click(Sender: TObject);
var
  TelaAtulizarCliente : TfrmUpdateCliente;
begin
  TelaAtulizarCliente := TfrmUpdateCliente.Create(self);
  try
    TelaAtulizarCliente.ShowModal;
  finally

  end;
end;

procedure TfrmMain.btnClientesClick(Sender: TObject);
var
  TelaConsultaCliente : TfrmConsultaCliente;
begin
  TelaConsultaCliente := TfrmConsultaCliente.Create(self);
  try
    TelaConsultaCliente.ShowModal;
  finally
    TelaConsultaCliente.Free;
  end;
end;

procedure TfrmMain.btnFilmesClick(Sender: TObject);
var
 TelaConsultaFilmes : TfrmConsultaFilme;
begin
  TelaConsultaFilmes := TfrmConsultaFilme.Create(self);
    try
      TelaConsultaFilmes.ShowModal;
    finally
      TelaConsultaFilmes.Free;
end;

end;

procedure TfrmMain.btnNovaLocacaoClick(Sender: TObject);
var
  TelaNovaLocacao : TfrmNovaLocacao;
begin
  TelaNovaLocacao := TfrmNovaLocacao.Create(self);
  TelaNovaLocacao.ShowModal;
end;

procedure TfrmMain.Deletar1Click(Sender: TObject);
var
  TelaDeletaCliente : TfrmDeletaCliente;
begin
  TelaDeletaCliente := TfrmDeletaCliente.Create(self);
  TelaDeletaCliente.showModal;
end;

procedure TfrmMain.getForm(Aform: TForm);
begin

end;

procedure TfrmMain.Novo2Click(Sender: TObject);
var
  TelaNovoCliente : TfrmCadastroCliente;
begin
  try
    TelaNovoCliente := TfrmCadastroCliente.Create(self);
    TelaNovoCliente.show;
  finally

  end;
end;

end.
