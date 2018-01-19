unit DataModuleConexao;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Datasnap.Provider, Data.DB,
  Data.SqlExpr, Datasnap.DBClient, DbxDevartPostgreSQL, Login, Data.DBXCommon;

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
    sqlQueryPessoasendereco: TWideStringField;
    sqlQueryPessoastelefone: TWideStringField;
    sqlQueryPessoascelular: TWideStringField;
    sqlQueryPessoasstatus: TWideStringField;
    sqlQueryPessoasdata: TDateField;
    sqlProviderCadastro: TDataSetProvider;
    sqlQueryCadastro: TSQLQuery;
    sqlQueryCadastroid: TIntegerField;
    sqlQueryCadastronome_usuario: TWideStringField;
    sqlQueryCadastrosenha: TWideStringField;
    sqlQueryToDoid_cadastro: TIntegerField;
    sqlQueryVendasid_cadastro: TIntegerField;
    sqlQueryPessoasid_cadastro: TIntegerField;
    sqlQueryControle: TSQLQuery;
    sqlProviderControle: TDataSetProvider;
    sqlQueryControleid_controle: TIntegerField;
    sqlQueryControlecontrole_de_usuario: TWideStringField;
    sqlQueryVendasid_vendedor: TIntegerField;
    sqlProviderVendedores: TDataSetProvider;
    sqlQueryVendedores: TSQLQuery;
    sqlQueryVendedoresid_vendedor: TIntegerField;
    sqlQueryVendedoresnome: TWideStringField;
    sqlQueryVendedorescpf: TFMTBCDField;
    sqlQueryVendasvendedor: TWideStringField;
    sqlQueryVendasValorTotal: TSQLQuery;
    sqlQueryQuantidadeVendas: TSQLQuery;
    sqlProviderVendasValorTotal: TDataSetProvider;
    sqlProviderQuantidadeVendas: TDataSetProvider;
    sqlQueryVendasValorTotalnome: TWideStringField;
    sqlQueryVendasValorTotalprodutos: TWideStringField;
    sqlQueryQuantidadeVendasnome: TWideStringField;
    sqlQueryQuantidadeVendasprodutos: TWideStringField;
    sqlQueryQuantidadeVendassum: TFMTBCDField;
    sqlQueryVendasid_produtos: TIntegerField;
    sqlQueryVendasprodutos: TWideStringField;
    sqlQueryVendasstatus: TWideStringField;
    sqlQueryVendasfornecedores: TWideStringField;
    sqlQueryVendasdata: TDateField;
    sqlQueryVendasvalor_produto: TFMTBCDField;
    sqlQueryVendasquantidade: TIntegerField;
    sqlQueryVendasvalor_total: TFMTBCDField;
    sqlQueryVendasid_cadastro: TIntegerField;
    sqlQueryVendasid_vendedor: TIntegerField;
    sqlQueryVendasvendedor: TWideStringField;
    sqlQueryVendasValorTotalvalor_total: TFMTBCDField;
    sqlQueryQuantidadeVendasquantidade: TIntegerField;
    procedure sqlQueryPessoasBeforeOpen(DataSet: TDataSet);
    procedure sqlQueryToDoBeforeOpen(DataSet: TDataSet);
    procedure sqlQueryVendasBeforeOpen(DataSet: TDataSet);
  public
    Usuario: TUsuario;
    ID_Login: Integer;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

function Conexao: TDmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

var
  DmConexao: TDmConexao;

function Conexao: TDmConexao;
begin
  if DmConexao = nil then
    DmConexao := TDmConexao.Create(nil);

  Result := DmConexao;
end;

destructor TDmConexao.Destroy;
begin
  Usuario.Free;
  inherited;
end;

constructor TDmConexao.Create(AOwner: TComponent);
begin
  inherited;
  Usuario := TUsuario.Create;
end;

procedure TDmConexao.sqlQueryPessoasBeforeOpen(DataSet: TDataSet);
begin
  sqlQueryPessoas.ParamByName('id').Value := ID_Login;
end;

procedure TDmConexao.sqlQueryToDoBeforeOpen(DataSet: TDataSet);
begin
  sqlQueryToDo.ParamByName('id').Value := ID_Login;
end;

procedure TDmConexao.sqlQueryVendasBeforeOpen(DataSet: TDataSet);
begin
  sqlQueryVendas.ParamByName('id').Value := ID_Login;
end;

initialization
finalization
  DmConexao.Free;

end.
