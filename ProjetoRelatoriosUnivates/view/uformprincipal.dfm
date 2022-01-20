object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 581
  ClientWidth = 1327
  Color = clWhite
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
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      object URA1: TMenuItem
        Caption = 'URA'
        object N70001: TMenuItem
          Caption = '7000'
          OnClick = N70001Click
        end
      end
      object Bruto1: TMenuItem
        Caption = 'Bruto'
        OnClick = Bruto1Click
      end
    end
  end
end
