unit DataModuleConexao;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Datasnap.Provider, Data.DB,
  Data.SqlExpr, DbxDevartPostgreSQL, Datasnap.DBClient;

type
  TDmConexao = class(TDataModule)
    sqlQueryToDo: TSQLQuery;
    sqlConexao: TSQLConnection;
    sqlProviderToDo: TDataSetProvider;
    sqlQueryToDoid_todo: TIntegerField;
    sqlQueryToDonomes: TWideStringField;
    sqlQueryToDotarefas: TWideStringField;
    sqlQueryToDostatus: TWideStringField;
    sqlQueryToDodata: TDateField;
    sqlQueryVendas: TSQLQuery;
    sqlProviderVendas: TDataSetProvider;
    sqlQueryVendasid_produtos: TIntegerField;
    sqlQueryVendasprodutos: TWideStringField;
    sqlQueryVendasvendedores: TWideStringField;
    sqlQueryVendasstatus: TWideStringField;
    sqlQueryVendasfornecedores: TWideStringField;
    sqlQueryVendasdata: TDateField;
    sqlQueryVendasvalor_produto: TFMTBCDField;
    sqlQueryVendasquantidade: TIntegerField;
    sqlQueryVendasvalor_total: TFMTBCDField;
    sqlProviderPessoas: TDataSetProvider;
    sqlQueryPessoas: TSQLQuery;
    sqlQueryPessoasid_pessoas: TIntegerField;
    sqlQueryPessoaspessoas: TWideStringField;
    sqlQueryPessoascpf: TFMTBCDField;
    sqlQueryPessoasendereco: TWideStringField;
    sqlQueryPessoastelefone: TFMTBCDField;
    sqlQueryPessoascelular: TFMTBCDField;
    sqlQueryPessoasstatus: TWideStringField;
    sqlQueryPessoasfornecedores: TWideStringField;
    sqlQueryPessoasdata: TDateField;
    sqlProviderCadastro: TDataSetProvider;
    sqlQueryCadastro: TSQLQuery;
    sqlQueryCadastroid: TIntegerField;
    sqlQueryCadastronome_usuario: TWideStringField;
    sqlQueryCadastrosenha: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmConexao: TDmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
