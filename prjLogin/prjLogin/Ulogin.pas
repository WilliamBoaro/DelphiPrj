unit Ulogin;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes,
  IWVCLComponent, IWBaseLayoutComponent, IWBaseContainerLayout,
  IWContainerLayout, IWTemplateProcessorHTML, IWCompEdit, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompButton;

type
  TfrmLogin = class(TIWAppForm)
    btnEnviar: TIWButton;
    edtLogin: TIWEdit;
    edtSenha: TIWEdit;
    IWTemplateProcessorHTML1: TIWTemplateProcessorHTML;
    procedure btnEnviarClick(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}


procedure TfrmLogin.btnEnviarClick(Sender: TObject);
begin
  if (edtLogin.Caption = 'will') and (edtSenha.Caption = '123') then
    begin
      WebApplication.ShowMessage('Deu certo', smAlert)
    end;
end;

initialization
  TfrmLogin.SetAsMainForm;

end.
