unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Mask;

type
  TForm1 = class(TForm)
    btnSetDate: TButton;
    DateTimePicker1: TDateTimePicker;
    edtData: TMaskEdit;
    edtRecebeData: TEdit;
    btnGetDate: TButton;
    procedure btnGetDateClick(Sender: TObject);
    procedure btnSetDateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnGetDateClick(Sender: TObject);
begin
  edtRecebeData.Text := DateToStr(DateTimePicker1.Date);
end;

procedure TForm1.btnSetDateClick(Sender: TObject);
begin
  DateTimePicker1.Date := StrToDateDef(edtData.Text, 0);
end;

end.
