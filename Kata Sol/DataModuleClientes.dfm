object DmClientes: TDmClientes
  OldCreateOrder = False
  Height = 135
  Width = 203
  object cdsToDo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'sqlProviderToDo'
    Left = 42
    Top = 40
    object cdsToDoid_todo: TIntegerField
      DisplayLabel = 'C'#243'd. Pessoas'
      FieldName = 'id_todo'
    end
    object cdsToDonomes: TWideStringField
      DisplayLabel = 'Nomes'
      FieldName = 'nomes'
      Size = 40
    end
    object cdsToDotarefas: TWideStringField
      DisplayLabel = 'Tarefas'
      FieldName = 'tarefas'
      Size = 50
    end
    object cdsToDostatus: TWideStringField
      DisplayLabel = 'Status'
      FieldName = 'status'
      Size = 15
    end
    object cdsToDodata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data'
    end
  end
  object cdsVendas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'sqlProviderVendas'
    Left = 123
    Top = 41
    object cdsVendasid_produtos: TIntegerField
      DisplayLabel = 'C'#243'd. Produtos'
      FieldName = 'id_produtos'
    end
    object cdsVendasprodutos: TWideStringField
      DisplayLabel = 'Produtos'
      FieldName = 'produtos'
      Size = 50
    end
    object cdsVendasvendedores: TWideStringField
      DisplayLabel = 'Vendedores'
      FieldName = 'vendedores'
      Size = 50
    end
    object cdsVendasstatus: TWideStringField
      DisplayLabel = 'Status'
      FieldName = 'status'
    end
    object cdsVendasfornecedores: TWideStringField
      DisplayLabel = 'Fornecedores'
      FieldName = 'fornecedores'
      Size = 50
    end
    object cdsVendasvalor_produto: TFMTBCDField
      DisplayLabel = 'Valor Unit'#225'rio'
      FieldName = 'valor_produto'
      Precision = 11
      Size = 2
    end
    object cdsVendasquantidade: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'quantidade'
    end
    object cdsVendasvalor_total: TFMTBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'valor_total'
      Precision = 11
      Size = 2
    end
    object cdsVendasdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data'
    end
  end
end
