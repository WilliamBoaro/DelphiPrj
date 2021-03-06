unit Umain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.jpeg, uNewCustomer, uNewProduct;

type
  TfrmMain = class(TForm)
    pnlMain: TPanel;
    btnMenu: TSpeedButton;
    brnSearch: TSpeedButton;
    btnOrders: TSpeedButton;
    btnCustomer: TSpeedButton;
    pnlBack: TFlowPanel;
    pnlCustomerOp: TPanel;
    btnClose: TSpeedButton;
    btnDelete: TSpeedButton;
    SpeedButton2: TSpeedButton;
    btnProduts: TSpeedButton;
    procedure btnCustomerClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnMenuClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnProdutsClick(Sender: TObject);
  private
    FFormMostrar: TForm;
  public
    constructor create(AOwner: TComponent); override;
    destructor destroy; override;

    procedure FrmShow(Aform: Tform);

  end;

var

  frmMain    : TfrmMain;
  expandido  : boolean;
  OrdersOp   : boolean;


implementation

uses
  frmDeleteCustomer;

{$R *.dfm}

procedure TfrmMain.btnCloseClick(Sender: TObject);
begin
  pnlCustomerOp.Visible := false;
end;

procedure TfrmMain.btnCustomerClick(Sender: TObject);
begin
  pnlCustomerOp.Visible := true;

  if Assigned(FFormMostrar) then
    FreeAndNil(FFormMostrar);

  FFormMostrar := TfrmNewCustomer.Create(self);
end;

procedure TfrmMain.btnMenuClick(Sender: TObject);
begin
  if expandido then
    begin
      pnlMain.Width := 41
    end
  else
    begin
     pnlMain.Width := 153;

    end;
     expandido := not expandido;
end;

procedure TfrmMain.btnProdutsClick(Sender: TObject);
begin
  pnlCustomerOp.Visible := true;

  if Assigned(FFormMostrar) then
    FreeAndNil(FFormMostrar);

  FFormMostrar := TfrmNewProduct.Create(self);
end;

constructor TfrmMain.create(AOwner: TComponent);
begin
  inherited;
  OrdersOp   := False;
end;

destructor TfrmMain.destroy;
begin
  if Assigned(FFormMostrar) then
    FreeAndNil(FFormMostrar);

  inherited;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
 pnlMain.Width := 41;
end;

procedure TfrmMain.FrmShow(Aform: Tform);
begin
  pnlCustomerOp.Visible := false;
  Aform.Parent      := pnlBack;
  Aform.Align       := alClient;
  Aform.BorderStyle := bsNone;
  Aform.Show;
end;

procedure TfrmMain.SpeedButton2Click(Sender: TObject);
 var
  DeleteCustomerForm : ttfrmDeleteCustomer;

begin
  if FFormMostrar is TfrmNewCustomer then
    FrmShow(FFormMostrar)
  else
  if FFormMostrar is TfrmNewProduct then
    FrmShow(FFormMostrar);
end;

end.



