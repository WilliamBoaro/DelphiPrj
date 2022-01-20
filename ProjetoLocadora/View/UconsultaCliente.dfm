object frmConsultaCliente: TfrmConsultaCliente
  Left = 0
  Top = 0
  Caption = 'Consulta Cliente'
  ClientHeight = 337
  ClientWidth = 739
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
    Width = 739
    Height = 337
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object pnlTop: TPanel
      Left = 1
      Top = 1
      Width = 737
      Height = 48
      Align = alTop
      Color = clSilver
      ParentBackground = False
      TabOrder = 0
      object Cliente: TLabel
        Left = 32
        Top = 17
        Width = 33
        Height = 13
        Caption = 'Cliente'
      end
      object edtCliente: TEdit
        Left = 80
        Top = 14
        Width = 417
        Height = 21
        TabOrder = 0
      end
      object btnMostrarTodo: TButton
        Left = 528
        Top = 12
        Width = 161
        Height = 25
        Caption = 'Mostrar Todos'
        TabOrder = 1
        OnClick = btnMostrarTodoClick
      end
    end
    object dbgridCliente: TDBGrid
      Left = 1
      Top = 49
      Width = 737
      Height = 287
      Align = alClient
      DataSource = DataSource1
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object DataSource1: TDataSource
    DataSet = dmLocadora.qryCliente
    Left = 704
    Top = 8
  end
end
