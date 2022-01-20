object dmLocadora: TdmLocadora
  OldCreateOrder = False
  Height = 512
  Width = 948
  object FDCLocadora: TFDConnection
    Params.Strings = (
      'Database=C:\dev\ProjetoLocadora\DataBase\Locadora.db'
      'LockingMode=Normal'
      'DriverID=sQLite')
    Connected = True
    Left = 40
    Top = 24
  end
  object qryFilme: TFDQuery
    Connection = FDCLocadora
    SQL.Strings = (
      'select * from filme')
    Left = 32
    Top = 88
  end
  object qryCliente: TFDQuery
    Connection = FDCLocadora
    SQL.Strings = (
      'SELECT * from clientes')
    Left = 32
    Top = 152
  end
end
