object dmConexao: TdmConexao
  OldCreateOrder = False
  Height = 225
  Width = 308
  object sqlQueryToDo: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from monde_todo')
    SQLConnection = sqlConexao
    Left = 64
    Top = 86
    object sqlQueryToDoid_todo: TIntegerField
      FieldName = 'id_todo'
      Visible = False
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
      'HostName=localhost:5432'
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
    Left = 144
    Top = 32
  end
  object sqlProviderToDo: TDataSetProvider
    DataSet = sqlQueryToDo
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 64
    Top = 134
  end
  object sqlProviderCadastro: TDataSetProvider
    DataSet = sqlQueryCadastro
    Options = [poPropogateChanges, poUseQuoteChar]
    Left = 232
    Top = 142
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
    Left = 232
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
