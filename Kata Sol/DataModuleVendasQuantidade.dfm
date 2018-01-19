object DmVendasQuantidade: TDmVendasQuantidade
  OldCreateOrder = False
  Height = 244
  Width = 163
  object cdsVendasQuantidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'sqlProviderQuantidadeVendas'
    Left = 51
    Top = 44
    object cdsVendasQuantidadenome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object cdsVendasQuantidadeprodutos: TWideStringField
      FieldName = 'produtos'
      Size = 200
    end
    object cdsVendasQuantidadequantidade: TIntegerField
      FieldName = 'quantidade'
    end
  end
end
