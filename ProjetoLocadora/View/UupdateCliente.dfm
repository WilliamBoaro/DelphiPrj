object frmUpdateCliente: TfrmUpdateCliente
  Left = 0
  Top = 0
  Caption = 'Atulizar Cliente'
  ClientHeight = 394
  ClientWidth = 344
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
    Width = 344
    Height = 394
    Align = alClient
    Color = clBtnHighlight
    ParentBackground = False
    TabOrder = 0
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
    object lblData: TLabel
      Left = 75
      Top = 141
      Width = 127
      Height = 16
      Caption = 'Data de Nascimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTelefone: TLabel
      Left = 75
      Top = 197
      Width = 55
      Height = 16
      Caption = 'Telefone'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 83
      Top = 253
      Width = 40
      Height = 16
      Caption = 'E-mail'
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
      Width = 342
      Height = 48
      Align = alTop
      Color = 2960685
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 2
      ExplicitTop = 0
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
        Left = 247
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
      Top = 107
      Width = 32
      Height = 21
      TabOrder = 1
      OnChange = edtIdChange
      OnExit = edtIdExit
    end
    object edtNome: TEdit
      Left = 75
      Top = 107
      Width = 230
      Height = 21
      TabOrder = 2
    end
    object edtDate: TDateTimePicker
      Left = 75
      Top = 163
      Width = 230
      Height = 21
      Date = 44438.000000000000000000
      Time = 0.631197141206939700
      TabOrder = 3
    end
    object edtTelefone: TMaskEdit
      Left = 75
      Top = 219
      Width = 228
      Height = 21
      EditMask = '!\(99\)0000-0000;1;_'
      MaxLength = 13
      TabOrder = 4
      Text = '(  )    -    '
    end
    object edtEmail: TEdit
      Left = 75
      Top = 275
      Width = 230
      Height = 21
      TabOrder = 5
    end
    object btnAtualizar: TButton
      Left = 75
      Top = 328
      Width = 150
      Height = 41
      Caption = 'Atualizar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      Style = bsCommandLink
      TabOrder = 6
      OnClick = btnAtualizarClick
    end
  end
end
