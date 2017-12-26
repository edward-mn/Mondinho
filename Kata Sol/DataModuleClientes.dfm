object DmClientes: TDmClientes
  OldCreateOrder = False
  Height = 130
  Width = 312
  object cdsToDo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'sqlProviderToDo'
    Left = 34
    Top = 46
    object cdsToDoid_todo: TIntegerField
      FieldName = 'id_todo'
    end
    object cdsToDonomes: TWideStringField
      FieldName = 'nomes'
      Size = 40
    end
    object cdsToDotarefas: TWideStringField
      FieldName = 'tarefas'
      Size = 50
    end
    object cdsToDostatus: TWideStringField
      FieldName = 'status'
      Size = 15
    end
    object cdsToDodata: TDateField
      FieldName = 'data'
    end
  end
  object cdsVendas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'sqlProviderVendas'
    Left = 107
    Top = 49
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
  object cdsPessoas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'sqlProviderPessoas'
    Left = 178
    Top = 46
    object cdsPessoasid_pessoas: TIntegerField
      FieldName = 'id_pessoas'
    end
    object cdsPessoaspessoas: TWideStringField
      DisplayLabel = 'Pessoas'
      FieldName = 'pessoas'
      Size = 50
    end
    object cdsPessoascpf: TFMTBCDField
      DisplayLabel = 'CPF'
      FieldName = 'cpf'
      Precision = 11
      Size = 0
    end
    object cdsPessoasendereco: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco'
      Size = 100
    end
    object cdsPessoastelefone: TFMTBCDField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Precision = 10
      Size = 0
    end
    object cdsPessoascelular: TFMTBCDField
      DisplayLabel = 'Celular'
      FieldName = 'celular'
      Precision = 11
      Size = 0
    end
    object cdsPessoasstatus: TWideStringField
      DisplayLabel = 'Status'
      FieldName = 'status'
    end
    object cdsPessoasfornecedores: TWideStringField
      DisplayLabel = 'Fornecedores'
      FieldName = 'fornecedores'
      Size = 50
    end
    object cdsPessoasdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data'
    end
  end
  object cdsCadastro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'sqlProviderCadastro'
    Left = 240
    Top = 46
    object cdsCadastroid: TIntegerField
      FieldName = 'id'
    end
    object cdsCadastronome_usuario: TWideStringField
      FieldName = 'nome_usuario'
      Size = 25
    end
    object cdsCadastrosenha: TWideStringField
      FieldName = 'senha'
      Size = 25
    end
  end
end
