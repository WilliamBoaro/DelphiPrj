object frmControle: TfrmControle
  Left = 0
  Top = 0
  Caption = 'Controle'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MemoJSOn: TMemo
    Left = 0
    Top = 47
    Width = 635
    Height = 252
    Align = alCustom
    Lines.Strings = (
      'MemoJSOn')
    TabOrder = 0
  end
  object btnGet: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Get All'
    TabOrder = 1
    OnClick = btnGetClick
  end
end
