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
  UnitRelatorios in 'UnitRelatorios.pas' {FormRelatorios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TDmClientes, DmClientes);
  Application.CreateForm(TFormRelatorios, FormRelatorios);
  Application.Run;
end.
