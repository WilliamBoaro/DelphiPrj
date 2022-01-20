object tfrmDeleteCustomer: TtfrmDeleteCustomer
  Left = 0
  Top = 0
  Caption = 'Delete a Customer'
  ClientHeight = 299
  ClientWidth = 524
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 470
    Height = 37
    Caption = 'Digite o ID de quem deseja Excluir: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGrayText
    Font.Height = -27
    Font.Name = 'Segoe UI Black'
    Font.Style = []
    ParentFont = False
  end
  object edtDelete: TEdit
    Left = 32
    Top = 75
    Width = 321
    Height = 21
    TabOrder = 0
  end
  object edtSend: TButton
    Left = 40
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Send'
    TabOrder = 1
    OnClick = edtSendClick
  end
  object btnClear: TButton
    Left = 136
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 2
  end
  object edtExit: TButton
    Left = 232
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Exit'
    TabOrder = 3
  end
end
