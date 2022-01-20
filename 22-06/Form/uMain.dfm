object fMain: TfMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 16
    Top = 16
    object N1: TMenuItem
      Caption = 'Cadastro'
      object Cutomer1: TMenuItem
        Caption = 'Cutomers'
        OnClick = Cutomer1Click
      end
      object Products1: TMenuItem
        Caption = 'Products'
        OnClick = Products1Click
      end
    end
    object Pedidos1: TMenuItem
      Caption = 'Pedidos'
      object elaDePedidos1: TMenuItem
        Caption = 'Tela De Pedidos'
        OnClick = elaDePedidos1Click
      end
    end
  end
end
