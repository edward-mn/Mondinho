object DmConexao: TDmConexao
  OldCreateOrder = False
  Height = 222
  Width = 901
  object sqlQueryToDo: TSQLQuery
    BeforeOpen = sqlQueryToDoBeforeOpen
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from monde_todo'
      'where id_cadastro = :id')
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
      'HostName=localhost'
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
    Left = 424
    Top = 24
  end
  object sqlProviderToDo: TDataSetProvider
    DataSet = sqlQueryToDo
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 32
    Top = 160
  end
  object sqlQueryVendas: TSQLQuery
    BeforeOpen = sqlQueryVendasBeforeOpen
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select v.*, ve.nome vendedor '
      'from vendas v'
      'left join vendedores ve on v.id_vendedor = ve.id_vendedor'
      'where id_cadastro = :id')
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
    object sqlQueryVendasvendedor: TWideStringField
      FieldName = 'vendedor'
      ProviderFlags = []
      Size = 50
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
    Left = 217
    Top = 159
  end
  object sqlQueryPessoas: TSQLQuery
    BeforeOpen = sqlQueryPessoasBeforeOpen
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from pessoas'
      'where id_cadastro = :id')
    SQLConnection = sqlConexao
    Left = 216
    Top = 87
    object sqlQueryPessoasid_pessoas: TIntegerField
      FieldName = 'id_pessoas'
    end
    object sqlQueryPessoaspessoas: TWideStringField
      FieldName = 'pessoas'
      Size = 50
    end
    object sqlQueryPessoascpf_cnpj: TWideStringField
      FieldName = 'cpf_cnpj'
      Size = 18
    end
    object sqlQueryPessoasendereco: TWideStringField
      FieldName = 'endereco'
      Size = 100
    end
    object sqlQueryPessoastelefone: TWideStringField
      FieldName = 'telefone'
    end
    object sqlQueryPessoascelular: TWideStringField
      FieldName = 'celular'
      Size = 21
    end
    object sqlQueryPessoasstatus: TWideStringField
      FieldName = 'status'
    end
    object sqlQueryPessoasdata: TDateField
      FieldName = 'data'
    end
    object sqlQueryPessoasid_cadastro: TIntegerField
      FieldName = 'id_cadastro'
    end
  end
  object sqlProviderCadastro: TDataSetProvider
    DataSet = sqlQueryCadastro
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 319
    Top = 158
  end
  object sqlQueryCadastro: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select  * from monde_cadastro')
    SQLConnection = sqlConexao
    Left = 318
    Top = 86
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
    Left = 416
    Top = 85
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
    Left = 423
    Top = 157
  end
  object sqlProviderVendedores: TDataSetProvider
    DataSet = sqlQueryVendedores
    Left = 533
    Top = 156
  end
  object sqlQueryVendedores: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from vendedores')
    SQLConnection = sqlConexao
    Left = 520
    Top = 84
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
  object sqlQueryVendasValorTotal: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select vdd.nome, vda.produtos produtos, vda.valor_total from  ve' +
        'ndas vda'
      'join vendedores vdd on (vdd.id_vendedor = vda.id_vendedor)')
    SQLConnection = sqlConexao
    Left = 646
    Top = 83
    object sqlQueryVendasValorTotalnome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object sqlQueryVendasValorTotalprodutos: TWideStringField
      FieldName = 'produtos'
      Size = 50
    end
    object sqlQueryVendasValorTotalvalor_total: TFMTBCDField
      FieldName = 'valor_total'
      Precision = 11
      Size = 2
    end
  end
  object sqlQueryQuantidadeVendas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      
        'select vdd.nome, vda.produtos produtos, vda.quantidade from  ven' +
        'das vda'
      'join vendedores vdd on (vdd.id_vendedor = vda.id_vendedor)')
    SQLConnection = sqlConexao
    Left = 791
    Top = 81
    object sqlQueryQuantidadeVendasnome: TWideStringField
      FieldName = 'nome'
      Size = 50
    end
    object sqlQueryQuantidadeVendasprodutos: TWideStringField
      FieldName = 'produtos'
      Size = 50
    end
    object sqlQueryQuantidadeVendasquantidade: TIntegerField
      FieldName = 'quantidade'
    end
  end
  object sqlProviderVendasValorTotal: TDataSetProvider
    DataSet = sqlQueryVendasValorTotal
    Left = 659
    Top = 155
  end
  object sqlProviderQuantidadeVendas: TDataSetProvider
    DataSet = sqlQueryQuantidadeVendas
    Left = 802
    Top = 154
  end
end
