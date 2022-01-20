object frmCadastroFilme: TfrmCadastroFilme
  Left = 0
  Top = 0
  Caption = 'Cadastro Filme'
  ClientHeight = 421
  ClientWidth = 343
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
    Width = 343
    Height = 421
    Align = alClient
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = 8
    object lblId: TLabel
      Left = 17
      Top = 85
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
      Left = 75
      Top = 85
      Width = 36
      Height = 16
      Caption = 'Titulo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 17
      Top = 149
      Width = 96
      Height = 16
      Caption = 'C'#243'digo Genero'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 17
      Top = 221
      Width = 87
      Height = 16
      Caption = 'C'#243'digo Diaria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblQuantidade: TLabel
      Left = 169
      Top = 285
      Width = 74
      Height = 16
      Caption = 'Quantidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnlTop: TPanel
      Left = 1
      Top = 1
      Width = 341
      Height = 48
      Align = alTop
      Color = 2960685
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 10
        Width = 154
        Height = 22
        Caption = 'Sistema Locadora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object bntSair: TSpeedButton
        Left = 248
        Top = 1
        Width = 92
        Height = 46
        Align = alRight
        Caption = 'Sair'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        OnClick = bntSairClick
      end
    end
    object edtId: TEdit
      Left = 17
      Top = 107
      Width = 32
      Height = 21
      TabOrder = 1
    end
    object edtNome: TEdit
      Left = 59
      Top = 107
      Width = 230
      Height = 21
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 59
      Top = 171
      Width = 230
      Height = 21
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 17
      Top = 171
      Width = 32
      Height = 21
      TabOrder = 4
    end
    object Edit3: TEdit
      Left = 21
      Top = 243
      Width = 32
      Height = 21
      TabOrder = 5
    end
    object Edit4: TEdit
      Left = 59
      Top = 243
      Width = 230
      Height = 21
      TabOrder = 6
    end
    object Edit5: TEdit
      Left = 249
      Top = 284
      Width = 32
      Height = 21
      TabOrder = 7
    end
    object btnSalvar: TButton
      Left = 17
      Top = 344
      Width = 144
      Height = 41
      Caption = 'Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Style = bsCommandLink
      TabOrder = 8
    end
  end
end
