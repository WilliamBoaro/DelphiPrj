object tfmNewCustomer: TtfmNewCustomer
  Left = 0
  Top = 0
  Caption = 'frmCustomerNew'
  ClientHeight = 351
  ClientWidth = 302
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBack: TPanel
    Left = 0
    Top = 0
    Width = 302
    Height = 351
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    Align = alClient
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    ExplicitTop = 5
    ExplicitWidth = 296
    ExplicitHeight = 339
    object Label1: TLabel
      Left = 56
      Top = 58
      Width = 15
      Height = 17
      Margins.Left = 0
      Margins.Top = 20
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
      Top = 96
      Width = 37
      Height = 17
      Margins.Left = 0
      Margins.Top = 20
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
      Top = 135
      Width = 51
      Height = 17
      Margins.Left = 0
      Margins.Top = 20
      Margins.Bottom = 40
      Caption = 'Address'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGrayText
      Font.Height = -13
      Font.Name = 'Segoe UI Black'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
    object lblCity: TLabel
      Left = 56
      Top = 173
      Width = 24
      Height = 17
      Margins.Left = 0
      Margins.Top = 20
      Margins.Bottom = 40
      Caption = 'City'
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
      Top = 200
      Width = 39
      Height = 17
      Margins.Left = 0
      Margins.Top = 20
      Margins.Bottom = 40
      Caption = 'E-mail'
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
      Top = 55
      Width = 33
      Height = 25
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
      Top = 93
      Width = 121
      Height = 25
      Margins.Bottom = 10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Black'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edtAddress: TEdit
      Left = 120
      Top = 127
      Width = 121
      Height = 25
      Margins.Bottom = 10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Black'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edtCity: TEdit
      Left = 120
      Top = 165
      Width = 121
      Height = 25
      Margins.Bottom = 10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Black'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object pnlTop: TPanel
      Left = 1
      Top = 1
      Width = 300
      Height = 41
      Align = alTop
      TabOrder = 4
      ExplicitLeft = 0
      ExplicitTop = 8
      ExplicitWidth = 294
      object Ne: TLabel
        Left = 15
        Top = 4
        Width = 196
        Height = 37
        Margins.Left = 0
        Margins.Top = 20
        Margins.Bottom = 40
        Caption = 'New Customer'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGrayText
        Font.Height = -27
        Font.Name = 'Segoe UI Black'
        Font.Style = [fsBold]
        ParentFont = False
        Layout = tlCenter
      end
    end
    object edtEmail: TEdit
      Left = 120
      Top = 197
      Width = 121
      Height = 25
      Margins.Bottom = 10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Black'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object btnSave: TButton
      Left = 10
      Top = 280
      Width = 75
      Height = 25
      Caption = 'Save'
      TabOrder = 6
      OnClick = btnSaveClick
    end
    object btnClear: TButton
      Left = 104
      Top = 280
      Width = 75
      Height = 25
      Caption = 'Clear'
      TabOrder = 7
    end
    object bntSair: TButton
      Left = 201
      Top = 280
      Width = 75
      Height = 25
      Caption = 'Exit'
      TabOrder = 8
      OnClick = bntSairClick
    end
  end
end
