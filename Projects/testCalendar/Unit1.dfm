object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
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
  object btnSetDate: TButton
    Left = 224
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Definir Data'
    TabOrder = 0
    OnClick = btnSetDateClick
  end
  object DateTimePicker1: TDateTimePicker
    Left = 224
    Top = 80
    Width = 313
    Height = 21
    Cursor = crHandPoint
    Date = 44389.000000000000000000
    Time = 0.640091944442247000
    DateFormat = dfLong
    DateMode = dmUpDown
    TabOrder = 1
  end
  object edtData: TMaskEdit
    Left = 224
    Top = 176
    Width = 120
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 2
    Text = '  /  /    '
  end
  object edtRecebeData: TEdit
    Left = 376
    Top = 176
    Width = 201
    Height = 21
    TabOrder = 3
  end
  object btnGetDate: TButton
    Left = 376
    Top = 240
    Width = 75
    Height = 25
    Caption = 'Pegar a Data'
    TabOrder = 4
    OnClick = btnGetDateClick
  end
end
