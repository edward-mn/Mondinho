unit Login;

interface

uses
  System.Variants,
  Data.DB;

type
  TLogin = class
  public
    class function LogarUsuario(const Usuario, Senha: string): Boolean;
  end;

implementation

uses
  DataModuleConexao;

{ TLogin }

class function TLogin.LogarUsuario(const Usuario, Senha: string): Boolean;
begin
  Conexao.sqlQueryCadastro.Close;
  Conexao.sqlQueryCadastro.Open;

  Result := (Conexao.sqlQueryCadastro.Locate('nome_usuario;senha',
    VarArrayOf([Usuario, Senha]),[loCaseInsensitive]));
end;

end.
