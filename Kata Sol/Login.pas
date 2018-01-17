unit Login;

interface

uses
  System.Variants,
  Data.DB;

type
  TUsuario = class
  private
    FId: Integer;
    FNome: string;
  public
    function Logar(const Usuario, Senha: string): Boolean;
    property Nome: string read FNome;
    property Id: Integer read FId;
  end;

implementation

uses
  DataModuleConexao;

{ TLogin }

function TUsuario.Logar(const Usuario, Senha: string): Boolean;
begin
  Conexao.sqlQueryCadastro.Close;
  Conexao.sqlQueryCadastro.Open;

  Result := (Conexao.sqlQueryCadastro.Locate('nome_usuario;senha',
    VarArrayOf([Usuario, Senha]),[loCaseInsensitive]));

  if Result then
  begin
    FId := Conexao.sqlQueryCadastroid.Value;
    FNome := Conexao.sqlQueryCadastronome_usuario.Value;
    Conexao.ID_Login := FId;
  end;
end;


end.
