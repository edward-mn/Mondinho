object DmClientes: TDmClientes
  OldCreateOrder = False
<<<<<<< HEAD
  Height = 135
  Width = 203
=======
  Height = 142
  Width = 239
>>>>>>> master
  object cdsToDo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'sqlProviderToDo'
<<<<<<< HEAD
    Left = 42
    Top = 40
    object cdsToDoid_todo: TIntegerField
      DisplayLabel = 'C'#243'd. Pessoas'
      FieldName = 'id_todo'
    end
    object cdsToDonomes: TWideStringField
      DisplayLabel = 'Nomes'
=======
    Left = 34
    Top = 46
    object cdsToDoid_todo: TIntegerField
      FieldName = 'id_todo'
    end
    object cdsToDonomes: TWideStringField
>>>>>>> master
      FieldName = 'nomes'
      Size = 40
    end
    object cdsToDotarefas: TWideStringField
<<<<<<< HEAD
      DisplayLabel = 'Tarefas'
=======
>>>>>>> master
      FieldName = 'tarefas'
      Size = 50
    end
    object cdsToDostatus: TWideStringField
<<<<<<< HEAD
      DisplayLabel = 'Status'
=======
>>>>>>> master
      FieldName = 'status'
      Size = 15
    end
    object cdsToDodata: TDateField
<<<<<<< HEAD
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
=======
      FieldName = 'data'
    end
  end
  object cdsPessoas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'sqlProviderPessoas'
    Left = 130
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
>>>>>>> master
      DisplayLabel = 'Fornecedores'
      FieldName = 'fornecedores'
      Size = 50
    end
<<<<<<< HEAD
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
=======
    object cdsPessoasdata: TDateField
>>>>>>> master
      DisplayLabel = 'Data'
      FieldName = 'data'
    end
  end
end
