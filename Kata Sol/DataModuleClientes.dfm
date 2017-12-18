object DmClientes: TDmClientes
  OldCreateOrder = False
  Height = 133
  Width = 154
  object cdsClientes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'sqlProvider'
    Left = 50
    Top = 45
    object cdsClientesid_todo: TIntegerField
      FieldName = 'id_todo'
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
end
