object frmProdutos: TfrmProdutos
  Left = 0
  Top = 0
  Caption = 'Procura Produto'
  ClientHeight = 338
  ClientWidth = 736
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
    Width = 736
    Height = 49
    Align = alTop
    TabOrder = 0
    object edtSearchProduct: TLabeledEdit
      Left = 440
      Top = 124
      Width = 121
      Height = 21
      EditLabel.Width = 61
      EditLabel.Height = 13
      EditLabel.Caption = 'LabeledEdit1'
      TabOrder = 0
    end
    object edtProcura: TLabeledEdit
      Left = 0
      Top = 22
      Width = 697
      Height = 21
      EditLabel.Width = 121
      EditLabel.Height = 13
      EditLabel.Caption = 'Informe o valor desejado'
      TabOrder = 1
      OnChange = edtProcuraChange
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 736
    Height = 289
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 0
      Top = 0
      Width = 736
      Height = 289
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
          FieldName = 'Kind'
          Visible = True
        end
        item
          Expanded = False
          FieldName = ' Price'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Size'
          Visible = True
        end>
    end
  end
  object DataSource1: TDataSource
    Left = 648
    Top = 80
  end
end
