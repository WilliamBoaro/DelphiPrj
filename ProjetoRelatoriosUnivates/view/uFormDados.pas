unit uFormDados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TformDados = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnEnviar: TButton;
    Label1: TLabel;
    edtProcuraArq: TEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formDados: TformDados;

implementation

uses
  UdmReport;

{$R *.dfm}

end.
