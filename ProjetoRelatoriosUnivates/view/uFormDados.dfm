object formDados: TformDados
  Left = 0
  Top = 0
  Caption = 'Tabela de Dados Bruto'
  ClientHeight = 427
  ClientWidth = 944
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
    Width = 944
    Height = 49
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 18
      Width = 44
      Height = 13
      Caption = 'Arquivo: '
    end
    object btnEnviar: TButton
      Left = 200
      Top = 13
      Width = 75
      Height = 25
      Caption = 'Enviar'
      TabOrder = 0
    end
    object edtProcuraArq: TEdit
      Left = 58
      Top = 17
      Width = 121
      Height = 21
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 944
    Height = 378
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 0
      Top = 6
      Width = 944
      Height = 382
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object DataSource1: TDataSource
    Left = 888
    Top = 8
  end
end
