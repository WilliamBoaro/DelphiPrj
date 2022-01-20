unit uformprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Relatrios1: TMenuItem;
    URA1: TMenuItem;
    N70001: TMenuItem;
    Bruto1: TMenuItem;
    procedure N70001Click(Sender: TObject);
    procedure Bruto1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  uFormReport, uFormDados;

{$R *.dfm}

procedure TfrmPrincipal.Bruto1Click(Sender: TObject);
var
  Bruto : TformDados;
begin
  Bruto := TformDados.Create(self);
  try
    Bruto.ShowModal;
  finally
    Bruto.Free;
  end;
end;

procedure TfrmPrincipal.N70001Click(Sender: TObject);
Var
  Report : TformReport;
begin
  Report := TformReport.Create(self);
  try
    Report.ShowModal;
  finally
    Report.Free;
  end;
end;

end.
