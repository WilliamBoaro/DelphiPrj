unit UconsultaCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, udatamodel;

type
  TfrmConsultaCliente = class(TForm)
    pnlBack: TPanel;
    pnlTop: TPanel;
    Cliente: TLabel;
    edtCliente: TEdit;
    btnMostrarTodo: TButton;
    dbgridCliente: TDBGrid;
    DataSource1: TDataSource;
    procedure btnMostrarTodoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaCliente: TfrmConsultaCliente;

implementation

{$R *.dfm}

procedure TfrmConsultaCliente.btnMostrarTodoClick(Sender: TObject);
begin
  dmLocadora.qryCliente.active := true;
end;

end.
