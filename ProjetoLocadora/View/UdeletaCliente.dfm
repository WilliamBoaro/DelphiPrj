object frmDeletaCliente: TfrmDeletaCliente
  Left = 0
  Top = 0
  Caption = 'Deletar Cliente'
  ClientHeight = 395
  ClientWidth = 351
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBack: TPanel
    Left = 0
    Top = 0
    Width = 351
    Height = 395
    Align = alClient
    Color = clBtnHighlight
    ParentBackground = False
    TabOrder = 0
    object lblId: TLabel
      Left = 17
      Top = 69
      Width = 12
      Height = 16
      Caption = 'Id'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblNome: TLabel
      Left = 67
      Top = 69
      Width = 37
      Height = 16
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 303
      Top = 91
      Width = 23
      Height = 22
      OnClick = SpeedButton1Click
    end
    object pnlTop: TPanel
      Left = 1
      Top = 1
      Width = 349
      Height = 48
      Align = alTop
      Color = 2960685
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 15
        Top = 10
        Width = 154
        Height = 22
        Caption = 'Sistema Locadora'
        Color = clBtnHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object btnSair: TSpeedButton
        Left = 254
        Top = 1
        Width = 94
        Height = 46
        Align = alRight
        Caption = 'Sair'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBtnHighlight
        Font.Height = -19
        Font.Name = 'Aril'
        Font.Style = []
        ParentFont = False
        ExplicitLeft = 246
        ExplicitTop = 2
      end
    end
    object edtId: TEdit
      Left = 16
      Top = 91
      Width = 32
      Height = 21
      TabOrder = 1
    end
    object edtNome: TEdit
      Left = 67
      Top = 91
      Width = 230
      Height = 21
      TabOrder = 2
    end
    object btnExcluir: TButton
      Left = 75
      Top = 312
      Width = 86
      Height = 41
      Caption = 'Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Style = bsCommandLink
      TabOrder = 3
      OnClick = btnExcluirClick
    end
    object memInfoCliente: TMemo
      Left = 67
      Top = 118
      Width = 230
      Height = 188
      TabOrder = 4
    end
  end
end
