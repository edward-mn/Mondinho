object DmVendasQuantidade: TDmVendasQuantidade
  OldCreateOrder = False
  Height = 244
  Width = 163
  object cdsVendasQuantidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'sqlProviderQuantidadeVendas'
    Left = 59
    Top = 40
    object cdsVendasQuantidadenome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object cdsVendasQuantidadeprodutos: TWideStringField
      FieldName = 'produtos'
      Size = 200
    end
    object cdsVendasQuantidadesum: TFMTBCDField
      FieldName = 'sum'
      Precision = 19
      Size = 0
    end
  end
end
