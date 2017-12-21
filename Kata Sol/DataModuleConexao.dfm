object DmConexao: TDmConexao
  OldCreateOrder = False
  Height = 245
  Width = 300
  object sqlQueryToDo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from monde_todo'
      '')
    SQLConnection = sqlConexao
    Left = 80
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
    Left = 128
    Top = 16
  end
  object sqlProviderToDo: TDataSetProvider
    DataSet = sqlQueryToDo
    Left = 80
    Top = 160
  end
  object sqlQueryVendas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from vendas')
    SQLConnection = sqlConexao
    Left = 184
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
  end
  object sqlProviderVendas: TDataSetProvider
    DataSet = sqlQueryVendas
    Left = 184
    Top = 160
  end
end
