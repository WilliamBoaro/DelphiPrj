object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Estudo de Table'
  ClientHeight = 406
  ClientWidth = 720
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object brnCreate: TButton
    Left = 637
    Top = 373
    Width = 75
    Height = 25
    Caption = 'Create'
    TabOrder = 0
    OnClick = brnCreateClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 22
    Width = 704
    Height = 345
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btnSave: TButton
    Left = 105
    Top = 373
    Width = 75
    Height = 25
    Caption = 'Save File'
    TabOrder = 2
    OnClick = btnSaveClick
  end
  object btnload: TButton
    Left = 24
    Top = 373
    Width = 75
    Height = 25
    Caption = 'Load File'
    TabOrder = 3
    OnClick = btnloadClick
  end
  object btnLoadStream: TButton
    Left = 200
    Top = 373
    Width = 75
    Height = 25
    Caption = 'Load Stream'
    TabOrder = 4
    OnClick = btnLoadStreamClick
  end
  object btnSaveStream: TButton
    Left = 281
    Top = 373
    Width = 75
    Height = 25
    Caption = 'Save Stream'
    TabOrder = 5
    OnClick = btnSaveStreamClick
  end
  object btnClear: TButton
    Left = 556
    Top = 373
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 6
    OnClick = btnClearClick
  end
  object FmemTble: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 32
    Top = 64
  end
  object DataSource1: TDataSource
    DataSet = FmemTble
    Left = 88
    Top = 64
  end
  object DataSource2: TDataSource
    DataSet = FDMemTable1
    Left = 88
    Top = 128
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 32
    Top = 128
  end
  object FDStanStorageXMLLink1: TFDStanStorageXMLLink
    Left = 152
    Top = 128
  end
  object SaveDialog1: TSaveDialog
    Left = 232
    Top = 128
  end
  object FileOpenDialog1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 296
    Top = 128
  end
  object FileSaveDialog1: TFileSaveDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = []
    Left = 352
    Top = 128
  end
end
