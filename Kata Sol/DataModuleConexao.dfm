object DmConexao: TDmConexao
  OldCreateOrder = False
  Height = 253
  Width = 498
  object sqlQueryToDo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = sqlConexao
    Left = 24
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
      'HostName=localhost:5434'
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
    Left = 248
    Top = 8
  end
  object sqlProviderToDo: TDataSetProvider
    DataSet = sqlQueryToDo
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 24
    Top = 160
  end
  object sqlQueryVendas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = sqlConexao
    Left = 168
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
  end
  object sqlProviderVendas: TDataSetProvider
    DataSet = sqlQueryVendas
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 168
    Top = 160
  end
  object sqlProviderPessoas: TDataSetProvider
    DataSet = sqlQueryPessoas
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 283
    Top = 161
  end
  object sqlQueryPessoas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      '')
    SQLConnection = sqlConexao
    Left = 283
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
    Left = 416
    Top = 158
  end
  object sqlQueryCadastro: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'usuario'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'senha'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select  * from monde_cadastro  where nome_usuario = :usuario and' +
        ' senha = :senha')
    SQLConnection = sqlConexao
    Left = 416
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
end
