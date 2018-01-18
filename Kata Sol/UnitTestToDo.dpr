program UnitTestToDo;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

//uses
//  TestUnit in 'TestUnit.pas',
//  Unitfunc in 'Unitfunc.pas';

uses
  DUnitTestRunner,
  TarefaUtils in 'TarefaUtils.pas',
  TestUnitToDoPrincipal in 'TestUnitToDoPrincipal.pas',
  PessoasUtils in 'PessoasUtils.pas',
  VendasUtils in 'VendasUtils.pas',
  TestVendas in 'TestVendas.pas',
  TestPessoas in 'TestPessoas.pas',
  TestDataModuleConexao in 'TestDataModuleConexao.pas',
  DataModuleConexao in 'DataModuleConexao.pas';

{R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

