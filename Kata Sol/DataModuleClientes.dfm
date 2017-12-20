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
    Left = 162
    Top = 46
    object cdsPessoasid_pessoas: TIntegerField
      FieldName = 'id_pessoas'
    end
    object cdsPessoaspessoas: TWideStringField
      FieldName = 'pessoas'
      Size = 50
    end
    object cdsPessoascpf: TFMTBCDField
      FieldName = 'cpf'
      Precision = 11
      Size = 0
    end
    object cdsPessoasendereco: TWideStringField
      FieldName = 'endereco'
      Size = 100
    end
    object cdsPessoastelefone: TFMTBCDField
      FieldName = 'telefone'
      Precision = 10
      Size = 0
    end
    object cdsPessoascelular: TFMTBCDField
      FieldName = 'celular'
      Precision = 11
      Size = 0
    end
    object cdsPessoasstatus: TWideStringField
      FieldName = 'status'
    end
    object cdsPessoasfornecedores: TWideStringField
      FieldName = 'fornecedores'
      Size = 50
    end
    object cdsPessoasdata: TDateField
      FieldName = 'data'
    end
  end
end
