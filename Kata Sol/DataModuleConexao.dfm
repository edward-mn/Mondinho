object DmConexao: TDmConexao
  OldCreateOrder = False
  Height = 241
  Width = 622
  object sqlQueryToDo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from monde_todo')
    SQLConnection = sqlConexao
    Left = 32
    Top = 88
    object sqlQueryToDoid_todo: TIntegerField
      FieldName = 'id_todo'
    end
    object sqlQueryToDonomes: TWideStringField
      FieldName = 'nomes'
      Size = 40
    end
    object sqlQueryToDotarefas: TWideStringField
      FieldName = 'tarefas'
      Size = 50
    end
    object sqlQueryToDostatus: TWideStringField
      FieldName = 'status'
      Size = 15
    end
    object sqlQueryToDodata: TDateField
      FieldName = 'data'
    end
    object sqlQueryToDoid_cadastro: TIntegerField
      FieldName = 'id_cadastro'
    end
  end
  object sqlConexao: TSQLConnection
    ConnectionName = 'Devart PostgreSQL'
    DriverName = 'DevartPostgreSQL'
    LoginPrompt = False
    Params.Strings = (
      'BlobSize=-1'
      'HostName=localhost:5433'
      'DataBase=MiniMonde'
      'SchemaName=mondinho'
      'DriverName=DevartPostgreSQL'
      'User_Name=postgres'
      'Password=123'
      'FetchAll=True'
      'UseQuoteChar=False'
      'EnableBCD=True'
      'IPVersion=IPv4'
      'UseUnicode=True'
      'Charset=')
    Connected = True
    Left = 288
    Top = 24
  end
  object sqlProviderToDo: TDataSetProvider
    DataSet = sqlQueryToDo
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 32
    Top = 160
  end
  object sqlQueryVendas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from vendas')
    SQLConnection = sqlConexao
    Left = 120
    Top = 88
    object sqlQueryVendasid_produtos: TIntegerField
      FieldName = 'id_produtos'
    end
    object sqlQueryVendasprodutos: TWideStringField
      FieldName = 'produtos'
      Size = 50
    end
    object sqlQueryVendasvendedores: TWideStringField
      FieldName = 'vendedores'
      Size = 50
    end
    object sqlQueryVendasstatus: TWideStringField
      FieldName = 'status'
    end
    object sqlQueryVendasfornecedores: TWideStringField
      FieldName = 'fornecedores'
      Size = 50
    end
    object sqlQueryVendasdata: TDateField
      FieldName = 'data'
      EditMask = '!99/99/0000;1;_'
    end
    object sqlQueryVendasvalor_produto: TFMTBCDField
      DisplayLabel = 'Valor do Produto'
      FieldName = 'valor_produto'
      Precision = 11
      Size = 2
    end
    object sqlQueryVendasquantidade: TIntegerField
      DisplayLabel = 'Quantidade'
      FieldName = 'quantidade'
    end
    object sqlQueryVendasvalor_total: TFMTBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'valor_total'
      Precision = 11
      Size = 2
    end
    object sqlQueryVendasid_cadastro: TIntegerField
      FieldName = 'id_cadastro'
    end
    object sqlQueryVendasid_vendedor: TIntegerField
      FieldName = 'id_vendedor'
    end
  end
  object sqlProviderVendas: TDataSetProvider
    DataSet = sqlQueryVendas
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 120
    Top = 160
  end
  object sqlProviderPessoas: TDataSetProvider
    DataSet = sqlQueryPessoas
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 235
    Top = 161
  end
  object sqlQueryPessoas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from pessoas')
    SQLConnection = sqlConexao
    Left = 235
    Top = 89
    object sqlQueryPessoasid_pessoas: TIntegerField
      FieldName = 'id_pessoas'
    end
    object sqlQueryPessoaspessoas: TWideStringField
      FieldName = 'pessoas'
      Size = 50
    end
    object sqlQueryPessoascpf: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'cpf'
      Precision = 11
      Size = 0
    end
    object sqlQueryPessoasendereco: TWideStringField
      FieldName = 'endereco'
      Size = 100
    end
    object sqlQueryPessoastelefone: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'telefone'
      Precision = 10
      Size = 0
    end
    object sqlQueryPessoascelular: TFMTBCDField
      Alignment = taLeftJustify
      FieldName = 'celular'
      Precision = 11
      Size = 0
    end
    object sqlQueryPessoasstatus: TWideStringField
      FieldName = 'status'
    end
    object sqlQueryPessoasdata: TDateField
      FieldName = 'data'
      EditMask = '!99/99/0000;1;_'
    end
    object sqlQueryPessoasid_cadastro: TIntegerField
      FieldName = 'id_cadastro'
    end
  end
  object sqlProviderCadastro: TDataSetProvider
    DataSet = sqlQueryCadastro
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 336
    Top = 158
  end
  object sqlQueryCadastro: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select  * from monde_cadastro')
    SQLConnection = sqlConexao
    Left = 336
    Top = 88
    object sqlQueryCadastroid: TIntegerField
      FieldName = 'id'
    end
    object sqlQueryCadastronome_usuario: TWideStringField
      FieldName = 'nome_usuario'
      Size = 25
    end
    object sqlQueryCadastrosenha: TWideStringField
      FieldName = 'senha'
      Size = 25
    end
  end
  object sqlQueryControle: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from controledeusuario')
    SQLConnection = sqlConexao
    Left = 440
    Top = 88
    object sqlQueryControleid_controle: TIntegerField
      FieldName = 'id_controle'
    end
    object sqlQueryControlecontrole_de_usuario: TWideStringField
      FieldName = 'controle_de_usuario'
      Size = 50
    end
  end
  object sqlProviderControle: TDataSetProvider
    DataSet = sqlQueryControle
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 440
    Top = 160
  end
  object sqlProviderVendedores: TDataSetProvider
    DataSet = sqlQueryVendedores
    Left = 544
    Top = 160
  end
  object sqlQueryVendedores: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from vendedores')
    SQLConnection = sqlConexao
    Left = 544
    Top = 88
    object sqlQueryVendedoresid_vendedor: TIntegerField
      FieldName = 'id_vendedor'
    end
    object sqlQueryVendedoresnome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object sqlQueryVendedorescpf: TFMTBCDField
      FieldName = 'cpf'
      Precision = 11
      Size = 0
    end
  end
end
