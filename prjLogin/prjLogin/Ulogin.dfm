object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  Width = 752
  Height = 522
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  LayoutMgr = IWTemplateProcessorHTML1
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignLeft = 2
  DesignTop = 2
  object btnEnviar: TIWButton
    Left = 31
    Top = 16
    Width = 75
    Height = 25
    Css = 'btnEnviar'
    Caption = 'Enviar'
    Color = clBtnFace
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'btnEnviar'
    TabOrder = 0
    OnClick = btnEnviarClick
  end
  object edtLogin: TIWEdit
    Left = 112
    Top = 20
    Width = 121
    Height = 21
    Css = 'edtLogin'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'edtLogin'
    SubmitOnAsyncEvent = True
    TabOrder = 1
  end
  object edtSenha: TIWEdit
    Left = 112
    Top = 47
    Width = 121
    Height = 21
    Css = 'edtSenha'
    Font.Color = clNone
    Font.Size = 10
    Font.Style = []
    FriendlyName = 'edtSenha'
    SubmitOnAsyncEvent = True
    TabOrder = 2
  end
  object IWTemplateProcessorHTML1: TIWTemplateProcessorHTML
    TagType = ttIntraWeb
    Templates.Default = 'Ulogin.html'
    RenderStyles = False
    Left = 312
    Top = 16
  end
end
