program FormToDo;

uses
  Vcl.Forms,
  UnitToDo in 'UnitToDo.pas' {FormView},
  DataModuleConexao in 'DataModuleConexao.pas' {DmConexao: TDataModule},
  DataModuleClientesCadastro in 'DataModuleClientesCadastro.pas' {DmClientesCadastro: TDataModule},
  UnitTarefas in 'UnitTarefas.pas' {FormTarefas},
  UnitVendas in 'UnitVendas.pas' {FormVendas},
  UnitPessoas in 'UnitPessoas.pas' {FormPessoas},
  UnitEditarVendas in 'UnitEditarVendas.pas' {FormEditarVendas},
  UnitEditarTarefas in 'UnitEditarTarefas.pas' {FormEditarTarefas},
  UnitEditarPessoas in 'UnitEditarPessoas.pas' {FormCriacaoEdicaoPessoas},
  UnitLogin in 'UnitLogin.pas' {FormLogin},
  UnitCadastro in 'UnitCadastro.pas' {FormCadastro},
  Vcl.Controls,
  DataModuleClientesVendas in 'DataModuleClientesVendas.pas' {DmClienteVendas: TDataModule},
  DataModuleClientesPessoas in 'DataModuleClientesPessoas.pas' {DmClientesPessoas: TDataModule},
  DataModuleClientesTarefas in 'DataModuleClientesTarefas.pas' {DmClientesTarefas: TDataModule},
  DataModuleControleDeUsuario in 'DataModuleControleDeUsuario.pas' {DmControleDeUsuario: TDataModule},
  Login in 'Login.pas',
  DataModuleVendedores in 'DataModuleVendedores.pas' {DmClienteVendedores: TDataModule};

{$R *.res}

var
  Login: TFormLogin;
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  Login := TFormLogin.Create(nil);
  try
    if Login.ShowModal <> mrOk then
      Exit;
  finally
    Login.Free;
  end;

  Application.CreateForm(TFormView, FormView);
  Application.CreateForm(TDmClienteVendas, DmClienteVendas);
  Application.CreateForm(TDmClientesPessoas, DmClientesPessoas);
  Application.CreateForm(TDmClientesTarefas, DmClientesTarefas);
  Application.CreateForm(TDmControleDeUsuario, DmControleDeUsuario);
  Application.CreateForm(TDmClienteVendedores, DmClienteVendedores);
  Application.Run;
end.
