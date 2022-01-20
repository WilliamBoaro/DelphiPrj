object frmNovaLocacao: TfrmNovaLocacao
  Left = 0
  Top = 0
  Caption = 'Nova Loca'#231#227'o'
  ClientHeight = 390
  ClientWidth = 841
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBack: TPanel
    Left = 0
    Top = 0
    Width = 841
    Height = 390
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = -8
    object pnlTop: TPanel
      Left = 1
      Top = 49
      Width = 839
      Height = 64
      Align = alTop
      Color = clMedGray
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 54
      object btnidCliente: TSpeedButton
        Left = 287
        Top = 24
        Width = 23
        Height = 22
        Caption = '...'
      end
      object btnCodFilme: TSpeedButton
        Left = 625
        Top = 24
        Width = 23
        Height = 22
        Caption = '...'
      end
      object edtId: TLabeledEdit
        Left = 8
        Top = 24
        Width = 121
        Height = 21
        EditLabel.Width = 26
        EditLabel.Height = 13
        EditLabel.Caption = 'edtId'
        TabOrder = 0
      end
      object edtIdCliente: TLabeledEdit
        Left = 160
        Top = 24
        Width = 121
        Height = 21
        EditLabel.Width = 59
        EditLabel.Height = 13
        EditLabel.Caption = 'edtIdCliente'
        TabOrder = 1
      end
      object edtCodFilme: TLabeledEdit
        Left = 498
        Top = 24
        Width = 121
        Height = 21
        EditLabel.Width = 59
        EditLabel.Height = 13
        EditLabel.Caption = 'edtCodFilme'
        TabOrder = 2
      end
      object edtCliente: TEdit
        Left = 320
        Top = 24
        Width = 161
        Height = 21
        TabOrder = 3
      end
      object edtFilme: TEdit
        Left = 662
        Top = 24
        Width = 163
        Height = 21
        TabOrder = 4
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 839
      Height = 48
      Align = alTop
      Color = clMedGray
      ParentBackground = False
      TabOrder = 1
      ExplicitLeft = 0
      ExplicitTop = 25
      ExplicitWidth = 766
      object btnNovo: TSpeedButton
        Left = 1
        Top = 1
        Width = 224
        Height = 46
        Align = alLeft
        Caption = 'Novo'
      end
      object Splitter1: TSplitter
        Left = 225
        Top = 1
        Width = 104
        Height = 46
        ExplicitLeft = 105
      end
      object btnLocalizar: TSpeedButton
        Left = 329
        Top = 1
        Width = 208
        Height = 46
        Align = alLeft
        Caption = 'Localizar'
        ExplicitLeft = 257
      end
      object Splitter2: TSplitter
        Left = 537
        Top = 1
        Width = 104
        Height = 46
        ExplicitLeft = 419
        ExplicitTop = -4
      end
      object btnSair: TSpeedButton
        Left = 641
        Top = 1
        Width = 208
        Height = 46
        Align = alLeft
        Caption = 'Sair'
        ExplicitLeft = 569
      end
    end
    object pnlDate: TPanel
      Left = 1
      Top = 113
      Width = 839
      Height = 56
      Align = alTop
      Color = clGray
      ParentBackground = False
      TabOrder = 2
      object data: TLabel
        Left = 24
        Top = 24
        Width = 67
        Height = 13
        Caption = 'Data Retirada'
      end
      object btnEnviar: TButton
        Left = 225
        Top = 16
        Width = 75
        Height = 25
        Caption = 'Enviar'
        TabOrder = 0
      end
    end
  end
end
