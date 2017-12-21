object DmClientes: TDmClientes
  OldCreateOrder = False
  Height = 142
  Width = 239
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
      DisplayLabel = 'Fornecedores'
      FieldName = 'fornecedores'
      Size = 50
    end
    object cdsPessoasdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data'
    end
  end
end
