object DmVendasValorTotal: TDmVendasValorTotal
  OldCreateOrder = False
  Height = 239
  Width = 168
  object cdsVendasValorTotal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'sqlProviderVendasValorTotal'
    Left = 56
    Top = 32
    object cdsVendasValorTotalnome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object cdsVendasValorTotalprodutos: TWideStringField
      FieldName = 'produtos'
      Size = 200
    end
    object cdsVendasValorTotalsum: TFMTBCDField
      FieldName = 'sum'
      currency = True
      Precision = 32
    end
  end
end
