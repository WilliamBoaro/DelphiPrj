object fProducts: TfProducts
  Left = 0
  Top = 0
  Caption = 'Products'
  ClientHeight = 299
  ClientWidth = 470
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object s: TPanel
    Left = 0
    Top = 0
    Width = 470
    Height = 25
    Align = alTop
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 259
    Width = 470
    Height = 40
    Align = alBottom
    TabOrder = 1
    object btnSave: TButton
      Left = 207
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 0
      OnClick = btnSaveClick
    end
    object btnExit: TButton
      Left = 384
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Exit'
      TabOrder = 1
      OnClick = btnExitClick
    end
    object btnDelete: TButton
      Left = 295
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Delete'
      TabOrder = 2
      OnClick = btnDeleteClick
    end
    object brnProcurar: TButton
      Left = 118
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Procurar'
      TabOrder = 3
      OnClick = brnProcurarClick
    end
  end
  object edtProductsID: TLabeledEdit
    Left = 32
    Top = 47
    Width = 41
    Height = 21
    EditLabel.Width = 11
    EditLabel.Height = 13
    EditLabel.Caption = 'ID'
    TabOrder = 2
    OnExit = edtProductsIDExit
  end
  object edtProductsName: TLabeledEdit
    Left = 32
    Top = 88
    Width = 121
    Height = 21
    EditLabel.Width = 27
    EditLabel.Height = 13
    EditLabel.Caption = 'Name'
    TabOrder = 3
  end
  object edtProductsSize: TLabeledEdit
    Left = 32
    Top = 136
    Width = 121
    Height = 21
    EditLabel.Width = 19
    EditLabel.Height = 13
    EditLabel.Caption = 'Size'
    TabOrder = 4
  end
  object edtProductsKind: TLabeledEdit
    Left = 32
    Top = 189
    Width = 121
    Height = 21
    EditLabel.Width = 20
    EditLabel.Height = 13
    EditLabel.Caption = 'Kind'
    TabOrder = 5
  end
  object edtProductsPrice: TLabeledEdit
    Left = 32
    Top = 232
    Width = 121
    Height = 21
    EditLabel.Width = 23
    EditLabel.Height = 13
    EditLabel.Caption = 'Price'
    TabOrder = 6
  end
end
