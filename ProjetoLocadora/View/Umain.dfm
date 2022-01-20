object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Locadora'
  ClientHeight = 544
  ClientWidth = 1305
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBack: TPanel
    Left = 0
    Top = 0
    Width = 1305
    Height = 544
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 1070
    ExplicitHeight = 602
    object SpeedButton2: TSpeedButton
      Left = 902
      Top = 49
      Width = 403
      Height = 494
      Align = alLeft
    end
    object SpeedButton1: TSpeedButton
      Left = 513
      Top = 49
      Width = 389
      Height = 494
      Align = alLeft
      ExplicitLeft = 124
    end
    object SpeedButton3: TSpeedButton
      Left = 124
      Top = 49
      Width = 389
      Height = 494
      Align = alLeft
    end
    object pnlMenu: TPanel
      Left = 1
      Top = 1
      Width = 1303
      Height = 48
      Align = alTop
      Color = 2960685
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = -5
      object Label1: TLabel
        Left = 1143
        Top = 1
        Width = 159
        Height = 46
        Align = alRight
        Caption = 'Sistema Locadora'
        Color = clBtnHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ExplicitLeft = 1130
        ExplicitTop = 10
        ExplicitHeight = 38
      end
    end
    object pnlMenuSide: TPanel
      Left = 1
      Top = 49
      Width = 123
      Height = 494
      Align = alLeft
      Color = 8454143
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = -5
    end
  end
  object MainMenu1: TMainMenu
    Left = 936
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Novo1: TMenuItem
        Caption = 'Novo'
      end
      object Novo2: TMenuItem
        Caption = 'Cliente'
        OnClick = Novo2Click
      end
    end
    object Deletar1: TMenuItem
      Caption = 'Deletar'
      OnClick = Deletar1Click
    end
    object Atualizar1: TMenuItem
      Caption = 'Atualizar'
      OnClick = Atualizar1Click
    end
  end
end
