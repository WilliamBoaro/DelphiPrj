object formReport: TformReport
  Left = 0
  Top = 0
  Caption = 'URA 7000'
  ClientHeight = 351
  ClientWidth = 397
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 397
    Height = 65
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 26
      Width = 37
      Height = 13
      Caption = 'Arquivo'
    end
    object edtArquivo: TEdit
      Left = 53
      Top = 23
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object btnSelecionar: TButton
      Left = 180
      Top = 21
      Width = 75
      Height = 25
      Caption = 'Selecionar'
      TabOrder = 1
      OnClick = btnSelecionarClick
    end
    object btnReport: TButton
      Left = 261
      Top = 21
      Width = 92
      Height = 25
      Caption = 'Gerar Relat'#243'rio'
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 397
    Height = 286
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
  end
  object opAbrir: TOpenDialog
    Filter = 'Aruquivo TXT|*.txt'
    Left = 352
    Top = 80
  end
end
