unit TestDataModuleConexao;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit 
  being tested.

}

interface

uses
  TestFramework, System.SysUtils, Datasnap.Provider, DbxDevartPostgreSQL, Login,
  Data.SqlExpr, Datasnap.DBClient, Data.FMTBcd, Data.DB, System.Classes, Data.DBXCommon,
  DataModuleConexao;

type
  // Test methods for class TDmConexao

  TestTDmConexao = class(TTestCase)
  strict private
  published
    procedure TelaLogin_UsuarioNaoCadastrado_False;
    procedure TelaLogin_UsuarioNaoCadastrado_True;
  end;

implementation

procedure TestTDmConexao.TelaLogin_UsuarioNaoCadastrado_False;
begin
  CheckEquals(False, Conexao.Usuario.Logar('', 'IUHWEI54865251'));
end;

procedure TestTDmConexao.TelaLogin_UsuarioNaoCadastrado_True;
begin
  CheckEquals(True, Conexao.Usuario.Logar('gabriel', '123456'));
end;

initialization

  RegisterTest(TestTDmConexao.Suite);
end.

