object DmControleDeUsuario: TDmControleDeUsuario
  OldCreateOrder = False
  Height = 133
  Width = 184
  object cdsControleDeUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'sqlProviderControle'
    Left = 56
    Top = 40
    object cdsControleDeUsuarioid_controle: TIntegerField
      FieldName = 'id_controle'
    end
    object cdsControleDeUsuariocontrole_de_usuario: TWideStringField
      FieldName = 'controle_de_usuario'
      Size = 50
    end
  end
end
