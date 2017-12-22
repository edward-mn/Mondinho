program FormToDo;

uses
  Vcl.Forms,
  UnitToDo in 'UnitToDo.pas' {FormView},
  DataModuleConexao in 'DataModuleConexao.pas' {DmConexao: TDataModule},
  DataModuleClientes in 'DataModuleClientes.pas' {DmClientes: TDataModule},
<<<<<<< HEAD
  UnitEditarTarefas in 'UnitEditarTarefas.pas' {FormEditarTarefas},
  UnitTarefas in 'UnitTarefas.pas' {FormTarefas},
  UnitVendas in 'UnitVendas.pas' {FormVendas},
  UnitEditarVendas in 'UnitEditarVendas.pas' {FormEditarVendas};
=======
  UnitCriacaoEdicao in 'UnitCriacaoEdicao.pas' {FormCriacaoEdicao},
  UnitTarefas in 'UnitTarefas.pas' {FormTarefas},
  UnitPessoas in 'UnitPessoas.pas' {FormPessoas},
  UnitCriacaoEdicaoPessoas in 'UnitCriacaoEdicaoPessoas.pas' {FormCriacaoEdicaoPessoas};
>>>>>>> master

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormView, FormView);
  Application.CreateForm(TDmConexao, DmConexao);
  Application.CreateForm(TDmClientes, DmClientes);
  Application.CreateForm(TFormEditarVendas, FormEditarVendas);
  Application.Run;
end.
