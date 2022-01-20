object frmNewProduct: TfrmNewProduct
  Left = 0
  Top = 0
  Caption = 'New Product'
  ClientHeight = 363
  ClientWidth = 353
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 353
    Height = 41
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Label5: TLabel
      Left = 15
      Top = 4
      Width = 173
      Height = 37
      Margins.Left = 0
      Margins.Top = 20
      Margins.Bottom = 40
      Caption = 'New Product'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGrayText
      Font.Height = -27
      Font.Name = 'Segoe UI Black'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
  end
  object pnlCenter: TPanel
    Left = 0
    Top = 41
    Width = 353
    Height = 322
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object Label1: TLabel
      Left = 56
      Top = 34
      Width = 15
      Height = 17
      Margins.Left = 4
      Margins.Top = 20
      Margins.Right = 4
      Margins.Bottom = 40
      Caption = 'ID'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGrayText
      Font.Height = -13
      Font.Name = 'Segoe UI Black'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Label2: TLabel
      Left = 56
      Top = 72
      Width = 37
      Height = 17
      Margins.Left = 4
      Margins.Top = 20
      Margins.Right = 4
      Margins.Bottom = 40
      Caption = 'Name'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGrayText
      Font.Height = -13
      Font.Name = 'Segoe UI Black'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Label3: TLabel
      Left = 56
      Top = 111
      Width = 25
      Height = 17
      Margins.Left = 4
      Margins.Top = 20
      Margins.Right = 4
      Margins.Bottom = 40
      Caption = 'Size'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGrayText
      Font.Height = -13
      Font.Name = 'Segoe UI Black'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Kind: TLabel
      Left = 56
      Top = 149
      Width = 29
      Height = 17
      Margins.Left = 4
      Margins.Top = 20
      Margins.Right = 4
      Margins.Bottom = 40
      Caption = 'Kind'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGrayText
      Font.Height = -13
      Font.Name = 'Segoe UI Black'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object Label4: TLabel
      Left = 56
      Top = 176
      Width = 32
      Height = 17
      Margins.Left = 4
      Margins.Top = 20
      Margins.Right = 4
      Margins.Bottom = 40
      Caption = 'Price'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGrayText
      Font.Height = -13
      Font.Name = 'Segoe UI Black'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object edtid: TEdit
      Left = 120
      Top = 31
      Width = 33
      Height = 25
      Margins.Left = 4
      Margins.Right = 4
      Margins.Bottom = 10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Black'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtName: TEdit
      Left = 120
      Top = 69
      Width = 121
      Height = 25
      Margins.Left = 4
      Margins.Right = 4
      Margins.Bottom = 10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Black'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edtSize: TEdit
      Left = 120
      Top = 103
      Width = 121
      Height = 25
      Margins.Left = 4
      Margins.Right = 4
      Margins.Bottom = 10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Black'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edtKind: TEdit
      Left = 120
      Top = 141
      Width = 121
      Height = 25
      Margins.Left = 4
      Margins.Right = 4
      Margins.Bottom = 10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Black'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object edtPrice: TEdit
      Left = 120
      Top = 173
      Width = 121
      Height = 25
      Margins.Left = 4
      Margins.Right = 4
      Margins.Bottom = 10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Black'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object btnSave: TButton
      Left = 32
      Top = 256
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 5
      OnClick = btnSaveClick
    end
    object btnClear: TButton
      Left = 139
      Top = 256
      Width = 75
      Height = 25
      Caption = 'Clear'
      TabOrder = 6
    end
    object bntSair: TButton
      Left = 236
      Top = 256
      Width = 75
      Height = 25
      Caption = 'Exit'
      TabOrder = 7
      OnClick = bntSairClick
    end
  end
end
