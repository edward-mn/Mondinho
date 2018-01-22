unit ControleUtils;

interface

uses
  System.SysUtils, DataModuleControleDeUsuario, Data.DB, System.DateUtils,
  DataModuleConexao;

type
  TControleUtils = class
    public
      class procedure SalvarLog(Acao : String);
  end;

implementation

class procedure TControleUtils.SalvarLog(Acao: String);
begin
  DataModuleControleDeUsuario.DmControleDeUsuario.cdsControleDeUsuario.SetProvider(Conexao.sqlQueryControle);
  DataModuleControleDeUsuario.DmControleDeUsuario.cdsControleDeUsuario.Open;
  DataModuleControleDeUsuario.DmControleDeUsuario.cdsControleDeUsuario.Insert;
  DataModuleControleDeUsuario.DmControleDeUsuario.cdsControleDeUsuariocontrole_de_usuario.Value :=
    ('ID :' + (IntToStr(Conexao.Usuario.Id)) + Acao + (DateTimeToStr(Now)));
  DataModuleControleDeUsuario.DmControleDeUsuario.cdsControleDeUsuario.ApplyUpdates(0);
end;

end.
