object frmConsultaFilme: TfrmConsultaFilme
  Left = 0
  Top = 0
  Caption = 'Consulta de Filme'
  ClientHeight = 593
  ClientWidth = 1110
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
    Width = 1110
    Height = 593
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object pnlMenu: TPanel
      Left = 1
      Top = 1
      Width = 1108
      Height = 48
      Align = alTop
      Color = clSilver
      ParentBackground = False
      TabOrder = 0
      object btnVoltar: TSpeedButton
        Left = 935
        Top = 1
        Width = 172
        Height = 46
        Align = alRight
        Caption = 'Voltar'
        ExplicitLeft = 936
        ExplicitTop = -4
      end
      object lblFilme: TLabel
        Left = 8
        Top = 17
        Width = 50
        Height = 13
        Caption = 'C'#243'd. Filme'
      end
      object lblNome: TLabel
        Left = 199
        Top = 17
        Width = 27
        Height = 13
        Caption = 'Nome'
      end
      object edtCodFilme: TEdit
        Left = 64
        Top = 14
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object edtNome: TEdit
        Left = 232
        Top = 14
        Width = 489
        Height = 21
        TabOrder = 1
      end
      object btnMostrarTodos: TButton
        Left = 752
        Top = 12
        Width = 153
        Height = 25
        Caption = 'Mostrar Todos'
        TabOrder = 2
        OnClick = btnMostrarTodosClick
      end
    end
    object pnlImagem: TPanel
      Left = 920
      Top = 49
      Width = 189
      Height = 543
      Align = alRight
      Caption = 'Image/info'
      Color = 16777088
      ParentBackground = False
      TabOrder = 1
    end
    object dbGridFilmes: TDBGrid
      Left = 1
      Top = 49
      Width = 919
      Height = 543
      Align = alClient
      DataSource = dataSourceFilmes
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object dataSourceFilmes: TDataSource
    DataSet = dmLocadora.qryFilme
    Left = 32
    Top = 528
  end
end
