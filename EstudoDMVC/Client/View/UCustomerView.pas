unit UCustomerView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,ControllerCustomer,
  Data.DB, Vcl.Grids, Vcl.DBGrids ;

type
  TfrmViewCustomer = class(TForm)
    btnGetAll: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure btnGetAllClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FController : TdmConstrollerCustomer;
  public
    { Public declarations }
  end;

var
  frmViewCustomer: TfrmViewCustomer;

implementation

{$R *.dfm}

procedure TfrmViewCustomer.btnGetAllClick(Sender: TObject);
begin
  FController.RefreshData;
end;

procedure TfrmViewCustomer.FormCreate(Sender: TObject);
begin
  FController := TdmConstrollerCustomer.Create(self);
end;

end.
