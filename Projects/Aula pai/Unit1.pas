unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Panel1: TPanel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Button: Tbutton;
ButtonPanel: Tbutton;
implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
  var
  valor1: integer;
  valor2 : integer;
  resultado: integer;
  Button : Tbutton;



begin
  Button:= Tbutton.Create(Self);
  Button.Caption:= 'novo';
  Button.Parent := self;






end;

procedure TForm1.Button2Click(Sender: TObject);
Var
ButtonPanel: Tbutton;


begin
       ButtonPanel := Tbutton.Create(self);
       ButtonPanel.Parent:= Panel1;

end;

end.
