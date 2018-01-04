program FormToDo;

uses
  Vcl.Forms,
  UnitToDo in 'UnitToDo.pas' {FormView},
  DataModuleConexao in 'DataModuleConexao.pas' {DmConexao: TDataModule},
  DataModuleClientes in 'DataModuleClientes.pas' {DmClientes: TDataModule},
  UnitTarefas in 'UnitTarefas.pas' {FormTarefas},
  UnitVendas in 'UnitVendas.pas' {FormVendas},
  UnitPessoas in 'UnitPessoas.pas' {FormPessoas},
  UnitEditarVendas in 'UnitEditarVendas.pas' {FormEditarVendas},
  UnitEditarTarefas in 'UnitEditarTarefas.pas' {FormEditarTarefas},
  UnitEditarPessoas in 'UnitEditarPessoas.pas' {FormCriacaoEdicaoPessoas},
  UnitLogin in 'UnitLogin.pas' {FormLogin},
  UnitCadastro in 'UnitCadastro.pas' {FormCadastro},
  Vcl.Controls;

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
  Application.Run;
end.
