object dmConexao: TdmConexao
  OldCreateOrder = False
  Height = 225
  Width = 198
  object sqlQuery: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from monde_todo')
    SQLConnection = sqlConexao
    Left = 80
    Top = 88
    object sqlQueryid_todo: TIntegerField
      FieldName = 'id_todo'
    end
    object sqlQuerynomes: TWideStringField
      FieldName = 'nomes'
      Size = 40
    end
    object sqlQuerytarefas: TWideStringField
      FieldName = 'tarefas'
      Size = 50
    end
    object sqlQuerystatus: TWideStringField
      FieldName = 'status'
      Size = 15
    end
    object sqlQuerydata: TDateField
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
    Left = 80
    Top = 16
  end
  object sqlProvider: TDataSetProvider
    DataSet = sqlQuery
    Left = 80
    Top = 160
  end
end
