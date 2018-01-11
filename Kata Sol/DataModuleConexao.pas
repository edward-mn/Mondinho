unit DataModuleConexao;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Datasnap.Provider, Data.DB,
  Data.SqlExpr, Datasnap.DBClient, DbxDevartPostgreSQL, Login;

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
  public
    Usuario: TUsuario;
    procedure MostrarTarefas(ID_Login : Integer);
    procedure MostrarPessoas(ID_Login : Integer);
    procedure MostrarVendas(ID_Login : Integer);
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

procedure TDmConexao.MostrarPessoas;
begin
  Conexao.sqlQueryPessoas.SQL.CommaText := ('select * from pessoas where id_cadastro =' + IntToStr(ID_Login));
end;

procedure TDmConexao.MostrarTarefas(ID_Login : Integer);
begin
  Conexao.sqlQueryToDo.SQL.CommaText := ('select * from monde_todo where id_cadastro =' + IntToStr(ID_Login));
end;

constructor TDmConexao.Create(AOwner: TComponent);
begin
  inherited;
  Usuario := TUsuario.Create;
end;

procedure TDmConexao.MostrarVendas;
begin
  Conexao.sqlQueryVendas.SQL.CommaText := ('select * from vendas where id_cadastro =' + IntToStr(ID_Login));
end;


initialization
finalization
  DmConexao.Free;

end.
