object frmViewCustomer: TfrmViewCustomer
  Left = 0
  Top = 0
  Caption = 'View Customer '
  ClientHeight = 299
  ClientWidth = 635
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
  object btnGetAll: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Get All'
    TabOrder = 0
    OnClick = btnGetAllClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 39
    Width = 609
    Height = 252
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
      end
      item
        Expanded = False
        FieldName = 'Email'
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = dmConstrollerCustomer.FDMemCustomer
    Left = 552
    Top = 8
  end
end
