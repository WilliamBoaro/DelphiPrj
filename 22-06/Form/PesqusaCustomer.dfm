object tfrmPesquisaProdutos: TtfrmPesquisaProdutos
  Left = 0
  Top = 0
  Caption = 'Pesquisa Clientes'
  ClientHeight = 344
  ClientWidth = 655
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 655
    Height = 51
    Align = alTop
    TabOrder = 0
    object lbl: TLabel
      Left = 8
      Top = 5
      Width = 121
      Height = 13
      Caption = 'Informe o valor desejado'
    end
    object edtValor: TEdit
      Left = 8
      Top = 24
      Width = 596
      Height = 21
      TabOrder = 0
      OnChange = edtValorChange
    end
  end
  object jghf: TPanel
    Left = 0
    Top = 51
    Width = 655
    Height = 293
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 655
      Height = 297
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Name'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Address'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'City'
          Visible = True
        end>
    end
  end
  object DataSource1: TDataSource
    Left = 528
    Top = 80
  end
end
