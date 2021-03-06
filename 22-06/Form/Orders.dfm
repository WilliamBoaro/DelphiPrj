object frmOrders: TfrmOrders
  Left = 0
  Top = 0
  Caption = 'Orders'
  ClientHeight = 377
  ClientWidth = 731
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 731
    Height = 65
    Align = alTop
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 76
      Top = 1
      Width = 245
      Height = 63
      ExplicitLeft = 82
      ExplicitTop = 25
    end
    object Splitter2: TSplitter
      Left = 396
      Top = 1
      Width = 261
      Height = 63
      ExplicitLeft = 402
      ExplicitTop = -3
    end
    object btnNovo: TButton
      Left = 1
      Top = 1
      Width = 75
      Height = 63
      Align = alLeft
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnSair: TButton
      Left = 657
      Top = 1
      Width = 75
      Height = 63
      Align = alLeft
      Caption = 'Sair'
      TabOrder = 1
      OnClick = btnSairClick
    end
    object btnLocalizar: TButton
      Left = 321
      Top = 1
      Width = 75
      Height = 63
      Align = alLeft
      Caption = 'Localizar'
      TabOrder = 2
      OnClick = btnLocalizarClick
      ExplicitLeft = 315
      ExplicitTop = -3
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 121
    Width = 731
    Height = 56
    Align = alTop
    TabOrder = 1
    object spdButtonBuscaProduct: TSpeedButton
      Left = 48
      Top = 20
      Width = 25
      Height = 22
      Caption = '...'
      OnClick = spdButtonBuscaProductClick
    end
    object edtProduct: TEdit
      Left = 88
      Top = 21
      Width = 386
      Height = 21
      Color = clInfoBk
      ReadOnly = True
      TabOrder = 0
    end
    object edtproductID: TLabeledEdit
      Left = 1
      Top = 21
      Width = 41
      Height = 21
      EditLabel.Width = 37
      EditLabel.Height = 13
      EditLabel.Caption = 'Product'
      TabOrder = 1
    end
    object edtQtde: TLabeledEdit
      Left = 480
      Top = 22
      Width = 41
      Height = 21
      EditLabel.Width = 24
      EditLabel.Height = 13
      EditLabel.Caption = 'Qtde'
      TabOrder = 2
    end
    object edtPrice: TLabeledEdit
      Left = 530
      Top = 21
      Width = 41
      Height = 21
      EditLabel.Width = 23
      EditLabel.Height = 13
      EditLabel.Caption = 'Price'
      TabOrder = 3
    end
    object edtDelete: TButton
      Left = 663
      Top = 17
      Width = 66
      Height = 25
      Caption = 'Delete'
      TabOrder = 4
    end
    object Button2: TButton
      Left = 591
      Top = 18
      Width = 66
      Height = 25
      Caption = 'Insert'
      TabOrder = 5
      OnClick = Button2Click
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 65
    Width = 731
    Height = 56
    Align = alTop
    TabOrder = 2
    object LADAD: TLabel
      Left = 1
      Top = 1
      Width = 729
      Height = 13
      Align = alTop
      Caption = 'ID'
      ExplicitWidth = 11
    end
    object Label2: TLabel
      Left = 66
      Top = 1
      Width = 23
      Height = 13
      Caption = 'Date'
    end
    object Customer: TLabel
      Left = 193
      Top = 1
      Width = 46
      Height = 13
      Caption = 'Customer'
    end
    object spbtnBuscaCustomer: TSpeedButton
      Left = 288
      Top = 20
      Width = 25
      Height = 22
      Caption = '...'
      OnClick = spbtnBuscaCustomerClick
    end
    object edtCustomer: TEdit
      Left = 319
      Top = 20
      Width = 290
      Height = 21
      Color = clInfoBk
      ReadOnly = True
      TabOrder = 0
    end
    object edtId: TEdit
      Left = 1
      Top = 20
      Width = 59
      Height = 21
      TabOrder = 1
    end
    object edtCustomerID: TEdit
      Left = 193
      Top = 20
      Width = 89
      Height = 21
      TabOrder = 2
    end
    object edtDate: TMaskEdit
      Left = 66
      Top = 20
      Width = 120
      Height = 21
      EditMask = '!99/99/00;1;_'
      MaxLength = 8
      TabOrder = 3
      Text = '  /  /  '
    end
    object edtInsert: TButton
      Left = 615
      Top = 17
      Width = 114
      Height = 25
      Caption = 'Insert'
      TabOrder = 4
      OnClick = edtInsertClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 177
    Width = 731
    Height = 200
    Align = alClient
    TabOrder = 3
    object DBGrid1: TDBGrid
      Left = 4
      Top = 6
      Width = 728
      Height = 195
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
    DataSet = qryOrderDetails
    Left = 296
    Top = 264
  end
  object qryOrderDetails: TFDQuery
    Connection = dmDados.FDConnection1
    SQL.Strings = (
      'select idproduct, qtd, p.price, p.name'
      'from ordersdetails d'
      '     left join products p on d.idproduct=p.id'
      'where d.idorder = :OrderID')
    Left = 296
    Top = 208
    ParamData = <
      item
        Name = 'ORDERID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qryOrderDetailsIDProduct: TIntegerField
      FieldName = 'IDProduct'
      Origin = 'IDProduct'
      Required = True
    end
    object qryOrderDetailsQtd: TIntegerField
      FieldName = 'Qtd'
      Origin = 'Qtd'
      Required = True
    end
    object qryOrderDetailsPrice: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'Price'
      Origin = 'Price'
      ProviderFlags = []
      ReadOnly = True
    end
    object qryOrderDetailsName: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Name'
      Origin = 'Name'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
  end
  object qryOrders: TFDQuery
    Connection = dmDados.FDConnection1
    SQL.Strings = (
      'select o.ID, o.Date, o.IDCustomer,'
      '       c.Name  '
      'from orders o '
      '     Left Join Customers c on o.IDCustomer=c.ID'
      ''
      'where o.id = :ID'
      '')
    Left = 368
    Top = 216
    ParamData = <
      item
        Name = 'ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qryOrdersID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryOrdersDate: TWideStringField
      FieldName = 'Date'
      Origin = 'Date'
      Required = True
    end
    object qryOrdersIDCustomer: TIntegerField
      FieldName = 'IDCustomer'
      Origin = 'IDCustomer'
      Required = True
    end
    object qryOrdersName: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'Name'
      Origin = 'Name'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
  end
end
