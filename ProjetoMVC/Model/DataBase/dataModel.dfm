object dmSales: TdmSales
  OldCreateOrder = False
  Height = 496
  Width = 1127
  object FDConnectionSales: TFDConnection
    Params.Strings = (
      'Database=C:\dev\ProjetoMVC\Files\Data\SalesMVC.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 32
  end
  object FDQuery1: TFDQuery
    Connection = FDConnectionSales
    Left = 544
    Top = 232
  end
end
