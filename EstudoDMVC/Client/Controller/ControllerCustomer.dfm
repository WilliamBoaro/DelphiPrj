object dmConstrollerCustomer: TdmConstrollerCustomer
  OldCreateOrder = False
  Height = 261
  Width = 414
  object FDMemCustomer: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 32
    Top = 16
    object FDMemCustomerID: TIntegerField
      FieldName = 'ID'
    end
    object FDMemCustomerName: TStringField
      FieldName = 'Name'
    end
    object FDMemCustomerAddress: TStringField
      FieldName = 'Address'
    end
    object FDMemCustomerCity: TStringField
      FieldName = 'City'
    end
    object FDMemCustomerEmail: TStringField
      FieldName = 'Email'
      Size = 0
    end
  end
end
