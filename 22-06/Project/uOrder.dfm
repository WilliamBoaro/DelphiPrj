object fOrder: TfOrder
  Left = 0
  Top = 0
  Caption = 'Order'
  ClientHeight = 275
  ClientWidth = 194
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object fdas: TPanel
    Left = 0
    Top = 232
    Width = 194
    Height = 43
    Align = alBottom
    TabOrder = 0
    object btnSalvar: TButton
      Left = 16
      Top = 8
      Width = 65
      Height = 25
      Caption = 'Save'
      TabOrder = 0
      OnClick = btnSalvarClick
    end
    object btnSai: TButton
      Left = 112
      Top = 8
      Width = 65
      Height = 25
      Caption = 'Exit'
      TabOrder = 1
      OnClick = btnSaiClick
    end
  end
  object edtOrderCustomerID: TLabeledEdit
    Left = 8
    Top = 128
    Width = 169
    Height = 21
    EditLabel.Width = 67
    EditLabel.Height = 13
    EditLabel.Caption = 'Customer - ID'
    TabOrder = 1
  end
  object edtDate: TLabeledEdit
    Left = 8
    Top = 71
    Width = 178
    Height = 21
    EditLabel.Width = 23
    EditLabel.Height = 13
    EditLabel.Caption = 'Date'
    TabOrder = 2
  end
  object edtId: TLabeledEdit
    Left = 8
    Top = 28
    Width = 178
    Height = 21
    EditLabel.Width = 11
    EditLabel.Height = 13
    EditLabel.Caption = 'ID'
    TabOrder = 3
  end
end
