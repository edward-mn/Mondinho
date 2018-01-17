object DmClienteVendedores: TDmClienteVendedores
  OldCreateOrder = False
  Height = 150
  Width = 215
  object cdsVendedores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'sqlProviderVendedores'
    Left = 71
    Top = 40
    object cdsVendedoresid_vendedor: TIntegerField
      FieldName = 'id_vendedor'
    end
    object cdsVendedoresnome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object cdsVendedorescpf: TFMTBCDField
      FieldName = 'cpf'
      Precision = 11
      Size = 0
    end
  end
end
