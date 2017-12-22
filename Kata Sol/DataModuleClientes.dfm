object DmClientes: TDmClientes
  OldCreateOrder = False
  Height = 152
  Width = 178
  object cdsClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'sqlProviderToDo'
    Left = 18
    Top = 21
    object cdsClientesid_todo: TIntegerField
      FieldName = 'id_todo'
      Visible = False
    end
    object cdsClientesnomes: TWideStringField
      FieldName = 'nomes'
      Size = 40
    end
    object cdsClientestarefas: TWideStringField
      FieldName = 'tarefas'
      Size = 50
    end
    object cdsClientesstatus: TWideStringField
      FieldName = 'status'
      Size = 15
    end
    object cdsClientesdata: TDateField
      FieldName = 'data'
    end
  end
  object cdsCadastro: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'sqlProviderCadastro'
    Left = 128
    Top = 22
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
